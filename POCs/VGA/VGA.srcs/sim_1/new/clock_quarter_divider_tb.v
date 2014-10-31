`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2014 05:17:41 PM
// Design Name: 
// Module Name: clock_quarter_divider_tb
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


module clock_quarter_divider_tb();
    reg clk_in;
    wire clk_out;
    
    
    clock_quarter_divider divider(clk_in, clk_out);
    initial begin
        clk_in = 0;
        forever #50 clk_in = ~clk_in;
    end
endmodule
