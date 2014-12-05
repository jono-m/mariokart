`timescale 1ns / 1ps

module latiku_on_your_marks
    (input clk_100mhz, input clk_50mhz, input rst, input load,
    input [31:0] address_offset,
    input [9:0] x, input [9:0] y,
    output [3:0] red, output [3:0] green, output [3:0] blue, output alpha,
    output is_loaded,

    // SD Card Control signals
    input sd_byte_available, sd_ready_for_read, input [7:0] sd_byte, 
    output [31:0] sd_address,
    output sd_do_read,

    input [1:0] light_state
    );

    wire [11:0] bram_latiku_oym_adr;
    wire [31:0] bram_latiku_oym_write;
    wire [31:0] bram_latiku_oym_read;
    wire bram_latiku_oym_we;   
    latiku_oym_image_bram latiku_oym_bram(.clka(clk_50mhz), .addra(bram_latiku_oym_adr), 
            .dina(bram_latiku_oym_write), .douta(bram_latiku_oym_read), .wea(bram_latiku_oym_we));

    // Loader connections.
    wire [3:0] im_red;
    wire [3:0] im_green;
    wire [3:0] im_blue;
    wire latiku_oym_a;
    image_loader #(.WIDTH(100), .HEIGHT(100), .ROWS(2500), .BRAM_ADDWIDTH(11),
            .ALPHA(1)) 
            latiku_oym_loader(.clk(clk_100mhz), .rst(rst), 
                    .load(load), .x(x), .y(y), .red(im_red), 
                    .green(im_green), .blue(im_blue), .alpha(latiku_oym_a),
                    .address_offset(address_offset),
                    .is_loaded(is_loaded), 
                    .sd_byte_available(sd_byte_available), 
                    .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
                    .sd_address(sd_address), .sd_do_read(sd_do_read),
                    .bram_address(bram_latiku_oym_adr), .bram_read_data(bram_latiku_oym_read),
                    .bram_write_data(bram_latiku_oym_write), 
                    .bram_write_enable(bram_latiku_oym_we));

    wire is_in_red = (x >= 75 && x < 93) && (y >= 40 && y < 59);
    wire is_in_orange = (x >= 75 && x < 93) && (y >= 60 && y < 79);
    wire is_in_green = (x >= 75 && x < 93) && (y >= 80 && y < 99);

    wire [11:0] red_color = (light_state == 0) ? 12'hC00 : 12'h500;
    wire [11:0] orange_color = (light_state == 1) ? 12'hC80 : 12'h630;
    wire [11:0] green_color = (light_state == 2) ? 12'h0C0 : 12'h050;

    assign red = (latiku_oym_a ? im_red :
            (is_in_red ? red_color[11:8] :
            (is_in_orange ? orange_color[11:8] :
            (is_in_green ? green_color[11:8] : 0))));
    assign green = (latiku_oym_a ? im_green :
            (is_in_red ? red_color[7:4] :
            (is_in_orange ? orange_color[7:4] :
            (is_in_green ? green_color[7:4] : 0))));
    assign blue = (latiku_oym_a ? im_blue :
            (is_in_red ? red_color[3:0] :
            (is_in_orange ? orange_color[3:0] :
            (is_in_green ? green_color[3:0] : 0))));
    assign alpha = latiku_oym_a || is_in_red || is_in_orange || is_in_green;
endmodule