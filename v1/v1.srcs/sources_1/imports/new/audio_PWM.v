`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2014 02:08:35 AM
// Design Name: 
// Module Name: audio_PWM
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


module audio_PWM(
    input clk,
    input reset,
    input [7:0] music_data,
    output reg PWM_out
    );
    
    
    reg [7:0] pwm_counter = 8'd0;           // counts up to 255 clock cycles per pwm period
       
          
    always @(posedge clk) begin
        if(reset) begin
            pwm_counter <= 0;
            PWM_out <= 0;
        end
        else begin
            pwm_counter <= pwm_counter + 1;
            
            if(pwm_counter >= music_data) PWM_out <= 0;
            else PWM_out <= 1;
        end
    end
endmodule
