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
		output reg [20:0] item_box8 = 0,

		// Physics logic connections,

		input item_box_hit,

    input item_box1_hit,
    input item_box2_hit,
    input item_box3_hit,
    input item_box4_hit,
    input item_box5_hit,
    input item_box6_hit,
    input item_box7_hit,
    input item_box8_hit
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
      item_box1[19:0] <= 0;
      item_box2[19:0] <= 0;
      item_box3[19:0] <= 0;
      item_box4[19:0] <= 0;
      item_box5[19:0] <= 0;
      item_box6[19:0] <= 0;
      item_box7[19:0] <= 0;
      item_box8[19:0] <= 0;
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
						item_box1[19:0] <= imap_item_box1;
						item_box2[19:0] <= imap_item_box2;
						item_box3[19:0] <= imap_item_box3;
						item_box4[19:0] <= imap_item_box4;
						item_box5[19:0] <= imap_item_box5;
						item_box6[19:0] <= imap_item_box6;
						item_box7[19:0] <= imap_item_box7;
						item_box8[19:0] <= imap_item_box8;
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

	reg [3:0] item_box1_timer = `ITEM_BOX_RESPAWN_SECONDS;
	reg [3:0] item_box2_timer = `ITEM_BOX_RESPAWN_SECONDS;
	reg [3:0] item_box3_timer = `ITEM_BOX_RESPAWN_SECONDS;
	reg [3:0] item_box4_timer = `ITEM_BOX_RESPAWN_SECONDS;
	reg [3:0] item_box5_timer = `ITEM_BOX_RESPAWN_SECONDS;
	reg [3:0] item_box6_timer = `ITEM_BOX_RESPAWN_SECONDS;
	reg [3:0] item_box7_timer = `ITEM_BOX_RESPAWN_SECONDS;
	reg [3:0] item_box8_timer = `ITEM_BOX_RESPAWN_SECONDS;

	reg [26:0] second_counter = 0;
	always @(posedge clk_100mhz) begin
		if(rst == 1) begin
			second_counter <= 0;
		end
		else begin
			if(second_counter == 100000000) begin
				second_counter <= 0;
				item_box1_timer <= item_box1_timer + ((item_box1_timer == `ITEM_BOX_RESPAWN_SECONDS) ? 0 : 1);
				item_box2_timer <= item_box2_timer + ((item_box2_timer == `ITEM_BOX_RESPAWN_SECONDS) ? 0 : 1);
				item_box3_timer <= item_box3_timer + ((item_box3_timer == `ITEM_BOX_RESPAWN_SECONDS) ? 0 : 1);
				item_box4_timer <= item_box4_timer + ((item_box4_timer == `ITEM_BOX_RESPAWN_SECONDS) ? 0 : 1);
				item_box5_timer <= item_box5_timer + ((item_box5_timer == `ITEM_BOX_RESPAWN_SECONDS) ? 0 : 1);
				item_box6_timer <= item_box6_timer + ((item_box6_timer == `ITEM_BOX_RESPAWN_SECONDS) ? 0 : 1);
				item_box7_timer <= item_box7_timer + ((item_box7_timer == `ITEM_BOX_RESPAWN_SECONDS) ? 0 : 1);
				item_box8_timer <= item_box8_timer + ((item_box8_timer == `ITEM_BOX_RESPAWN_SECONDS) ? 0 : 1);
			end
			else begin
				second_counter <= second_counter + 1;
			end
			if(item_box1_hit) item_box1_timer <= 0;
			if(item_box2_hit) item_box2_timer <= 0;
			if(item_box3_hit) item_box3_timer <= 0;
			if(item_box4_hit) item_box4_timer <= 0;
			if(item_box5_hit) item_box5_timer <= 0;
			if(item_box6_hit) item_box6_timer <= 0;
			if(item_box7_hit) item_box7_timer <= 0;
			if(item_box8_hit) item_box8_timer <= 0;
		end
	end

	always @(*) begin
		item_box1[20] = (item_box1_timer == `ITEM_BOX_RESPAWN_SECONDS) && imap_item_box1[20];
		item_box2[20] = (item_box2_timer == `ITEM_BOX_RESPAWN_SECONDS) && imap_item_box2[20];
		item_box3[20] = (item_box3_timer == `ITEM_BOX_RESPAWN_SECONDS) && imap_item_box3[20];
		item_box4[20] = (item_box4_timer == `ITEM_BOX_RESPAWN_SECONDS) && imap_item_box4[20];
		item_box5[20] = (item_box5_timer == `ITEM_BOX_RESPAWN_SECONDS) && imap_item_box5[20];
		item_box6[20] = (item_box6_timer == `ITEM_BOX_RESPAWN_SECONDS) && imap_item_box6[20];
		item_box7[20] = (item_box7_timer == `ITEM_BOX_RESPAWN_SECONDS) && imap_item_box7[20];
		item_box8[20] = (item_box8_timer == `ITEM_BOX_RESPAWN_SECONDS) && imap_item_box8[20];
	end
endmodule