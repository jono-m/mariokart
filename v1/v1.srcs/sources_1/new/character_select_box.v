`timescale 1ns / 1ps

module character_select_box
        #(WIDTH = 130, HEIGHT = 153, THICKNESS = 10)
        (input clk, input rst,
        input [9:0] x, input [9:0] y,
        input [11:0] color,
        output [3:0] red, output [3:0] green, output [3:0] blue, output alpha);
    wire within_outer = (x < THICKNESS + WIDTH + THICKNESS) 
        && (y < THICKNESS + HEIGHT + THICKNESS);
    wire within_inner = (x > THICKNESS && x < WIDTH + THICKNESS) 
        && (y > THICKNESS && y < HEIGHT + THICKNESS);
    assign alpha = within_outer && ~within_inner;
    assign red = alpha ? color[11:8] : 0;
    assign green = alpha ? color[7:4] : 0;
    assign blue = alpha ? color[3:0] : 0;
endmodule