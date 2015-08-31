`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2014 02:07:46 PM
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


module labkit(input clk, input sdCD, output sdReset, output sdSCK, output sdCmd, 
	inout [3:0] sdData, output [15:0] led, input btnC);
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
    
    reg rd = 0;
    reg wr = 0;
    reg [7:0] din = 0;
    wire [7:0] dout;
    wire byte_available;
    wire ready;
    wire ready_for_next_byte;
    reg [31:0] adr = 32'h00_00_00_00;
    
    reg [15:0] bytes = 0;
    reg [1:0] bytes_read = 0;
    
    wire [4:0] state;
    
    assign led = {state, 1'b1, 1'b1, 1'b1, bytes[15:8]};
    
    sd_controller sdcont(.cs(spiCS), .mosi(spiMosi), .miso(spiMiso),
            .sclk(spiClk), .rd(rd), .wr(wr), .reset(rst),
            .din(din), .dout(dout), .byte_available(byte_available),
            .ready(ready), .address(adr), 
            .ready_for_next_byte(ready_for_next_byte), .clk(clk_25mhz), 
            .status(state));
    
    parameter STATE_START = 0;
    parameter STATE_WRITE = 1;
    parameter STATE_READ = 2;
    reg test_state = STATE_WRITE;

    always @(posedge clk_25mhz) begin
        if(rst) begin
            bytes <= 0;
            bytes_read <= 0;
            din <= 0;
            wr <= 0;
            rd <= 0;
        end
        else begin
            case (test_state)
                STATE_START: begin
                    if(ready) begin
                        wr <= 1;
                        din <= 8'hAC;
                        test_state <= STATE_WRITE;
                    end
                end
                STATE_WRITE: begin
                    if(ready_for_next_byte) begin
                        wr <= 0;
                        din <= 8'hF3;
                    end
                    if(ready) begin
                        test_state <= STATE_READ;
                    end
                end
                STATE_READ: begin
                    if(ready && bytes_read < 2) begin
                        rd <= 1; 
                    end
                    if(byte_available) begin
                        rd <= 0;
                        if(bytes_read == 0) begin
                            bytes_read <= 1;
                            bytes[15:8] <= dout;
                        end
                        else if(bytes_read == 1) begin
                            bytes_read <= 2;
                            bytes[7:0] <= dout;
                        end
                    end
                end
            endcase
        end
    end
endmodule

module clock_divider(input clk_in, output reg clk_out = 0);
	always @(posedge clk_in) begin
		clk_out <= ~clk_out;
	end
endmodule