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

module labkit(input clk, output[3:0] vgaRed, output[3:0] vgaBlue, output[3:0] vgaGreen, output Hsync, output Vsync, output [15:0] led, input[7:0] JA, inout[7:0] JB, input[8:0] sw);
//    assign led[1] = wea;
//    assign led[0] = 0;
    wire vga_clock;
    clock_quarter_divider vga_clockgen(clk, vga_clock);
    assign JB[0] = vga_clock;
    assign JB[4] = 0;
    assign JB[5] = 1;
    
    wire [9:0] hcount;
    wire [9:0] vcount;
    wire hsync, vsync;
    wire at_display_area;
    vga vga1(.vga_clock(vga_clock),.hcount(hcount),.vcount(vcount),
          .hsync(hsync),.vsync(vsync),.at_display_area(at_display_area));
    
    wire [9:0] x;
    wire [8:0] y;
    wire pixels_available;
    wire [8:0] pixel_data;
    Camera camera(.pclk(JB[1]), .vsync(JB[3]), .href(JB[2]), .data(JA), .x(x), .y(y), .pixels_available(pixels_available), .pixel(pixel_data));
    wire [1:0] ncam = x % 4;
//    (* mark_debug = "true" *) JA;
//    (* mark_debug = "true" *) JB[1];
//    (* mark_debug = "true" *) JB[3];
//    (* mark_debug = "true" *) JB[2];
    
    reg wea = 0;
//    assign led[7:0] = pixel_data;
//    assign led[15:8] = JA;
    
    wire [35:0] color;
    wire [9:0] wx = hcount - 144;
    wire [9:0] wy = vcount - 35;
    
    wire [16:0] addra = y*160 + (x >> 2);
    wire [16:0] addrb = wy*160 + (wx >> 2);
    
    reg [35:0] pixels_to_write = 0;

    pixel_buffer buff(.clka(clk), .addra(addra), .dina(pixels_to_write), .ena(1), .wea(wea), .clkb(clk), .addrb(addrb), .doutb(color), .enb(1));
    
    wire [8:0] c1 = color[35:27];
    wire [8:0] c2 = color[26:18];
    wire [8:0] c3 = color[17:9];
    wire [8:0] c4 = color[8:0];
    
    wire [1:0] n = wx % 4;
    wire [8:0] pixel_color = (n == 0) ? c1 : ((n == 1) ? c2 : ((n == 2) ? c3 : c4));
    //wire [8:0] pixel_color = sw[8:0];
    wire [11:0] p_y = {8'h00, pixel_color[8:6], 1'b0};
    wire [11:0] p_cb = {8'h00, pixel_color[5:3], 1'b0};
    wire [11:0] p_cr = {8'h00, pixel_color[2:0], 1'b0};
    
    (* mark_debug = "true" *)reg [11:0] temp_red = 0;
    (* mark_debug = "true" *)reg [11:0] temp_green = 0;
    (* mark_debug = "true" *)reg [11:0] temp_blue = 0;
    
    (* mark_debug = "true" *) reg [11:0] red = 0;
    (* mark_debug = "true" *) reg [11:0] green = 0;
    (* mark_debug = "true" *) reg [11:0] blue = 0;

    always@(posedge vga_clock) begin
        temp_red <= ((p_y*12'h12A + p_cr*12'h199) >> 4);
        temp_green <= ((p_y*12'h12A - p_cb*12'h064 - p_cr*12'h0d0) >> 4);
        temp_blue <= ((p_y*12'h12A + p_cb*12'h204) >> 4);
        if(temp_red > 12'h00d) begin
            red <= temp_red - 12'h00d;
        end
        else begin
            red <= 12'h000;
        end
        if(temp_green < 12'hFF7) begin
            green <= temp_green + 12'h008;
        end
        else begin
            green <= 12'hFFF;
        end
        if(temp_blue > 12'h011) begin
            blue <= temp_blue - 12'h011;
        end
        else begin
            blue <= 12'h000;
        end
    end
    
    assign vgaRed = at_display_area ? pixel_color[8:6] : 0;
    assign vgaGreen = at_display_area ? pixel_color[8:6] : 0;
    assign vgaBlue = at_display_area ? pixel_color[8:6] : 0;
    assign Hsync = ~hsync;
    assign Vsync = ~vsync;
    
    always @(posedge clk) begin
        if(pixels_available) begin
            case(ncam)
                0: begin
                    pixels_to_write[35:27] <= pixel_data;
                    wea <= 0;
                end
                1: begin
                    pixels_to_write[26:18] <= pixel_data;
                end
                2: begin
                    pixels_to_write[17:9] <= pixel_data;
                end
                3: begin
                    pixels_to_write[8:0] <= pixel_data;
                    wea <= 1;
                end
            endcase
        end
    end
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