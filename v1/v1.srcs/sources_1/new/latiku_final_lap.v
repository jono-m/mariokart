`timescale 1ns / 1ps

module latiku_final_lap
    (input clk_100mhz, input rst, input load,
    input reset_timer,
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

    wire [11:0] bram_latiku_final_lap_adr;
    wire [31:0] bram_latiku_final_lap_write;
    wire [31:0] bram_latiku_final_lap_read;
    wire bram_latiku_final_lap_we;   
    latiku_final_lap_bram latiku_final_lap_bram(.clka(clk_100mhz), .addra(bram_latiku_final_lap_adr), 
            .dina(bram_latiku_final_lap_write), .douta(bram_latiku_final_lap_read), .wea(bram_latiku_final_lap_we));

    // Loader connections.
    image_loader #(.WIDTH(100), .HEIGHT(100), .ROWS(2500), .BRAM_ADDWIDTH(11),
            .ALPHA(1)) 
            latiku_final_lap_loader(.clk(clk_100mhz), .rst(rst_loader), 
                    .load(load), .x(x), .y(y), .red(red), 
                    .green(green), .blue(blue), .alpha(alpha),
                    .address_offset(address_offset),
                    .is_loaded(is_loaded), 
                    .sd_byte_available(sd_byte_available), 
                    .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
                    .sd_address(sd_address), .sd_do_read(sd_do_read),
                    .bram_address(bram_latiku_final_lap_adr), .bram_read_data(bram_latiku_final_lap_read),
                    .bram_write_data(bram_latiku_final_lap_write), 
                    .bram_write_enable(bram_latiku_final_lap_we));
endmodule