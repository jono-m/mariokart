`timescale 1ns / 1ps

module time_display
    (input clk_100mhz, input clk_50mhz, input rst, input load,
    input force_display,
    input reset_timer,
    input [31:0] address_offset,
    input [9:0] x, input [8:0] y,
    output [3:0] red, output [3:0] green, output [3:0] blue, output alpha,
    output is_loaded,

    // SD Card Control signals
    input sd_byte_available, sd_ready_for_read, input [7:0] sd_byte, 
    output [31:0] sd_address,
    output sd_do_read,

    output reg [3:0] min_tens = 0,
    output reg [3:0] min_ones = 0,
    output reg [3:0] sec_tens = 0,
    output reg [3:0] sec_ones = 0,
    output reg [3:0] ms_tens = 0,
    output reg [3:0] ms_ones = 0,

    input [3:0] fmin_tens1,
    input [3:0] fmin_ones1,
    input [3:0] fsec_tens1,
    input [3:0] fsec_ones1,
    input [3:0] fms_tens1,
    input [3:0] fms_ones1,

    input [3:0] fmin_tens2,
    input [3:0] fmin_ones2,
    input [3:0] fsec_tens2,
    input [3:0] fsec_ones2,
    input [3:0] fms_tens2,
    input [3:0] fms_ones2
    );

    parameter BMP_X = 20;
    parameter BMP_Y = 20;
    parameter SPACING = 1;

    wire [10:0] bram_time_adr;
    wire [31:0] bram_time_write;
    wire [31:0] bram_time_read;
    wire bram_time_we;   
    time_image_bram time_bram(.clka(clk_50mhz), .addra(bram_time_adr), 
            .dina(bram_time_write), .douta(bram_time_read), .wea(bram_time_we));

    // Loader connections.
    wire time_a;
    wire [9:0] time_x;
    wire [8:0] time_y;
    image_loader #(.WIDTH(20), .HEIGHT(220), .ROWS(1100), .BRAM_ADDWIDTH(10),
            .ALPHA(1)) 
            time_loader(.clk(clk_100mhz), .rst(rst), 
                    .load(load), .x(time_x), .y(time_y), .red(red), 
                    .green(green), .blue(blue), .alpha(time_a),
                    .address_offset(address_offset),
                    .is_loaded(is_loaded), 
                    .sd_byte_available(sd_byte_available), 
                    .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
                    .sd_address(sd_address), .sd_do_read(sd_do_read),
                    .bram_address(bram_time_adr), .bram_read_data(bram_time_read),
                    .bram_write_data(bram_time_write), 
                    .bram_write_enable(bram_time_we));

    wire in_y = (y < BMP_Y);
    wire [9:0] min_tens_x = x;
    wire [9:0] min_ones_x = min_tens_x - BMP_X - SPACING;
    wire [9:0] min_separator_x = min_ones_x - BMP_X - SPACING;
    wire [9:0] sec_tens_x = min_separator_x - BMP_X - SPACING;
    wire [9:0] sec_ones_x = sec_tens_x - BMP_X - SPACING;
    wire [9:0] sec_separator_x = sec_ones_x - BMP_X - SPACING;
    wire [9:0] ms_tens_x = sec_separator_x - BMP_X - SPACING;
    wire [9:0] ms_ones_x = ms_tens_x - BMP_X - SPACING;
    wire in_min_tens = min_tens_x < BMP_X;
    wire in_min_ones = min_ones_x < BMP_X;
    wire in_min_separator = min_separator_x < BMP_X;
    wire in_sec_tens = sec_tens_x < BMP_X;
    wire in_sec_ones = sec_ones_x < BMP_X;
    wire in_sec_separator = sec_separator_x < BMP_X;
    wire in_ms_tens = ms_tens_x < BMP_X;
    wire in_ms_ones = ms_ones_x < BMP_X;

    wire in_y2 = (y >= (BMP_Y + 20) && y < (BMP_Y + BMP_Y + 20));

    wire in_drawing = in_min_tens || in_min_ones || in_min_separator ||
        in_sec_tens || in_sec_ones || in_sec_separator ||
        in_ms_tens || in_ms_ones;
    assign alpha = time_a && (in_y || (in_y2 && force_display))  && in_drawing;

    assign time_x = (in_min_tens ? min_tens_x : 
        (in_min_ones ? min_ones_x :
        (in_min_separator ? min_separator_x :
        (in_sec_tens ? sec_tens_x :
        (in_sec_ones ? sec_ones_x :
        (in_sec_separator ? sec_separator_x :
        (in_ms_tens ? ms_tens_x :
        (in_ms_ones ? ms_ones_x : 0
        ))))))));

    wire [3:0] number_to_draw = 
        (in_min_tens ? (force_display ? (in_y2 ? fmin_tens2 : fmin_tens1) : min_tens) : 
        (in_min_ones ? (force_display ? (in_y2 ? fmin_ones2 : fmin_ones1) : min_ones) :
        (in_min_separator ? 4'hA :
        (in_sec_tens ? (force_display ? (in_y2 ? fsec_tens2 : fsec_tens1) : sec_tens) :
        (in_sec_ones ? (force_display ? (in_y2 ? fsec_ones2 : fsec_ones1) : sec_ones) :
        (in_sec_separator ? 4'hA :
        (in_ms_tens ? (force_display ? (in_y2 ? fms_tens2 : fms_tens1) : ms_tens) :
        (in_ms_ones ? (force_display ? (in_y2 ? fms_ones2 : fms_ones1) : ms_ones) : 0
        ))))))));

    assign time_y = in_y ? (y + (number_to_draw * BMP_Y)) : (in_y2 ?
        (y - 20 - BMP_Y + (number_to_draw * BMP_Y)) : 0);

    reg [19:0] counter = 0;
    always @(posedge clk_100mhz) begin
      if(rst || reset_timer || force_display) begin
        min_tens <= 0;
        min_ones <= 0;
        sec_tens <= 0;
        sec_ones <= 0;
        ms_tens <= 0;
        ms_ones <= 0;
        counter <= 0;
      end
      else begin
        if(counter == 1000000) begin
          counter <= 0;
          if(ms_ones == 9) begin
            ms_ones <= 0;
            if(ms_tens == 9) begin
              ms_tens <= 0;
              if(sec_ones == 9) begin
                sec_ones <= 0;
                if(sec_tens == 5) begin
                  sec_tens <= 0;
                  if(min_ones == 9) begin
                    min_ones <= 0;
                    if(min_tens == 9) begin
                      min_tens <= 0;
                    end
                    else begin
                      min_tens <= min_tens + 1;
                    end
                  end
                  else begin
                    min_ones <= min_ones + 1;
                  end
                end
                else begin
                  sec_tens <= sec_tens + 1;
                end
              end
              else begin
                sec_ones <= sec_ones + 1;
              end
            end
            else begin
              ms_tens <= ms_tens + 1;
            end
          end
          else begin
            ms_ones <= ms_ones + 1;
          end
        end
        else begin
          counter <= counter + 1;
        end
      end
    end
endmodule