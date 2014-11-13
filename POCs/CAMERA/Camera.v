
//pclk is set to 25Mhz
module Capture (input pclk, vsync, href, data[7:0], output i[9:0], j[8:0], pixel[7:0]);
	always @(posedge pclk) begin
		
	end

endmodule

//One reproject module per camera.
//coeffs are in the form [xm, xb, ym, yb]
module Reproject (input reg coeffs [3:0], input i[9:0], j[8:0], output x[11:0], y[10:0]);
	assign x = coeffs[0]*i + coeffs[1];
	assign y = coeffs[2]*j + coeffs[3];
endmodule

//Four cameras with reprokect
module Imaging ()