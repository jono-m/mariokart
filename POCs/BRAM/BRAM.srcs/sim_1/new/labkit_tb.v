`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2014 05:59:32 PM
// Design Name: 
// Module Name: vga_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module labkit_tb();
    reg clk_in;
    wire [15:0] led;
    wire [3:0] addr;
    wire advance;
    labkit test(clk_in, led, addr, advance);
    
    initial begin
       clk_in = 0;
       forever #50 clk_in = ~clk_in;
    end
endmodule
