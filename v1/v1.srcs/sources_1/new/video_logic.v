// Manages all video loaders and display logic.

`timescale 1ns / 1ps

module video_logic(input clk_100mhz, input rst,
		// Game logic connections
		input [2:0] phase,
		input selected_character,
		input load,
		output reg is_loaded = 0,

		// SD card connections
		output reg sd_read, input [7:0] sd_byte, input sd_byte_available,
		input sd_ready_for_read, output reg [31:0] sd_address,
		
		// VGA connections
		input [9:0] x, input [9:0] y,
		output [3:0] red, output [3:0] green, output [3:0] blue
	);

	// Flag if image loaders should be unloaded.
	reg unload = 0;
	wire rst_loader = rst || unload;
	// Flag if we are currently loading images.
	reg loading = 0;

	// --------------------------
	// Background image loader
	//
	// BRAM connections.
	wire [16:0] bram_bg_adr;
	wire [31:0] bram_bg_write;
	wire [31:0] bram_bg_read;
	wire bram_bg_we;
    background_image_bram bg(.clka(clk_100mhz), .addra(bram_bg_adr), 
    		.dina(bram_bg_write), .douta(bram_bg_read), .wea(bram_bg_we));
    // Loader connections.
	reg bg_load = 0;
	wire [3:0] bg_r;
	wire [3:0] bg_g;
	wire [3:0] bg_b;
	reg [31:0] bg_address_offset = 0;
	wire bg_alpha, is_bg_loaded;
	wire [31:0] bg_sd_adr;
	wire [31:0] bg_sd_read;
	image_loader #(.WIDTH(640), .HEIGHT(480), .ROWS(76800)) 
			bg(.clk(clk_100mhz), .rst(rst_loader), 
					.load(bg_load), .x(x), .y(y), .red(bg_r), 
					.green(bg_g), .blue(bg_b), .alpha(bg_alpha),
					.address_offset(bg_address_offset),
					.is_loaded(is_bg_loaded), 
					.sd_byte_available(byte_available), 
					.sd_ready_for_read(ready_for_read), .sd_byte(sd_byte),
					.sd_address(bg_sd_adr), .sd_do_read(bg_sd_read),
					.bram_address(bram_bg_adr), .bram_read_data(bram_bg_read),
					.bram_write_data(bram_bg_write), 
					.bram_write_enable(bram_bg_we));
	// -------------------------

	// Tracks which image loader is currently active.
	wire active_loader = bg_load;

	wire in_loading_phase = (phase == `PHASE_LOADING_START_SCREEN ||
						  phase == `PHASE_LOADING_CHARACTER_SELECT ||
						  phase == `PHASE_LOADING_RACING);

	// Determine which images should be loaded.
	always @(posedge clk) begin
		if(rst == 1) begin
			bg_address_offset <= 0;
		end
		else begin
			case(phase)
				`PHASE_LOADING_START_SCREEN: begin
					bg_address_offset <= `ADR_START_SCREEN_BG;
				end
				`PHASE_LOADING_CHARACTER_SELECT: begin
					bg_address_offset <= `ADR_CHAR_SELECT_BG;
				end
				`PHASE_LOADING_RACING: begin
					bg_address_offset <= `ADR_RACING_BG;
				end
				default: begin
				end
			endcase
		end
	end

	// Reload images into BRAM.
	always @(posedge clk) begin
		if(rst == 1) begin
			// Reset all loaders
			bg_load <= 0;

			is_loaded <= 0;
			unload <= 0;
			loading <= 0;
		end
		else begin
			if(in_loading_phase == 1 && load) begin
				if(loading == 1) begin
					// Refresh each loader in order.
					if(is_bg_loaded == 0) begin
						bg_load <= 1;
					end
					else begin
						// Done loading, clean up.
						bg_load <= 0;

						is_loaded <= 1;
					end
				end
				else begin
					unload <= 1;
				end
			end
			else begin
				loading <= 0;
				is_loaded <= 0;
			end
			// If we are unloading, wait until loaders have updated.
			if(unload == 1) begin
				if(is_bg_loaded == 0) begin
					// Can begin loading new scene.
					loading <= 1;
					unload <= 0;
				end
			end
		end
	end

	// Share the SD card between image loaders.
	always @(*) begin
		case(active_loader)
			// Background loader
			1'b1: begin
				do_read = bg_sd_read;
				adr = bg_sd_adr;
			end
			1'b0: begin
				do_read = 0;
				adr = 0;
			end
		endcase
	end
endmodule
