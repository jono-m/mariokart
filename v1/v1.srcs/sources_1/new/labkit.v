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
    wire spiClk;
    wire spiMiso;
    wire spiMosi;
    wire spiCS;
    
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
    assign sdData[3] = spiCS;
    assign sdCmd = spiMosi;
    assign sdReset = 0;
    assign sdSCK = spiClk;
    assign spiMiso = sdData[0];
    assign sdData[1] = 1;

	wire sd_read;
	wire [7:0] sd_byte;
	wire sd_byte_available;
	wire sd_ready_for_read;
	wire [31:0] sd_address;

	sd_controller sdcont(.clk(clk_25mhz), .cs(sd_CS), .mosi(sd_MOSI), 
			.miso(sd_MISO), .sclk(sd_CLK), .rd(sd_read), .wr(0), .dm_in(0), 
			.reset(rst), .din(0), .dout(sd_byte),
			.byte_available(sd_byte_available), .ready_for_read(ready_for_read), 
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
	wire start = 0;
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
	wire stickUp = 0;
	wire stickDown = 0;
	wire stickLeft = 0;
	wire stickRight = 0;
	wire [7:0] stickX = 0;
	wire [7:0] stickY = 0;

	// Set up game logic.
	wire phase_loaded;
	wire [2:0] phase;
	wire selected_character;
	game_logic gl(.clk_100mhz(clk_100mhz), .rst(rst), .A(A), .B(B), 
			.start(start), .Z(Z), .R(R), .L(L), .dU(dU), .dD(dD), .dL(dL), 
			.dR(dR), .cU(cU), .cD(cD), .cL(cL), .cR(cR), .stickUp(stickUp), 
			.stickDown(stickDown), .stickLeft(stickLeft), 
			.stickRight(stickRight), .stickX(stickX), .stickY(stickY), 
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

	assign vgaRed = at_display_area ? im_red : 0;
    assign vgaGreen = at_display_area ? im_green : 0;
    assign vgaBlue = at_display_area ? im_blue : 0;
endmodule
