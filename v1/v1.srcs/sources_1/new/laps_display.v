`timescale 1ns / 1ps

module laps_display
        #(DOT_SIZE = 4, DOT_THICKNESS = 1, DOT_SPACING = 7)
        (input clk, input rst,
        input [1:0] laps_completed,
        input [9:0] x, input [8:0] y,
        output [9:0] sprite_x, output [8:0] sprite_y,
        input [11:0] color,
        output [3:0] red, output [3:0] green, output [3:0] blue, output alpha);
    assign sprite_x = x - 66;
    assign sprite_y = y + 30;
    wire [3:0] b1r;
    wire [3:0] b1g;
    wire [3:0] b1b;
    wire b1a;
    wire b1f = laps_completed >= 0;
    character_select_box #(.WIDTH(DOT_SIZE), .HEIGHT(DOT_SIZE), 
        .THICKNESS(DOT_THICKNESS))
        b1 (.clk(clk), .rst(rst), .x(x), .y(y), .color(color), .filled(b1f), 
        .red(b1r), .green(b1g), .blue(b1b), .alpha(b1a));
    wire [3:0] b2r;
    wire [3:0] b2g;
    wire [3:0] b2b;
    wire b2a;
    wire b2f = laps_completed >= 1;
    character_select_box #(.WIDTH(DOT_SIZE), .HEIGHT(DOT_SIZE), 
        .THICKNESS(DOT_THICKNESS))
        b2 (.clk(clk), .rst(rst), .x(x - DOT_SPACING), .y(y), .color(color), 
        .filled(b2f), 
        .red(b2r), .green(b2g), .blue(b2b), .alpha(b2a));
    wire [3:0] b3r;
    wire [3:0] b3g;
    wire [3:0] b3b;
    wire b3a;
    wire b3f = laps_completed >= 2;
    character_select_box #(.WIDTH(DOT_SIZE), .HEIGHT(DOT_SIZE), 
        .THICKNESS(DOT_THICKNESS))
        b3 (.clk(clk), .rst(rst), .x(x - DOT_SPACING - DOT_SPACING), 
        .y(y), .color(color), .filled(b3f), 
        .red(b3r), .green(b3g), .blue(b3b), .alpha(b3a));
    
    assign alpha = b1a || b2a || b3a;
    assign red = b1a ? b1r : (b2a ? b2r : (b3a ? b3r : 0));
    assign green = b1a ? b1g : (b2a ? b2g : (b3g ? b3g : 0));
    assign blue = b1a ? b1b : (b2a ? b2b : (b3b ? b3b : 0));
endmodule