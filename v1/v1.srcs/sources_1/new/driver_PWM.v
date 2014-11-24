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
    input btnCpuReset,
    input [26:0] period, dutyCycle,
    output reg signal
    );
    

    reg [26:0] count = 27'd0; 
    
    always @(posedge clk) begin
        if(count <= dutyCycle*(period >> 3)) signal <= 1;
        else signal <= 0;
        
        if(count >= period) count <= 0;
        else count <= count + 1;
    end
        
    
    
    
    
    
    
endmodule
