`timescale 1ns / 1ps

// NEED TO SEND A SLOWER CLOCK TO THIS MODULE

module car_simulator(input clk_100mhz, input rst, 
    input forward, input backward, input left, input right, input [1:0] speed,

    output reg [9:0] car1_x = 100, output reg [8:0] car1_y = 200);
  parameter SPEED_FACTOR = 1;
  
  /*reg signed [9:0] angle = 0;
  wire signed [9:0] angle_constrained = (angle < 0) ? (10'sb011_0010010 - angle) : 
      (angle > 10'sb011_0010010 ? angle - 10'sb011_0010010 : angle);

  wire signed [9:0] cos;
  wire signed [9:0] sin;

  wire signed [21:0] deltaX = (forward ? 1 : (backward ? -1 : 0)) * $signed(speed) * cos;
  wire signed [21:0] deltaY = (forward ? 1 : (backward ? -1 : 0)) * $signed(speed) * sin;

  cordic sincosgen(.PHASE_IN(angle_constrained), .X_OUT(cos), .Y_OUT(sin));*/
  
  reg [18:0] counter = 0;
  reg clk_move = 1;
  always @(posedge clk_100mhz) begin
    if(rst == 1) begin
        counter <= 0;
        clk_move <= 1;
    end
    else begin
        if(counter == 470000) begin
            counter <= 0;
            clk_move <= ~clk_move;
        end
        else begin
            counter <= counter + 1;
        end
    end
  end
  
  always @(posedge clk_move) begin
    if(rst == 1) begin
      car1_x <= 200;
      car1_y <= 200;
      //angle <= 0;
    end
    else begin
      if(forward) begin
        car1_y <= car1_y + speed;
      end
      else if(backward) begin
        car1_y <= car1_y - speed;
      end
      else if(left) begin
        car1_x <= car1_x - speed;
      end
      else if(right) begin
        car1_x <= car1_x + speed;
      end
      /*car1_x <= $signed(car1_x) + (deltaX >> 7);
      car1_y <= $signed(car1_y) + (deltaY >> 7);
      if(left == 1) begin
          angle <= $signed(angle_constrained) 
              + $signed(speed) * (forward ? 1 : -1) * SPEED_FACTOR;
      end
      else if(right == 1) begin
          angle <= $signed(angle_constrained) 
              - $signed(speed) * (forward ? 1 : -1) * SPEED_FACTOR;
      end*/
    end
  end
endmodule