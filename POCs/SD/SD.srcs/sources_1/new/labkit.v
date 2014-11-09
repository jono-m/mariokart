`timescale 1ns / 1ps

module labkit(input clk, input sdCD, output sdReset, output sdSCK, output sdCmd, 
	inout [3:0] sdData);
	assign sdData[2] = 1;
	assign sdData[1] = 1;
	assign sdReset = 0;

	wire [31:0] address;
	wire [7:0] dataOut;
	wire outputReady;
	wire doRead;
	wire reset = 0;
	sdController controller(clk, reset, address, doRead, sdData[0], dataOut, 
		sdSCK, sdCmd, sdData[3]);
endmodule

module sdController(input clk, input reset, input [31:0] address, input doRead, 
		input miso, output [7:0] reg byteOut = 0, output reg byteReady = 0, 
		output sclk, output mosi, output reg cs);

	parameter RST = 0; // Reset the controller. 
	parameter INIT = 1; // Initialization period. Wait ~80 cycles for this.
	parameter CMD0 = 2; // Send a software reset signal after SPI mode indicated.
	parameter CMD55 = 3; // Toggle application command mode.
	parameter CMD41 = 4; // Request card state.
	parameter POLL_CMD = 5; // Check if the card has succesfully initialized.
	parameter IDLE = 6; // Ready for a new read request.
	parameter READ_BLOCK = 7; // Begin reading a block of 512 bytes.
	parameter READ_BLOCK_WAIT = 8 // Wait for the SD card to respond to the block 
																// read. Note: this reads through the start
																// byte.
	parameter READ_BLOCK_DATA = 9; // Read a block of actual data.
	parameter READ_BLOCK_CRC = 10; // After the data read, we need to read two
																 // bytes of CRC data (though we'll just throw
																 // it out for our purposes).
	parameter SEND_CMD = 11; // Send an actual command to the SD card.
	parameter RECEIVE_BYTE_WAIT = 12; // Wait for a response following a command.
	parameter RECEIVE_BYTE = 13; // Read in a byte. General purpose state.
	parameter PRESENT_BYTE = 14; // Present a byte of user data to byteOut.

	parameter CMD_HI = 	56'hFF_FF_FF_FF_FF_FF_FF;
	parameter CMD_0 = 	56'hFF_40_00_00_00_00_95;
	parameter CMD_41 = 	56'hFF_69_00_00_00_00_95;
	parameter CMD_55 = 	56'hFF_77_00_00_00_00_95;

	reg [4:0] state;
	reg [4:0] return_state;
	reg [55:0] cmd_out;
	reg [7:0] recv_data;

	reg [8:0] byte_count = 0;
	reg [7:0] bit_count = 0;

	always @(posedge clk) begin
		if(reset) begin
			state <= RST;
		end
		else begin
			case(state)
				RST: begin
					cmd_out <= CMD_HI;
					byte_counter <= 0;
					bit_counter <= 80;
					byteReady <= 0;
					cs <= 1;
					state <= INIT;
				end
				INIT: begin
					if (bit_counter == 0) begin
						cs <= 0;
						state <= CMD0;
					end
					else begin
						bit_counter <= bit_counter - 1;
					end
				end
				CMD0: begin
					cmd_out <= CMD_0;
					bit_counter <= 55;
					return_state <= CMD55;
					state <= SEND_CMD;
				end
				CMD55: begin
					cmd_out <= CMD_55;
					bit_counter <= 55;
					return_state <= CMD41;
					state <= SEND_CMD;
				end
				CMD41: begin
					cmd_out <= CMD_41;
					bit_counter <= 55;
					return_state <= POLL_CMD;
					state <= SEND_CMD;
				end
				POLL_CMD: begin
					if (recv_data[0] == 0) begin
						state <= IDLE;
					end
					else begin
						STATE <= CMD55;
					end
				end
				SEND_CMD: begin
					if(bit_counter == 0) begin
						state <= RECEIVE_BYTE_WAIT;
					end
					else begin
						bit_counter <= bit_counter - 1;
						cmd_out <= {cmd_out[54:0], 1'b1};
					end
				end
				READ_BLOCK: begin
					cmd_out <= {16'hFF51, address, 8'hFF};
					bit_counter <= 55;
					return_state <= READ_BLOCK_WAIT;
					state <= SEND_CMD;
				end
				READ_BLOCK_WAIT: begin
					if(miso == 0) begin
						byte_counter <= 511;
						bit_counter <= 7;
						state <= READ_BLOCK_DATA;
					end
				end
				READ_BLOCK_DATA: begin
					byte_counter <= byte_counter - 1;
					return_state <= PRESENT_BYTE;
					bit_counter <= 7;
					state <= RECEIVE_BYTE;
				end
				PRESENT_BYTE: begin
					byteOut <= recv_data;
					byteReady <= 1;
					if (byte_counter == 0) begin
						bit_counter <= 7;
						return_state <= READ_BLOCK_CRC;
						state <= RECEIVE_BYTE;
					end
					else begin
						state <= READ_BLOCK_DATA;
					end
				end
				READ_BLOCK_CRC: begin
					bit_counter <= 7;
					return_state <= IDLE;
					state <= RECEIVE_BYTE;
				end
				RECEIVE_BYTE_WAIT: begin
					if(miso == 0) begin
						recv_data <= 0;
						bit_counter <= 6;
						state <= RECEIVE_BYTE;
					end
				end
				RECEIVE_BYTE: begin
					byteReady <= 0;
					recv_data <= {recv_data[6:0], miso};
					if(bit_counter == 0) begin
						state <= return_state;
					end
					else begin
						bit_counter <= bit_counter - 1;
					end
				end
				IDLE: begin
					if (doRead) begin
						state <= READ_BLOCK;
					end
				end
			endcase
		end
	end
	assign mosi = cmd_out[55];
endmodule