`timescale 1ns / 1ps

module labkit(input clk, input sdCD, output sdReset, output sdSCK, output sdCmd, 
	inout [3:0] sdData, output [15:0] led, input btnC);
	
	parameter I_SET_SPI_TRANS = 0;
	parameter I_SET_SPI_CTRL = 1;
	parameter I_WAIT_STS_REG = 2;
	parameter I_CHECK_ERROR = 3;
	parameter READY = 4;
	parameter ERROR = 5;
	parameter R_SET_7_0 = 6;
	parameter R_SET_15_8= 7;
	parameter R_SET_23_16 = 8
	parameter R_SET_31_24 = 9;
	parameter R_SET_SPI_TRANS = 10;
	parameter R_SET_SPI_CTRL = 11;
	parameter R_WAIT_STS_REG = 12;
	parameter R_CHECK_ERROR = 13;
	parameter R_READ_BYTE = 14;
	parameter DID_TEST = 15;


	wire clk_i, rst_i, ack_o, spiSysClk, spiClkOut, spiDataIn, spiDataOut, spiCS_n;
	reg strobe_i = 0;
	reg we_i = 0;
	reg [7:0] address_i = 0;
	reg [7:0] data_i = 0;
	wire [7:0] data_o;

	reg [7:0] disp_byte = 0;

	assign sdCmd = spiDataOut;
	assign spiDataIn = sdData[0];
	assign sdData[3] = spiCS_n;
	assign sdSCK = spiClkOut;
	assign sdData[2] = 1;
	assign sdData[1] = 1;
	assign sdReset = 0;

	assign clk_i = spiSysClk;
	assign rst_i = btnC;

	wire [31:0] address = 32'h0;
	
	clock_400mhz divider(clk, spiSysClk);
	
	spiMaster sdMaster(.clk_i(clk_i), .rst_i(.rst_i), .address_i(address_i),
			.data_i(data_i), .data_o(data_o), .strobe_i(strobe_i), .we_i(we_i),
			.ack_o(ack_o), .spiSysClk(spiSysClk), .spiClkOut(spiClkOut),
			.spiDataIn(spiDataIn), .spiDataOut(spiDataOut), .spiCS_n(spiCS_n));

	reg [3:0] state = I_SET_SPI_TRANS;

	assign led = {state, 4'hF, disp_byte};

	always @(posedge clk_i) begin
		if(rst_i) begin
			state <= I_SET_SPI_TRANS;
			strobe_i <= 0;
			address_i <= 0;
			data_i <= 0;
		end
		else begin
			case (state)
				I_SET_SPI_TRANS: begin
					address_i <= 8'h02;
					data_i <= 8'h01;
					we_i <= 1;
					strobe_i <= 1;
					if(ack_o == 1) begin
						state <= I_SET_SPI_CTRL;
						strobe_i <= 0;
					end
				end
				I_SET_SPI_CTRL: begin
					address_i <= 8'h03;
					data_i <= 8'h01;
					we_i <= 1;
					strobe_i <= 1;
					if(ack_o == 1) begin
						state <= I_WAIT_STS_REG;
						strobe_i <= 0;
					end
				end
				I_WAIT_STS_REG: begin
					address_i <= 8'h04;
					we_i <= 0;
					strobe_i <= 1;
					if(ack_o == 1) begin
						if(data_o[0] != 0) begin
							state <= I_WAIT_STS_REG;
						end
						else begin
							state <= I_CHECK_ERROR;
						end
						strobe_i <= 0;	
					end
				end
				I_CHECK_ERROR: begin
					address_i <= 8'h05;
					we_i <= 0;
					strobe_i <= 1;
					if(ack_o == 1) begin
						if(data_o[1:0] != 0) begin
							state <= ERROR;
						end
						else begin
							state <= READY;
						end
						strobe_i <= 0;	
					end
				end
				READY: begin
					if(doRead) begin
						state <= R_SET_7_0;
					end
				end
				R_SET_7_0: begin
					address_i <= 8'h07;
					data_i <= address[7:0];
					we_i <= 1;
					strobe_i <= 1;
					if(ack_o == 1) begin
						state <= R_SET_15_8;
						strobe_i <= 0;
					end
				end
				R_SET_15_8: begin
					address_i <= 8'h08;
					data_i <= address[15:8];
					we_i <= 1;
					strobe_i <= 1;
					if(ack_o == 1) begin
						state <= R_SET_23_16;
						strobe_i <= 0;
					end
				end
				R_SET_23_16: begin
					address_i <= 8'h09;
					data_i <= address[23:16];
					we_i <= 1;
					strobe_i <= 1;
					if(ack_o == 1) begin
						state <= R_SET_31_24;
						strobe_i <= 0;
					end
				end
				R_SET_31_24: begin
					address_i <= 8'h0a;
					data_i <= address[31:24];
					we_i <= 1;
					strobe_i <= 1;
					if(ack_o == 1) begin
						state <= R_SET_SPI_TRANS;
						strobe_i <= 0;
					end
				end
				R_SET_SPI_TRANS: begin
					address_i <= 8'h02;
					data_i <= 8'h02;
					we_i <= 1;
					strobe_i <= 1;
					if(ack_o == 1) begin
						state <= R_SET_SPI_CTRL;
						strobe_i <= 0;
					end
				end
				R_SET_SPI_CTRL: begin
					address_i <= 8'h03;
					data_i <= 8'h01;
					we_i <= 1;
					strobe_i <= 1;
					if(ack_o == 1) begin
						state <= R_WAIT_STS_REG;
						strobe_i <= 0;
					end
				end
				R_WAIT_STS_REG: begin
					address_i <= 8'h04;
					we_i <= 0;
					strobe_i <= 1;
					if(ack_o == 1) begin
						if(data_o[0] != 0) begin
							state <= R_WAIT_STS_REG;
						end
						else begin
							state <= R_CHECK_ERROR;
						end
						strobe_i <= 0;	
					end
				end
				R_CHECK_ERROR: begin
					address_i <= 8'h05;
					we_i <= 0;
					strobe_i <= 1;
					if(ack_o == 1) begin
						if(data_o[3:2] != 0) begin
							state <= ERROR;
						end
						else begin
							state <= R_READ_BYTE;
						end
						strobe_i <= 0;	
					end
				end
				R_READ_BYTE: begin
					address_i <= 8'h10;
					we_i <= 0;
					strobe_i <= 1;
					if(ack_o == 1) begin
						disp_byte <= data_o;
						state <= DID_TEST;
					end
				end
			endcase
		end
	end
endmodule

module clock_400mhz(input clk_in, output reg clk_out = 0);
    reg [8:0] counter = 0;
    
    always @(posedge clk_in) begin
        if (counter == 125) begin
            clk_out <= ~clk_out;
            counter <= 0;
        end
        else begin
            counter <= counter + 1;
        end
    end
endmodule