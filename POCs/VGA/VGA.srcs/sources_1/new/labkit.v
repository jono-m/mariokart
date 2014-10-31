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


module labkit(input clk, output[3:0] vgaRed, output[3:0] vgaGreen, 
        output[3:0] vgaBlue, output Hsync, output Vsync);
    wire clock_100mhz = clk;
    wire clock_50mhz;
    wire clock_25mhz;
    clock_divider clock_divider1(clock_100_mhz, clock_50mhz);
    clock_divider clock_divider1(clock_50_mhz, clock_25mhz);
    
    wire [9:0] display_x;
    wire [8:0] display_y;
    wire [11:0] display_rgb;

    vga vga1(.vga_clock(clock_25mhz), .rgb(display_rgb), .x_coord(display_x), 
            .y_coord(display_y), .vgaRed(vgaRed), .vgaGreen(vgaGreen), 
            .vgaBlue(vgaBlue), .Hsync(Hsync),.Vsync(Vsync),);

    assign display_rgb = 12'hF_0_0;

endmodule

module vga(input vga_clock,
            input [11:0] rgb,
            output [9:0] x_coord,
            output [8:0] y_coord,
            output Hsync, Vsync,
            output [3:0] vgaRed, vgaGreen, vgaBlue);
    reg [9:0] hcount = 0,    // pixel number on current line
    reg [9:0] vcount = 0,     // line number
    
    assign Hsync = ~(hcount < 96);
    assign Vsync = ~(vcount < 2);

    wire at_display_area;
    assign at_display_area = (hcount >= 144 && hcount < 784 && vcount >= 35 && vcount < 515);

    assign vgaRed = at_display_area ? rgb[11:8] : 4'b0000;
    assign vgaGreen = at_display_area ? rgb[7:4] : 4'b0000;
    assign vgaBlue = at_display_area ? rgb[3:0] : 4'b0000;

    assign x_coord = at_display_area ? hcount-9'd144 : 0;
    assign y_coord = at_display_area ? (vcount[8:0])-8'd2 : 0;

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
endmodule

module clock_divider(input clk100_mhz, output reg clk25_mhz = 0);    
    always @(posedge clk100_mhz) begin
        clk25_mhz <= ~clk25_mhz;
    end
endmodule