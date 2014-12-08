`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2014 01:47:08 AM
// Design Name: 
// Module Name: music_logic
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


module music_logic(
    input clk,
    input reset,
    input [22:0] music_address,
    input [22:0] music_length,
    input play,
    input [7:0] dataIn,
    output reg [22:0] current_address,
    output [7:0] dataOut
    );
    
    reg [7:0] pwm_counter = 8'd0;           // counts up to 255 clock cycles per pwm period
    reg [5:0] sample_counter = 6'd0;       // counts up to 39 pwm periods per audio sample 
 
    assign dataOut = dataIn; 
 
    always @(posedge clk) begin
            if(reset) begin
                pwm_counter <= 0;
                sample_counter <= 0;
            end
            else if(~play) current_address <= music_address;
            else begin
                pwm_counter <= pwm_counter + 1;
                if(pwm_counter == 8'd255) sample_counter <= sample_counter + 1;
                if(sample_counter == 6'd49) begin
                    sample_counter <= 0;
                    current_address <= current_address + 1;
                end
                if(current_address == music_address + music_length) current_address <= music_address;
            end
        end
    
    
    
    
endmodule
