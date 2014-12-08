`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2014 10:11:56 PM
// Design Name: 
// Module Name: camera
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


module camera (input pclk, input vsync, input href,
               input [2:0] data, 
               output reg [9:0] x = 10'b11111_11111,
               output reg [8:0] y = 0,
               output reg [8:0] pixel = 0,
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
                   pixel[5:3] <= data;
                   pixels_available <= 0;
               end
               1: begin
                   pixel[8:6] <= data;
               end
               2: begin
                   pixel[2:0] <= data;
                   x <= x + 1;
                   pixels_available <= 1;
                   //new pixel available
               end
               3: begin
                   pixel[8:6] <= data;
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

module cameraScaler (input vga_clock, input vsync, input [9:0] hcount, input at_display_area, input [9:0] x_cam_start, input [8:0] y_cam_start, output reg [9:0] x_cam = 0, output reg [8:0] y_cam = 0);
  //rotational down sampling.
  reg [2:0] x_down_sample_counter = 0;
  reg [3:0] y_down_sample_counter = 0;
  reg display_area_state = 0;
  always @(posedge vga_clock) begin
      if(hcount == 0) begin
          y_cam <= y_cam_start;
          y_down_sample_counter <= 0;
      end
      else if(display_area_state == 0 && vsync == 1) begin
          x_cam <= x_cam_start;
          x_down_sample_counter <= 0;
      end
      else if(at_display_area) begin
          y_down_sample_counter <= y_down_sample_counter + 1;
          if(y_cam == 479 || y_cam == 478) begin
              y_cam <= 479;
              y_down_sample_counter <= 0;
          end
          else begin
              if(y_down_sample_counter == 11) begin
                  y_cam <= y_cam + 2;
                  y_down_sample_counter <= 0;
              end
              else begin
                  y_cam <= y_cam + 1;
              end
          end
          //handle moving the x_cam coodinates in between lines
          if(display_area_state == 0) begin
              display_area_state <= 1;
              x_down_sample_counter <= x_down_sample_counter + 1;
              //might need to change this conditional
              if((x_cam == 638 || x_cam == 639)) begin
                  x_cam <= 639;
                  x_down_sample_counter <= 0;
              end
              else begin
                  if(x_down_sample_counter == 5) begin
                      x_cam <= x_cam;
                      x_down_sample_counter <= 0;
                  end 
                  else begin
                      x_cam <= x_cam + 1;
                  end
              end
          end
      end
      else if(!at_display_area) begin
          display_area_state <= 0;
      end
  end
endmodule