`timescale 1ns / 1ps

module game_logic(input clk_100mhz, input rst,
		// Controller connections.
		input A, B, start, Z, R, L, dU, dD, dL, dR, cU, cD, cL, cR,
		input stickUp, stickDown, stickLeft, stickRight,
		input [7:0] stickX, input [7:0] stickY,

		// State connections.
		input phase_loaded,
		output in_loading_phase,
		output reg [2:0] phase = `PHASE_LOADING_START_SCREEN,
		output reg [2:0] selected_character = `CHARACTER_MARIO,
		reg [1:0] laps_completed = 0,

		input lap_completed,
		output reg race_begin = 0,
		output reg [1:0] oym_counter = 0,

		// Information map connections,

        input [20:0] imap_item_box1,
        input [20:0] imap_item_box2,
        input [20:0] imap_item_box3,
        input [20:0] imap_item_box4,
        input [20:0] imap_item_box5,
        input [20:0] imap_item_box6,
        input [20:0] imap_item_box7,
        input [20:0] imap_item_box8,

		output reg [20:0] item_box1 = 0,
		output reg [20:0] item_box2 = 0,
		output reg [20:0] item_box3 = 0,
		output reg [20:0] item_box4 = 0,
		output reg [20:0] item_box5 = 0,
		output reg [20:0] item_box6 = 0,
		output reg [20:0] item_box7 = 0,
		output reg [20:0] item_box8 = 0
	);
	assign in_loading_phase = (phase == `PHASE_LOADING_START_SCREEN ||
	                    phase == `PHASE_LOADING_CHARACTER_SELECT ||
	                    phase == `PHASE_LOADING_RACING);
	reg prev_lap_completed = 0;


	always @(posedge clk_100mhz) begin
		if(rst == 1) begin
			phase <= `PHASE_LOADING_START_SCREEN;
			selected_character <= `CHARACTER_MARIO;
			laps_completed <= 0;
            item_box1 <= 0;
            item_box2 <= 0;
            item_box3 <= 0;
            item_box4 <= 0;
            item_box5 <= 0;
            item_box6 <= 0;
            item_box7 <= 0;
            item_box8 <= 0;
		end
		else begin
			prev_lap_completed <= lap_completed;
			case(phase)
				`PHASE_LOADING_START_SCREEN: begin
					if(phase_loaded == 1) begin
						phase <= `PHASE_START_SCREEN;
					end
				end
				`PHASE_START_SCREEN: begin
					if(A == 1 || start == 1) begin
						phase <= `PHASE_LOADING_CHARACTER_SELECT;
					end
				end
				`PHASE_LOADING_CHARACTER_SELECT: begin
					if(phase_loaded == 1) begin
						phase <= `PHASE_CHARACTER_SELECT;
					end
					selected_character <= `CHARACTER_MARIO;
				end
				`PHASE_CHARACTER_SELECT: begin
					if(start == 1) begin
						phase <= `PHASE_LOADING_RACING;
						item_box1 <= imap_item_box1;
						item_box2 <= imap_item_box2;
						item_box3 <= imap_item_box3;
						item_box4 <= imap_item_box4;
						item_box5 <= imap_item_box5;
						item_box6 <= imap_item_box6;
						item_box7 <= imap_item_box7;
						item_box8 <= imap_item_box8;
					end
					if(stickLeft == 1) begin
						if(selected_character[1:0] != 2'b00) begin
							selected_character <= selected_character - 1;
						end
					end
					if(stickRight == 1) begin
						if(selected_character[1:0] != 2'b11) begin
							selected_character <= selected_character + 1;
						end
					end
					if(stickDown == 1) begin
						if(selected_character[2] != 1'b1) begin
							selected_character <= selected_character + 3'b100;
						end
					end
					if(stickUp == 1) begin
						if(selected_character[2] != 1'b0) begin
							selected_character <= selected_character - 3'b100;
						end
					end
				end
				`PHASE_LOADING_RACING: begin
					if(phase_loaded == 1) begin
						phase <= `PHASE_RACING;
					end
					laps_completed <= 0;
				end
				`PHASE_RACING: begin
					if(prev_lap_completed == 0 && lap_completed == 1) begin
						if(laps_completed == 2) begin
							phase <= `PHASE_LOADING_START_SCREEN;
						end
						else begin
							laps_completed <= laps_completed + 1;
						end
					end
				end
				default: begin
					phase <= `PHASE_START_SCREEN;
				end
			endcase
		end
	end

	reg [26:0] counter = 0;
	always @(posedge clk_100mhz) begin
		if(rst == 1 || phase == `PHASE_LOADING_START_SCREEN) begin
			race_begin <= 0;
			oym_counter <= 0;
			counter <= 0;
		end
		else begin
			if(phase == `PHASE_RACING) begin
				if(race_begin == 0) begin
					if(counter == 100000000) begin
						counter <= 0;
						if(oym_counter == 2) begin
							race_begin <= 1;
						end
						else begin
							oym_counter <= oym_counter + 1;
						end
					end
					else begin
						counter <= counter + 1;
					end
				end
			end
		end
	end
endmodule