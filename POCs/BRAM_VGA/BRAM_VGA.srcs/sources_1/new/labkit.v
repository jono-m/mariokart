`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2014 04:28:36 PM
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


module labkit(input clk, output[3:0] vgaRed, output[3:0] vgaBlue, output[3:0] vgaGreen, output Hsync, output Vsync, output[1:0] led);
    wire vga_clock;
    clock_quarter_divider vga_clockgen(clk, vga_clock);
    
    wire [9:0] x;
    wire [9:0] y;
    wire hsync, vsync, at_display_area;
    vga vga1(.vga_clock(vga_clock),.x(x),.y(y),
          .hsync(hsync),.vsync(vsync),.at_display_area(at_display_area));
    
    wire [3:0] red;
    wire [3:0] green;
    wire [3:0] blue;
    
    image_loader il(.clk(clk), .vga_clock(vga_clock), .x(x), .y(y), .red(red), .green(green), .blue(blue));
    
    assign vgaRed = at_display_area ? red : 0;
    assign vgaGreen = at_display_area ? green : 0;
    assign vgaBlue = at_display_area ? blue : 0;
    assign Hsync = ~hsync;
    assign Vsync = ~vsync;
endmodule

module image_loader(input clk, input vga_clock, input [9:0] x, input [9:0] y,
        output [3:0] red, output [3:0] green, output [3:0] blue);
    wire [16:0] addra = (479-y)*160 + (x >> 2);
    wire [31:0] douta;
    wire enable = 1;
    blk_mem_gen_0 mario_image(.clka(clk), .addra(addra), .douta(douta), .ena(enable));
    wire [7:0] c1 = douta[31:24];
    wire [7:0] c2 = douta[23:16];
    wire [7:0] c3 = douta[15:8];
    wire [7:0] c4 = douta[7:0];
    
    wire [1:0] n = x % 4;
    wire [7:0] color = (n == 0) ? c1 : ((n == 1) ? c2 : ((n == 2) ? c3 : c4));
    assign red = (color[7:5] << 1);
    assign green = (color[4:2] << 1);
    assign blue = (color[1:0] << 2);
endmodule

module vga(input vga_clock,
            output [9:0] x,
            output [9:0] y,
            output vsync, hsync, at_display_area);
    reg [9:0] hcount = 0;    // pixel number on current line
    reg [9:0] vcount = 0;     // line number
    assign x = at_display_area ? (hcount-144) : 0;
    assign y = at_display_area ? (vcount-35) : 0;
    // Counters.
    always @(posedge vga_clock) begin
        if (hcount == 799) begin
            hcount <= 0;
        end
        else begin
            hcount <= hcount +  1;
        end
        if (vcount == 524) begin
            vcount <= 0;
        end
        else if(hcount == 799) begin
            vcount <= vcount + 1;
        end
    end
    
    assign hsync = (hcount < 96);
    assign vsync = (vcount < 2);
    assign at_display_area = (hcount >= 144 && hcount < 784 && vcount >= 35 && vcount < 515);
endmodule

module clock_quarter_divider(input clk100_mhz, output reg clk25_mhz = 0);
    reg counter = 0;
    
    always @(posedge clk100_mhz) begin
        counter <= counter + 1;
        if (counter == 0) begin
            clk25_mhz <= ~clk25_mhz;
        end
    end
endmodule