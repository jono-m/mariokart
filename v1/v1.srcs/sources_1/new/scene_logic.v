`timescale 1ns / 1ps

module scene_logic(input clk_100mhz, input rst,
    input [2:0] phase,
    input [2:0] selected_character,
    input [9:0] car1_x, input [8:0] car1_y, input car1_present,
    input race_begin, input faded, input [1:0] laps_completed,

    output reg [31:0] bg_address_offset = `ADR_START_SCREEN_BG,
    output reg [31:0] text_address_offset = 0,
    output reg [31:0] sprite1_address_offset = 0,

    output reg show_text = 0,
    output reg [9:0] text_x = 0, 
    output reg [8:0] text_y = 0,

    output reg show_char_select_box1 = 0,
    output reg [9:0] char_select_box1_x = 0,
    output reg [8:0] char_select_box1_y = 0,

    output reg show_sprite1 = 0,
    output reg [9:0] sprite1_x = 0,
    output reg [8:0] sprite1_y = 0,

    output reg show_timer = 0,
    output reg [9:0] timer_x = 0,
    output reg [8:0] timer_y = 0,

    output reg [9:0] latiku_oym_x = 0,
    output reg [8:0] latiku_oym_y = 0,
    output reg show_latiku_oym = 0,

    output reg [9:0] laps1_x = 0,
    output reg [8:0] laps1_y = 0,
    output reg show_laps1 = 0
    );
  
  // Determine which images should be loaded for each scene.
  always @(posedge clk_100mhz) begin
    if(rst == 1) begin
      bg_address_offset <= `ADR_START_SCREEN_BG;
      text_address_offset <= 0;
    end
    else begin
      case(phase)
        `PHASE_LOADING_START_SCREEN: begin
          bg_address_offset <= `ADR_START_SCREEN_BG;
          text_address_offset <= `ADR_PRESS_START_TEXT;
        end
        `PHASE_LOADING_CHARACTER_SELECT: begin
          bg_address_offset <= `ADR_CHAR_SELECT_BG;
        end
        `PHASE_LOADING_RACING: begin
          bg_address_offset <= `ADR_RACING_BG;
          sprite1_address_offset <= `ADR_CHARACTER_SPRITE1 + (512 * selected_character);
        end
      endcase
    end
  end

  // Scene drawing.

  reg [25:0] counter = 0;

  always @(posedge clk_100mhz) begin
    if(rst == 1) begin
      text_x <= 0;
      text_y <= 0;
      show_text <= 0;
      char_select_box1_x <= 0;
      char_select_box1_y <= 0;
      show_char_select_box1 <= 0;
      sprite1_x <= 0;
      sprite1_y <= 0;
      show_sprite1 <= 0;
      timer_x <= 0;
      timer_y <= 0;
      show_timer <= 0;
      latiku_oym_x <= 0;
      latiku_oym_y <= 0;
      show_latiku_oym <= 0;
      laps1_x <= 0;
      laps1_y <= 0;
      show_laps1 <= 0;
      counter <= 0;
    end
    else begin
      case(phase)
        `PHASE_LOADING_START_SCREEN: begin
          if(faded == 1) begin
            show_text <= 1;
            text_x <= 138;
            text_y <= 306;
            show_char_select_box1 <= 0;
            show_sprite1 <= 0;
            show_timer <= 0;
            show_latiku_oym <= 0;
            show_laps1 <= 0;
            counter <= 0;
          end
        end
        `PHASE_START_SCREEN: begin
          if(counter == 50000000) begin
            show_text <= ~show_text;
          end
          counter <= counter + 1;
        end
        `PHASE_LOADING_CHARACTER_SELECT: begin
          if(faded == 1) begin
            show_text <= 0;
            char_select_box1_x <= 44 + (selected_character[1:0] * 139);
            char_select_box1_y <= 119 + (selected_character[2] * 165);
            show_char_select_box1 <= 1;
            show_sprite1 <= 0;
            show_timer <= 0;
            show_latiku_oym <= 0;
          end
        end
        `PHASE_CHARACTER_SELECT: begin
          char_select_box1_x <= 44 + (selected_character[1:0] * 139);
          char_select_box1_y <= 119 + (selected_character[2] * 165);
        end
        `PHASE_LOADING_RACING: begin
          if(faded == 1) begin
            show_text <= 0;
            show_char_select_box1 <= 0;
            show_sprite1 <= 1;
            sprite1_x <= car1_x - 10;
            sprite1_y <= car1_y - 10;
            show_timer <= 1;
            timer_x <= 236;
            timer_y <= 17;
            show_latiku_oym <= 1;
            latiku_oym_x <= 414;
            latiku_oym_y <= 314;
            counter <= 0;
          end
        end
        `PHASE_RACING: begin
          if(race_begin == 1) begin
            if(counter == 50000000) begin
              show_latiku_oym <= 0;
              show_laps1 <= 1;
            end
            counter <= counter + 1;
          end
          sprite1_x <= car1_x - 10;
          sprite1_y <= car1_y - 10;
          laps1_x <= car1_x - 10;
          laps1_y <= car1_y + 15;
          if(laps_completed == 2) begin
            if(counter == 25000000) begin
              show_laps1 <= 0;
            end
          end
        end
      endcase
    end
  end
endmodule