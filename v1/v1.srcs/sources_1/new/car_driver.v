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


module car_driver_buttons(
    input clk, btnCpuReset,
    input [15:0] sw,
    output [6:0] seg,
    output dp,
    output [7:0] an,
    inout [4:0] JD
    );
    
    wire reset;
    assign reset = ~btnCpuReset;
    
    wire clock_1MHz;
    us_divider divider (.clk(clk), .btnCpuReset(reset), .clock_1MHz(clock_1MHz));
    
    
    ///////////////////////////////
    // CAR 1 //////////////////////
    ///////////////////////////////
    
    // Car 1 PWM signals
    wire drive1_U;
    wire drive1_D;
    wire drive1_L;
    wire drive1_R;  

    driver_PWM PWM1_U (.period({7'd0, sw[7:0], 12'd0}), .dutyCycle({23'd0, sw[11:8]}), .clk(clk), .btnCpuReset(reset), .signal(drive1_U));
    driver_PWM PWM1_D (.period({7'd0, sw[7:0], 12'd0}), .dutyCycle({23'd0, sw[11:8]}), .clk(clk), .btnCpuReset(reset), .signal(drive1_D));
    driver_PWM PWM1_L (.period({7'd0, sw[7:0], 12'd0}), .dutyCycle({23'd0, sw[15:12]}), .clk(clk), .btnCpuReset(reset), .signal(drive1_L));
    driver_PWM PWM1_R (.period({7'd0, sw[7:0], 12'd0}), .dutyCycle({23'd0, sw[15:12]}), .clk(clk), .btnCpuReset(reset), .signal(drive1_R));
    //
    
    wire A1, B1, Z1, Start1, L1, R1;
    wire dUp1, dDown1, dLeft1, dRight1;
    wire cUp1, cDown1, cLeft1, cRight1;
    wire [7:0] xAxis1, yAxis1;
    wire JD1;
    
    N64_interpret Controller1(.clk(clk), .btnCpuReset(reset), .clock_1MHz(clock_1MHz),
                                .A(A1), .B(B1), .Z(Z1), .Start(Start1), .L(L1), .R(R1),
                                .dUp(dUp1), .dDown(dDown1), .dLeft(dLeft1), .dRight(dRight1),
                                .cUp(cUp1), .cDown(cDown1), .cLeft(cLeft1), .cRight(cRight1),
                                .xAxis(xAxis1), .yAxis(yAxis1), .JD(JD1));
    
    assign JD[0] = A1 & drive1_U;
    assign JD[1] = B1 & drive1_D;
    assign JD[2] = dLeft1 & drive1_L;
    assign JD[3] = dRight1 & drive1_R;
    assign JD[4] = JD1;       
       
    ///////////////////////////////
    ///////////////////////////////
    
    assign seg[6:0] = sw[6:0];
    assign dp = sw[7];
    assign an[7:0] = sw[15:8];
           
    
endmodule
