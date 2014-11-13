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
//JB[0] = xclk JB[1] = pclk JB[2] = href JB[3] = vsync JB[4] = PWDN JB[5] = reset
//JA[7:0] = data

module labkit(input clk, output[3:0] vgaRed, output[3:0] vgaBlue, output[3:0] vgaGreen, output Hsync, output Vsync, output[1:0] led, output JA[7:0], output JB[5:0]);
    assign led[1] = 1;
    assign led[0] = 0;
    wire vga_clock;
    clock_quarter_divider vga_clockgen(clk, vga_clock);
    
    wire [9:0] hcount;
    wire [9:0] vcount;
    wire hsync, vsync, at_display_area;
    vga vga1(.vga_clock(vga_clock),.hcount(hcount),.vcount(vcount),
          .hsync(hsync),.vsync(vsync),.at_display_area(at_display_area));
    
    wire [8:0] x;
    wire [8:0] y;
    wire [7:0] pixel;
    wire valid;
    Capture camera(.pclk(JB[1], .vsync(JB[3]), .href(JB[2]), .data(JA), .x(x), .y(y), .valid(valid));
    
    pixel_buffer buff(.clka(clk), .addra({x[8:1],y[8:1]}), .dina(JA) .ena(1), .wea(1), .clkb(clk), .addrb(), 
        
    assign vgaRed = at_display_area ? {4{hcount[7]}} : 0;
    assign vgaGreen = at_display_area ? {4{hcount[6]}} : 0;
    assign vgaBlue = at_display_area ? {4{hcount[5]}} : 0;
    assign Hsync = ~hsync;
    assign Vsync = ~vsync;
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

module vga(input vga_clock,
            output reg [9:0] hcount = 0,    // pixel number on current line
            output reg [9:0] vcount = 0,	 // line number
            output vsync, hsync, at_display_area);
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