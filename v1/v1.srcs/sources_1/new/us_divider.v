module us_divider(input clk_100mhz, rst, 
				output reg clk_1mhz);

	reg [6:0] count = 0;

	always @(posedge clk_100mhz) begin
		case(rst)
			1'b1: begin
				count <= 0;
				clk_1mhz <= 0;
			end
			1'b0: begin
				if(count >= 99) begin
					count <= 0;
					clk_1mhz <= 1;
				end
				else begin
					clk_1mhz <=0;
					count <= count +1;
				end
			end
		endcase
	end
endmodule
