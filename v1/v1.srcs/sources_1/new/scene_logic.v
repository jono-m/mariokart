`timescale 1ns / 1ps

module scene_logic(input clk_100mhz, input rst,
    input [2:0] phase,
    input selected_character,

    output reg [31:0] bg_address_offset = `ADR_START_SCREEN_BG,
    output reg [31:0] text_address_offset = 0,

    output reg show_text = 0,

    output reg [9:0] text_x = 0, output reg [8:0] text_y
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
        end
      endcase
    end
  end

  // Scene drawing.

  reg [25:0] counter = 0;

  always @(posedge clk_100mhz) begin
    if(rst == 1) begin
      show_text <= 0;
      text_x <= 0;
      text_y <= 0;
      counter <= 0;
    end
    else begin
      counter <= counter + 1;
      case(phase)
        `PHASE_START_SCREEN: begin
          if(counter == 50000000) begin
            show_text <= ~show_text;
            text_x <= 138;
            text_y <= 306;
          end
        end
        `PHASE_CHARACTER_SELECT: begin
          show_text <= 0;
        end
      endcase
    end
  end
endmodule