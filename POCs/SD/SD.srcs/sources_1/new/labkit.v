`timescale 1ns / 1ps

module test();
    reg clk = 0;
    wire sdCD, sdReset, sdSCK, sdCmd;
    wire [3:0] sdData;
    wire [15:0] led;
    wire btnC;
    
    initial begin
        clk = 0;
        forever #50 clk = ~clk;
    end
    
    labkit l1(clk, sdCD, sdReset, sdSCK, sdCmd, sdData, led, btnC);
endmodule

module labkit(input clk, input sdCD, output sdReset, output sdSCK, output sdCmd, 
	inout [3:0] sdData, output [15:0] led, input btnC);
	wire mosi;
	wire miso;
	wire sd_clk;
	wire cs;

	assign sdCmd = mosi;
	assign miso = sdData[0];
	assign cs = sdData[3];
	assign sdSCK = sd_clk;
	assign sdData[2] = 1;
	assign sdData[1] = 1;
	assign sdReset = 0;

	wire reset = btnC;
	wire [31:0] address = 32'h0;
	reg doRead = 0;
	wire readyForRead;
	wire [7:0] byteOut;
	wire byteReady;
	wire [15:0] status;
	wire error;

	clock_400mhz divider(clk, sd_clk);
	
	sdController controller(.sd_clk(sd_clk), .reset(reset), .address(address),
			.doRead(doRead), .readyForRead(readyForRead), .byteOut(byteOut),
			.byteReady(byteReady), .status(status), .error(error), .miso(miso),
			.mosi(mosi), .cs(cs));

	assign led = status;

	// ****************
	// Ready to read the card and do what we want with it.

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

/* Status format: 
15-11 : State
10-8 : Errors and Card Info
7:0 : Card response
*/
module sdController(input sd_clk, input reset, input [31:0] address, 
		input doRead, output readyForRead, output reg [7:0] byteOut = 0, 
		output reg byteReady = 0, output [15:0] status, output error,
		input miso, output mosi, output reg cs = 1);

	parameter RST = 0;
	parameter INIT = 1;

	parameter CMD0 = 2;
	parameter CHECK_CMD0 = 3;

	parameter CMD8 = 4;
	parameter CHECK_CMD8 = 5;

	parameter CMD58 = 6;
	parameter CHECK_CMD58 = 7;

	parameter CMD55 = 8;
	parameter CMD41 = 9;
	parameter CHECK_CARD_READY = 10;

	parameter READY_FOR_READ = 11;
	parameter CMD17 = 13;
	parameter CHECK_CMD17 = 14;

	parameter WAIT_DATA_START = 15;
	parameter READ_DATA = 16;
	parameter READ_CRC = 17;

	parameter SEND_CMD = 18;
	parameter WAIT_CARD_RESPONSE = 19;
	parameter READ_CARD_RESPONSE = 20;

	parameter ERROR = 21;
            
	// Four commands are constants (i.e. no arguments).
	parameter CMD_HI = 	56'hFF_FF_FF_FF_FF_FF_FF;
	parameter CMD_0 = 	56'hFF_40_00_00_00_00_95;
	parameter CMD_8 = 	56'hFF_48_00_00_01_AA_0F;
	parameter CMD_41 = 	56'hFF_69_00_00_00_00_95;
	parameter CMD_55 = 	56'hFF_77_00_00_00_00_95;
	parameter CMD_58 = 	56'hFF_7A_00_00_00_00_75;

	reg [4:0] state = RST;
	reg [4:0] next_state = RST;

	reg [55:0] command_to_send = CMD_HI;
	reg command_is_r1 = 1;

	reg [7:0] card_response_r1 = 0;
	reg [39:0] card_response_r2 = 0;

	reg [7:0] bit_counter = 0;
	reg [8:0] byte_counter = 0;

	reg is_old_card = 0;
	reg is_bad_voltage = 0;
	reg is_high_capacity = 0;

	assign mosi = command_to_send[55];
	assign error = (state == ERROR);
	assign readyForRead = (state == READY_FOR_READ);

	assign status = {state, is_old_card, is_bad_voltage, is_high_capacity,
			next_state, card_response_r1[2:0]};

	always @(posedge sd_clk) begin
		if(reset) begin
			state <= RST;
		end
		else begin
			case(state)
				RST: begin
					state <= INIT;

					command_to_send <= CMD_HI;
					command_is_r1 <= 1;

					card_response_r1 <= 0;
					card_response_r2 <= 0;

					bit_counter <= 80;
					byte_counter <= 0;

					is_old_card <= 0;
					is_bad_voltage <= 0;
					is_high_capacity <= 0;

					byteOut <= 0;
					byteReady <= 0;
					cs <= 1;
				end
				INIT: begin
					if (bit_counter == 0) begin
						state <= CMD0;
						cs <= 0;
					end
					else begin
						bit_counter <= bit_counter - 1;
					end
				end
				CMD0: begin
					state <= SEND_CMD;
					next_state <= CHECK_CMD0;
					command_is_r1 <= 1;

					command_to_send <= CMD_0;
					bit_counter <= 55;
				end
				CHECK_CMD0: begin
					if(card_response_r1 != 8'b0000_0001) begin
						state <= CMD0;
					end
					else begin
					   state <= CMD8;
					end
				end
				CMD8: begin
					state <= SEND_CMD;
					next_state <= CHECK_CMD8;
					command_is_r1 <= 0;

					command_to_send <= CMD_8;
					bit_counter <= 55;
				end
				CHECK_CMD8: begin
					if(card_response_r2[34] == 1) begin
						state <= CMD58;
						is_old_card <= 1;
					end
					else if(card_response_r2[39:33] != 7'b0 || 
						card_response_r2[11:0] != 12'h1AA) begin
						state <= ERROR;
						is_bad_voltage <= 1;
					end
					else begin
						state <= CMD55;
					end
				end
				CMD58: begin
					state <= SEND_CMD;
					next_state <= CHECK_CMD58;
					command_is_r1 <= 0;

					command_to_send <= CMD_58;
					bit_counter <= 55;
				end
				CHECK_CMD58: begin
					if(is_old_card) begin
						if(card_response_r2[21] != 1) begin
							state <= ERROR;
							is_bad_voltage <= 1;
						end
						else begin
							state <= CMD_55;
						end
					end
					else begin
						state <= READY_FOR_READ;
						if(card_response_r2[30] == 1) begin
							is_high_capacity <= 1;
						end
					end
				end
				CMD55: begin
					state <= SEND_CMD;
					next_state <= CMD41;
					command_is_r1 <= 1;

					command_to_send <= CMD_55;
					bit_counter <= 55;
				end
				CMD41: begin
					state <= SEND_CMD;
					next_state <= CHECK_CARD_READY;
					command_is_r1 <= 1;

					command_to_send <= CMD_41;
					bit_counter <= 55;
				end
				CHECK_CARD_READY: begin
					if(card_response_r1 != 8'b0) begin
						state <= CMD55;
					end
					else begin
						if(is_old_card) begin
							state <= READY_FOR_READ;
						end
						else begin
							state <= CMD58;
						end
					end
				end
				READY_FOR_READ: begin
					if(doRead == 1) begin
						state <= CMD17;
					end
				end
				CMD17: begin
					state <= SEND_CMD;
					next_state <= CHECK_CMD17;
					command_is_r1 <= 1;

					command_to_send <= {16'hFF_51, address, 16'hFF};
					bit_counter <= 55;
				end
				CHECK_CMD17: begin
					if(card_response_r1 != 8'b0) begin
						state <= ERROR;
					end
					else begin
						state <= WAIT_DATA_START;
						card_response_r1 <= 0;
					end
				end
				WAIT_DATA_START: begin
					card_response_r1 <= {card_response_r1[6:0], miso};
					if({card_response_r1[6:0], miso} == 8'hFE) begin
						state <= READ_DATA;
						bit_counter <= 7;
						byte_counter <= 511;
						card_response_r1 <= 0;
					end
				end
				READ_DATA: begin
					card_response_r1 <= {card_response_r1[6:0], miso};
					if(byte_counter == 0) begin
						if(bit_counter == 0) begin
							state <= READ_CRC;
							bit_counter <= 15;
						end
					end
					if(bit_counter == 0) begin
						byteReady <= 1;
						byteOut <= {card_response_r1[6:0], miso};
						if(byte_counter != 0) begin
							bit_counter <= 7;
							byte_counter <= byte_counter - 1;
						end
					end
					else begin
						byteReady <= 0;
						bit_counter <= bit_counter - 1;
					end
				end
				READ_CRC: begin
					if(bit_counter == 0) begin
						state <= READY_FOR_READ;
					end
					else begin
						bit_counter <= bit_counter - 1;
					end
				end
				SEND_CMD: begin
					command_to_send <= {command_to_send[54:0], 1'b1};
					if(bit_counter == 0) begin
						state <= WAIT_CARD_RESPONSE;
					end
					else begin
						bit_counter <= bit_counter - 1;
					end
				end
				WAIT_CARD_RESPONSE: begin
					if(miso == 0) begin
						state <= READ_CARD_RESPONSE;
						bit_counter <= command_is_r1 ? 6 : 38;
						card_response_r1 <= 0;
						card_response_r2 <= 0;
					end
				end
				READ_CARD_RESPONSE: begin
					if(bit_counter == 0) begin
						state <= next_state;
					end
					else begin
						bit_counter <= bit_counter - 1;
					end 
					if(command_is_r1 == 1) begin
						card_response_r1 <= {card_response_r1[6:0], miso};
					end
					else begin
						card_response_r2 <= {card_response_r2[38:0], miso};
					end
				end
			endcase
		end
	end
endmodule