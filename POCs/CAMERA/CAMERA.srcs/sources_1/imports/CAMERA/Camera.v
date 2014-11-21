
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

// //Four cameras with reprokect
// module LEDFinder (input clk, input [9:0] x, input [8:0] y, input [7:0] pixel_data, input end_of_frame, output reg [2:0] number_of_leds = 0, output wire [18:0] location);
//     reg [18:0] ring_buffer [0:5] [0:2];
//     reg [5:0] ring_buffer_idx[0:2] = {0,0,0,0,0,0,0,0};
//     reg [2:0] ring_buffer_idx_log2[0:2];
//     reg [24:0] center_of_masses [0:2] = {0,0,0,0,0,0,0,0};
//     reg [10:0] prev_x = 0;
//     reg [9:0] prev_y = 0;
//     reg [7:0] valid_center_of_masses;
//     wire [3:0] roi_width = 4'b1111;

//     reg [1:0] state = 0;

//     assign location = center_of_masses[0][18:0];

//     always @(*) begin
//         if(ring_buffer_idx[0][5:0] > 5'b11111) ring_buffer_idx_log2[0][2:0] <= 3'b101;
//         else if(ring_buffer_idx[0][5:0] > 4'b1111) ring_buffer_idx_log2[0][2:0] <= 3'b100;
//         else if(ring_buffer_idx[0][5:0] > 3'b111) ring_buffer_idx_log2[0][2:0] <= 3'b011;
//         else if(ring_buffer_idx[0][5:0] > 2'b11) ring_buffer_idx_log2[0][2:0] <= 3'b010;
//         else if(ring_buffer_idx[0][5:0] > 1'b1) ring_buffer_idx_log2[0][2:0] <= 3'b001;
//         else ring_buffer_idx_log2[0][2:0] <= 3'b000;

//         if(ring_buffer_idx[1][5:0] > 5'b11111) ring_buffer_idx_log2[1][2:0] <= 3'b101;
//         else if(ring_buffer_idx[1][5:0] > 4'b1111) ring_buffer_idx_log2[1][2:0] <= 3'b100;
//         else if(ring_buffer_idx[1][5:0] > 3'b111) ring_buffer_idx_log2[1][2:0] <= 3'b011;
//         else if(ring_buffer_idx[1][5:0] > 2'b11) ring_buffer_idx_log2[1][2:0] <= 3'b010;
//         else if(ring_buffer_idx[1][5:0] > 1'b1) ring_buffer_idx_log2[1][2:0] <= 3'b001;
//         else ring_buffer_idx_log2[1][2:0] = 3'b000;
//     end

//     always @(posedge clk) begin
//         prev_x <= x;
//         prev_y <= y;
//         if(x != prev_x) begin
//             if(pixel_data > 8'b01000000) begin
//                 if(number_of_leds > 0 &&
//                         x > (center_of_masses[0][9:0] - roi_width) &&
//                         x < (center_of_masses[0][9:0] + roi_width) &&
//                         y > (center_of_masses[0][18:10] - roi_width) &&
//                         y < (center_of_masses[0][18:10] + roi_width)) begin
//                     ring_buffer[ring_buffer_idx[0]][0][18:0] <= pixel_data;
//                     ring_buffer_idx[0] <= ring_buffer_idx[0] + 1;
//                 end
//                 //repeat and change numbers
//                 else begin
//                     number_of_leds <= number_of_leds + 1;
//                     ring_buffer[0][number_of_leds][18:0] <= pixel_data;
//                     ring_buffer_idx[number_of_leds] <= 1;
//                     center_of_masses[number_of_leds][18:0] <= pixel_data;
//                 end
//             end
//         end
//         else if(end_of_frame && state == 0) begin
//             if(number_of_leds > 0) begin
//                 if(ring_buffer_idx_log2[0] >= 2) valid_center_of_masses[0] <= 1'b1;
//                 else valid_center_of_masses[0] <= 1'b0;

//                 case(ring_buffer_idx_log2[0])
//                     2: center_of_masses[0][24:0] <= (ring_buffer[0][0][18:0] + 
//                                                     ring_buffer[1][0][18:0] +
//                                                     ring_buffer[2][0][18:0] +
//                                                     ring_buffer[3][0][18:0]) >> 2;
//                     3: center_of_masses[0][24:0] <= (ring_buffer[18:0][0][0] + 
//                                                     ring_buffer[18:0][1][0] +
//                                                     ring_buffer[18:0][2][0] +
//                                                     ring_buffer[18:0][3][0] +
//                                                     ring_buffer[18:0][4][0] +
//                                                     ring_buffer[18:0][5][0] +
//                                                     ring_buffer[18:0][6][0] +
//                                                     ring_buffer[18:0][7][0]) >> 3;
//                     4: center_of_masses[0][24:0] <= (ring_buffer[18:0][0][0] + 
//                                                     ring_buffer[18:0][1][0] +
//                                                     ring_buffer[18:0][2][0] +
//                                                     ring_buffer[18:0][3][0] +
//                                                     ring_buffer[18:0][4][0] +
//                                                     ring_buffer[18:0][5][0] +
//                                                     ring_buffer[18:0][6][0] +
//                                                     ring_buffer[18:0][7][0] +
//                                                     ring_buffer[18:0][8][0] +
//                                                     ring_buffer[18:0][9][0] +
//                                                     ring_buffer[18:0][10][0] +
//                                                     ring_buffer[18:0][11][0] +
//                                                     ring_buffer[18:0][12][0] +
//                                                     ring_buffer[18:0][13][0] +
//                                                     ring_buffer[18:0][14][0] +
//                                                     ring_buffer[18:0][15][0]) >> 4;
//                     5: center_of_masses[0][24:0] <= (ring_buffer[18:0][0][0] + 
//                                                     ring_buffer[18:0][1][0] +
//                                                     ring_buffer[18:0][2][0] +
//                                                     ring_buffer[18:0][3][0] +
//                                                     ring_buffer[18:0][4][0] +
//                                                     ring_buffer[18:0][5][0] +
//                                                     ring_buffer[18:0][6][0] +
//                                                     ring_buffer[18:0][7][0] +
//                                                     ring_buffer[18:0][8][0] +
//                                                     ring_buffer[18:0][9][0] +
//                                                     ring_buffer[18:0][10][0] +
//                                                     ring_buffer[18:0][11][0] +
//                                                     ring_buffer[18:0][12][0] +
//                                                     ring_buffer[18:0][13][0] +
//                                                     ring_buffer[18:0][14][0] +
//                                                     ring_buffer[18:0][15][0] +
//                                                     ring_buffer[18:0][16][0] +
//                                                     ring_buffer[18:0][17][0] +
//                                                     ring_buffer[18:0][18][0] +
//                                                     ring_buffer[18:0][19][0] +
//                                                     ring_buffer[18:0][20][0] +
//                                                     ring_buffer[18:0][21][0] +
//                                                     ring_buffer[18:0][22][0] +
//                                                     ring_buffer[18:0][23][0] +
//                                                     ring_buffer[18:0][24][0] +
//                                                     ring_buffer[18:0][25][0] +
//                                                     ring_buffer[18:0][26][0] +
//                                                     ring_buffer[18:0][27][0] +
//                                                     ring_buffer[18:0][28][0] +
//                                                     ring_buffer[18:0][29][0] +
//                                                     ring_buffer[18:0][30][0] +
//                                                     ring_buffer[18:0][31][0]) >> 5;
//                     6: center_of_masses[0][24:0] <= (ring_buffer[18:0][0][0] + 
//                                                     ring_buffer[18:0][1][0] +
//                                                     ring_buffer[18:0][2][0] +
//                                                     ring_buffer[18:0][3][0] +
//                                                     ring_buffer[18:0][4][0] +
//                                                     ring_buffer[18:0][5][0] +
//                                                     ring_buffer[18:0][6][0] +
//                                                     ring_buffer[18:0][7][0] +
//                                                     ring_buffer[18:0][8][0] +
//                                                     ring_buffer[18:0][9][0] +
//                                                     ring_buffer[18:0][10][0] +
//                                                     ring_buffer[18:0][11][0] +
//                                                     ring_buffer[18:0][12][0] +
//                                                     ring_buffer[18:0][13][0] +
//                                                     ring_buffer[18:0][14][0] +
//                                                     ring_buffer[18:0][15][0] +
//                                                     ring_buffer[18:0][16][0] +
//                                                     ring_buffer[18:0][17][0] +
//                                                     ring_buffer[18:0][18][0] +
//                                                     ring_buffer[18:0][19][0] +
//                                                     ring_buffer[18:0][20][0] +
//                                                     ring_buffer[18:0][21][0] +
//                                                     ring_buffer[18:0][22][0] +
//                                                     ring_buffer[18:0][23][0] +
//                                                     ring_buffer[18:0][24][0] +
//                                                     ring_buffer[18:0][25][0] +
//                                                     ring_buffer[18:0][26][0] +
//                                                     ring_buffer[18:0][27][0] +
//                                                     ring_buffer[18:0][28][0] +
//                                                     ring_buffer[18:0][29][0] +
//                                                     ring_buffer[18:0][30][0] +
//                                                     ring_buffer[18:0][31][0] +
//                                                     ring_buffer[18:0][32][0] +
//                                                     ring_buffer[18:0][33][0] +
//                                                     ring_buffer[18:0][34][0] +
//                                                     ring_buffer[18:0][35][0] +
//                                                     ring_buffer[18:0][36][0] +
//                                                     ring_buffer[18:0][37][0] +
//                                                     ring_buffer[18:0][38][0] +
//                                                     ring_buffer[18:0][39][0] +
//                                                     ring_buffer[18:0][40][0] +
//                                                     ring_buffer[18:0][41][0] +
//                                                     ring_buffer[18:0][42][0] +
//                                                     ring_buffer[18:0][43][0] +
//                                                     ring_buffer[18:0][44][0] +
//                                                     ring_buffer[18:0][45][0] +
//                                                     ring_buffer[18:0][46][0] +
//                                                     ring_buffer[18:0][47][0] +
//                                                     ring_buffer[18:0][48][0] +
//                                                     ring_buffer[18:0][49][0] +
//                                                     ring_buffer[18:0][50][0] +
//                                                     ring_buffer[18:0][51][0] +
//                                                     ring_buffer[18:0][52][0] +
//                                                     ring_buffer[18:0][53][0] +
//                                                     ring_buffer[18:0][54][0] +
//                                                     ring_buffer[18:0][55][0] +
//                                                     ring_buffer[18:0][56][0] +
//                                                     ring_buffer[18:0][57][0] +
//                                                     ring_buffer[18:0][58][0] +
//                                                     ring_buffer[18:0][59][0] +
//                                                     ring_buffer[18:0][60][0] +
//                                                     ring_buffer[18:0][61][0] +
//                                                     ring_buffer[18:0][62][0] +
//                                                     ring_buffer[18:0][63][0]) >> 6;
//                 endcase
//             end
//             state <= 1;
//         end
//         else if(state == 1) begin
//             number_of_leds <= valid_center_of_masses[0] + 
//                                 valid_center_of_masses[1] + 
//                                 valid_center_of_masses[2] + 
//                                 valid_center_of_masses[3] + 
//                                 valid_center_of_masses[4] + 
//                                 valid_center_of_masses[5] + 
//                                 valid_center_of_masses[6] + 
//                                 valid_center_of_masses[7];
//             state <= 0;
//         end
//     end

// endmodule