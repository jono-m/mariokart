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
	reg faded = 0;
	reg [4:0] fader = 5'b1_0000;
	reg [19:0] fade_counter = 0;
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
    background_image_bram bg_bram(.clka(clk_100mhz), .addra(bram_bg_adr), 
    		.dina(bram_bg_write), .douta(bram_bg_read), .wea(bram_bg_we));
    // Loader connections.
	reg bg_load = 0;
	wire [3:0] bg_r;
	wire [3:0] bg_g;
	wire [3:0] bg_b;
	wire bg_a;
	reg [31:0] bg_address_offset = 0;
	wire is_bg_loaded;
	wire [31:0] bg_sd_adr;
	wire bg_sd_read;
	image_loader #(.WIDTH(640), .HEIGHT(480), .ROWS(76800), .BRAM_ADDWIDTH(16)) 
			bg_loader(.clk(clk_100mhz), .rst(rst_loader), 
					.load(bg_load), .x(x), .y(y), .red(bg_r), 
					.green(bg_g), .blue(bg_b), .alpha(bg_a),
					.address_offset(bg_address_offset),
					.is_loaded(is_bg_loaded), 
					.sd_byte_available(sd_byte_available), 
					.sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
					.sd_address(bg_sd_adr), .sd_do_read(bg_sd_read),
					.bram_address(bram_bg_adr), .bram_read_data(bram_bg_read),
					.bram_write_data(bram_bg_write), 
					.bram_write_enable(bram_bg_we));
	// -------------------------
	
	// --------------------------
    // Background image loader
    //
    // BRAM connections.
    wire [12:0] bram_text_adr;
    wire [31:0] bram_text_write;
    wire [31:0] bram_text_read;
    wire bram_text_we;   
    text_image_bram text_bram(.clka(clk_100mhz), .addra(bram_text_adr), 
            .dina(bram_text_write), .douta(bram_text_read), .wea(bram_text_we));
    // Loader connections.
    reg text_load = 0;
    wire [3:0] text_r;
    wire [3:0] text_g;
    wire [3:0] text_b;
    wire text_a;
    reg [31:0] text_address_offset = 0;
    wire is_text_loaded;
    wire [31:0] text_sd_adr;
    wire text_sd_read;
    image_loader #(.WIDTH(400), .HEIGHT(80), .ROWS(8000), .BRAM_ADDWIDTH(12)) 
            text_loader(.clk(clk_100mhz), .rst(rst_loader), 
                    .load(text_load), .x(x), .y(y), .red(text_r), 
                    .green(text_g), .blue(text_b), .alpha(text_a),
                    .address_offset(text_address_offset),
                    .is_loaded(is_text_loaded), 
                    .sd_byte_available(sd_byte_available), 
                    .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
                    .sd_address(text_sd_adr), .sd_do_read(text_sd_read),
                    .bram_address(bram_text_adr), .bram_read_data(bram_text_read),
                    .bram_write_data(bram_text_write), 
                    .bram_write_enable(bram_text_we));
    // -------------------------
    
    // -------
    // SHADER
    
    shader image_shader(.fader(fader), .bg_r(bg_r), .bg_g(bg_g), .bg_b(bg_b), .bg_alpha(bg_a),
            .text_r(0), .text_g(0), .text_b(0), .text_alpha(0),
            .out_red(red), .out_green(green), .out_blue(blue));
    
    
    // ------
    // BRAM LOADER
    
	// Tracks which image loader is currently active.
	wire active_loader = bg_load;

	wire in_loading_phase = (phase == `PHASE_LOADING_START_SCREEN ||
						  phase == `PHASE_LOADING_CHARACTER_SELECT ||
						  phase == `PHASE_LOADING_RACING);

	// Determine which images should be loaded.
	always @(posedge clk_100mhz) begin
		if(rst == 1) begin
			bg_address_offset <= 0;
//			text_address_offset <= 0;
		end
		else begin
			case(phase)
				`PHASE_LOADING_START_SCREEN: begin
					bg_address_offset <= `ADR_START_SCREEN_BG;
//					text_address_offset <= `ADR_PRESS_START_TEXT;
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
	always @(posedge clk_100mhz) begin
		if(rst == 1) begin
			// Reset all loaders
			bg_load <= 0;
			text_load <= 0;

			is_loaded <= 0;
			unload <= 0;
			loading <= 0;
			faded <= 0;
			fader <= 5'b1_0000;
			fade_counter <= 0;
		end
		else begin
			if(in_loading_phase == 1 && load) begin
				if(loading == 1) begin
					// Refresh each loader in order.
					if(is_bg_loaded == 0) begin
						bg_load <= 1;
					end
					else if(is_text_loaded == 0) begin
					    bg_load <= 0;
					    text_load <= 1;
					end
					else begin
						// Done loading, clean up.
						bg_load <= 0;
						text_load <= 0;
						
                        if(fader == 5'b1_0000) begin
						    is_loaded <= 1;
						end
						else begin
						    if(fade_counter == 1000000) begin
                                fader <= fader + 1;
                                fade_counter <= 0;
                            end
                            else begin
                                fade_counter <= fade_counter + 1;
                            end
                        end  
					end
				end
				else if(faded == 1) begin
					unload <= 1;
					faded <= 0;
				end
				else begin
				    if(fader == 0) begin
				        faded <= 1;
				    end
				    else begin
                        if(fade_counter == 1000000) begin
                            fader <= fader - 1;
                            fade_counter <= 0;
                        end
                        else begin
                            fade_counter <= fade_counter + 1;
                        end
				    end
				end
			end
			else begin
				loading <= 0;
				is_loaded <= 0;
				faded <= 0;
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
				sd_read = bg_sd_read;
				sd_address = bg_sd_adr;
			end
			1'b0: begin
				sd_read = 0;
				sd_address = 0;
			end
		endcase
	end
endmodule
