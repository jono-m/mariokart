module us_divider(input clk, btnCpuReset, 
				output reg clock_1MHz);

	reg [6:0] count = 0;

	always @(posedge clk) begin
		case(btnCpuReset)
			1'b1: begin
				count <= 0;
				clock_1MHz <= 0;
			end
			1'b0: begin
				if(count >= 99) begin
					count <= 0;
					clock_1MHz <= 1;
				end
				else begin
					clock_1MHz <=0;
					count <= count +1;
				end
			end
		endcase
	end
endmodule
