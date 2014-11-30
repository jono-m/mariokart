// Manages all video loaders and display logic.

`timescale 1ns / 1ps

module video_logic(input clk_100mhz, input rst,
        // Game logic connections
        input [2:0] phase,
        input [2:0] selected_character,
        input load,
        output reg is_loaded = 0,
        input race_begin,
        input [1:0] oym_counter,
        input [1:0] laps_completed,

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

    // Timer image loader
    // Loader connections.
    reg timer_load = 0;
    wire reset_timer = ~race_begin;
    wire [3:0] timer_r;
    wire [3:0] timer_g;
    wire [3:0] timer_b;
    wire timer_a;
    wire [9:0] timer_x;
    wire [8:0] timer_y;
    wire show_timer;
    wire timer_alpha = show_timer && timer_a;
    wire [31:0] timer_address_offset = `ADR_TIMER_TEXT_IMAGE;
    wire is_timer_loaded;
    wire [31:0] timer_sd_adr;
    wire timer_sd_read;
    time_display td(.clk_100mhz(clk_100mhz), .rst(rst_loader),
            .load(timer_load), .reset_timer(reset_timer), 
            .address_offset(timer_address_offset), .x(x-timer_x), 
            .y(y-timer_y), .red(timer_r), .green(timer_g), .blue(timer_b),
            .alpha(timer_a), .is_loaded(is_timer_loaded), 
            .sd_byte_available(sd_byte_available), 
            .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte), 
            .sd_address(timer_sd_adr), .sd_do_read(timer_sd_read),
            .min_tens(), .min_ones(), .sec_tens(), .sec_ones(),
            .ms_tens(), .ms_ones());
    
    // Latiku on your marks image loader
    // Loader connections.
    reg latiku_oym_load = 0;
    wire [1:0] light_state = oym_counter;
    wire [3:0] latiku_oym_r;
    wire [3:0] latiku_oym_g;
    wire [3:0] latiku_oym_b;
    wire latiku_oym_a;
    wire [9:0] latiku_oym_x;
    wire [8:0] latiku_oym_y;
    wire show_latiku_oym;
    wire latiku_oym_alpha = latiku_oym_a && show_latiku_oym;
    wire [31:0] latiku_oym_address_offset = `ADR_LATIKU_ON_YOUR_MARKS;
    wire is_latiku_oym_loaded;
    wire [31:0] latiku_oym_sd_adr;
    wire latiku_oym_sd_read;
    latiku_on_your_marks loym(.clk_100mhz(clk_100mhz), .rst(rst_loader),
            .load(latiku_oym_load), .address_offset(latiku_oym_address_offset), 
            .x(x-latiku_oym_x), .y(y-latiku_oym_y), .red(latiku_oym_r), 
            .green(latiku_oym_g), .blue(latiku_oym_b), .alpha(latiku_oym_a), 
            .is_loaded(is_latiku_oym_loaded), 
            .sd_byte_available(sd_byte_available), 
            .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte), 
            .sd_address(latiku_oym_sd_adr), .sd_do_read(latiku_oym_sd_read),
            .light_state(light_state));

    wire [9:0] csb1_x;
    wire [8:0] csb1_y;
    wire [3:0] csb1_r;
    wire [3:0] csb1_g;
    wire [3:0] csb1_b;
    wire csb1_a;
    wire show_csb1;
    wire csb1_alpha = show_csb1 && csb1_a;
    character_select_box p1_select(.clk(clk_100mhz), .rst(rst),
            .x(x-csb1_x), .y(y-csb1_y), .filled(1),
            .color(12'h00F), .red(csb1_r), .green(csb1_g), .blue(csb1_b),
            .alpha(csb1_a));

    wire [9:0] laps1_x;
    wire [8:0] laps1_y;
    wire [3:0] laps1_r;
    wire [3:0] laps1_g;
    wire [3:0] laps1_b;
    wire laps1_a;
    wire show_laps1;
    wire laps1_alpha = show_laps1 && laps1_a;
    laps_display laps_display1 (.clk(clk_100mhz), .rst(rst),
            .laps_completed(laps_completed),
            .x(x-laps1_x), .y(y-laps1_y),
            .color(12'hFFF), .red(laps1_r), .green(laps1_g), .blue(laps1_b),
            .alpha(laps1_a));

    // -------
    // SHADER
    
    shader image_shader(.fader(fader), .bg_r(bg_r), .bg_g(bg_g), .bg_b(bg_b), .bg_alpha(bg_a),
            .text_r(text_r), .text_g(text_g), .text_b(text_b), .text_alpha(text_alpha),
            .csb1_r(csb1_r), .csb1_g(csb1_g), .csb1_b(csb1_b), .csb1_alpha(csb1_alpha),
            .sprite1_r(sprite1_r), .sprite1_g(sprite1_g), .sprite1_b(sprite1_b), .sprite1_alpha(sprite1_alpha),
            .timer_r(timer_r), .timer_g(timer_g), .timer_b(timer_b), .timer_alpha(timer_alpha),
            .latiku_oym_r(latiku_oym_r), .latiku_oym_g(latiku_oym_g), .latiku_oym_b(latiku_oym_b), .latiku_oym_alpha(latiku_oym_alpha),
            .laps1_r(laps1_r), .laps1_g(laps1_g), .laps1_b(laps1_b), .laps1_alpha(laps1_alpha),
            .out_red(red), .out_green(green), .out_blue(blue));
    
    scene_logic sl(.clk_100mhz(clk_100mhz), .rst(rst), .phase(phase),
            .selected_character(selected_character),
            .car1_x(car1_x), .car1_y(car1_y), .car1_present(car1_present),
            .race_begin(race_begin), .faded(faded),
            .laps_completed(laps_completed),
            .bg_address_offset(bg_address_offset),
            .text_address_offset(text_address_offset),
            .sprite1_address_offset(sprite1_address_offset),
            .show_text(show_text), .text_x(text_x), .text_y(text_y),
            .show_char_select_box1(show_csb1),
            .char_select_box1_x(csb1_x),
            .char_select_box1_y(csb1_y),
            .sprite1_x(sprite1_x),
            .sprite1_y(sprite1_y),
            .show_sprite1(show_sprite1),
            .timer_x(timer_x),
            .timer_y(timer_y),
            .show_timer(show_timer),
            .latiku_oym_x(latiku_oym_x),
            .latiku_oym_y(latiku_oym_y),
            .show_latiku_oym(show_latiku_oym),
            .laps1_x(laps1_x),
            .laps1_y(laps1_y),
            .show_laps1(show_laps1)
            // .latiku_final_lap_x(latiku_final_lap_x),
            // .latiku_final_lap_y(latiku_final_lap_y),
            // .show_latiku_final_lap(show_latiku_final_lap)
            );

    // ------
    // BRAM LOADER
    
    // Tracks which image loader is currently active.
    wire [4:0] active_loader = {bg_load, text_load, sprite1_load, timer_load,
            latiku_oym_load};

    wire in_loading_phase = (phase == `PHASE_LOADING_START_SCREEN ||
                          phase == `PHASE_LOADING_CHARACTER_SELECT ||
                          phase == `PHASE_LOADING_RACING);

    wire are_all_loaders_unloaded = ~is_bg_loaded && 
            ~is_text_loaded && ~is_sprite1_loaded && ~is_timer_loaded &&
            ~is_latiku_oym_loaded;

    // Reload images into BRAM.
    always @(posedge clk_100mhz) begin
        if(rst == 1) begin
            // Reset all loaders
            bg_load <= 0;
            text_load <= 0;
            sprite1_load <= 0;
            timer_load <= 0;
            latiku_oym_load <= 0;

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
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                    end
                    else if(is_text_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 1;
                        sprite1_load <= 0;
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                    end
                    else if(is_sprite1_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 1;
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                    end
                    else if(is_timer_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 0;
                        timer_load <= 1;
                        latiku_oym_load <= 0;
                    end
                    else if(is_latiku_oym_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 0;
                        timer_load <= 0;
                        latiku_oym_load <= 1;
                    end
                    else begin
                        // Done loading, clean up.
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 0;
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                        
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
            5'b10000: begin
                sd_read = bg_sd_read;
                sd_address = bg_sd_adr;
            end
            5'b01000: begin
                sd_read = text_sd_read;
                sd_address = text_sd_adr;
            end
            5'b00100: begin
                sd_read = sprite1_sd_read;
                sd_address = sprite1_sd_adr;
            end
            5'b00010: begin
                sd_read = timer_sd_read;
                sd_address = timer_sd_adr; 
            end
            5'b00001: begin
                sd_read = latiku_oym_sd_read;
                sd_address = latiku_oym_sd_adr; 
            end
            default: begin
                sd_read = 0;
                sd_address = 0;
            end
        endcase
    end
endmodule
