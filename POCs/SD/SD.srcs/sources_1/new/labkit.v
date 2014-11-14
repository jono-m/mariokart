`timescale 1ns / 1ps

module labkit(input clk, input sdCD, output sdReset, output sdSCK, output sdCmd, 
	inout [3:0] sdData, output [15:0] led, input btnC);
	wire clk_100mhz = clk;
	wire clk_50mhz;
	wire clk_25mhz;

	clock_divider div1(clk_100mhz, clk_50mhz);
	clock_divider div2(clk_50mhz, clk_25mhz);

	wire rst = btnC;

	wire [7:0] adr;
	wire [7:0] masterDout;
	wire [7:0] masterDin;
	wire stb;
	wire we;
	wire ack;
	wire spiClk;
	wire spiMasterDataIn;
	wire spiMasterDataOut;
	wire spiCS_n;

	// MicroSD SPI/SD Mode/Nexys 4
	// 1: Unused / DAT2 / sdData[2]
	// 2: CS / DAT3 / sdData[3]
	// 3: MOSI / CMD / sdCmd
	// 4: VDD / VDD / ~sdReset
	// 5: SCLK / SCLK / sdSCK
	// 6: GND / GND / - 
	// 7: MISO / DAT0 / sdData[0]
	// 8: UNUSED / DAT1 / sdData[1]
	assign sdData[2] = 1;
	assign sdData[3] = spiCS_n;
	assign sdCmd = spiMasterDataOut;
	assign sdReset = 0;
	assign sdSCK = spiClk;
	assign spiMasterDataIn = sdData[0];
	assign sdData[1] = 1;

	spiMaster u_spiMaster (
	  //Wishbone bus
	  .clk_i(clk_25mhz),
	  .rst_i(rst),
	  .address_i(adr),
	  .data_i(masterDout),
	  .data_o(masterDin),
	  .strobe_i(stb),
	  .we_i(we),
	  .ack_o(ack),

	  // SPI logic clock
	  .spiSysClk(clk_50mhz),

	  // SPI bus
	  .spiClkOut(spiClk),
	  .spiDataIn(spiMasterDataIn),
	  .spiDataOut(spiMasterDataOut),
	  .spiCS_n(spiCS_n)
	);

	wire ready_for_read;
	wire do_read;
	wire [31:0] sd_read_adr;
	wire byte_available;
	wire error;

	wb_driver u_wb_driver(
	  .clk(clk_25mhz), 
	  .rst(rst),
	  .ready_for_read(ready_for_read),
	  .do_read(do_read),
	  .sd_read_adr(sd_read_adr),
	  .byte_available(byte_available),
	  .adr(adr), 
	  .din(masterDin), 
	  .dout(masterDout), 
	  .stb(stb), 
	  .we(we), 
	  .ack(ack)
  );

	sd_tester u_sd_tester(
		.clk(clk_25mhz), 
		.rst(rst),
		.ready_for_read(ready_for_read)
		.do_read(do_read),
		.sd_read_adr(sd_read_adr),
		.byte_available(byte_available),
		.error(error),
		.din(masterDout),
		.leds(led)
	);
endmodule

module clock_divider(input clk_in, output reg clk_out = 0);
	always @(posedge clk_in) begin
		clk_out <= ~clk_out;
	end
endmodule

module wb_driver(clk, rst, ready_for_read, do_read, sd_read_adr, byte_available, 
		error, adr, din, dout, stb, we, ack);
	input clk, rst;
	output ready_for_read;
	input do_read;
	input [31:0] sd_read_adr;
	output byte_available, error;
	output [7:0] adr;
	input [7:0] din;
	output [7:0] dout;
	output stb, we;
	input ack;

	reg byte_available = 0;
	reg [7:0] adr = 0;
	reg [7:0] dout = 0;
	reg stb = 0;
	reg we = 0;

	// Initialization states
	parameter W_INIT_SD = 0;
	parameter CHECK_FOR_INIT_ERR;

	// Transmit & error loading states
	parameter W_TRANSMIT = 1;
	parameter R_IS_BUSY = 2;
	parameter WAIT_UNTIL_NOT_BUSY = 3;
	parameter R_ERRORS = 4;

	// Reading from SD states
	parameter W_ADD1 = 5;
	parameter W_ADD2 = 6;
	parameter W_ADD3 = 7;
	parameter W_ADD4 = 8;
	parameter W_READ_SD = 9;
	parameter CHECK_FOR_READ_ERR = 10;
	parameter R_DATA_BYTE = 11;
	parameter WAIT_UNTIL_BLOCK_READ = 12;

	// Ready state
	parameter READY = 13;

	// Write state
	parameter WRITE = 14;
	parameter READ = 15;

	// Error state
	parameter ERROR = 16;

	parameter SPI_TRANS_TYPE_REG = 	 8'h02;
	parameter SPI_TRANS_CTRL_REG = 	 8'h03;
	parameter SPI_TRANS_STS_REG = 	 8'h04;
	parameter SPI_TRANS_ERROR_REG =  8'h05;
	parameter SD_ADDR_7_0_REG = 		 8'h07;
	parameter SD_ADDR_15_8_REG = 		 8'h08;
	parameter SD_ADDR_23_16_REG = 	 8'h09;
	parameter SD_ADDR_31_24_REG = 	 8'h0a;
	parameter SPI_RX_FIFO_DATA_REG = 8'hb0;

	parameter SPI_INIT_SD = 8'd1;
	parameter SPI_TRANS_START = 8'd1;
	parameter SPI_TRANS_BUSY = 1'd1;
	parameter INIT_NO_ERROR = 2'd0;
	parameter SPI_RW_READ_SD_BLOCK = 8'd2;
	parameter READ_NO_ERROR = 2'd0;

	reg [4:0] state = W_INIT_SD;
	reg [4:0] state_after_op = CHECK_FOR_INIT_ERR;
	reg [4:0] state_after_transmit = READY;

	reg [8:0] byte_counter;

	assign ready_for_read = (state == READY);
	assign error = (state == ERROR);

	always @(posedge clk) begin
		if(rst) begin
			byte_available <= 0;
			adr <= 0;
			dout <= 0;
			stb <= 0;
			we <= 0;
			state <= W_INIT_SD;
			state_after_op <= W_TRANSMIT;
			state_after_transmit <= CHECK_FOR_INIT_ERR;
		end
		else begin
			case (state)
				W_INIT_SD: begin
					state <= WRITE;
					state_after_op <= W_TRANSMIT;
					state_after_transmit <= CHECK_FOR_INIT_ERR;

					adr <= SPI_TRANS_TYPE_REG;
					dout <= SPI_INIT_SD;
				end
				CHECK_FOR_INIT_ERR: begin
					if(din[1:0] == INIT_NO_ERROR) begin
						state <= READY;
					end
					else begin
						state <= ERROR;
						dout <= din;
					end
				end
				W_TRANSMIT: begin
					state <= WRITE;
					state_after_op <= R_IS_BUSY;

					adr <= SPI_TRANS_CTRL_REG;
					dout <= SPI_TRANS_START;
				end
				R_IS_BUSY: begin
					state <= READ;
					state_after_op <= WAIT_UNTIL_NOT_BUSY;

					adr <= SPI_TRANS_STS_REG;
				end
				WAIT_UNTIL_NOT_BUSY: begin
					if(din[0] == SPI_TRANS_BUSY) begin
						state <= R_IS_BUSY;
					end
					else begin
						state <= R_ERRORS;
					end
				end
				R_ERRORS: begin
					state <= READ;
					state_after_op <= state_after_transmit;

					adr <= SPI_TRANS_ERROR_REG;
				end
				W_ADD1: begin
					state <= WRITE;
					state_after_op <= W_ADD2;

					adr <= SD_ADDR_7_0_REG;
					dout <= sd_read_adr[7:0];
				end
				W_ADD2: begin
					state <= WRITE;
					state_after_op <= W_ADD3;

					adr <= SD_ADDR_15_8_REG;
					dout <= sd_read_adr[15:8];
				end
				W_ADD3: begin
					state <= WRITE;
					state_after_op <= W_ADD3;

					adr <= SD_ADDR_23_16_REG;
					dout <= sd_read_adr[23:16];
				end
				W_ADD4: begin
					state <= WRITE;
					state_after_op <= W_READ_SD;

					adr <= SD_ADDR_31_24_REG;
					dout <= sd_read_adr[31:24];
				end
				W_READ_SD: begin
					state <= WRITE;
					state_after_op <= W_TRANSMIT;
					state_after_transmit <= CHECK_FOR_READ_ERR;

					adr <= SPI_TRANS_TYPE_REG;
					dout <= SPI_RW_READ_SD_BLOCK;
				end
				CHECK_FOR_READ_ERR: begin
					if(din[3:2] == READ_NO_ERROR) begin
						byte_counter <= 511;
						state <= R_DATA_BYTE;
					end
					else begin
						state <= ERROR;
						dout <= din;
					end
				end
				R_DATA_BYTE: begin
					state <= READ;
					state_after_op <= WAIT_UNTIL_BLOCK_READ;

					adr <= SPI_RX_FIFO_DATA_REG;
					byte_available <= 0;
				end
				WAIT_UNTIL_BLOCK_READ: begin
					if(byte_counter == 0) begin
						state <= READY;
						byte_available <= 0;
					end
					else begin
						state <= R_DATA_BYTE;
						byte_counter <= byte_counter - 1;
						byte_available <= 1;
					end
				end
				READY: begin
					if(do_read) begin
						state <= W_ADD1;
					end
				end
				WRITE: begin
					stb <= 1;
					we <= 1;
					if(ack) begin
						state <= state_after_op;
						stb <= 0;
						adr <= 0;
						dout <= 0;
						we <= 0;
					end
				end
				READ: begin
					stb <= 1;
					we <= 0;
					if(ack) begin
						state <= state_after_op;
						stb <= 0;
						adr <= 0;
						dout <= 0;
						we <= 0;
					end
				end
			endcase 
		end
	end
endmodule

module sd_tester(clk, rst, ready_for_read, do_read, sd_read_adr, byte_available, 
		error, din, leds);
	input clk, rst;
	input ready_for_read;
	output do_read;
	output [31:0] sd_read_adr;
	input byte_available;
	input error;
	input [7:0] din;
	output [15:0] leds;

	reg do_read = 0;
	reg [31:0] sd_read_adr = 0;
	reg [15:0] leds = 0;

	reg [1:0] bytes_read = 0;

	always @(posedge clk) begin
		if(rst) begin
			read_once <= 0;
			do_read <= 0;
			sd_read_adr <= 0;
			leds <= 0;
			bytes_read <= 0;
		end
		else begin
			if(error) begin
				leds <= {8'hFF, din};
			end
			else if(ready_for_read) begin
				do_read <= 1;
			end
			
			if(byte_available) begin
				do_read <= 0;
				if(bytes_read == 0) begin
					leds[15:8] <= din;
					bytes_read <= bytes_read + 1;
				end	
				else if(bytes_read == 1) begin
					leds[7:0] <= din;
					bytes_read <= bytes_read + 1;
				end
			end
		end
	end
endmodule