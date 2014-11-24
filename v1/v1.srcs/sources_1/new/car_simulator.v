`timescale 1ns / 1ps

// NEED TO SEND A SLOWER CLOCK TO THIS MODULE

module car_simulator(input clk_100mhz, input rst, 
    input forward, input [1:0] speed, input [1:0] turn,

    output reg [9:0] car1_x = 0, output reg [8:0] car1_y = 0);
  parameter SPEED_FACTOR = 1
  
  signed reg [9:0] angle = 0;
  signed wire [9:0] angle_constrained = (angle < 0) ? (10'sb011_0010010 - angle) : 
      (angle > 10'sb011_0010010 ? angle - 10'sb011_0010010 : angle);

  signed wire [9:0] cos;
  signed wire [9:0] sin;

  signed wire [21:0] deltaX = (forward ? 1 : -1) * $signed(speed) * cos;
  signed wire [21:0] deltaY = (forward ? 1 : -1) * $signed(speed) * sin;

  wire new_angle_ready;
  reg last_angle_ready = 0;
  cordic sincosgen(.phase_in(angle_constrained), .x_out(cos), .y_out(sin));

  always @(posedge clk_100mhz) begin
    if(rst == 1) begin
      car1_x <= 0;
      car1_y <= 0;
      angle <= 0;
      last_angle_ready <= 0
    end
    else begin
      car1_x <= $signed(car1_x) + (deltaX >> 7);
      car1_y <= $signed(car1_y) + (deltaY >> 7);
      case(turn)
        `TURN_LEFT: begin
          angle <= $signed(angle_constrained) 
              + $signed(speed) * (forward ? 1 : -1) * SPEED_FACTOR;
        end
        `TURN_STRAIGHT: begin
          angle <= angle + speed;
        end
        `TURN_RIGHT: begin
          angle <= $signed(angle_constrained) 
              - $signed(speed) * (forward ? 1 : -1) * SPEED_FACTOR;
        end
      endcase
    end
  end
endmodule