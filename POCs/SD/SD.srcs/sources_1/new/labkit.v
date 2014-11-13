`timescale 1ns / 1ps

module labkit(input clk, input sdCD, output sdReset, output sdSCK, output sdCmd, 
	inout [3:0] sdData, output [15:0] led, input btnC);

	wire clk_i, rst_i, strobe_i, we_i, ack_o, spiSysClk, spiClkOut, spiDataIn, spiDataOut, spiCS_n;
	wire [7:0] address_i;
	wire [7:0] data_i;
	wire [7:0] data_o;

	assign sdCmd = spiDataOut;
	assign spiDataIn = sdData[0];
	assign sdData[3] = spiCS_n;
	assign sdSCK = spiClkOut;
	assign sdData[2] = 1;
	assign sdData[1] = 1;
	assign sdReset = 0;

	assign rst_i = btnC;

	wire [31:0] address = 32'h0;
	
	clock_400mhz divider(clk, spiSysClk);
	
	
endmodule

module clock_400mhz(input clk_in, output reg clk_out = 0);
    reg [8:0] counter = 0;
    
    always @(posedge clk_in) begin
        if (counter == 125) begin
            clk_out <= ~clk_out;
            counter <= 0;
        end
        else begin
            counter <= counter + 1;
        end
    end
endmodule