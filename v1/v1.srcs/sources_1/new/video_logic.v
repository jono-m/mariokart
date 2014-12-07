// Manages all video loaders and display logic.

`timescale 1ns / 1ps

module video_logic(input clk_100mhz, input clk_50mhz, input rst,
        // Game logic connections
        input [2:0] phase,
        input [2:0] selected_character1, input [2:0] selected_character2,
        input character_selected1, input character_selected2,
        input ready_for_race,
        input load,
        input in_loading_phase,
        output reg is_loaded = 0,
        input race_begin,
        input [1:0] oym_counter,
        input [1:0] laps_completed1, input [1:0] laps_completed2,
        input [1:0] finish_place1, input [1:0] finish_place2,

        // SD card connections
        output reg sd_read, input [7:0] sd_byte, input sd_byte_available,
        input sd_ready_for_read, output reg [31:0] sd_address,
        
        // VGA connections
        input [9:0] x, input [8:0] y,
        output [3:0] red, output [3:0] green, output [3:0] blue,

        // Car connections
        input [9:0] car1_x, input [8:0] car1_y, input car1_present,
        input [1:0] owned_item1, input picking1,
        input [9:0] car2_x, input [8:0] car2_y, input car2_present,
        input [1:0] owned_item2, input picking2,

        // More logic connections,
        input [20:0] item_box1,
        input [20:0] item_box2,
        input [20:0] item_box3,
        input [20:0] item_box4,
        input [20:0] item_box5,
        input [20:0] item_box6,
        input [20:0] item_box7,
        input [20:0] item_box8,

        input [20:0] banana1, input [20:0] banana2,
        input [20:0] banana3, input [20:0] banana4,
        input [20:0] banana5, input [20:0] banana6,
        input [20:0] banana7, input [20:0] banana8,

        input lightning_used,

        output [3:0] min_tens,
        output [3:0] min_ones,
        output [3:0] sec_tens,
        output [3:0] sec_ones,
        output [3:0] ms_tens,
        output [3:0] ms_ones,

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
    background_image_bram bg_bram(.clka(clk_50mhz), .addra(bram_bg_adr), 
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
    text_image_bram text_bram(.clka(clk_50mhz), .addra(bram_text_adr), 
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

    reg powerup_counter = 0;
    reg [26:0] powerup_clk = 0;

    always @(posedge clk_100mhz) begin
        if(powerup_clk == 25000000) begin
            powerup_counter <= ~powerup_counter;
            powerup_clk <= 0;
        end
        else begin
            powerup_clk <= powerup_clk + 1;
        end
    end

    // --------------------------
    // Sprite 1 image loader
    //
    // BRAM connections.
    wire [6:0] bram_sprite1_adr;
    wire [31:0] bram_sprite1_write;
    wire [31:0] bram_sprite1_read;
    wire bram_sprite1_we;   
    sprite_image_bram sprite1_bram(.clka(clk_50mhz), .addra(bram_sprite1_adr), 
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
    wire sprite1_alpha = show_sprite1 && sprite1_a && ((~picking1 && (owned_item1 == `ITEM_NONE || powerup_counter == 1)) || phase == `PHASE_RESULTS);
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

    // --------------------------
    // Sprite 2 image loader
    //
    // BRAM connections.
    wire [6:0] bram_sprite2_adr;
    wire [31:0] bram_sprite2_write;
    wire [31:0] bram_sprite2_read;
    wire bram_sprite2_we;   
    sprite_image_bram sprite2_bram(.clka(clk_50mhz), .addra(bram_sprite2_adr), 
            .dina(bram_sprite2_write), .douta(bram_sprite2_read), .wea(bram_sprite2_we));
    // Loader connections.
    reg sprite2_load = 0;
    wire [3:0] sprite2_r;
    wire [3:0] sprite2_g;
    wire [3:0] sprite2_b;
    wire sprite2_a;
    wire [9:0] sprite2_x;
    wire [8:0] sprite2_y;
    wire show_sprite2;
    wire sprite2_alpha = show_sprite2 && sprite2_a && ((~picking2 && (owned_item2 == `ITEM_NONE || powerup_counter == 1)) || phase == `PHASE_RESULTS);
    wire [31:0] sprite2_address_offset;
    wire is_sprite2_loaded;
    wire [31:0] sprite2_sd_adr;
    wire sprite2_sd_read;
    image_loader #(.WIDTH(20), .HEIGHT(20), .ROWS(100), .BRAM_ADDWIDTH(6),
            .ALPHA(1)) 
            sprite2_loader(.clk(clk_100mhz), .rst(rst_loader), 
                    .load(sprite2_load), .x(x-sprite2_x), .y(y-sprite2_y), .red(sprite2_r), 
                    .green(sprite2_g), .blue(sprite2_b), .alpha(sprite2_a),
                    .address_offset(sprite2_address_offset),
                    .is_loaded(is_sprite2_loaded), 
                    .sd_byte_available(sd_byte_available), 
                    .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
                    .sd_address(sprite2_sd_adr), .sd_do_read(sprite2_sd_read),
                    .bram_address(bram_sprite2_adr), .bram_read_data(bram_sprite2_read),
                    .bram_write_data(bram_sprite2_write), 
                    .bram_write_enable(bram_sprite2_we));

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
    time_display td(.clk_100mhz(clk_100mhz), .clk_50mhz(clk_50mhz), .rst(rst_loader),
            .force_display(phase == `PHASE_RESULTS),
            .load(timer_load), .reset_timer(reset_timer), 
            .address_offset(timer_address_offset), .x(x-timer_x), 
            .y(y-timer_y), .red(timer_r), .green(timer_g), .blue(timer_b),
            .alpha(timer_a), .is_loaded(is_timer_loaded), 
            .sd_byte_available(sd_byte_available), 
            .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte), 
            .sd_address(timer_sd_adr), .sd_do_read(timer_sd_read),
            .min_tens(min_tens), .min_ones(min_ones), .sec_tens(sec_tens), .sec_ones(sec_ones),
            .ms_tens(ms_tens), .ms_ones(ms_ones),
            .fmin_tens1(fmin_tens1), .fmin_ones1(fmin_ones1), .fsec_tens1(fsec_tens1), .fsec_ones1(fsec_ones1),
            .fms_tens1(fms_tens1), .fms_ones1(fms_ones1),
            .fmin_tens2(fmin_tens2), .fmin_ones2(fmin_ones2), .fsec_tens2(fsec_tens2), .fsec_ones2(fsec_ones2),
            .fms_tens2(fms_tens2), .fms_ones2(fms_ones2));
    
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
    latiku_on_your_marks loym(.clk_100mhz(clk_100mhz), .clk_50mhz(clk_50mhz), .rst(rst_loader),
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
            .x(x-csb1_x), .y(y-csb1_y), .filled(0),
            .color(character_selected1 ? 12'h007 : 12'h00F), .red(csb1_r), .green(csb1_g), .blue(csb1_b),
            .alpha(csb1_a));

    wire [9:0] csb2_x;
    wire [8:0] csb2_y;
    wire [3:0] csb2_r;
    wire [3:0] csb2_g;
    wire [3:0] csb2_b;
    wire csb2_a;
    wire show_csb2;
    wire csb2_alpha = show_csb2 && csb2_a;
    character_select_box p2_select(.clk(clk_100mhz), .rst(rst),
            .x(x-csb2_x), .y(y-csb2_y), .filled(0),
            .color(character_selected2 ? 12'h700 : 12'hF00), .red(csb2_r), .green(csb2_g), .blue(csb2_b),
            .alpha(csb2_a));

    wire [9:0] laps1_x;
    wire [8:0] laps1_y;
    wire [9:0] laps1_sprite_x;
    wire [9:0] laps1_sprite_y;
    wire [3:0] laps1_r;
    wire [3:0] laps1_g;
    wire [3:0] laps1_b;
    wire laps1_a;
    wire show_laps1;
    wire laps1_alpha = show_laps1 && laps1_a;
    laps_display laps_display1 (.clk(clk_100mhz), .rst(rst),
            .laps_completed(laps_completed1),
            .x(x-laps1_x), .y(y-laps1_y),
            .sprite_x(laps1_sprite_x), .sprite_y(laps1_sprite_y),
            .color(12'hFFF), .red(laps1_r), .green(laps1_g), .blue(laps1_b),
            .alpha(laps1_a));

    wire [9:0] laps2_x;
    wire [8:0] laps2_y;
    wire [9:0] laps2_sprite_x;
    wire [9:0] laps2_sprite_y;
    wire [3:0] laps2_r;
    wire [3:0] laps2_g;
    wire [3:0] laps2_b;
    wire laps2_a;
    wire show_laps2;
    wire laps2_alpha = show_laps2 && laps2_a;
    laps_display laps_display2 (.clk(clk_100mhz), .rst(rst),
            .laps_completed(laps_completed2),
            .x(x-laps2_x), .y(y-laps2_y),
            .sprite_x(laps2_sprite_x), .sprite_y(laps2_sprite_y),
            .color(12'hFFF), .red(laps2_r), .green(laps2_g), .blue(laps2_b),
            .alpha(laps2_a));

    // --------------------------
    // Item box image loader
    //
    // BRAM connections.
    wire [6:0] bram_item_box_adr;
    wire [31:0] bram_item_box_write;
    wire [31:0] bram_item_box_read;
    wire bram_item_box_we;   
    sprite_image_bram item_box_bram(.clka(clk_50mhz), .addra(bram_item_box_adr), 
            .dina(bram_item_box_write), .douta(bram_item_box_read), .wea(bram_item_box_we));
    // Loader connections.
    reg item_box_load = 0;
    wire [3:0] item_box_r;
    wire [3:0] item_box_g;
    wire [3:0] item_box_b;
    wire item_box_a;
    wire [9:0] item_box_x;
    wire [8:0] item_box_y;
    wire show_item_box;
    wire item_box_alpha = show_item_box && item_box_a && (phase == `PHASE_RACING);
    wire [31:0] item_box_address_offset;
    wire is_item_box_loaded;
    wire [31:0] item_box_sd_adr;
    wire item_box_sd_read;
    image_loader #(.WIDTH(20), .HEIGHT(20), .ROWS(100), .BRAM_ADDWIDTH(6),
            .ALPHA(1)) 
            item_box_loader(.clk(clk_100mhz), .rst(rst_loader), 
                    .load(item_box_load), .x(item_box_x), .y(item_box_y), .red(item_box_r), 
                    .green(item_box_g), .blue(item_box_b), .alpha(item_box_a),
                    .address_offset(`ADR_ITEM_BOX_IMAGE),
                    .is_loaded(is_item_box_loaded), 
                    .sd_byte_available(sd_byte_available), 
                    .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
                    .sd_address(item_box_sd_adr), .sd_do_read(item_box_sd_read),
                    .bram_address(bram_item_box_adr), .bram_read_data(bram_item_box_read),
                    .bram_write_data(bram_item_box_write), 
                    .bram_write_enable(bram_item_box_we));

    sprite_painter ibp(.x(x), .y(y), .sprite_x(item_box_x), .sprite_y(item_box_y),
                       .sprite_is_present(show_item_box),
                       .sprite1(item_box1), .sprite2(item_box2),
                       .sprite3(item_box3), .sprite4(item_box4),
                       .sprite5(item_box5), .sprite6(item_box6),
                       .sprite7(item_box7), .sprite8(item_box8),
                       .sprite9(0), .sprite10(0));

    // --------------------------
    // Banana image loader
    //
    // BRAM connections.
    wire [6:0] bram_banana_adr;
    wire [31:0] bram_banana_write;
    wire [31:0] bram_banana_read;
    wire bram_banana_we;   
    sprite_image_bram banana_bram(.clka(clk_50mhz), .addra(bram_banana_adr), 
            .dina(bram_banana_write), .douta(bram_banana_read), .wea(bram_banana_we));
    // Loader connections.
    reg banana_load = 0;
    wire [3:0] banana_r;
    wire [3:0] banana_g;
    wire [3:0] banana_b;
    wire banana_a;
    wire [9:0] banana_x;
    wire [8:0] banana_y;
    wire show_banana;
    wire banana_alpha = show_banana && banana_a && (phase == `PHASE_RACING);
    wire [31:0] banana_address_offset;
    wire is_banana_loaded;
    wire [31:0] banana_sd_adr;
    wire banana_sd_read;
    image_loader #(.WIDTH(20), .HEIGHT(20), .ROWS(100), .BRAM_ADDWIDTH(6),
            .ALPHA(1)) 
            banana_loader(.clk(clk_100mhz), .rst(rst_loader), 
                    .load(banana_load), .x(banana_x), .y(banana_y), .red(banana_r), 
                    .green(banana_g), .blue(banana_b), .alpha(banana_a),
                    .address_offset(`ADR_BANANA_IMAGE),
                    .is_loaded(is_banana_loaded), 
                    .sd_byte_available(sd_byte_available), 
                    .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
                    .sd_address(banana_sd_adr), .sd_do_read(banana_sd_read),
                    .bram_address(bram_banana_adr), .bram_read_data(bram_banana_read),
                    .bram_write_data(bram_banana_write), 
                    .bram_write_enable(bram_banana_we));

    sprite_painter banana_p(.x(x), .y(y), .sprite_x(banana_x), .sprite_y(banana_y),
                       .sprite_is_present(show_banana),
                       .sprite1(banana1), .sprite2(banana2),
                       .sprite3(banana3), .sprite4(banana4),
                       .sprite5(banana5), .sprite6(banana6),
                       .sprite7(banana7), .sprite8(banana8),
                       .sprite9({((owned_item1 == `ITEM_BANANA && (powerup_counter == 0 || picking1)) ? 1'b1 : 1'b0), sprite1_x, 1'b0, sprite1_y}), 
                       .sprite10({((owned_item2 == `ITEM_BANANA && (powerup_counter == 0 || picking2)) ? 1'b1 : 1'b0), sprite2_x, 1'b0, sprite2_y}));

    // --------------------------
    // Mushroom image loader
    //
    // BRAM connections.
    wire [6:0] bram_mushroom_adr;
    wire [31:0] bram_mushroom_write;
    wire [31:0] bram_mushroom_read;
    wire bram_mushroom_we;   
    sprite_image_bram mushroom_bram(.clka(clk_50mhz), .addra(bram_mushroom_adr), 
            .dina(bram_mushroom_write), .douta(bram_mushroom_read), .wea(bram_mushroom_we));
    // Loader connections.
    reg mushroom_load = 0;
    wire [3:0] mushroom_r;
    wire [3:0] mushroom_g;
    wire [3:0] mushroom_b;
    wire mushroom_a;
    wire [9:0] mushroom_x;
    wire [8:0] mushroom_y;
    wire show_mushroom;
    wire mushroom_alpha = show_mushroom && mushroom_a && (phase == `PHASE_RACING);
    wire [31:0] mushroom_address_offset;
    wire is_mushroom_loaded;
    wire [31:0] mushroom_sd_adr;
    wire mushroom_sd_read;
    image_loader #(.WIDTH(20), .HEIGHT(20), .ROWS(100), .BRAM_ADDWIDTH(6),
            .ALPHA(1)) 
            mushroom_loader(.clk(clk_100mhz), .rst(rst_loader), 
                    .load(mushroom_load), .x(mushroom_x), .y(mushroom_y), .red(mushroom_r), 
                    .green(mushroom_g), .blue(mushroom_b), .alpha(mushroom_a),
                    .address_offset(`ADR_MUSHROOM_IMAGE),
                    .is_loaded(is_mushroom_loaded), 
                    .sd_byte_available(sd_byte_available), 
                    .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
                    .sd_address(mushroom_sd_adr), .sd_do_read(mushroom_sd_read),
                    .bram_address(bram_mushroom_adr), .bram_read_data(bram_mushroom_read),
                    .bram_write_data(bram_mushroom_write), 
                    .bram_write_enable(bram_mushroom_we));

    sprite_painter mushroom_p(.x(x), .y(y), .sprite_x(mushroom_x), .sprite_y(mushroom_y),
                       .sprite_is_present(show_mushroom),
                       .sprite1(0), .sprite2(0),
                       .sprite3(0), .sprite4(0),
                       .sprite5(0), .sprite6(0),
                       .sprite7(0), .sprite8(0),
                       .sprite9({((owned_item1 == `ITEM_MUSHROOM && (powerup_counter == 0 || picking1)) ? 1'b1 : 1'b0), sprite1_x, 1'b0, sprite1_y}), 
                       .sprite10({((owned_item2 == `ITEM_MUSHROOM && (powerup_counter == 0 || picking2)) ? 1'b1 : 1'b0), sprite2_x, 1'b0, sprite2_y}));

    // --------------------------
    // Lightning image loader
    //
    // BRAM connections.
    wire [6:0] bram_lightning_adr;
    wire [31:0] bram_lightning_write;
    wire [31:0] bram_lightning_read;
    wire bram_lightning_we;   
    sprite_image_bram lightning_bram(.clka(clk_50mhz), .addra(bram_lightning_adr), 
            .dina(bram_lightning_write), .douta(bram_lightning_read), .wea(bram_lightning_we));
    // Loader connections.
    reg lightning_load = 0;
    wire [3:0] lightning_r;
    wire [3:0] lightning_g;
    wire [3:0] lightning_b;
    wire lightning_a;
    wire [9:0] lightning_x;
    wire [8:0] lightning_y;
    wire show_lightning;
    wire lightning_alpha = show_lightning && lightning_a && (phase == `PHASE_RACING);
    wire [31:0] lightning_address_offset;
    wire is_lightning_loaded;
    wire [31:0] lightning_sd_adr;
    wire lightning_sd_read;
    image_loader #(.WIDTH(20), .HEIGHT(20), .ROWS(100), .BRAM_ADDWIDTH(6),
            .ALPHA(1)) 
            lightning_loader(.clk(clk_100mhz), .rst(rst_loader), 
                    .load(lightning_load), .x(lightning_x), .y(lightning_y), .red(lightning_r), 
                    .green(lightning_g), .blue(lightning_b), .alpha(lightning_a),
                    .address_offset(`ADR_LIGHTNING_IMAGE),
                    .is_loaded(is_lightning_loaded), 
                    .sd_byte_available(sd_byte_available), 
                    .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
                    .sd_address(lightning_sd_adr), .sd_do_read(lightning_sd_read),
                    .bram_address(bram_lightning_adr), .bram_read_data(bram_lightning_read),
                    .bram_write_data(bram_lightning_write), 
                    .bram_write_enable(bram_lightning_we));


    sprite_painter lightning_p(.x(x), .y(y), .sprite_x(lightning_x), .sprite_y(lightning_y),
                       .sprite_is_present(show_lightning),
                       .sprite1(0), .sprite2(0),
                       .sprite3(0), .sprite4(0),
                       .sprite5(0), .sprite6(0),
                       .sprite7(0), .sprite8(0),
                       .sprite9({((owned_item1 == `ITEM_LIGHTNING && (powerup_counter == 0 || picking1)) ? 1'b1 : 1'b0), sprite1_x, 1'b0, sprite1_y}), 
                       .sprite10({((owned_item2 == `ITEM_LIGHTNING && (powerup_counter == 0 || picking2)) ? 1'b1 : 1'b0), sprite2_x, 1'b0, sprite2_y}));
    
    // --------------------------
    // Trophy image loader
    //
    // BRAM connections.
    wire [6:0] bram_trophy_adr;
    wire [31:0] bram_trophy_write;
    wire [31:0] bram_trophy_read;
    wire bram_trophy_we;   
    sprite_image_bram trophy_bram(.clka(clk_50mhz), .addra(bram_trophy_adr), 
            .dina(bram_trophy_write), .douta(bram_trophy_read), .wea(bram_trophy_we));
    // Loader connections.
    reg trophy_load = 0;
    wire [3:0] trophy_r;
    wire [3:0] trophy_g;
    wire [3:0] trophy_b;
    wire trophy_a;
    wire [9:0] trophy_x;
    wire [8:0] trophy_y;
    wire show_trophy;
    wire trophy_alpha = show_trophy && trophy_a && (phase == `PHASE_RACING);
    wire [31:0] trophy_address_offset;
    wire is_trophy_loaded;
    wire [31:0] trophy_sd_adr;
    wire trophy_sd_read;
    image_loader #(.WIDTH(20), .HEIGHT(20), .ROWS(100), .BRAM_ADDWIDTH(6),
            .ALPHA(1)) 
            trophy_loader(.clk(clk_100mhz), .rst(rst_loader), 
                    .load(trophy_load), .x(x - trophy_x), .y(y - trophy_y), .red(trophy_r), 
                    .green(trophy_g), .blue(trophy_b), .alpha(trophy_a),
                    .address_offset(`ADR_TROPHY_IMAGE),
                    .is_loaded(is_trophy_loaded), 
                    .sd_byte_available(sd_byte_available), 
                    .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
                    .sd_address(trophy_sd_adr), .sd_do_read(trophy_sd_read),
                    .bram_address(bram_trophy_adr), .bram_read_data(bram_trophy_read),
                    .bram_write_data(bram_trophy_write), 
                    .bram_write_enable(bram_trophy_we));


    wire lightning_display;
    lightning_display ld(.clk_100mhz(clk_100mhz), .rst(rst),
            .lightning_used(lightning_used), .lightning_display(lightning_display));

    // -------
    // SHADER
    
    shader image_shader(.lightning_display(lightning_display), .fader(fader), .bg_r(bg_r), .bg_g(bg_g), .bg_b(bg_b), .bg_alpha(bg_a),
            .text_r(text_r), .text_g(text_g), .text_b(text_b), .text_alpha(text_alpha),
            .csb1_r(csb1_r), .csb1_g(csb1_g), .csb1_b(csb1_b), .csb1_alpha(csb1_alpha),
            .csb2_r(csb2_r), .csb2_g(csb2_g), .csb2_b(csb2_b), .csb2_alpha(csb2_alpha),
            .sprite1_r(sprite1_r), .sprite1_g(sprite1_g), .sprite1_b(sprite1_b), .sprite1_alpha(sprite1_alpha),
            .sprite2_r(sprite2_r), .sprite2_g(sprite2_g), .sprite2_b(sprite2_b), .sprite2_alpha(sprite2_alpha),
            .item_box_r(item_box_r), .item_box_g(item_box_g), .item_box_b(item_box_b), .item_box_alpha(item_box_alpha),
            .banana_r(banana_r), .banana_g(banana_g), .banana_b(banana_b), .banana_alpha(banana_alpha),
            .mushroom_r(mushroom_r), .mushroom_g(mushroom_g), .mushroom_b(mushroom_b), .mushroom_alpha(mushroom_alpha),
            .lightning_r(lightning_r), .lightning_g(lightning_g), .lightning_b(lightning_b), .lightning_alpha(lightning_alpha),
            .trophy_r(trophy_r), .trophy_g(trophy_g), .trophy_b(trophy_b), .trophy_alpha(trophy_alpha),
            .timer_r(timer_r), .timer_g(timer_g), .timer_b(timer_b), .timer_alpha(timer_alpha),
            .latiku_oym_r(latiku_oym_r), .latiku_oym_g(latiku_oym_g), .latiku_oym_b(latiku_oym_b), .latiku_oym_alpha(latiku_oym_alpha),
            .laps1_r(laps1_r), .laps1_g(laps1_g), .laps1_b(laps1_b), .laps1_alpha(laps1_alpha),
            .laps2_r(laps2_r), .laps2_g(laps2_g), .laps2_b(laps2_b), .laps2_alpha(laps2_alpha),
            .out_red(red), .out_green(green), .out_blue(blue));
    
    scene_logic sl(.clk_100mhz(clk_100mhz), .rst(rst), .phase(phase),
            .selected_character1(selected_character1),
            .selected_character2(selected_character2),
            .ready_for_race(ready_for_race),
            .car1_x(car1_x), .car1_y(car1_y), .car1_present(car1_present),
            .car2_x(car2_x), .car2_y(car2_y), .car2_present(car2_present),
            .race_begin(race_begin), .faded(faded),
            .laps_completed1(laps_completed1), .laps_completed2(laps_completed2),
            .finish_place1(finish_place1), .finish_place2(finish_place2),
            .bg_address_offset(bg_address_offset),
            .text_address_offset(text_address_offset),
            .sprite1_address_offset(sprite1_address_offset),
            .sprite2_address_offset(sprite2_address_offset),
            .show_text(show_text), .text_x(text_x), .text_y(text_y),
            .show_char_select_box1(show_csb1),
            .show_char_select_box2(show_csb2),
            .char_select_box1_x(csb1_x),
            .char_select_box1_y(csb1_y),
            .char_select_box2_x(csb2_x),
            .char_select_box2_y(csb2_y),
            .sprite1_x(sprite1_x),
            .sprite1_y(sprite1_y),
            .show_sprite1(show_sprite1),
            .sprite2_x(sprite2_x),
            .sprite2_y(sprite2_y),
            .show_sprite2(show_sprite2),
            .timer_x(timer_x),
            .timer_y(timer_y),
            .show_timer(show_timer),
            .latiku_oym_x(latiku_oym_x),
            .latiku_oym_y(latiku_oym_y),
            .show_latiku_oym(show_latiku_oym),
            .laps1_x(laps1_x),
            .laps1_y(laps1_y),
            .show_laps1(show_laps1),
            .laps2_x(laps2_x),
            .laps2_y(laps2_y),
            .show_laps2(show_laps2),
            .trophy_x(trophy_x),
            .trophy_y(trophy_y),
            .show_trophy(show_trophy)
            );

    // ------
    // BRAM LOADER
    
    // Tracks which image loader is currently active.
    wire [10:0] active_loader = {bg_load, text_load, sprite1_load, sprite2_load, timer_load,
            latiku_oym_load, item_box_load, banana_load, mushroom_load,
            lightning_load, trophy_load};

    wire are_all_loaders_unloaded = ~is_bg_loaded && 
            ~is_text_loaded && ~is_sprite1_loaded && ~is_sprite2_loaded && ~is_timer_loaded &&
            ~is_latiku_oym_loaded && ~is_item_box_loaded && ~is_banana_loaded &&
            ~is_mushroom_loaded && ~is_lightning_loaded && ~is_trophy_loaded;

    // Reload images into BRAM.
    always @(posedge clk_100mhz) begin
        if(rst == 1) begin
            // Reset all loaders
            bg_load <= 0;
            text_load <= 0;
            sprite1_load <= 0;
            sprite2_load <= 0;
            timer_load <= 0;
            latiku_oym_load <= 0;
            item_box_load <= 0;
            banana_load <= 0;
            mushroom_load <= 0;
            lightning_load <= 0;
            trophy_load <= 0;

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
                        sprite2_load <= 0;
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                        item_box_load <= 0;
                        banana_load <= 0;
                        mushroom_load <= 0;
                        lightning_load <= 0;
                        trophy_load <= 0;
                    end
                    else if(is_text_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 1;
                        sprite1_load <= 0;
                        sprite2_load <= 0;
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                        item_box_load <= 0;
                        banana_load <= 0;
                        mushroom_load <= 0;
                        lightning_load <= 0;
                        trophy_load <= 0;
                    end
                    else if(is_sprite1_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 1;
                        sprite2_load <= 0;
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                        item_box_load <= 0;
                        banana_load <= 0;
                        mushroom_load <= 0;
                        lightning_load <= 0;
                        trophy_load <= 0;
                    end
                    else if(is_sprite2_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 0;
                        sprite2_load <= 1;
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                        item_box_load <= 0;
                        banana_load <= 0;
                        mushroom_load <= 0;
                        lightning_load <= 0;
                        trophy_load <= 0;
                    end
                    else if(is_timer_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 0;
                        sprite2_load <= 0;
                        timer_load <= 1;
                        latiku_oym_load <= 0;
                        item_box_load <= 0;
                        banana_load <= 0;
                        mushroom_load <= 0;
                        lightning_load <= 0;
                        trophy_load <= 0;
                    end
                    else if(is_latiku_oym_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 0;
                        sprite2_load <= 0;
                        timer_load <= 0;
                        latiku_oym_load <= 1;
                        item_box_load <= 0;
                        banana_load <= 0;
                        mushroom_load <= 0;
                        lightning_load <= 0;
                        trophy_load <= 0;
                    end
                    else if(is_item_box_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 0;
                        sprite2_load <= 0;
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                        item_box_load <= 1;
                        banana_load <= 0;
                        mushroom_load <= 0;
                        lightning_load <= 0;
                        trophy_load <= 0;
                    end
                    else if(is_banana_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 0;
                        sprite2_load <= 0;
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                        item_box_load <= 0;
                        banana_load <= 1;
                        mushroom_load <= 0;
                        lightning_load <= 0;
                        trophy_load <= 0;
                    end
                    else if(is_mushroom_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 0;
                        sprite2_load <= 0;
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                        item_box_load <= 0;
                        banana_load <= 0;
                        mushroom_load <= 1;
                        lightning_load <= 0;
                        trophy_load <= 0;
                    end
                    else if(is_lightning_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 0;
                        sprite2_load <= 0;
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                        item_box_load <= 0;
                        banana_load <= 0;
                        mushroom_load <= 0;
                        lightning_load <= 1;
                        trophy_load <= 0;
                    end
                    else if(is_trophy_loaded == 0) begin
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 0;
                        sprite2_load <= 0;
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                        item_box_load <= 0;
                        banana_load <= 0;
                        mushroom_load <= 0;
                        lightning_load <= 0;
                        trophy_load <= 1;
                    end
                    else begin
                        // Done loading, clean up.
                        bg_load <= 0;
                        text_load <= 0;
                        sprite1_load <= 0;
                        sprite2_load <= 0;
                        timer_load <= 0;
                        latiku_oym_load <= 0;
                        item_box_load <= 0;
                        banana_load <= 0;
                        mushroom_load <= 0;
                        lightning_load <= 0;
                        trophy_load <= 0;
                        
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
            11'b10000000000: begin
                sd_read = bg_sd_read;
                sd_address = bg_sd_adr;
            end
            11'b01000000000: begin
                sd_read = text_sd_read;
                sd_address = text_sd_adr;
            end
            11'b00100000000: begin
                sd_read = sprite1_sd_read;
                sd_address = sprite1_sd_adr;
            end
            11'b00010000000: begin
                sd_read = sprite2_sd_read;
                sd_address = sprite2_sd_adr;
            end
            11'b00001000000: begin
                sd_read = timer_sd_read;
                sd_address = timer_sd_adr; 
            end
            11'b00000100000: begin
                sd_read = latiku_oym_sd_read;
                sd_address = latiku_oym_sd_adr; 
            end
            11'b00000010000: begin
                sd_read = item_box_sd_read;
                sd_address = item_box_sd_adr; 
            end
            11'b00000001000: begin
                sd_read = banana_sd_read;
                sd_address = banana_sd_adr; 
            end
            11'b00000000100: begin
                sd_read = mushroom_sd_read;
                sd_address = mushroom_sd_adr; 
            end
            11'b00000000010: begin
                sd_read = lightning_sd_read;
                sd_address = lightning_sd_adr; 
            end
            11'b00000000001: begin
                sd_read = trophy_sd_read;
                sd_address = trophy_sd_adr; 
            end
            default: begin
                sd_read = 0;
                sd_address = 0;
            end
        endcase
    end
endmodule
