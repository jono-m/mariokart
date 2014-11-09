`timescale 1ns / 1ps

module labkit(input clk, input sdCD, output sdReset, output sdSCK, output sdCmd, 
	inout [3:0] sdData, output [15:0] led);
	assign sdData[2] = 1;
	assign sdData[1] = 1;
	assign sdReset = 0;

	wire [31:0] address = 32'h1;
	wire [7:0] dataOut;

	reg [15:0] ledData = 0;
	assign led = ledData;

	reg [1:0] counter = 0;
	reg doRead = 1;
	wire reset = 0;
	wire readyForRead;
	wire byteReady;
	sdController controller(clk, reset, address, doRead, sdData[0], dataOut, 
			readyForRead, byteReady, sdSCK, sdCmd, sdData[3]);

	always @(negedge readyForRead) begin
		doRead <= 0;
	end

	always @(posedge byteReady) begin
		if(counter != 2) begin
			counter <= counter + 1
			if(counter == 0) begin
				ledData[15:8] <= dataOut;
			end
			else begin
				ledData[7:0] <= dataOut;
			end
		end
	end
endmodule

module sdController(input clk, input reset, input [31:0] address, input doRead, 
		input miso, output [7:0] reg byteOut = 0, output readyForRead, 
		output reg byteReady = 0, output sclk, output mosi, output reg cs = 1);

	/*
		There are 15 states used to initialize and read from the SD card using
		the SD SPI protocol. These states are described in detail below.

		RST: 	The controller's default state. Resets all counters and will
				re-initialize the card in SPI mode.
		INIT:	Waits 80 cycles for the SD card registers to initialize.
		CMD0:	Sends a software reset signal after CS is set to low to start
				the card in SPI mode.

		CMD55/CMD41:	Requests the current state of the card. These two
						commands are performed sequentially, as CMD41 is
						application-specific; these sorts must be preceded by 
						CMD55.

		POLL_CMD:	Checks if the card has successfully initialized. If it has
					not, this will direct back to CMD55/CMD41 to query card
					state again.
		IDLE:		The card is ready for a new read request.
		READ_BLOCK:	Prepares to read a new block of 512 bytes.
		SEND_CMD:	Sends a command to the SD card using a shift 
					register.

		READ_BLOCK_WAIT:	Waits for the SD card to be ready to transmit the
							block. This reads through the start byte of the
							transaction.
		READ_BLOCK_DATA:	Reads a block of actual data following the start
							byte.
		READ_BLOCK_CRC:		Reads the CRC data (2 bytes) after the block data.
							We don't use this at all, so this is ignored.
		RECEIVE_BYTE_WAIT:	Waits for a response following a command.
		RECEIVE_BYTE:		Reads in a byte. General purpose state.
		PRESENT_BYTE:		Presents a byte of actual data to byteOut.
	*/

	parameter RST = 0;
	parameter INIT = 1;
	parameter CMD0 = 2;
	parameter CMD55 = 3;
	parameter CMD41 = 4;
	parameter POLL_CMD = 5;
	parameter IDLE = 6;
	parameter READ_BLOCK = 7;
	parameter READ_BLOCK_WAIT = 8
	parameter READ_BLOCK_DATA = 9;
	parameter READ_BLOCK_CRC = 10;
	parameter SEND_CMD = 11;
	parameter RECEIVE_BYTE_WAIT = 12;
	parameter RECEIVE_BYTE = 13;
	parameter PRESENT_BYTE = 14;

	// Four commands are constants (i.e. no arguments).
	parameter CMD_HI = 	56'hFF_FF_FF_FF_FF_FF_FF;
	parameter CMD_0 = 	56'hFF_40_00_00_00_00_95;
	parameter CMD_41 = 	56'hFF_69_00_00_00_00_95;
	parameter CMD_55 = 	56'hFF_77_00_00_00_00_95;

	reg [4:0] state = RST;
	reg [4:0] return_state = RST;
	reg [55:0] cmd_out = CMD_HI;
	reg [7:0] recv_data = 0;

	reg [8:0] byte_count = 0;
	reg [7:0] bit_count = 0;

	assign mosi = cmd_out[55];

	assign readyForRead = (state == IDLE);

	// TODO: may need to use a slower clock speed for the SD card than for the
	// controller (some sources indicate 1/2 clock speed).
	assign sclk = clk;

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
endmodule