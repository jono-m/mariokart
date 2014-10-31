`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2014 09:44:09 PM
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
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module labkit(input clk, output [15:0] led);
    reg [3:0] address = 4'b0000;
    wire ena = 1;
    wire advance;
    wire [15:0] data;
    timer animtimer(clk, advance);
    blk_mem_gen_0 bram1(clk, ena, address, data);
    assign led = data;
    
    always @(posedge advance) begin
        address <= address + 4'b0001;
    end
endmodule

module timer(input clk, output next);
    reg [26:0] counter = 0;
    assign next = (counter == 27'd25000000);
    always @(posedge clk) begin
        if(next) begin
            counter <= 0;
        end
        else begin
            counter <= counter + 1;
        end
    end
endmodule