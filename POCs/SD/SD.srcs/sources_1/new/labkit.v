`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2014 02:37:18 PM
// Design Name: 
// Module Name: labkit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:™
// 
//////////////////////////////////////////////////////////////////////////////////


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
		input miso, output [7:0] reg byteOut = 0, output outputReady, output sclk, 
		output mosi, output ss);

	parameter INIT_WAITING_BOOT = 0;
	parameter INIT_WAITING_DEASSERT = 1;
	parameter INIT_CMD0 = 2;
	parameter INIT_CMD41 = 3;
	parameter INIT_CMD55 = 4;
	parameter SEND_CMD = 5;
	parameter IDLE = 6;
	parameter READING = 7;

	parameter CMD0 = 48'h40_00_00_00_00_95;
	parameter CMD41 = 48'h69_00_00_00_00_95;
	parameter CMD55 = 48'h77_00_00_00_00_95;

	reg [2:0] controllerState = INIT_WAITING_BOOT;

	reg [47:0] command;

	assign outputReady = (controllerState == STATE_IDLE);
	assign ss = (controllerState == INIT_WAITING_BOOT);
	assign sclk = clk;
endmodule