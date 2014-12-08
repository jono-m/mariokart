`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2014 06:59:52 PM
// Design Name: 
// Module Name: labkit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module labkit(input clk, 
		// VGA
		output[3:0] vgaRed, output[3:0] vgaBlue, output[3:0] vgaGreen, 
		output Hsync, output Vsync, 

		// Pushbuttons
		input btnC, btnU, btnD, btnL, btnR, btnCpuReset,

		// SD card
		input sdCD, output sdReset, output sdSCK, output sdCmd, 
		inout [3:0] sdData, 

		// LEDs
		output[15:0] led, 

		// Switches
		input [15:0] sw,

    // PMOD
    inout [1:0] JA,
    inout [7:0] JB,
    inout [7:0] JC,
    inout [7:0] JD,

    // Cellular RAM
    output RamCLK,
    output RamADVn,
    output RamCEn,
    output RamCRE,
    output RamOEn,
    output RamWEn,
    output RamLBn,
    output RamUBn,
    input RamWait,

    inout [15:0] MemDB,
    output [22:0] MemAdr
	);

  // -----------------
  // Set up software reset.

  wire rst = ~btnCpuReset;

  // ---------------------
	// Set up clocks.

	wire clk_100mhz = clk;
  wire clk_50mhz;
  wire clk_25mhz;
  wire clk_12mhz;
  wire clk_1mhz;

  clock_divider div1(clk_100mhz, clk_50mhz);
  clock_divider div2(clk_50mhz, clk_25mhz);
  clock_divider div3(clk_25mhz, clk_12mhz);
  us_divider usdiv(.clk_100mhz(clk_100mhz), .rst(rst), .clk_1mhz(clk_1mhz));

  // ------------------
  // SD card.

  wire sd_CLK;
  wire sd_MISO;
  wire sd_MOSI;
  wire sd_CS;

	wire sd_read;
	wire [7:0] sd_byte;
	wire sd_byte_available;
	wire sd_ready_for_read;
	wire [31:0] sd_address;

	sd_controller sdcont(.clk(clk_25mhz), .cs(sd_CS), .mosi(sd_MOSI), 
			.miso(sd_MISO), .sclk(sd_CLK), .rd(sd_read), .wr(0), .dm_in(0), 
			.reset(rst), .din(0), .dout(sd_byte),
			.byte_available(sd_byte_available), .ready_for_read(sd_ready_for_read), 
			.address(sd_address), .status());

  // -------------------------
	// VGA.

	wire [9:0] x;
	wire [8:0] y;
  wire [9:0] hcount;
  wire [9:0] vcount;
	wire at_display_area;
	vga vga_module(.vga_clock(clk_25mhz), .x(x), .y(y), .vsync(Vsync),
			.hsync(Hsync), .at_display_area(at_display_area),
      .hcount_o(hcount), .vcount_o(vcount));

  // -----------------------
	// Button and N64 input.

  wire A_ctrl;
	wire A1 = btnU || A_ctrl;
  wire B_ctrl;
	wire B1 = btnD || B_ctrl;
  wire start_ctrl;
	wire start1 = btnC || start_ctrl;
  wire Z_ctrl;
	wire Z1 = btnC || Z_ctrl;
	wire R1;
	wire L1;
	wire dU1;
	wire dD1;
	wire dL1;
	wire dR1;
	wire cU1;
	wire cD1;
	wire cL1;
	wire cR1;
	wire signed [7:0] stickX1;
	wire signed [7:0] stickY1;
  wire stickUp1 = btnU || (stickY1 > 50);
  wire stickDown1 = btnD || (stickY1 < -50);
  wire stickLeft1 = btnL || (stickX1 < -50);
  wire stickRight1 = btnR || (stickX1 > 50);
  wire controller_data1;

  N64_interpret controller1(.clk_100mhz(clk_100mhz), .rst(rst), .enabled(1), .clk_1mhz(clk_1mhz),
      .A(A_ctrl), .B(B_ctrl), .start(start_ctrl), .L(L1), .R(R1), .Z(Z_ctrl), .dU(dU1), .dD(dD1), .dL(dL1),
      .dR(dR1), .cU(cU1), .cD(cD1), .cL(cL1), .cR(cR1), .stickX(stickX1), 
      .stickY(stickY1), .controller_data(controller_data1));

  wire clean_A1;
  wire clean_B1;
  wire clean_start1;
  wire clean_Z1;
  wire clean_R1;
  wire clean_L1;
  wire clean_dU1;
  wire clean_dD1;
  wire clean_dL1;
  wire clean_dR1;
  wire clean_cU1;
  wire clean_cD1;
  wire clean_cL1;
  wire clean_cR1;
  wire clean_stickUp1;
  wire clean_stickDown1;
  wire clean_stickLeft1;
  wire clean_stickRight1;

  debounce debounceA1(rst, clk_100mhz, A1, clean_A1);
  debounce debounceB1(rst, clk_100mhz, B1, clean_B1);
  debounce debounceS1(rst, clk_100mhz, start1, clean_start1);
  debounce debounceZ1(rst, clk_100mhz, Z1, clean_Z1);
  debounce debounceR1(rst, clk_100mhz, R1, clean_R1);
  debounce debounceL1(rst, clk_100mhz, L1, clean_L1);
  debounce debounceDU1(rst, clk_100mhz, dU1, clean_dU1);
  debounce debounceDD1(rst, clk_100mhz, dD1, clean_dD1);
  debounce debounceDL1(rst, clk_100mhz, dL1, clean_dL1);
  debounce debounceDR1(rst, clk_100mhz, dR1, clean_dR1);
  debounce debounceCU1(rst, clk_100mhz, cU1, clean_cU1);
  debounce debounceCD1(rst, clk_100mhz, cD1, clean_cD1);
  debounce debounceCL1(rst, clk_100mhz, cL1, clean_cL1);
  debounce debounceCR1(rst, clk_100mhz, cR1, clean_cR1);
  debounce debounceSU1(rst, clk_100mhz, stickUp1, clean_stickUp1);
  debounce debounceSD1(rst, clk_100mhz, stickDown1, clean_stickDown1);
  debounce debounceSL1(rst, clk_100mhz, stickLeft1, clean_stickLeft1);
  debounce debounceSR1(rst, clk_100mhz, stickRight1, clean_stickRight1);

  wire paused_stickUp1;
  wire paused_stickDown1;
  wire paused_stickLeft1;
  wire paused_stickRight1;

  pause_repeater pu1(rst, clk_100mhz, clean_stickUp1, paused_stickUp1);
  pause_repeater pd1(rst, clk_100mhz, clean_stickDown1, paused_stickDown1);
  pause_repeater pl1(rst, clk_100mhz, clean_stickLeft1, paused_stickLeft1);
  pause_repeater pr1(rst, clk_100mhz, clean_stickRight1, paused_stickRight1);

  // Player 2
  wire A2;
  wire B2;
  wire start2;
  wire Z2;
  wire R2;
  wire L2;
  wire dU2;
  wire dD2;
  wire dL2;
  wire dR2;
  wire cU2;
  wire cD2;
  wire cL2;
  wire cR2;
  wire signed [7:0] stickX2;
  wire signed [7:0] stickY2;
  wire stickUp2 = (stickY2 > 50);
  wire stickDown2 = (stickY2 < -50);
  wire stickLeft2 = (stickX2 < -50);
  wire stickRight2 = (stickX2 > 50);
  wire controller_data2;

  N64_interpret controller2(.clk_100mhz(clk_100mhz), .rst(rst), .enabled(1), .clk_1mhz(clk_1mhz),
      .A(A2), .B(B2), .start(start2), .L(L2), .R(R2), .Z(Z2), .dU(dU2), .dD(dD2), .dL(dL2),
      .dR(dR2), .cU(cU2), .cD(cD2), .cL(cL2), .cR(cR2), .stickX(stickX2), 
      .stickY(stickY2), .controller_data(controller_data2));

  wire clean_A2;
  wire clean_B2;
  wire clean_start2;
  wire clean_Z2;
  wire clean_R2;
  wire clean_L2;
  wire clean_dU2;
  wire clean_dD2;
  wire clean_dL2;
  wire clean_dR2;
  wire clean_cU2;
  wire clean_cD2;
  wire clean_cL2;
  wire clean_cR2;
  wire clean_stickUp2;
  wire clean_stickDown2;
  wire clean_stickLeft2;
  wire clean_stickRight2;

  debounce debounceA2(rst, clk_100mhz, A2, clean_A2);
  debounce debounceB2(rst, clk_100mhz, B2, clean_B2);
  debounce debounceS2(rst, clk_100mhz, start2, clean_start2);
  debounce debounceZ2(rst, clk_100mhz, Z2, clean_Z2);
  debounce debounceR2(rst, clk_100mhz, R2, clean_R2);
  debounce debounceL2(rst, clk_100mhz, L2, clean_L2);
  debounce debounceDU2(rst, clk_100mhz, dU2, clean_dU2);
  debounce debounceDD2(rst, clk_100mhz, dD2, clean_dD2);
  debounce debounceDL2(rst, clk_100mhz, dL2, clean_dL2);
  debounce debounceDR2(rst, clk_100mhz, dR2, clean_dR2);
  debounce debounceCU2(rst, clk_100mhz, cU2, clean_cU2);
  debounce debounceCD2(rst, clk_100mhz, cD2, clean_cD2);
  debounce debounceCL2(rst, clk_100mhz, cL2, clean_cL2);
  debounce debounceCR2(rst, clk_100mhz, cR2, clean_cR2);
  debounce debounceSU2(rst, clk_100mhz, stickUp2, clean_stickUp2);
  debounce debounceSD2(rst, clk_100mhz, stickDown2, clean_stickDown2);
  debounce debounceSL2(rst, clk_100mhz, stickLeft2, clean_stickLeft2);
  debounce debounceSR2(rst, clk_100mhz, stickRight2, clean_stickRight2);

  wire paused_stickUp2;
  wire paused_stickDown2;
  wire paused_stickLeft2;
  wire paused_stickRight2;

  pause_repeater pu2(rst, clk_100mhz, clean_stickUp2, paused_stickUp2);
  pause_repeater pd2(rst, clk_100mhz, clean_stickDown2, paused_stickDown2);
  pause_repeater pl2(rst, clk_100mhz, clean_stickLeft2, paused_stickLeft2);
  pause_repeater pr2(rst, clk_100mhz, clean_stickRight2, paused_stickRight2);

  // ---------------
	// Game logic.

	wire phase_loaded;
	wire [2:0] phase;
  wire in_loading_phase;
	wire [2:0] selected_character1;
  wire [2:0] selected_character2;
  wire [9:0] car1_x;
  wire [8:0] car1_y;
  wire [9:0] car2_x;
  wire [8:0] car2_y;
  wire character_selected1;
  wire character_selected2;
  wire ready_for_race;
  wire lap_completed1;
  wire [1:0] laps_completed1;
  wire lap_completed2;
  wire [1:0] laps_completed2;
  wire [1:0] finish_place1;
  wire [1:0] finish_place2;
  wire race_begin;
  wire [1:0] oym_counter;
  wire correct_direction1;
  wire correct_direction2;
  wire [20:0] imap_item_box1;
  wire [20:0] imap_item_box2;
  wire [20:0] imap_item_box3;
  wire [20:0] imap_item_box4;
  wire [20:0] imap_item_box5;
  wire [20:0] imap_item_box6;
  wire [20:0] imap_item_box7;
  wire [20:0] imap_item_box8;
  wire [20:0] item_box1;
  wire [20:0] item_box2;
  wire [20:0] item_box3;
  wire [20:0] item_box4;
  wire [20:0] item_box5;
  wire [20:0] item_box6;
  wire [20:0] item_box7;
  wire [20:0] item_box8;
  wire item_box_hit1;
  wire item_box_hit2;
  wire item_box1_hit;
  wire item_box2_hit;
  wire item_box3_hit;
  wire item_box4_hit;
  wire item_box5_hit;
  wire item_box6_hit;
  wire item_box7_hit;
  wire item_box8_hit;
  wire banana_hit1;
  wire banana_hit2;
  wire banana1_hit;
  wire banana2_hit;
  wire banana3_hit;
  wire banana4_hit;
  wire banana5_hit;
  wire banana6_hit;
  wire banana7_hit;
  wire banana8_hit;

  wire [20:0] banana1;
  wire [20:0] banana2;
  wire [20:0] banana3;
  wire [20:0] banana4;
  wire [20:0] banana5;
  wire [20:0] banana6;
  wire [20:0] banana7;
  wire [20:0] banana8;

  wire banana1_active;
  wire banana2_active;
  wire banana3_active;
  wire banana4_active;
  wire banana5_active;
  wire banana6_active;
  wire banana7_active;
  wire banana8_active;

  wire [1:0] owned_item1;
  wire [1:0] owned_item2;
  wire picking_item1;
  wire picking_item2;
  wire car1_banana_buff;
  wire car1_mushroom_buff;
  wire car1_lightning_buff;
  wire car2_banana_buff;
  wire car2_mushroom_buff;
  wire car2_lightning_buff;
  wire lightning_used;
  wire banana_placed;
  wire mushroom_used;

  wire [3:0] fmin_tens1;
  wire [3:0] fmin_ones1;
  wire [3:0] fsec_tens1;
  wire [3:0] fsec_ones1;
  wire [3:0] fms_tens1;
  wire [3:0] fms_ones1;

  wire [3:0] fmin_tens2;
  wire [3:0] fmin_ones2;
  wire [3:0] fsec_tens2;
  wire [3:0] fsec_ones2;
  wire [3:0] fms_tens2;
  wire [3:0] fms_ones2;

  wire [3:0] min_tens;
  wire [3:0] min_ones;
  wire [3:0] sec_tens;
  wire [3:0] sec_ones;
  wire [3:0] ms_tens;
  wire [3:0] ms_ones;

	game_logic gl(.clk_100mhz(clk_100mhz), .rst(rst), .A1(A1), .B1(clean_B1), 
			.start1(clean_start1), .Z1(clean_Z1), .R1(clean_R1), .L1(clean_L1), .dU1(clean_dU1),
      .dD1(clean_dD1), .dL1(clean_dL1), .dR1(clean_dR1), .cU1(clean_cU1), .cD1(clean_cD1),
      .cL1(clean_cL1), .cR1(clean_cR1), .stickUp1(paused_stickUp1), 
      .stickDown1(paused_stickDown1), .stickLeft1(paused_stickLeft1), 
			.stickRight1(paused_stickRight1), .stickX1(stickX1), .stickY1(stickY1), 
      .A2(A2), .B2(clean_B2), 
      .start2(clean_start2), .Z2(clean_Z2), .R2(clean_R2), .L2(clean_L2), .dU2(clean_dU2),
      .dD2(clean_dD2), .dL2(clean_dL2), .dR2(clean_dR2), .cU2(clean_cU2), .cD2(clean_cD2),
      .cL2(clean_cL2), .cR2(clean_cR2), .stickUp2(paused_stickUp2), 
      .stickDown2(paused_stickDown2), .stickLeft2(paused_stickLeft2), 
      .stickRight2(paused_stickRight2), .stickX2(stickX2), .stickY2(stickY2), 
			.phase_loaded(phase_loaded), .in_loading_phase(in_loading_phase),
      .phase(phase),
			.selected_character1(selected_character1), .selected_character2(selected_character2),
      .character_selected1(character_selected1), .character_selected2(character_selected2),
      .ready_for_race(ready_for_race),
      .lap_completed1(lap_completed1), .lap_completed2(lap_completed2),
      .laps_completed1(laps_completed1), .laps_completed2(laps_completed2), 
      .finish_place1(finish_place1), .finish_place2(finish_place2),
      .race_begin(race_begin),
      .oym_counter(oym_counter),
      .owned_item1(owned_item1), .picking_item1(picking_item1),
      .owned_item2(owned_item2), .picking_item2(picking_item2),
      .imap_item_box1(imap_item_box1), .imap_item_box2(imap_item_box2),
      .imap_item_box3(imap_item_box3), .imap_item_box4(imap_item_box4),
      .imap_item_box5(imap_item_box5), .imap_item_box6(imap_item_box6),
      .imap_item_box7(imap_item_box7), .imap_item_box8(imap_item_box8),
      .item_box1(item_box1), .item_box2(item_box2),
      .item_box3(item_box3), .item_box4(item_box4),
      .item_box5(item_box5), .item_box6(item_box6),
      .item_box7(item_box7), .item_box8(item_box8),
      .item_box_hit1(item_box_hit1), .item_box_hit2(item_box_hit2),
      .item_box1_hit(item_box1_hit), .item_box2_hit(item_box2_hit),
      .item_box3_hit(item_box3_hit), .item_box4_hit(item_box4_hit),
      .item_box5_hit(item_box5_hit), .item_box6_hit(item_box6_hit),
      .item_box7_hit(item_box7_hit), .item_box8_hit(item_box8_hit),
      .banana_hit1(banana_hit1), .banana_hit2(banana_hit2),
      .banana1_hit(banana1_hit), .banana2_hit(banana2_hit),
      .banana3_hit(banana3_hit), .banana4_hit(banana4_hit),
      .banana5_hit(banana5_hit), .banana6_hit(banana6_hit),
      .banana7_hit(banana7_hit), .banana8_hit(banana8_hit),
      .banana1(banana1), .banana2(banana2),
      .banana3(banana3), .banana4(banana4),
      .banana5(banana5), .banana6(banana6),
      .banana7(banana7), .banana8(banana8),
      .banana1_active(banana1_active), .banana2_active(banana2_active),
      .banana3_active(banana3_active), .banana4_active(banana4_active),
      .banana5_active(banana5_active), .banana6_active(banana6_active),
      .banana7_active(banana7_active), .banana8_active(banana8_active),
      .car1_x(car1_x), .car1_y(car1_y),
      .car2_x(car2_x), .car2_y(car2_y),
      .car1_banana_buff(car1_banana_buff),
      .car1_mushroom_buff(car1_mushroom_buff),
      .car1_lightning_buff(car1_lightning_buff),
      .car2_banana_buff(car2_banana_buff),
      .car2_mushroom_buff(car2_mushroom_buff),
      .car2_lightning_buff(car2_lightning_buff),
      .lightning_used(lightning_used),
      .banana_placed(banana_placed),
      .mushroom_used(mushroom_used),
      .fmin_tens1(fmin_tens1), .fmin_ones1(fmin_ones1), .fsec_tens1(fsec_tens1), .fsec_ones1(fsec_ones1),
      .fms_tens1(fms_tens1), .fms_ones1(fms_ones1),
      .fmin_tens2(fmin_tens2), .fmin_ones2(fmin_ones2), .fsec_tens2(fsec_tens2), .fsec_ones2(fsec_ones2),
      .fms_tens2(fms_tens2), .fms_ones2(fms_ones2),
      .min_tens(min_tens), .min_ones(min_ones), .sec_tens(sec_tens), .sec_ones(sec_ones),
      .ms_tens(ms_tens), .ms_ones(ms_ones));

  // -----------------------------------
  // Car drivers and simulators.

  wire [1:0] speed1;
  wire forward1;
  wire backward1;
  wire turn_left1;
  wire turn_right1;

  wire [3:0] ct_r;
  wire [3:0] ct_g;
  wire [3:0] ct_b;

  led_tracker car_tracker(.clk(clk_100mhz), .replace_cars(phase == `PHASE_LOADING_RACING), .vgaRed(ct_r), .vgaGreen(ct_g), .vgaBlue(ct_b), .hcount(hcount), .vcount(vcount),
      .hsync(Hsync), .vsync(~Vsync), .at_display_area(at_display_area), .btnCpuReset(btnCpuReset), .sw(sw), .btnU(btnU),
      .btnL(btnL), .btnR(btnR), .btnD(btnD), .btnLU(clean_dD1), .btnLD(clean_dU1), .btnLL(clean_dR1), .btnLR(clean_dL1), .btnRU(clean_cD1), 
      .btnRD(clean_cU1), .btnRL(clean_cR1), .btnRR(clean_cL1),
      .JC(JC), .JD(JD), .xloc_1(car1_x), .yloc_1(car1_y), .xloc_2(car2_x), .yloc_2(car2_y));

  wire driver_forward1;
  wire driver_backward1;
  wire driver_left1;
  wire driver_right1;

  car_driver car1_real(.clk(clk_100mhz), .rst(rst), .forward(forward1), 
      .backward(backward1), .turn_left(turn_left1), .turn_right(turn_right1), 
      .speed(speed1), .driver_forward(driver_forward1), 
      .driver_backward(driver_backward1), .driver_left(driver_left1), 
      .driver_right(driver_right1));

  // Car 2
  wire [1:0] speed2;
  wire forward2;
  wire backward2;
  wire turn_left2;
  wire turn_right2;

  wire driver_forward2;
  wire driver_backward2;
  wire driver_left2;
  wire driver_right2;

  car_driver car2_real(.clk(clk_100mhz), .rst(rst), .forward(forward2), 
      .backward(backward2), .turn_left(turn_left2), .turn_right(turn_right2), 
      .speed(speed2), .driver_forward(driver_forward2), 
      .driver_backward(driver_backward2), .driver_left(driver_left2), 
      .driver_right(driver_right2));

  // ---------------------
	// Video logic.

  wire video_load;
  wire video_loaded;
	wire [3:0] red;
	wire [3:0] green;
	wire [3:0] blue;
  wire [31:0] video_sd_adr;
  wire video_sd_read;
  wire forcing_display;

	video_logic vl(.clk_100mhz(clk_100mhz), .clk_50mhz(clk_50mhz), .clk_25mhz(clk_25mhz), .rst(rst), .phase(phase),
			.selected_character1(selected_character1), .selected_character2(selected_character2), 
      .character_selected1(character_selected1), .character_selected2(character_selected2),
      .ready_for_race(ready_for_race),
      .load(video_load),
      .in_loading_phase(in_loading_phase),
			.is_loaded(video_loaded), .race_begin(race_begin), .oym_counter(oym_counter),
      .laps_completed1(laps_completed1), .laps_completed2(laps_completed2),
      .finish_place1(finish_place1), .finish_place2(finish_place2),
      .sd_read(video_sd_read), .sd_byte(sd_byte),
			.sd_byte_available(sd_byte_available), 
			.sd_ready_for_read(sd_ready_for_read), .sd_address(video_sd_adr),
			.x(x), .y(y), .red(red), .green(green), .blue(blue),
      .car1_x(car1_x), .car1_y(car1_y),
      .car2_x(car2_x), .car2_y(car2_y),
      .owned_item1(owned_item1), .owned_item2(owned_item2),
      .picking1(picking_item1), .picking2(picking_item2),
      .item_box1(item_box1), .item_box2(item_box2),
      .item_box3(item_box3), .item_box4(item_box4),
      .item_box5(item_box5), .item_box6(item_box6),
      .item_box7(item_box7), .item_box8(item_box8),
      .banana1(banana1), .banana2(banana2),
      .banana3(banana3), .banana4(banana4),
      .banana5(banana5), .banana6(banana6),
      .banana7(banana7), .banana8(banana8),
      .lightning_used(lightning_used),
      .min_tens(min_tens), .min_ones(min_ones), .sec_tens(sec_tens), .sec_ones(sec_ones),
      .ms_tens(ms_tens), .ms_ones(ms_ones),
      .fmin_tens1(fmin_tens1), .fmin_ones1(fmin_ones1), .fsec_tens1(fsec_tens1), .fsec_ones1(fsec_ones1),
      .fms_tens1(fms_tens1), .fms_ones1(fms_ones1),
      .fmin_tens2(fmin_tens2), .fmin_ones2(fmin_ones2), .fsec_tens2(fsec_tens2), .fsec_ones2(fsec_ones2),
      .fms_tens2(fms_tens2), .fms_ones2(fms_ones2), .forcing_display(forcing_display)
      );

  // ------------------------
  // Track information map.

  wire imap_load;
  wire [9:0] imap_x;
  wire [8:0] imap_y;
  wire [1:0] map_type;
  
  wire imap_loaded;
  wire [31:0] imap_sd_adr;
  wire imap_sd_read;
  information_map imap(.clk_100mhz(clk_100mhz), .rst(rst), .load(imap_load),
      .in_loading_phase(in_loading_phase),
      .address_offset(`ADR_TRACK_INFORMATION_IMAGE),
      .x(imap_x), .y(imap_y), .map_type(map_type), .is_loaded(imap_loaded),
      .sd_byte_available(sd_byte_available), 
      .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
      .sd_address(imap_sd_adr), .sd_do_read(imap_sd_read),
      .item_box1(imap_item_box1), .item_box2(imap_item_box2),
      .item_box3(imap_item_box3), .item_box4(imap_item_box4),
      .item_box5(imap_item_box5), .item_box6(imap_item_box6),
      .item_box7(imap_item_box7), .item_box8(imap_item_box8));

  // -----------------------
  // Physics logic.

  physics_logic pl(.clk_100mhz(clk_100mhz), .rst(rst), 
      .phase(phase), .selected_character1(selected_character1), 
      .selected_character2(selected_character2), .race_begin(race_begin),
      .car1_banana_buff(car1_banana_buff),
      .car1_mushroom_buff(car1_mushroom_buff),
      .car1_lightning_buff(car1_lightning_buff),
      .car2_banana_buff(car2_banana_buff),
      .car2_mushroom_buff(car2_mushroom_buff),
      .car2_lightning_buff(car2_lightning_buff),
      .car1_x(car1_x),
      .car1_y(car1_y), .lap_completed1(lap_completed1), .correct_direction1(correct_direction1), 
      .A1(clean_A1), .B1(clean_B1), .stickLeft1(clean_stickLeft1), .stickRight1(clean_stickRight1),
      .car2_x(car2_x),
      .car2_y(car2_y), .lap_completed2(lap_completed2), .correct_direction2(correct_direction2), 
      .A2(clean_A2), .B2(clean_B2), .stickLeft2(clean_stickLeft2), .stickRight2(clean_stickRight2),
      .map_type(map_type), .imap_x(imap_x), .imap_y(imap_y),
      .forward1(forward1), .backward1(backward1), .turn_left1(turn_left1),
      .turn_right1(turn_right1), .speed1(speed1),
      .forward2(forward2), .backward2(backward2), .turn_left2(turn_left2),
      .turn_right2(turn_right2), .speed2(speed2),
      .item_box1(item_box1), .item_box2(item_box2),
      .item_box3(item_box3), .item_box4(item_box4),
      .item_box5(item_box5), .item_box6(item_box6),
      .item_box7(item_box7), .item_box8(item_box8),
      .item_box_hit1(item_box_hit1), .item_box_hit2(item_box_hit2),
      .item_box1_hit(item_box1_hit), .item_box2_hit(item_box2_hit),
      .item_box3_hit(item_box3_hit), .item_box4_hit(item_box4_hit),
      .item_box5_hit(item_box5_hit), .item_box6_hit(item_box6_hit),
      .item_box7_hit(item_box7_hit), .item_box8_hit(item_box8_hit),
      .banana1(banana1), .banana2(banana2),
      .banana3(banana3), .banana4(banana4),
      .banana5(banana5), .banana6(banana6),
      .banana7(banana7), .banana8(banana8),
      .banana_hit1(banana_hit1), .banana_hit2(banana_hit2),
      .banana1_hit(banana1_hit), .banana2_hit(banana2_hit),
      .banana3_hit(banana3_hit), .banana4_hit(banana4_hit),
      .banana5_hit(banana5_hit), .banana6_hit(banana6_hit),
      .banana7_hit(banana7_hit), .banana8_hit(banana8_hit),
      .banana1_active(banana1_active), .banana2_active(banana2_active),
      .banana3_active(banana3_active), .banana4_active(banana4_active),
      .banana5_active(banana5_active), .banana6_active(banana6_active),
      .banana7_active(banana7_active), .banana8_active(banana8_active));

  // Sound loader

  wire sound_load;
  wire [22:0] sound_address;
  wire [7:0] sample;

  wire sound_loaded;
  wire [31:0] sound_sd_adr;
  wire sound_sd_read;

  wire [15:0] cram_data;
  wire [22:0] cram_adr;
  wire cram_we;

  sound_loaded soundloader(.clk_12mhz(clk_12mhz), .rst(rst), .load(sound_load),
      .is_loaded(sound_loaded), .sound_address(sound_address), .sample(sample),
      .sd_byte_available(sd_byte_available), 
      .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
      .sd_address(sound_sd_adr), .sd_do_read(sound_sd_read),
      .cram_data(cram_data), .cram_adr(cram_adr), .cram_we(cram_we));


  information_map imap(.clk_100mhz(clk_100mhz), .rst(rst), .load(imap_load),
      .in_loading_phase(in_loading_phase),
      .address_offset(`ADR_TRACK_INFORMATION_IMAGE),
      .x(imap_x), .y(imap_y), .map_type(map_type), .is_loaded(imap_loaded),
      .sd_byte_available(sd_byte_available), 
      .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
      .sd_address(imap_sd_adr), .sd_do_read(imap_sd_read),
      .item_box1(imap_item_box1), .item_box2(imap_item_box2),
      .item_box3(imap_item_box3), .item_box4(imap_item_box4),
      .item_box5(imap_item_box5), .item_box6(imap_item_box6),
      .item_box7(imap_item_box7), .item_box8(imap_item_box8));
  // ------------------------------------------
  // SD card loader.

  sd_loader sl(.clk_100mhz(clk_100mhz), .rst(rst), .in_loading_phase(in_loading_phase),
               .imap_loaded(imap_loaded) ,.imap_load(imap_load), .imap_sd_adr(imap_sd_adr), .imap_sd_read(imap_sd_read),
               .video_loaded(video_loaded), .video_load(video_load), .video_sd_adr(video_sd_adr), .video_sd_read(video_sd_read),
               .sound_loaded(sound_loaded), .sound_load(sound_load), .sound_sd_adr(sound_sd_adr), .sound_sd_read(sound_sd_read),
               .all_loaded(phase_loaded), .sd_address(sd_address),
               .sd_read(sd_read));
  
  // -----------------
  // Labkit outputs
  assign vgaRed = at_display_area ? (ct_r > 0 ? ct_r : red) : 0;
  assign vgaGreen = at_display_area ? (ct_g > 0 ? ct_g : green) : 0;
  assign vgaBlue = at_display_area ? (ct_b > 0 ? ct_b : blue) : 0;
    
  // MicroSD SPI/SD Mode/Nexys 4
  // 1: Unused / DAT2 / sdData[2]
  // 2: CS / DAT3 / sdData[3]
  // 3: MOSI / CMD / sdCmd
  // 4: VDD / VDD / ~sdReset
  // 5: SCLK / SCLK / sdSCK
  // 6: GND / GND / - 
  // 7: MISO / DAT0 / sdData[0]
  // 8: UNUSED / DAT1 / sdData[1]
  assign sdData[2] = 1;
  assign sdData[3] = sd_CS;
  assign sdCmd = sd_MOSI;
  assign sdReset = 0;
  assign sdSCK = sd_CLK;
  assign sd_MISO = sdData[0];
  assign sdData[1] = 1;

  assign RamCLK = 0;
  assign RamADVn = 0;
  assign RamCEn = 0;
  assign RamCRE = 0;
  assign RamOEn = 0;
  assign RamWEn = ~cram_we;
  assign RamLBn = 0;
  assign RamUBn = 0;
  assign RamWait = 1'bZ;

  assign [15:0] MemDB = cram_data;
  assign [22:0] MemAdr = cram_adr;
  
  assign JA = {controller_data1, controller_data2};
  assign JB = {driver_right1, driver_left1, driver_backward1, driver_forward1, 
      driver_right2, driver_left2, driver_backward2, driver_forward2};

  assign led = {phase, phase_loaded, A1, sd_read, sd_ready_for_read, sd_byte_available, rst, 
      paused_stickLeft1, stickLeft1, clean_stickLeft1, laps_completed1, forcing_display, 1'b1};
endmodule
