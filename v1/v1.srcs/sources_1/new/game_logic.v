`timescale 1ns / 1ps

module game_logic(input clk_100mhz, input rst,
		// Controller connections.
		input A1, B1, start1, Z1, R1, L1, dU1, dD1, dL1, dR1, cU1, cD1, cL1, cR1,
		input stickUp1, stickDown1, stickLeft1, stickRight1,
		input [7:0] stickX1, input [7:0] stickY1,

		input A2, B2, start2, Z2, R2, L2, dU2, dD2, dL2, dR2, cU2, cD2, cL2, cR2,
		input stickUp2, stickDown2, stickLeft2, stickRight2,
		input [7:0] stickX2, input [7:0] stickY2,

		// State connections.
		input phase_loaded,
		output in_loading_phase,
		output reg [2:0] phase = `PHASE_LOADING_START_SCREEN,
		output reg [2:0] selected_character1 = `CHARACTER_MARIO,
		output reg [2:0] selected_character2 = `CHARACTER_LUIGI,
		output reg character_selected1 = 0,
		output reg character_selected2 = 0,
		output reg ready_for_race = 0,

		reg [1:0] laps_completed1 = 0,
		reg [1:0] laps_completed2 = 0,

		input lap_completed1,
		input lap_completed2,
		output reg race_begin = 0,
		output reg [1:0] oym_counter = 0,

		output [1:0] owned_item1,
		output [1:0] owned_item2,
		output picking_item1,
		output picking_item2,
		output car1_banana_buff,
		output car1_mushroom_buff,
		output car1_lightning_buff,
		output car2_banana_buff,
		output car2_mushroom_buff,
		output car2_lightning_buff,

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

		input item_box_hit1,
		input item_box_hit2,

	    input item_box1_hit,
	    input item_box2_hit,
	    input item_box3_hit,
	    input item_box4_hit,
	    input item_box5_hit,
	    input item_box6_hit,
	    input item_box7_hit,
	    input item_box8_hit,
	    
		input banana_hit1,
		input banana_hit2,

	    input banana1_hit,
	    input banana2_hit,
	    input banana3_hit,
	    input banana4_hit,
	    input banana5_hit,
	    input banana6_hit,
	    input banana7_hit,
	    input banana8_hit,

	    // Car connections,
	    input [9:0] car1_x, input [8:0] car1_y,
	    input [9:0] car2_x, input [8:0] car2_y,

	    // Some more game state...
	    output reg [20:0] banana1 = 0,
	    output reg [20:0] banana2 = 0,
	    output reg [20:0] banana3 = 0,
	    output reg [20:0] banana4 = 0,
	    output reg [20:0] banana5 = 0,
	    output reg [20:0] banana6 = 0,
	    output reg [20:0] banana7 = 0,
	    output reg [20:0] banana8 = 0,

	    output lightning_used,
	    output banana_placed,
	    output mushroom_used
	);
	// Loading phases

	assign in_loading_phase = (phase == `PHASE_LOADING_START_SCREEN ||
		                    phase == `PHASE_LOADING_CHARACTER_SELECT ||
		                    phase == `PHASE_LOADING_RACING);
	reg prev_lap_completed1 = 0;
	reg prev_lap_completed2 = 0;

	// --------------------
	// Phase transitions

	always @(posedge clk_100mhz) begin
		if(rst == 1) begin
			phase <= `PHASE_LOADING_START_SCREEN;
			selected_character1 <= `CHARACTER_MARIO;
			selected_character2 <= `CHARACTER_LUIGI;
			character_selected1 <= 0;
			character_selected2 <= 0;
			ready_for_race <= 0;
			laps_completed1 <= 0;
			laps_completed2 <= 0;
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
			prev_lap_completed1 <= lap_completed1;
			prev_lap_completed2 <= lap_completed2;
			case(phase)
				`PHASE_LOADING_START_SCREEN: begin
					if(phase_loaded == 1) begin
						phase <= `PHASE_START_SCREEN;
					end
				end
				`PHASE_START_SCREEN: begin
					if(A1 == 1 || start1 == 1 || A2 == 1 || start2 == 1) begin
						phase <= `PHASE_LOADING_CHARACTER_SELECT;
					end
				end
				`PHASE_LOADING_CHARACTER_SELECT: begin
					if(phase_loaded == 1) begin
						phase <= `PHASE_CHARACTER_SELECT;
					end
					selected_character1 <= `CHARACTER_MARIO;
					selected_character2 <= `CHARACTER_LUIGI;
					ready_for_race <= 0;
					character_selected1 <= 0;
					character_selected2 <= 0;
				end
				`PHASE_CHARACTER_SELECT: begin
					if(character_selected1 == 1 && character_selected2 == 1) begin
						ready_for_race <= 1;
					end 
					else begin
						ready_for_race <= 0;
					end
					if(ready_for_race && (start1 || start2)) begin
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
					if(~character_selected1) begin
						if(stickLeft1 == 1) begin
							if(selected_character1[1:0] != 2'b00 && 
								selected_character1 - 1 != selected_character2) begin
								selected_character1 <= selected_character1 - 1;
							end
						end
						if(stickRight1 == 1) begin
							if(selected_character1[1:0] != 2'b11 && 
								selected_character1 + 1 != selected_character2) begin
								selected_character1 <= selected_character1 + 1;
							end
						end
						if(stickDown1 == 1) begin
							if(selected_character1[2] != 1'b1 && 
								selected_character1 + 3'b100 != selected_character2) begin
								selected_character1 <= selected_character1 + 3'b100;
							end
						end
						if(stickUp1 == 1) begin
							if(selected_character1[2] != 1'b0 && 
								selected_character1 - 3'b100 != selected_character2) begin
								selected_character1 <= selected_character1 - 3'b100;
							end
						end
						if(A1 == 1) begin
							character_selected1 <= 1;
						end
					end
					else begin
						if(B1 == 1) begin
							character_selected1 <= 0;
						end
					end
					// 2
					if(~character_selected2) begin
						if(stickLeft2 == 1) begin
							if(selected_character2[1:0] != 2'b00 && 
								selected_character2 - 1 != selected_character1) begin
								selected_character2 <= selected_character2 - 1;
							end
						end
						if(stickRight2 == 1) begin
							if(selected_character2[1:0] != 2'b11 && 
								selected_character2 + 1 != selected_character1) begin
								selected_character2 <= selected_character2 + 1;
							end
						end
						if(stickDown2 == 1) begin
							if(selected_character2[2] != 1'b1 && 
								selected_character2 + 3'b100 != selected_character1) begin
								selected_character2 <= selected_character2 + 3'b100;
							end
						end
						if(stickUp2 == 1) begin
							if(selected_character2[2] != 1'b0 && 
								selected_character2 - 3'b100 != selected_character1) begin
								selected_character2 <= selected_character2 - 3'b100;
							end
						end
						if(A2 == 1) begin
							character_selected2 <= 1;
						end
					end
					else begin
						if(B2 == 1) begin
							character_selected2 <= 0;
						end
					end
				end
				`PHASE_LOADING_RACING: begin
					if(phase_loaded == 1) begin
						phase <= `PHASE_RACING;
					end
					laps_completed1 <= 0;
					laps_completed2 <= 0;
				end
				`PHASE_RACING: begin
					if(prev_lap_completed1 == 0 && lap_completed1 == 1) begin
						if(laps_completed1 == 2) begin
							phase <= `PHASE_LOADING_START_SCREEN;
						end
						else begin
							laps_completed1 <= laps_completed1 + 1;
						end
					end
					if(prev_lap_completed2 == 0 && lap_completed2 == 1) begin
						if(laps_completed2 == 2) begin
							phase <= `PHASE_LOADING_START_SCREEN;
						end
						else begin
							laps_completed2 <= laps_completed2 + 1;
						end
					end
				end
				default: begin
					phase <= `PHASE_START_SCREEN;
				end
			endcase
		end
	end

	// Race on-your-marks timer.
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

	// ------------------
	// Item box spawner

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

	// -----------------
	// Item and buff managers

	wire car1_place_banana;
	wire car2_place_banana;
	wire car1_use_lightning;
	wire car2_use_lightning;
	wire car1_use_mushroom;
	wire car2_use_mushroom;
	assign lightning_used = car1_use_lightning || car2_use_lightning;
	assign banana_placed = car1_place_banana || car2_place_banana;
	assign mushroom_used = car1_use_mushroom || car2_use_mushroom;
	buff_item_manager car1_buffs(.clk_100mhz(clk_100mhz), .rst(rst),
			.item_box_hit(item_box_hit1), 
			.banana_hit(banana_hit1),
			.lightning_hit(car2_use_lightning),
			.Z(Z1), .owned_item(owned_item1),
			.picking_item(picking_item1), 
			.has_banana_buff(car1_banana_buff),
			.has_mushroom_buff(car1_mushroom_buff),
			.has_lightning_buff(car1_lightning_buff),
			.place_banana(car1_place_banana),
			.use_lightning(car1_use_lightning),
			.use_mushroom(car1_use_mushroom));
	buff_item_manager car2_buffs(.clk_100mhz(clk_100mhz), .rst(rst),
			.item_box_hit(item_box_hit2), 
			.banana_hit(banana_hit2),
			.lightning_hit(car1_use_lightning),
			.Z(Z2), .owned_item(owned_item2),
			.picking_item(picking_item2), 
			.has_banana_buff(car2_banana_buff),
			.has_mushroom_buff(car2_mushroom_buff),
			.has_lightning_buff(car2_lightning_buff),
			.place_banana(car2_place_banana),
			.use_lightning(car2_use_lightning),
			.use_mushroom(car2_use_mushroom));

	wire [4:0] next_free_banana_slot = 
			(banana1[20] == 0 ? 1 :
			(banana2[20] == 0 ? 2 :
			(banana3[20] == 0 ? 3 :
			(banana4[20] == 0 ? 4 :
			(banana5[20] == 0 ? 5 :
			(banana6[20] == 0 ? 6 :
			(banana7[20] == 0 ? 7 :
			(banana8[20] == 0 ? 8 : 1))))))));
	always @(posedge clk_100mhz) begin
		if(rst == 1) begin
			banana1 <= 0;
			banana2 <= 0;
			banana3 <= 0;
			banana4 <= 0;
			banana5 <= 0;
			banana6 <= 0;
			banana7 <= 0;
			banana8 <= 0;
		end
		else begin
			if(car1_place_banana) begin
				case(next_free_banana_slot)
					1: banana1 <= {1'b1, car1_x, 1'b0, car1_y};
					2: banana2 <= {1'b1, car1_x, 1'b0, car1_y};
					3: banana3 <= {1'b1, car1_x, 1'b0, car1_y};
					4: banana4 <= {1'b1, car1_x, 1'b0, car1_y};
					5: banana5 <= {1'b1, car1_x, 1'b0, car1_y};
					6: banana6 <= {1'b1, car1_x, 1'b0, car1_y};
					7: banana7 <= {1'b1, car1_x, 1'b0, car1_y};
					8: banana8 <= {1'b1, car1_x, 1'b0, car1_y};
				endcase
			end
			if(car2_place_banana) begin
				case(next_free_banana_slot)
					1: banana1 <= {1'b1, car2_x, 1'b0, car2_y};
					2: banana2 <= {1'b1, car2_x, 1'b0, car2_y};
					3: banana3 <= {1'b1, car2_x, 1'b0, car2_y};
					4: banana4 <= {1'b1, car2_x, 1'b0, car2_y};
					5: banana5 <= {1'b1, car2_x, 1'b0, car2_y};
					6: banana6 <= {1'b1, car2_x, 1'b0, car2_y};
					7: banana7 <= {1'b1, car2_x, 1'b0, car2_y};
					8: banana8 <= {1'b1, car2_x, 1'b0, car2_y};
				endcase
			end
		end
	end
endmodule