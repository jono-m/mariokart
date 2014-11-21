// Loads images from SD flash memory into BRAM. Reads the given pixel
// from BRAM.

`timescale 1ns / 1ps

module image_loader 
		#(WIDTH = 640, HEIGHT = 480, ROWS = 76800, BRAM_ADDWIDTH = 16)
		(input clk, input rst, input load,
		input [31:0] address_offset,
		input [9:0] x, input [9:0] y,
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
	assign alpha = (x < WIDTH && y < HEIGHT);
 	wire [BRAM_ADDWIDTH:0] read_address = alpha ? ((HEIGHT-1)-y)*(WIDTH/4) + (x/4) : 0;
	wire [7:0] c1 = bram_read_data[31:24];
	wire [7:0] c2 = bram_read_data[23:16];
	wire [7:0] c3 = bram_read_data[15:8];
	wire [7:0] c4 = bram_read_data[7:0];

	wire [1:0] n = x % 4;
	wire [7:0] color = (n == 0) ? c1 : ((n == 1) ? c2 : ((n == 2) ? c3 : c4));
	assign red = (color[7:5] << 1);
	assign green = (color[4:2] << 1);
	assign blue = (color[1:0] << 2);

	reg was_byte_available = 0;
	reg [2:0] loaded_pixels = 0;
	reg [BRAM_ADDWIDTH:0] loaded_rows = 0;
	reg [BRAM_ADDWIDTH:0] write_address = 0;

  	assign is_loaded = (loaded_rows >= ROWS);
	assign bram_address = is_loaded ? read_address : write_address;

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
		end
		else begin
			if(is_loaded == 0 && load) begin
			    if(sd_ready_for_read == 1) begin
				    sd_do_read <= 1;
				    sd_address <= address_offset + (loaded_rows << 2 + loaded_pixels);
			    end
        		was_byte_available <= sd_byte_available;
		        if(was_byte_available == 0 && sd_byte_available == 1) begin
		          if(loaded_pixels == 0) begin
		              bram_write_data[31:24] <= sd_byte;
		              loaded_pixels <= loaded_pixels + 1;
		              bram_write_enable <= 0;
		          end
		          if(loaded_pixels == 1) begin
		              bram_write_data[23:16] <= sd_byte;
		              loaded_pixels <= loaded_pixels + 1;
		          end
		          if(loaded_pixels == 2) begin
		              bram_write_data[15:8] <= sd_byte;
		              loaded_pixels <= loaded_pixels + 1;
		          end
		          if(loaded_pixels == 3) begin
		              bram_write_data[7:0] <= sd_byte;
		              bram_write_enable <= 1;
		              write_address <= loaded_rows;
		              loaded_rows <= loaded_rows + 1;
		              loaded_pixels <= 0;
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