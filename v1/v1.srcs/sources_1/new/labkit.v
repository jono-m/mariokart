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
		input [15:0] sw
	);
	// Set up clocks
	wire clk_100mhz = clk;
  wire clk_50mhz;
  wire clk_25mhz;

  clock_divider div1(clk_100mhz, clk_50mhz);
  clock_divider div2(clk_50mhz, clk_25mhz);

  // Set up reset switch.
  wire rst = ~btnCpuReset;

  // Set up SD mapping.
  wire sd_CLK;
  wire sd_MISO;
  wire sd_MOSI;
  wire sd_CS;
  
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

	// Set up VGA output.
	wire [9:0] x;
	wire [9:0] y;
	wire at_display_area;
	vga vga_module(.vga_clock(clk_25mhz), .x(x), .y(y), .vsync(Vsync),
			.hsync(Hsync), .at_display_area(at_display_area));

	// Set up controller
	wire A = btnC;
	wire B = 0;
	wire start = btnC;
	wire Z = 0;
	wire R = 0;
	wire L = 0;
	wire dU = 0;
	wire dD = 0;
	wire dL = 0;
	wire dR = 0;
	wire cU = 0;
	wire cD = 0;
	wire cL = 0;
	wire cR = 0;
	wire stickUp = btnU;
	wire stickDown = btnD;
	wire stickLeft = btnL;
	wire stickRight = btnR;
	wire [7:0] stickX = 0;
	wire [7:0] stickY = 0;

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

  pause_repeater(rst, clk_100mhz, clean_A, paused_A);
  pause_repeater(rst, clk_100mhz, clean_stickUp, paused_stickUp);
  pause_repeater(rst, clk_100mhz, clean_stickDown, paused_stickDown);
  pause_repeater(rst, clk_100mhz, clean_stickLeft, paused_stickLeft);
  pause_repeater(rst, clk_100mhz, clean_stickRight, paused_stickRight);

	// Set up game logic.
	wire phase_loaded;
	wire [2:0] phase;
	wire [3:0] selected_character;
	game_logic gl(.clk_100mhz(clk_100mhz), .rst(rst), .A(paused_A), .B(clean_B), 
			.start(clean_start), .Z(clean_Z), .R(clean_R), .L(clean_L), .dU(clean_dU),
      .dD(clean_dD), .dL(clean_dL), .dR(clean_dR), .cU(clean_cU), .cD(clean_cD),
      .cL(clean_cL), .cR(clean_cR), .stickUp(paused_stickUp), 
      .stickDown(paused_stickDown), .stickLeft(paused_stickLeft), 
			.stickRight(paused_stickRight), .stickX(stickX), .stickY(stickY), 
			.phase_loaded(phase_loaded), .phase(phase),
			.selected_character(selected_character));

	// Set up video logic.
	wire [3:0] red;
	wire [3:0] green;
	wire [3:0] blue;
	video_logic vl(.clk_100mhz(clk_100mhz), .rst(rst), .phase(phase),
			.selected_character(selected_character), .load(1), 
			.is_loaded(phase_loaded), .sd_read(sd_read), .sd_byte(sd_byte),
			.sd_byte_available(sd_byte_available), 
			.sd_ready_for_read(sd_ready_for_read), .sd_address(sd_address),
			.x(x), .y(y), .red(red), .green(green), .blue(blue));

	assign vgaRed = at_display_area ? red : 0;
    assign vgaGreen = at_display_area ? green : 0;
    assign vgaBlue = at_display_area ? blue : 0;
    
    assign led = {phase, phase_loaded, A, sd_read, sd_ready_for_read, sd_byte_available, rst, 
        paused_stickLeft, stickLeft, clean_stickLeft, selected_character, 1'b1};
endmodule
