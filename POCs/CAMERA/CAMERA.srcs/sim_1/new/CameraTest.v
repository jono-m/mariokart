`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2014 06:03:15 PM
// Design Name: 
// Module Name: CameraTest
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

module CameraTest();
    reg clk, vsync, href;
    reg [7:0] data;
    wire [8:0] x, y;
    wire [7:0] pixel;
    wire valid;
    
    Camera test(clk, vsync, href, data, x, y, pixel, valid);
    
    initial begin
        clk = 0;
        vsync = 0;
        href = 0;
        data = 8'h00;
    end
    
    always begin
        #5 clk = ~clk;
    end
    
    reg [6:0] count = 0;
    always @(posedge clk) begin
        count <= count + 1;
        if(count == 10) begin
            vsync <= 1;
        end
        else if(count == 15) begin
            vsync <= 0;
        end
        else if(count == 30) begin
            href <= 1;
        end
        else if(count == 31) begin
            data <= 8'hbb;
        end
        else if(count == 32) begin
           data <= 8'h00;
        end
        else if(count == 33) begin
            data <= 8'h11;
        end
        else if(count == 34) begin
           data <= 8'h00;
        end
        else if(count == 35) begin
            data <= 8'hff;
        end
        else if(count == 36) begin
           data <= 8'h00;
        end
        else if(count == 37) begin
            data <= 8'h55;
        end
        else if(count == 38) begin
           data <= 8'h00;
        end
        else if(count == 39) begin
            href <= 0;
        end
        
        //next line
        else if(count == 50) begin
            href <= 1;
        end
        else if(count == 51) begin
            data <= 8'hcc;
        end
        else if(count == 52) begin
           data <= 8'h00;
        end
        else if(count == 53) begin
            data <= 8'h22;
        end
        else if(count == 54) begin
           data <= 8'h00;
        end
        else if(count == 55) begin
            data <= 8'h44;
        end
        else if(count == 56) begin
           data <= 8'h00;
        end
        else if(count == 57) begin
            data <= 8'h77;
        end
        else if(count == 58) begin
           data <= 8'h00;
        end
        else if(count == 59) begin
            href <= 0;
        end
        else if(count == 65) begin
            vsync <= 1;
        end
        else if(count == 70) begin
            vsync <= 0;
        end
        
    end
endmodule
