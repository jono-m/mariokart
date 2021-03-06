// Loads images from SD flash memory into BRAM. Reads the given pixel
// from BRAM.

`timescale 1ns / 1ps

module image_loader 
        #(WIDTH = 400, HEIGHT = 80, ROWS = 8000, BRAM_ADDWIDTH = 12, ALPHA = 0)
        (input clk, input rst, input load,
        input [31:0] address_offset,
        input [9:0] x, input [8:0] y,
        output [3:0] red, output [3:0] green, output [3:0] blue, output alpha,
        output is_loaded,

        // SD Card Control signals
        input sd_byte_available, sd_ready_for_read, input [7:0] sd_byte, 
        output reg [31:0] sd_address = 0,
        output reg sd_do_read = 0, 

        // BRAM
        output [BRAM_ADDWIDTH:0] bram_address,
        input [31:0] bram_read_data,
        output reg [31:0] bram_write_data = 0,
        output reg bram_write_enable = 0
        );

    // Read a pixel from BRAM
    wire is_present = (x < WIDTH && y < HEIGHT);
    wire [1:0] n = x[1:0];
    wire [BRAM_ADDWIDTH:0] read_address = is_present ? 
            ((HEIGHT-1)-y)*(WIDTH/4) + (x >> 2) + (n >= 2 ? 1 : 0) : 0;
    wire [7:0] c1 = bram_read_data[31:24];
    wire [7:0] c2 = bram_read_data[23:16];
    wire [7:0] c3 = bram_read_data[15:8];
    wire [7:0] c4 = bram_read_data[7:0];
    reg [7:0] next_color1 = 0;
    reg [7:0] last_color2 = 0;
    reg [7:0] last_color3 = 0;
    reg [7:0] last_color4 = 0;
    
    wire [7:0] color = (n == 0) ? next_color1 : ((n == 1) ? c2 : ((n == 2) ? last_color3 : last_color4));
    assign red = (color[7:5] << 1);
    assign green = (color[4:2] << 1);
    assign blue = (color[1:0] << 2);
    wire is_black = (color == 0);
    assign alpha = is_present && ~(ALPHA == 1 && is_black == 1);

    reg was_byte_available = 0;
    reg [1:0] loaded_pixels = 0;
    reg [BRAM_ADDWIDTH:0] loaded_rows = 0;
    reg [BRAM_ADDWIDTH:0] write_address = 0;

    wire loaded = (loaded_rows >= ROWS);
    assign is_loaded = loaded;
    assign bram_address = is_loaded ? read_address : write_address;

    reg [31:0] new_pixels = 0;

    always @(posedge clk) begin
        if(n == 1) begin
            last_color2 <= c2;
            last_color3 <= c3;
            last_color4 <= c4;
        end
        if(n >= 2) begin
            next_color1 <= c1;
        end
    end

    always @(posedge clk) begin
        if(rst) begin
            bram_write_data <= 0;
            bram_write_enable <= 0;
            loaded_rows <= 0;
            loaded_pixels <= 0;
            sd_address <= 0;
            sd_do_read <= 0;
            was_byte_available <= 0;
            write_address <= 0;
            new_pixels <= 0;
        end
        else begin
            if(loaded == 0 && load == 1) begin
                if(sd_ready_for_read == 1) begin
                    sd_do_read <= 1;
                    sd_address <= address_offset + 
                        (loaded_rows << 2 + loaded_pixels);
                end
                else if(sd_do_read == 1) begin
                    was_byte_available <= sd_byte_available;
                    if(was_byte_available == 0 && sd_byte_available == 1) begin
                        new_pixels <= {new_pixels[23:0], sd_byte};
                        if(loaded_pixels == 3) begin
                            bram_write_data <= {new_pixels[23:0], sd_byte};
                            write_address <= loaded_rows;
                            bram_write_enable <= 1;
                            loaded_rows <= loaded_rows + 1;
                        end
                        loaded_pixels <= loaded_pixels + 1;
                    end
                end
            end
            else begin
                sd_do_read <= 0;
                bram_write_enable <= 0;
            end
        end
    end
endmodule