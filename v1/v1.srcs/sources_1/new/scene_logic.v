`timescale 1ns / 1ps

module scene_logic(input clk_100mhz, input rst,
    input [2:0] phase,
    input [2:0] selected_character,
    input [9:0] car1_x, input [8:0] car1_y, input car1_present,

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

    output reg [9:0] latiku_final_lap_x = 0,
    output reg [8:0] latiku_final_lap_y = 0,
    output reg show_latiku_final_lap = 0
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
      latiku_final_lap_x <= 0;
      latiku_final_lap_y <= 0;
      show_latiku_final_lap <= 0;
      counter <= 0;
    end
    else begin
      counter <= counter + 1;
      case(phase)
        `PHASE_START_SCREEN: begin
          show_char_select_box1 <= 0;
          show_sprite1 <= 0;
          show_timer <= 0;
          if(counter == 50000000) begin
            show_text <= ~show_text;
            text_x <= 138;
            text_y <= 306;
          end
        end
        `PHASE_CHARACTER_SELECT: begin
          show_text <= 0;
          show_sprite1 <= 0;
          show_char_select_box1 <= 1;
          show_timer <= 0;
          char_select_box1_x <= 42 + (selected_character[1:0] * 139);
          char_select_box1_y <= 119 + (selected_character[2] * 165);
        end
        `PHASE_RACING: begin
          show_text <= 0;
          show_char_select_box1 <= 0;
          show_sprite1 <= 1;
          show_timer <= 1;
          show_latiku_oym <= 1;
          sprite1_x <= car1_x - 10;
          sprite1_y <= car1_y - 10;
        end
      endcase
    end
  end
endmodule