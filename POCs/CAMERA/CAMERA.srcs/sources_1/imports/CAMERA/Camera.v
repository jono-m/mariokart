
//pclk is set to 25Mhz
module Camera ((* mark_debug = "true" *) input pclk, 
               (* mark_debug = "true" *) input vsync, 
               (* mark_debug = "true" *) input href,
               input [7:0] data, 
               output reg [9:0] x = 10'b11111_11111,
               output reg [8:0] y = 0,
               (* mark_debug = "true" *) output reg [8:0] pixel = 0,
               output reg pixels_available = 0);
	
	reg [1:0] byteCounter = 0;
	reg vsync_previous = 0;
	reg href_previous = 0;
		
	always @(posedge pclk) begin
	   vsync_previous <= vsync;
	   href_previous <= href;
	   if(href == 1) begin
	       byteCounter <= byteCounter + 1;
	       case (byteCounter)
	           0: begin
	               pixel[5:3] <= data[7:5];
	               pixels_available <= 0;
	           end
	           1: begin
	               pixel[8:6] <= data[7:5];
	           end
               2: begin
                   pixel[2:0] <= data[7:5];
                   x <= x + 1;
                   pixels_available <= 1;
                   //new pixel available
               end
               3: begin
                   pixel[8:6] <= data[7:5];
                   x <= x + 1;
                   //new pixel available
               end
	       endcase
	   end
	   else if(vsync == 1 && vsync_previous == 0) begin
	       if(vsync_previous == 0) begin
	           y <= 0;
	       end
	   end
	   else if(href == 0 && href_previous == 1) begin
           x <= 10'b11111_11111;
           y <= y + 1;
           byteCounter <= 0;
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