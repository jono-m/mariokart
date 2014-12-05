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
    inout [4:0] JD 
	);

  // ---------------------
	// Set up clocks.

	wire clk_100mhz = clk;
  wire clk_50mhz;
  wire clk_25mhz;
  wire clk_1mhz;

  clock_divider div1(clk_100mhz, clk_50mhz);
  clock_divider div2(clk_50mhz, clk_25mhz);
  us_divider usdiv(.clk_100mhz(clk_100mhz), .clk_1mhz(clk_1mhz));

  // -----------------
  // Set up software reset.

  wire rst = ~btnCpuReset;

  // ------------------
  // SD card.

  wire sd_CLK;
  wire sd_MISO;
  wire sd_MOSI;
  wire sd_CS;

	reg sd_read;
	wire [7:0] sd_byte;
	wire sd_byte_available;
	wire sd_ready_for_read;
	reg [31:0] sd_address;

	sd_controller sdcont(.clk(clk_25mhz), .cs(sd_CS), .mosi(sd_MOSI), 
			.miso(sd_MISO), .sclk(sd_CLK), .rd(sd_read), .wr(0), .dm_in(0), 
			.reset(rst), .din(0), .dout(sd_byte),
			.byte_available(sd_byte_available), .ready_for_read(sd_ready_for_read), 
			.address(sd_address), .status());

  // -------------------------
	// VGA.

	wire [9:0] x;
	wire [9:0] y;
	wire at_display_area;
	vga vga_module(.vga_clock(clk_25mhz), .x(x), .y(y), .vsync(Vsync),
			.hsync(Hsync), .at_display_area(at_display_area));

  // -----------------------
	// Button and N64 input.

  wire A_ctrl;
	wire A = btnC || A_ctrl;
	wire B;
	wire start;
	wire Z;
	wire R;
	wire L;
	wire dU;
	wire dD;
	wire dL;
	wire dR;
	wire cU;
	wire cD;
	wire cL;
	wire cR;
	wire stickUp = btnU;
	wire stickDown = btnD;
	wire stickLeft = btnL;
	wire stickRight = btnR;
	wire [7:0] stickX;
	wire [7:0] stickY;
  wire controller_data;

  N64_interpret(.clk_100mhz(clk_100mhz), .rst(rst), .clk_1mhz(clk_1mhz),
      .A(A_ctrl), .B(B), .start(start), .L(L), .R(R), .dU(dU), .dD(dD), .dL(dL),
      .dR(dR), .cU(cU), .cD(cD), .cL(cL), .cR(cR), .stickX(stickX), 
      .stickY(stickY) .controller_data(controller_data));

  wire clean_A;
  wire clean_B;
  wire clean_start;
  wire clean_Z;
  wire clean_R;
  wire clean_L;
  wire clean_dU;
  wire clean_dD;
  wire clean_dL;
  wire clean_dR;
  wire clean_cU;
  wire clean_cD;
  wire clean_cL;
  wire clean_cR;
  wire clean_stickUp;
  wire clean_stickDown;
  wire clean_stickLeft;
  wire clean_stickRight;

  debounce debounceA(rst, clk_100mhz, A, clean_A);
  debounce debounceB(rst, clk_100mhz, B, clean_B);
  debounce debounceS(rst, clk_100mhz, start, clean_start);
  debounce debounceZ(rst, clk_100mhz, Z, clean_Z);
  debounce debounceR(rst, clk_100mhz, R, clean_R);
  debounce debounceL(rst, clk_100mhz, L, clean_L);
  debounce debounceDU(rst, clk_100mhz, dU, clean_dU);
  debounce debounceDD(rst, clk_100mhz, dD, clean_dD);
  debounce debounceDL(rst, clk_100mhz, dL, clean_dL);
  debounce debounceDR(rst, clk_100mhz, dR, clean_dR);
  debounce debounceCU(rst, clk_100mhz, cU, clean_cU);
  debounce debounceCD(rst, clk_100mhz, cD, clean_cD);
  debounce debounceCL(rst, clk_100mhz, cL, clean_cL);
  debounce debounceCR(rst, clk_100mhz, cR, clean_cR);
  debounce debounceSU(rst, clk_100mhz, stickUp, clean_stickUp);
  debounce debounceSD(rst, clk_100mhz, stickDown, clean_stickDown);
  debounce debounceSL(rst, clk_100mhz, stickLeft, clean_stickLeft);
  debounce debounceSR(rst, clk_100mhz, stickRight, clean_stickRight);

  wire paused_stickUp;
  wire paused_stickDown;
  wire paused_stickLeft;
  wire paused_stickRight;
  wire paused_A;

  pause_repeater p1(rst, clk_100mhz, clean_A, paused_A);
  pause_repeater p2(rst, clk_100mhz, clean_stickUp, paused_stickUp);
  pause_repeater p3(rst, clk_100mhz, clean_stickDown, paused_stickDown);
  pause_repeater p4(rst, clk_100mhz, clean_stickLeft, paused_stickLeft);
  pause_repeater p5(rst, clk_100mhz, clean_stickRight, paused_stickRight);

  // ---------------
	// Game logic.

	wire phase_loaded;
	wire [2:0] phase;
	wire [2:0] selected_character;
  wire lap_completed;
  wire [1:0] laps_completed;
  wire race_begin;
  wire [1:0] oym_counter;
  wire correct_direction;
	game_logic gl(.clk_100mhz(clk_100mhz), .rst(rst), .A(paused_A), .B(clean_B), 
			.start(clean_start), .Z(clean_Z), .R(clean_R), .L(clean_L), .dU(clean_dU),
      .dD(clean_dD), .dL(clean_dL), .dR(clean_dR), .cU(clean_cU), .cD(clean_cD),
      .cL(clean_cL), .cR(clean_cR), .stickUp(paused_stickUp), 
      .stickDown(paused_stickDown), .stickLeft(paused_stickLeft), 
			.stickRight(paused_stickRight), .stickX(stickX), .stickY(stickY), 
			.phase_loaded(phase_loaded), .phase(phase),
			.selected_character(selected_character), .lap_completed(lap_completed),
      .laps_completed(laps_completed), .race_begin(race_begin),
      .oym_counter(oym_counter));

  // -----------------------------------
  // Car drivers and simulators.

  wire [9:0] car1_x;
  wire [8:0] car1_y;
  wire [1:0] speed;
  wire forward;
  wire backward;
  wire turn_left;
  wire turn_right;

  car_simulator car1(.clk_100mhz(clk_100mhz), .rst(rst), .forward(forward),
      .backward(backward), .left(turn_left), .right(turn_right), .speed(speed), 
      .car1_x(car1_x), .car1_y(car1_y));

  wire driver_forward;
  wire driver_backward;
  wire driver_left;
  wire driver_right;

  car_driver car1_real(.clk(clk_100mhz), .rst(rst), .forward(forward), 
      .backward(backward), .left(turn_left), .right(turn_right), .speed(speed), 
      .driver_forward(driver_forward), .driver_backward(driver_backward),
      .driver_left(driver_left), .driver_right(driver_right));

  // ---------------------
	// Video logic.

  reg video_load = 0;
  wire video_loaded;
	wire [3:0] red;
	wire [3:0] green;
	wire [3:0] blue;
  wire [31:0] video_sd_adr;
  wire video_sd_read;

	video_logic vl(.clk_100mhz(clk_100mhz), .rst(rst), .phase(phase),
			.selected_character(selected_character), .load(video_load),
			.is_loaded(video_loaded), .race_begin(race_begin), .oym_counter(oym_counter),
      .laps_completed(laps_completed),
      .sd_read(video_sd_read), .sd_byte(sd_byte),
			.sd_byte_available(sd_byte_available), 
			.sd_ready_for_read(sd_ready_for_read), .sd_address(video_sd_adr),
			.x(x), .y(y), .red(red), .green(green), .blue(blue),
      .car1_x(car1_x), .car1_y(car1_y), .car1_present(car1_present));

  // ------------------------
  // Track information map.

  reg imap_load = 0;
  wire [9:0] imap_x;
  wire [8:0] imap_y;
  wire [1:0] map_type;
  
  wire imap_loaded;
  wire [31:0] imap_sd_adr;
  wire imap_sd_read;
  information_map imap(.clk_100mhz(clk_100mhz), .rst(rst), .load(imap_load),
      .address_offset(`ADR_TRACK_INFORMATION_IMAGE),
      .x(imap_x), .y(imap_y), .map_type(map_type), .is_loaded(imap_loaded),
      .sd_byte_available(sd_byte_available), 
      .sd_ready_for_read(sd_ready_for_read), .sd_byte(sd_byte),
      .sd_address(imap_sd_adr), .sd_do_read(imap_sd_read));

  // -----------------------
  // Physics logic.

  physics_logic pl(.clk_100mhz(clk_100mhz), .rst(rst), 
      .phase(phase), .selected_character(selected_character), .race_begin(race_begin),
      .car1_x(car1_x),
      .car1_y(car1_y), .lap_completed(lap_completed), .correct_direction(correct_direction), 
      .A(clean_A), .B(clean_B), .stickLeft(clean_stickLeft), .stickRight(clean_stickRight),
      .map_type(map_type), .imap_x(imap_x), .imap_y(imap_y),
      .forward(forward), .backward(backward), .turn_left(turn_left),
      .turn_right(turn_right), .speed(speed));

  // ------------------------------------------
  // SD card loader.

  sd_loader sl(.clk_100mhz(clk_100mhz), .rst(rst),
               .imap_loaded(imap_loaded) ,.imap_load(imap_load),
               .video_loaded(video_loaded), .video_load(video_load),
               .all_loaded(phase_loaded), .sd_address(sd_address),
               .sd_read(sd_read));
  
  // -----------------
  // Labkit outputs

  assign vgaRed = at_display_area ? red : 0;
  assign vgaGreen = at_display_area ? green : 0;
  assign vgaBlue = at_display_area ? blue : 0;
    
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
  
  assign JD = {driver_forward, driver_backward, driver_left, driver_right, 
      controller_data};

  assign led = {phase, phase_loaded, A, sd_read, sd_ready_for_read, sd_byte_available, rst, 
      paused_stickLeft, stickLeft, clean_stickLeft, laps_completed, correct_direction, 1'b1};
endmodule
