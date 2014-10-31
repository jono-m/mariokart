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


module vga_tb();
    reg clk_in;
    wire [9:0] hcount;
    wire [9:0] vcount;
    wire vsync;
    wire hsync;
    wire at_display_area;
    vga vga(clk_in, hcount, vcount, vsync, hsync, at_display_area);
    
    initial begin
       clk_in = 0;
       forever #50 clk_in = ~clk_in;
    end
endmodule
