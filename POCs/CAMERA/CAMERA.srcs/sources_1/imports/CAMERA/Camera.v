
//pclk is set to 25Mhz
module Camera ((* mark_debug = "true" *) input pclk, 
               (* mark_debug = "true" *) input vsync, 
               (* mark_debug = "true" *) input href,
               input [7:0] data, 
               output reg [8:0] x = 0,
               output reg [8:0] y = 0,
               (* mark_debug = "true" *) output reg [7:0] pixel = 0,
               output reg valid);
	
	reg count = 0;
	reg vinc = 0;
	reg hres = 0;
	always @(posedge pclk) begin
	   if(href == 1) begin
	       if(count == 0) begin
	           count <= 1;
	       end
	       else begin
	           pixel <= data;
	           count <= 0;
	           x <= x + 1;
	       end
	       vinc <= 0;
	       hres <= 0;
	       valid <= 1;
	   end
	   else if(vsync == 1) begin
	       if(vinc == 0) begin
	           y <= 0;
	           vinc <= 1;
	       end
	       valid <= 0;
	       count <= 0;
	   end
	   else if(href == 0) begin
	       if(hres == 0) begin
	           x <= 0;
	           y <= y + 1;
	           hres <= 1;
	       end
	       valid <= 0;
	       count <= 0;
	   end
    end
endmodule

//One reproject module per camera.
//coeffs are in the form [xm, xb, ym, yb]
module Reproject (input [3:0] coeffs, input [9:0] i, [8:0] j, output [11:0] x, [10:0] y);
	assign x = coeffs[0]*i + coeffs[1];
	assign y = coeffs[2]*j + coeffs[3];
endmodule

//Four cameras with reprokect
module Imaging ();

endmodule