// Manages all video loaders and display logic.

`timescale 1ns / 1ps

module video_logic(input clk_100mhz, input rst,
        // Game logic connections
        input [2:0] phase,
        input [2:0] selected_character,
        input load,
        output reg is_loaded = 0,

        // SD card connections
        output reg sd_read, input [7:0] sd_byte, input sd_byte_available,
        input sd_ready_for_read, output reg [31:0] sd_address,
        
        // VGA connections
        input [9:0] x, input [9:0] y,
        output [3:0] red, output [3:0] green, output [3:0] blue,

        // Car connections
        input [9:0] car1_x, input [8:0] car1_y, input car1_present
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
    wire [31:0] bg_address_offset;
    wire is_bg_loaded;
    wire [31:0] bg_sd_adr;
    wire bg_sd_read;
    image_loader #(.WIDTH(640), .HEIGHT(480), .ROWS(76800), .BRAM_ADDWIDTH(16),
            .ALPHA(0)) 
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
    
    // --------------------------
    // Text image loader
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
    wire [9:0] text_x;
    wire [8:0] text_y;
    wire show_text;
    wire text_alpha = show_text && text_a;
    wire [31:0] text_address_offset;
    wire is_text_loaded;
    wire [31:0] text_sd_adr;
    wire text_sd_read;
    image_loader #(.WIDTH(400), .HEIGHT(80), .ROWS(8000), .BRAM_ADDWIDTH(12),
            .ALPHA(1)) 
            text_loader(.clk(clk_100mhz), .rst(rst_loader), 
                    .load(text_load), .x(x-text_x), .y(y-text_y), .red(text_r), 
                    .green(text_g), .blue(text_b), .alpha(text_a),
                    .address_offset(text_address_offset),
                    .is_loaded(is_text_loaded), 
                    .sd_byte_available(sd_byte_available), 
                    .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
                    .sd_address(text_sd_adr), .sd_do_read(text_sd_read),
                    .bram_address(bram_text_adr), .bram_read_data(bram_text_read),
                    .bram_write_data(bram_text_write), 
                    .bram_write_enable(bram_text_we));

    // --------------------------
    // Sprite 1 image loader
    //
    // BRAM connections.
    wire [6:0] bram_sprite1_adr;
    wire [31:0] bram_sprite1_write;
    wire [31:0] bram_sprite1_read;
    wire bram_sprite1_we;   
    sprite1_image_bram sprite1_bram(.clka(clk_100mhz), .addra(bram_sprite1_adr), 
            .dina(bram_sprite1_write), .douta(bram_sprite1_read), .wea(bram_sprite1_we));
    // Loader connections.
    reg sprite1_load = 0;
    wire [3:0] sprite1_r;
    wire [3:0] sprite1_g;
    wire [3:0] sprite1_b;
    wire sprite1_a;
    wire [9:0] sprite1_x;
    wire [8:0] sprite1_y;
    wire show_sprite1;
    wire sprite1_alpha = show_sprite1 && sprite1_a;
    wire [31:0] sprite1_address_offset;
    wire is_sprite1_loaded;
    wire [31:0] sprite1_sd_adr;
    wire sprite1_sd_read;
    image_loader #(.WIDTH(20), .HEIGHT(20), .ROWS(100), .BRAM_ADDWIDTH(6),
            .ALPHA(1)) 
            sprite1_loader(.clk(clk_100mhz), .rst(rst_loader), 
                    .load(sprite1_load), .x(x-sprite1_x), .y(y-sprite1_y), .red(sprite1_r), 
                    .green(sprite1_g), .blue(sprite1_b), .alpha(sprite1_a),
                    .address_offset(sprite1_address_offset),
                    .is_loaded(is_sprite1_loaded), 
                    .sd_byte_available(sd_byte_available), 
                    .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
                    .sd_address(sprite1_sd_adr), .sd_do_read(sprite1_sd_read),
                    .bram_address(bram_sprite1_adr), .bram_read_data(bram_sprite1_read),
                    .bram_write_data(bram_sprite1_write), 
                    .bram_write_enable(bram_sprite1_we));
    
    wire [9:0] csb1_x;
    wire [8:0] csb1_y;
    wire [3:0] csb1_r;
    wire [3:0] csb1_g;
    wire [3:0] csb1_b;
    wire csb1_a;
    wire show_csb1;
    wire csb1_alpha = show_csb1 && csb1_a;
    character_select_box p1_select(.clk(clk_100mhz), .rst(rst),
            .x(x-csb1_x), .y(y-csb1_y),
            .color(12'h00F), .red(csb1_r), .green(csb1_g), .blue(csb1_b),
            .alpha(csb1_a));

    // -------
    // SHADER
    
    shader image_shader(.fader(fader), .bg_r(bg_r), .bg_g(bg_g), .bg_b(bg_b), .bg_alpha(bg_a),
            .text_r(text_r), .text_g(text_g), .text_b(text_b), .text_alpha(text_alpha),
            .csb1_r(csb1_r), .csb1_g(csb1_g), .csb1_b(csb1_b), .csb1_alpha(csb1_alpha),
            .sprite1_r(sprite1_r), .sprite1_g(sprite1_g), .sprite1_b(sprite1_b), .sprite1_alpha(sprite1_alpha),
            .out_red(red), .out_green(green), .out_blue(blue));
    
    scene_logic sl(.clk_100mhz(clk_100mhz), .rst(rst), .phase(phase),
            .selected_character(selected_character),
            .car1_x(car1_x), .car1_y(car1_y), .car1_present(car1_present),
            .bg_address_offset(bg_address_offset),
            .text_address_offset(text_address_offset),
            .sprite1_address_offset(sprite1_address_offset),
            .show_text(show_text), .text_x(text_x), .text_y(text_y),
            .show_char_select_box1(show_csb1),
            .char_select_box1_x(csb1_x),
            .char_select_box1_y(csb1_y),
            .sprite1_x(sprite1_x),
            .sprite1_y(sprite1_y),
            .show_sprite1(show_sprite1));

    // ------
    // BRAM LOADER
    
    // Tracks which image loader is currently active.
    wire [2:0] active_loader = {bg_load, text_load, sprite1_load};

    wire in_loading_phase = (phase == `PHASE_LOADING_START_SCREEN ||
                          phase == `PHASE_LOADING_CHARACTER_SELECT ||
                          phase == `PHASE_LOADING_RACING);

    wire are_all_loaders_unloaded = ~is_bg_loaded && 
            ~is_text_loaded && ~is_sprite1_loaded;

    // Reload images into BRAM.
    always @(posedge clk_100mhz) begin
        if(rst == 1) begin
            // Reset all loaders
            bg_load <= 0;
            text_load <= 0;
            sprite1_load <= 0;

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
                        text_load <= 0;
                        sprite1_load <= 0;
                    end
                    else if(is_text_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 1;
                        sprite1_load <= 0;
                    end
                    else if(is_sprite1_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 1;
                    end
                    else begin
                        // Done loading, clean up.
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 0;
                        
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
                if(are_all_loaders_unloaded == 1) begin
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
            3'b100: begin
                sd_read = bg_sd_read;
                sd_address = bg_sd_adr;
            end
            3'b010: begin
                sd_read = text_sd_read;
                sd_address = text_sd_adr;
            end
            3'b001: begin
                sd_read = sprite1_sd_read;
                sd_address = sprite1_sd_adr;
            end
            3'b000: begin
                sd_read = 0;
                sd_address = 0;
            end
            3'b011: begin
                sd_read = 0;
                sd_address = 0;
            end
            3'b101: begin
                sd_read = 0;
                sd_address = 0;
            end
            3'b110: begin
                sd_read = 0;
                sd_address = 0;
            end
            3'b111: begin
                sd_read = 0;
                sd_address = 0;
            end
        endcase
    end
endmodule
