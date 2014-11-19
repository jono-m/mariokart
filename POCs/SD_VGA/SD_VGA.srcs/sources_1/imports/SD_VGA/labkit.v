module labkit(input clk, output[3:0] vgaRed, output[3:0] vgaBlue, 
		output[3:0] vgaGreen, output Hsync, output Vsync, input btnC,
		input sdCD, output sdReset, output sdSCK, output sdCmd, 
		inout [3:0] sdData, output[15:0] led, input [15:0] sw);
	wire clk_100mhz = clk;
    wire clk_50mhz;
    wire clk_25mhz;

    clock_divider div1(clk_100mhz, clk_50mhz);
    clock_divider div2(clk_50mhz, clk_25mhz);

    wire rst = btnC;

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

    wire [9:0] x;
    wire [9:0] y;
    wire hsync, vsync, at_display_area;
    vga vga1(.vga_clock(clk_25mhz), .x(x), .y(y),
          .hsync(hsync), .vsync(vsync), .at_display_area(at_display_area));
    
    wire [3:0] im_red;
    wire [3:0] im_blue;
    wire [3:0] im_green;
    wire do_read;
    wire [7:0] sd_byte;
    wire byte_available;
    wire ready_for_read;
    wire [31:0] adr;
    wire is_loaded;
    wire [16:0] loaded_rows;

	image_loader im_loader(.clk(clk_100mhz), .sdClk(clk_25mhz), .rst(rst), 
			.x(x), .y(y), .red(im_red), .green(im_green), .blue(im_blue),
			.do_read(do_read), .sd_byte(sd_byte), 
			.byte_available(byte_available), .ready_for_read(ready_for_read),
			.address(adr), .imno(sw[0]), .loaded(is_loaded), .loaded_rows(loaded_rows));

    assign led[10:0] = {is_loaded, byte_available, do_read, loaded_rows[16:9]};
	sd_controller sdcont(.cs(spiCS), .mosi(spiMosi), .miso(spiMiso),
            .sclk(spiClk), .rd(do_read), .wr(0), .dm_in(0), .reset(rst),
            .din(0), .dout(sd_byte), .byte_available(byte_available),
            .ready_for_read(ready_for_read), .address(adr), .clk(clk_25mhz), .status(led[15:11]));
        
    assign vgaRed = at_display_area ? im_red : 0;
    assign vgaGreen = at_display_area ? im_green : 0;
    assign vgaBlue = at_display_area ? im_blue : 0;
    assign Hsync = ~hsync;
    assign Vsync = ~vsync;
endmodule

module clock_divider(
		input clk_in, 
		output reg clk_out = 0);
	always @(posedge clk_in) begin
		clk_out <= ~clk_out;
	end
endmodule

module image_loader(
		input clk, 
		input sdClk, 
		input rst, 
		input [9:0] x, 
		input [9:0] y, 
		output [3:0] red, 
		output [3:0] green, 
		output [3:0] blue,
		output reg do_read = 0, 
		input [7:0] sd_byte, 
		input byte_available,
		input ready_for_read, 
		output reg [31:0] address = 0,
		input imno,
		output loaded,
        output reg [16:0] loaded_rows = 0
		);
    wire is_loaded = (loaded_rows >= 17'd76800);
    assign loaded = is_loaded;
	wire [16:0] addra = is_loaded ? read_address : write_address;
    reg [31:0] dina = 0;
    wire [31:0] douta;
    reg wea = 0;

    background_image_bram image_bram(.clka(clk), .addra(addra), .dina(dina), 
    		.douta(douta), .wea(wea));

    reg [2:0] loaded_pixels = 0;
    reg was_byte_available = 0;
	reg [16:0] write_address = 0;

	always @(posedge clk) begin
		if(rst) begin
			dina <= 0;
			wea <= 0;
			loaded_rows <= 0;
			loaded_pixels <= 0;
			address <= 0;
			do_read <= 0;
			was_byte_available <= 0;
			write_address <= 0;
		end
		else begin
			if(is_loaded == 0) begin
			    if(ready_for_read == 1) begin
				    do_read <= 1;
				    address <= (imno ? 307200 : 0) + (loaded_rows << 2 + loaded_pixels);
			    end
                was_byte_available <= byte_available;
                if(was_byte_available == 0 && byte_available == 1) begin
                    if(loaded_pixels == 0) begin
                        dina[31:24] <= sd_byte;
                        loaded_pixels <= loaded_pixels + 1;
                        wea <= 0;
                    end
                    if(loaded_pixels == 1) begin
                        dina[23:16] <= sd_byte;
                        loaded_pixels <= loaded_pixels + 1;
                    end
                    if(loaded_pixels == 2) begin
                        dina[15:8] <= sd_byte;
                        loaded_pixels <= loaded_pixels + 1;
                    end
                    if(loaded_pixels == 3) begin
                        dina[7:0] <= sd_byte;
                        wea <= 1;
                        write_address <= loaded_rows;
                        loaded_rows <= loaded_rows + 1;
                        loaded_pixels <= 0;
                    end
                end
            end
            else begin
                do_read <= 0;
                wea <= 0;
            end
		end
	end

	wire [16:0] read_address = (479-y)*160 + (x >> 2);
    wire [7:0] c1 = douta[31:24];
    wire [7:0] c2 = douta[23:16];
    wire [7:0] c3 = douta[15:8];
    wire [7:0] c4 = douta[7:0];
    
    wire [1:0] n = x % 4;
    wire [7:0] color = (n == 0) ? c1 : ((n == 1) ? c2 : ((n == 2) ? c3 : c4));
    assign red = is_loaded ? (color[7:5] << 1) : 4'hF;
    assign green = is_loaded ? (color[4:2] << 1) : 4'hF;
    assign blue = is_loaded ? (color[1:0] << 2) : 4'hF;
endmodule