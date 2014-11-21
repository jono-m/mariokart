`timescale 1ns / 1ps

module character_select_box
        #(WIDTH = 130, HEIGHT = 153, THICKNESS = 10)
        (input clk, input rst,
        input [9:0] x, input [9:0] y,
        input [11:0] color,
        output [3:0] red, output [3:0] green, output [3:0] blue, output alpha);
    wire within_outer = (x < WIDTH-THICKNESS && x < )
endmodule