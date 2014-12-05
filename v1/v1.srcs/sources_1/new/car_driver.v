`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2014 08:46:12 PM
// Design Name: 
// Module Name: car_driver_buttons
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


module car_driver(
    input clk, input rst,
    input forward, input backward, input turn_left, input turn_right,
    input [1:0] speed,
    output driver_forward, output driver_backward,
    output driver_left, output driver_right
    );
    
    // PWM signals
    wire pwm_forward_slow;
    wire pwm_forward_normal;
    wire pwm_forward_boost = 1;
    wire pwm_backward_slow;
    wire pwm_backward_normal;
    wire pwm_backward_boost = 1;

    driver_PWM PWM1_FS (.period(`PWM_P_FORWARD_SLOW), .dutyCycle(`PWM_DS_FORWARD_SLOW), .clk(clk), .rst(rst), .signal(pwm_forward_slow));
    driver_PWM PWM1_FN (.period(`PWM_P_FORWARD_NORMAL), .dutyCycle(`PWM_DS_FORWARD_NORMAL), .clk(clk), .rst(rst), .signal(pwm_forward_normal));
    driver_PWM PWM1_BS (.period(`PWM_P_BACKWARD_SLOW), .dutyCycle(`PWM_DS_BACKWARD_SLOW), .clk(clk), .rst(rst), .signal(pwm_backward_slow));
    driver_PWM PWM1_BN (.period(`PWM_P_BACKWARD_NORMAL), .dutyCycle(`PWM_DS_BACKWARD_NORMAL), .clk(clk), .rst(rst), .signal(pwm_backward_boost));

    wire pwm_forward = (speed == `SPEED_STOP ? 0 :
                       (speed == `SPEED_SLOW ? pwm_forward_slow :
                       (speed == `SPEED_NORMAL ? pwm_forward_normal :
                       (speed == `SPEED_BOOST ? pwm_forward_boost : 0))));
    wire pwm_backward = (speed == `SPEED_STOP ? 0 :
                       (speed == `SPEED_SLOW ? pwm_backward_slow :
                       (speed == `SPEED_NORMAL ? pwm_backward_normal :
                       (speed == `SPEED_BOOST ? pwm_backward_boost : 0))));

    assign driver_forward = forward && pwm_forward;
    assign driver_backward = backward && pwm_backward;
    assign driver_left = turn_left;
    assign driver_right = turn_right;
endmodule
