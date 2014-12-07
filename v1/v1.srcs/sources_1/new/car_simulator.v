`timescale 1ns / 1ps

// NEED TO SEND A SLOWER CLOCK TO THIS MODULE

module car_simulator(input clk_100mhz, input rst, 
    input forward, input backward, input left, input right, input [1:0] speed,

    output reg [9:0] car_x = 364, output reg [8:0] car_y = 364);
  parameter SPEED_FACTOR = 1;
  
  reg [18:0] counter = 0;
  reg clk_move = 1;
  always @(posedge clk_100mhz) begin
    if(counter == 470000) begin
        counter <= 0;
        clk_move <= ~clk_move;
    end
    else begin
        counter <= counter + 1;
    end
  end
  
  always @(posedge clk_move) begin
    if(rst == 1) begin
      car_x <= 364;
      car_y <= 364;
      //angle <= 0;
    end
    else begin
      if(forward) begin
        car_y <= car_y - speed;
      end
      else if(backward) begin
        car_y <= car_y + speed;
      end
      else if(left) begin
        car_x <= car_x - speed;
      end
      else if(right) begin
        car_x <= car_x + speed;
      end
    end
  end
endmodule