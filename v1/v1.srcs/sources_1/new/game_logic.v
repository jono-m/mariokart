`timescale 1ns / 1ps

module game_logic(input clk_100mhz, input rst,
		// Controller connections.
		input A, B, start, Z, R, L, dU, dD, dL, dR, cU, cD, cL, cR,
		input stickUp, stickDown, stickLeft, stickRight,
		input [7:0] stickX, input [7:0] stickY,

		// State connections.
		input phase_loaded, 
		output reg [2:0] phase = `PHASE_LOADING_START_SCREEN,
		output reg [2:0] selected_character = `CHARACTER_MARIO
	);

	always @(posedge clk_100mhz) begin
		if(rst == 1) begin
			phase <= `PHASE_LOADING_START_SCREEN;
			selected_character <= `CHARACTER_MARIO;
		end
		else begin
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
				end
				`PHASE_CHARACTER_SELECT: begin
					if(A == 1 || start == 1) begin
						phase <= `PHASE_LOADING_RACING;
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
				end
				`PHASE_RACING: begin
					
				end
				default: begin
					phase <= `PHASE_START_SCREEN;
				end
			endcase
		end
	end
endmodule