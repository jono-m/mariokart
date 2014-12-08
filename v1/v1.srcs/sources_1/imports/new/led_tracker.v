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
//JA[3] = xclk JA[1] = pclk JA[0] = href JA[2] = vsync
//JA[7:5] = data

module led_tracker(input clk, input replace_cars, output[3:0] vgaRed, output[3:0] vgaBlue, output[3:0] vgaGreen, input [9:0] hcount, input [9:0] vcount,
        input hsync, input vsync, input at_display_area, input btnCpuReset, input[15:0] sw, input btnU, input btnL, input btnR, input btnD,
        input btnLU, input btnLD, input btnLL, input btnLR, input btnRU, input btnRD, input btnRL, input btnRR,
        inout[7:0] JC, inout[7:0] JD, output [9:0] xloc_1, output [8:0] yloc_1, output [9:0] xloc_2, output [8:0] yloc_2);
    wire vga_clock;
    clock_quarter_divider vga_clockgen(clk, vga_clock);
    assign JC[3] = vga_clock;
    assign JD[3] = vga_clock;
    
    wire [9:0] x1;
    wire [9:0] x2;
    wire [8:0] y1;
    wire [8:0] y2;
    wire pixels_available1;
    wire pixels_available2;
    wire [8:0] pixel_data1;
    wire [8:0] pixel_data2;
    camera camera1(.pclk(JC[1]), .vsync(JC[2]), .href(JC[0]), .data(JC[7:5]), .x(x1), .y(y1), .pixels_available(pixels_available1), .pixel(pixel_data1));

    camera camera2(.pclk(JD[1]), .vsync(JD[2]), .href(JD[0]), .data(JD[7:5]), .x(x2), .y(y2), .pixels_available(pixels_available2), .pixel(pixel_data2));
    wire [1:0] ncam1 = x1 % 4;
    wire [1:0] ncam2 = x2 % 4;

    //Camera start calibration
    //reg camera_adjust_state = 0;
    reg [9:0] x_cam1_start = 100;
    reg [8:0] y_cam1_start = 50;
    reg [9:0] x_cam2_start = 100;
    reg [8:0] y_cam2_start = 100;
    // always @(posedge clk) begin
    //     if(btnL == 1) begin
    //         camera_adjust_state <= 0;
    //     end
    //     else if(btnR == 1) begin
    //         camera_adjust_state <= 1;
    //     end
    //     case (camera_adjust_state)
    //         0: begin
    //             x_cam1_start <= {2'b00, sw[7:0]};
    //             y_cam1_start <= {1'b0, sw[15:8]};
    //         end
    //         1: begin
    //             x_cam2_start <= {2'b00, sw[7:0]};
    //             y_cam2_start <= {1'b0, sw[15:8]};
    //         end
    //     endcase
    // end
    reg pressed_state = 0;
    always @(posedge clk) begin
        if(pressed_state == 0) begin
            if(btnLL == 1) begin
                y_cam1_start <= y_cam1_start == 0 ? 0 : y_cam1_start - 1;
                pressed_state <= 1;
            end
            else if(btnLR == 1) begin
                y_cam1_start <= y_cam1_start == 479 ? 479 : y_cam1_start + 1;
                pressed_state <= 1;
            end
            else if(btnLU == 1) begin
                x_cam1_start <= x_cam1_start == 0 ? 0 : x_cam1_start - 1;
                pressed_state <= 1;
            end
            else if(btnLD == 1) begin
                x_cam1_start <= x_cam1_start == 639 ? 639 : x_cam1_start + 1;
                pressed_state <= 1;
            end
            if(btnRL == 1) begin
                y_cam2_start <= y_cam2_start == 0 ? 0 : y_cam2_start - 1;
                pressed_state <= 1;
            end
            else if(btnRR == 1) begin
                y_cam2_start <= y_cam2_start == 479 ? 479 : y_cam2_start + 1;
                pressed_state <= 1;
            end
            else if(btnRU == 1) begin
                x_cam2_start <= x_cam2_start == 0 ? 0 : x_cam2_start - 1;
                pressed_state <= 1;
            end
            else if(btnRD == 1) begin
                x_cam2_start <= x_cam2_start == 639 ? 639 : x_cam2_start + 1;
                pressed_state <= 1;
            end
        end
        else if(pressed_state == 1 && (~btnLL && ~btnLR && ~btnLU && ~btnLD && ~btnRL && ~btnRR && ~btnRU && ~btnRD)) begin
            pressed_state <= 0;
        end
    end

    
    reg wea1 = 0;
    reg wea2 = 0;
    
    wire [3:0] color1;
    wire [3:0] color2;
    wire [9:0] wx = hcount - 144;
    wire [8:0] wy = vcount - 35;

    //////////////////////////////////
    wire [9:0] x_cam1;
    wire [8:0] y_cam1;
    wire [9:0] x_cam2;
    wire [8:0] y_cam2;

    cameraScaler camScaler1(.vga_clock(vga_clock), 
                            .vsync(vsync),
                            .hcount(hcount),
                            .at_display_area(at_display_area), 
                            .x_cam_start(x_cam1_start),
                            .y_cam_start(y_cam1_start),
                            .x_cam(x_cam1),
                            .y_cam(y_cam1));

    cameraScaler camScaler2(.vga_clock(vga_clock), 
                            .vsync(vsync),
                            .hcount(hcount),
                            .at_display_area(at_display_area && (wx >= 320)), 
                            .x_cam_start(x_cam2_start),
                            .y_cam_start(y_cam2_start),
                            .x_cam(x_cam2),
                            .y_cam(y_cam2));
    
    wire [16:0] addra1 = y1*160 + (x1 >> 2);
    wire [16:0] addra2 = y2*160 + (x2 >> 2);
    //wire [16:0] addrb = wy*160 + (wx >> 2);
    wire [16:0] addrb1 = y_cam1*160 + (x_cam1 >> 2);
    wire [16:0] addrb2 = y_cam2*160 + (x_cam2 >> 2);
    // wire [16:0] addrb1 = wy*160 + (wx >> 3);
    // wire [16:0] addrb2 = wy*160 + (wx >> 3) - 320;
    
    reg [3:0] pixels_to_write1 = 0;
    reg [3:0] pixels_to_write2 = 0;

    camera_bram buff1(.clka(clk), .addra(addra1), .dina(pixels_to_write1), .wea(wea1), .clkb(clk), .addrb(addrb1), .doutb(color1));
    camera_bram buff2(.clka(clk), .addra(addra2), .dina(pixels_to_write2), .wea(wea2), .clkb(clk), .addrb(addrb2), .doutb(color2));

    // uncomment for split screen meshed display
    wire c1 = wx < 320 ? color1[3] : color2[3];
    wire c2 = wx < 320 ? color1[2] : color2[2];
    wire c3 = wx < 320 ? color1[1] : color2[1];
    wire c4 = wx < 320 ? color1[0] : color2[0];
    
    wire [1:0] n = wx < 320 ? x_cam1 % 4 : x_cam2 % 4;
    wire pixel_color = (n == 0) ? c1 : ((n == 1) ? c2 : ((n == 2) ? c3 : c4));
    wire at_loc = (wx == xloc_1 || wy == yloc_1 || wx == xloc_2 || wy == yloc_2);

    tracker #(.DEFAULT_X(384), .DEFAULT_Y(384)) ledtrack_1(.clk(clk), .hard_reset((~btnCpuReset || replace_cars)), .data(pixel_color), .x(wx), .y(wy), .vsync(vsync), .xloc(xloc_1), .yloc(yloc_1));

    tracker #(.DEFAULT_X(384), .DEFAULT_Y(344)) ledtrack_2(.clk(clk), .hard_reset((~btnCpuReset || replace_cars)), .data(pixel_color), .x(wx), .y(wy), .vsync(vsync), .xloc(xloc_2), .yloc(yloc_2));

    // wire [2:0] c1 = sw[0] ? color1[11:9] : color2[11:9];
    // wire [2:0] c2 = sw[0] ? color1[8:6] : color2[8:6];
    // wire [2:0] c3 = sw[0] ? color1[5:3] : color2[5:3];
    // wire [2:0] c4 = sw[0] ? color1[2:0] : color2[2:0];

    // wire [2:0] c1 = color1[11:9];
    // wire [2:0] c2 = color1[8:6];
    // wire [2:0] c3 = color1[5:3];
    // wire [2:0] c4 = color1[2:0];
    
    //wire [1:0] n = wx % 4;

    assign vgaRed = at_display_area ? {pixel_color, pixel_color, pixel_color, pixel_color} : 0;
    assign vgaGreen = at_display_area ? {pixel_color, pixel_color, pixel_color, pixel_color} : 0;
    assign vgaBlue = at_display_area ? {pixel_color, pixel_color, pixel_color, pixel_color} : 0;

    wire [2:0] camera_threshold = 3'b010;
    
    always @(posedge clk) begin
        if(pixels_available1) begin
            case(ncam1)
                0: begin
                    pixels_to_write1[3] <= pixel_data1[8:6] >= camera_threshold;
                    wea1 <= 0;
                end
                1: begin
                    pixels_to_write1[2] <= pixel_data1[8:6] >= camera_threshold;
                end
                2: begin
                    pixels_to_write1[1] <= pixel_data1[8:6] >= camera_threshold;
                end
                3: begin
                    pixels_to_write1[0] <= pixel_data1[8:6] >= camera_threshold;

                    wea1 <= 1;
                end
            endcase
        end
        if(pixels_available2) begin
            case(ncam2)
                0: begin
                    pixels_to_write2[3] <= pixel_data2[8:6] >= camera_threshold;
                    wea2 <= 0;
                end
                1: begin
                    pixels_to_write2[2] <= pixel_data2[8:6] >= camera_threshold;
                end
                2: begin
                    pixels_to_write2[1] <= pixel_data2[8:6] >= camera_threshold;
                end
                3: begin
                    pixels_to_write2[0] <= pixel_data2[8:6] >= camera_threshold;

                    wea2 <= 1;
                end
            endcase
        end
    end
endmodule

module tracker #(DEFAULT_X = 400, DEFAULT_Y = 250) (input clk, input hard_reset, input data, input [9:0] x, input [8:0] y, input vsync, output [9:0] xloc, output [8:0] yloc);
    reg [14:0] x_acum = 0;
    reg [14:0] pow_of_two_x_acum = 0;
    reg [8:0] number_of_pixels = 0;
    reg [2:0] pow_of_two_number_of_pixels = 0;
    reg [13:0] y_acum = 0;
    reg [13:0] pow_of_two_y_acum = 0;
    // reg [8:0] y_number_of_pixels = 0;
    // reg [2:0] y_pow_of_two_number_of_pixels = 0;

    reg [9:0] prev_x = 0;
    reg reset = 0;

    reg [11:0] x_loc_full = DEFAULT_X;
    reg [11:0] y_loc_full = DEFAULT_Y;

    assign xloc = x_loc_full[9:0];
    assign yloc = y_loc_full[8:0];

    wire [9:0] roi_width = 30;
    
    wire in_region;
    rectangle roi(.pixel_x(x), .pixel_y(y), 
                .rectangle_center_x(xloc), .rectangle_center_y(yloc),
                .is_in_rectangle(in_region));

    always @(posedge clk) begin
        if(hard_reset == 1) begin
            x_loc_full <= DEFAULT_X;
            y_loc_full <= DEFAULT_Y;
            x_acum <= 0;
            y_acum <= 0;
            number_of_pixels <= 0;
            pow_of_two_number_of_pixels <= 0;
            reset <= 1;
        end

        else begin
            prev_x <= x;
            if(vsync == 0 && prev_x != x) begin
                reset <= 0;
                if(data == 1 && in_region) begin
                    if(number_of_pixels < 64) begin
                        x_acum <= x_acum + x;
                        y_acum <= y_acum + y;
                        number_of_pixels <= number_of_pixels + 1;
                        case (number_of_pixels)
                            1: begin
                                pow_of_two_x_acum <= x_acum;
                                pow_of_two_y_acum <= y_acum;
                                pow_of_two_number_of_pixels <= 0;
                            end
                            2: begin
                                pow_of_two_x_acum <= x_acum;
                                pow_of_two_y_acum <= y_acum;
                                pow_of_two_number_of_pixels <= 1;
                            end
                            4: begin
                                pow_of_two_x_acum <= x_acum;
                                pow_of_two_y_acum <= y_acum;
                                pow_of_two_number_of_pixels <= 2;
                            end
                            8: begin
                                pow_of_two_x_acum <= x_acum;
                                pow_of_two_y_acum <= y_acum;
                                pow_of_two_number_of_pixels <= 3;
                            end
                            16: begin
                                pow_of_two_x_acum <= x_acum;
                                pow_of_two_y_acum <= y_acum;
                                pow_of_two_number_of_pixels <= 4;
                            end
                            32: begin
                                pow_of_two_x_acum <= x_acum;
                                pow_of_two_y_acum <= y_acum;
                                pow_of_two_number_of_pixels <= 5;
                            end
                            64: begin
                                pow_of_two_x_acum <= x_acum;
                                pow_of_two_y_acum <= y_acum;
                                pow_of_two_number_of_pixels <= 6;
                            end
                        endcase
                    end
                end
            end
            else if(vsync == 1) begin
                if(reset == 0) begin
                    if(pow_of_two_number_of_pixels >= 1) begin
                        x_loc_full <= pow_of_two_x_acum >> pow_of_two_number_of_pixels;
                        y_loc_full <= pow_of_two_y_acum >> pow_of_two_number_of_pixels;
                    end
                    x_acum <= 0;
                    y_acum <= 0;
                    number_of_pixels <= 0;
                    pow_of_two_number_of_pixels <= 0;
                    reset <= 1;
                end
            end
        end
    end
endmodule

module rectangle #(WIDTH = 20, HEIGHT = 20)
                  (input [9:0] pixel_x, input [8:0] pixel_y,
                  input [9:0] rectangle_center_x, input [8:0] rectangle_center_y,
                  output is_in_rectangle);
  wire signed [10:0] left_x = $signed({1'b0, rectangle_center_x}) - WIDTH/2;
  wire signed [9:0] top_y = $signed({1'b0, rectangle_center_y}) - HEIGHT/2;
  assign is_in_rectangle = ($signed({1'b0, pixel_x}) >= left_x) && 
                           ($signed({1'b0, pixel_x}) < left_x + WIDTH) &&
                           ($signed({1'b0, pixel_y}) >= top_y) && 
                           ($signed({1'b0, pixel_y}) < top_y + HEIGHT);
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