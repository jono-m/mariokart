 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2014 03:40:03 AM
// Design Name: 
// Module Name: driver_PWM
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


module driver_PWM(
    input clk,
    input rst,
    input [26:0] period, input [26:0] dutyCycle,
    output reg signal = 0
    );
    reg [26:0] count = 27'd0; 
    
    always @(posedge clk) begin
        if(rst == 1) begin
            count <= 0;
            signal <= 0;
        end
        else begin
            if(count <= dutyCycle*(period >> 3)) begin
                signal <= 1;
            end
            else begin
                signal <= 0;
            end
            if(count >= period) begin
                count <= 0;
            end
            else begin
                count <= count + 1;
            end
        end
    end    
endmodule
