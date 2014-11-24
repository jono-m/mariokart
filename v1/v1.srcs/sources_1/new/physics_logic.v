`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2014 09:03:07 AM
// Design Name: 
// Module Name: physics_logic
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


module physics_logic(
    input clk,
    input reset,
    input car1_driveEnable,
    input [3:0] car1_buttons,
    input [1:0] car1_powerUps,
    input [9:0] car1_xCoord,
    input [8:0] car1_yCoord,
    input [1:0] car1_mapType,
    input [1:0] car1_mapItem,
    output reg [9:0] car1_xPixel,
    output reg [8:0] car1_yPixel,
    output [1:0] Car1_collisions,
    output [3:0] Car1_drive,
    output reg [1:0] Car1_speed
    );


    // powerUps ///////////
    parameter noPowerUp = 2'b00;
    parameter boostOn = 2'b01;
    parameter invertSteer = 2'b10;
    parameter invertBoost = 2'b11;
    ///////////////////////

    // mapType ////////////
    parameter road = 2'b00;
    parameter grass = 2'b01;
    parameter wall = 2'b10;
    parameter finish = 2'b11;
    ///////////////////////
    
    // mapItem ////////////
    parameter noItem = 2'b00;
    parameter itemBox = 2'b01;
    parameter banana = 2'b10;
    ///////////////////////
    
    // collisions /////////
    parameter noCollision = 2'b00;
    parameter boxCollision = 2'b01;
    parameter bananaCollision = 2'b10;
    parameter finishCollision = 2'b11; 
    ///////////////////////
    
    // speed //////////////
    parameter noSpeed = 2'b00;
    parameter slowSpeed = 2'b01;
    parameter fullSpeed = 2'b10;
    parameter boostSpeed = 2'b11;
    ///////////////////////
    
    // car dimnsions //////
    parameter halfSide = 5'd20;
    
    
    reg car1_buttonLeft;
    reg car1_buttonRight;
    
    reg [5:0] car1_xCount;
    reg [5:0] car1_yCount;
    
    assign Car1_drive[3] = car1_buttons[3] & car1_driveEnable & ~reset;
    assign Car1_drive[2] = car1_buttons[2] & car1_driveEnable & ~reset;
    assign Car1_drive[1] = car1_buttonLeft & car1_driveEnable & ~reset;
    assign Car1_drive[0] = car1_buttonRight & car1_driveEnable & ~reset;

    assign Car1_collisions = car1_mapItem;
    
    always @(posedge clk) begin
        if(reset) begin
            Car1_speed = noSpeed;
        end
        else begin
        
        ////////////////////////////////////////////////////////////////////
        // Calculate speed and steering                                   //
        ////////////////////////////////////////////////////////////////////   
            case(car1_mapType)
                road: begin
                    case(car1_powerUps)
                        noPowerUp: begin 
                            Car1_speed <= fullSpeed;
                            car1_buttonLeft <= car1_buttons[1];
                            car1_buttonRight <= car1_buttons[0];
                        end
                        boostOn: begin
                            Car1_speed <= boostSpeed;
                            car1_buttonLeft <= car1_buttons[1];
                            car1_buttonRight <= car1_buttons[0];
                        end
                        invertSteer: begin
                            Car1_speed <= fullSpeed;
                            car1_buttonLeft <= car1_buttons[0];
                            car1_buttonRight <= car1_buttons[1];                                
                        end
                        invertBoost: begin 
                            Car1_speed <= boostSpeed;
                            car1_buttonLeft <= car1_buttons[0];
                            car1_buttonRight <= car1_buttons[1];
                        end 
                    endcase
                end
                
                grass: begin
                    case(car1_powerUps)
                        noPowerUp: begin 
                            Car1_speed <= slowSpeed;
                            car1_buttonLeft <= car1_buttons[1];
                            car1_buttonRight <= car1_buttons[0];
                        end
                        boostOn: begin
                            Car1_speed <= fullSpeed;
                            car1_buttonLeft <= car1_buttons[1];
                            car1_buttonRight <= car1_buttons[0];
                        end
                        invertSteer: begin
                            Car1_speed <= slowSpeed;
                            car1_buttonLeft <= car1_buttons[0];
                            car1_buttonRight <= car1_buttons[1];                                
                        end
                        invertBoost: begin 
                            Car1_speed <= fullSpeed;
                            car1_buttonLeft <= car1_buttons[0];
                            car1_buttonRight <= car1_buttons[1];
                        end 
                    endcase
                end
                
                wall: begin
                    case(car1_powerUps)
                        noPowerUp: begin 
                            Car1_speed <= slowSpeed;
                            car1_buttonLeft <= car1_buttons[1];
                            car1_buttonRight <= car1_buttons[0];
                        end
                        boostOn: begin
                            Car1_speed <= slowSpeed;
                            car1_buttonLeft <= car1_buttons[1];
                            car1_buttonRight <= car1_buttons[0];
                        end
                        invertSteer: begin
                            Car1_speed <= slowSpeed;
                            car1_buttonLeft <= car1_buttons[0];
                            car1_buttonRight <= car1_buttons[1];                                
                        end
                        invertBoost: begin 
                            Car1_speed <= slowSpeed;
                            car1_buttonLeft <= car1_buttons[0];
                            car1_buttonRight <= car1_buttons[1];
                        end 
                    endcase
                end
                
                finish: begin 
                    case(car1_powerUps)
                        noPowerUp: begin 
                            Car1_speed <= fullSpeed;
                            car1_buttonLeft <= car1_buttons[1];
                            car1_buttonRight <= car1_buttons[0];
                        end
                        boostOn: begin
                            Car1_speed <= boostSpeed;
                            car1_buttonLeft <= car1_buttons[1];
                            car1_buttonRight <= car1_buttons[0];
                        end
                        invertSteer: begin
                            Car1_speed <= fullSpeed;
                            car1_buttonLeft <= car1_buttons[0];
                            car1_buttonRight <= car1_buttons[1];                                
                        end
                        invertBoost: begin 
                            Car1_speed <= boostSpeed;
                            car1_buttonLeft <= car1_buttons[0];
                            car1_buttonRight <= car1_buttons[1];
                        end 
                    endcase
                end
            endcase
        ////////////////////////////////////////////////////////////////////           
        ////////////////////////////////////////////////////////////////////   
           
           
        ////////////////////////////////////////////////////////////////////
        // Calculate collisions                                           //
        ////////////////////////////////////////////////////////////////////
            if(car1_xCount >= 2*halfSide) car1_xCount <= 0;
            else car1_xCount <= car1_xCount + 1;
            car1_xPixel <= car1_xCoord - halfSide + car1_xCount;
            
            if(car1_yCount >= 2*halfSide) car1_yCount <= 0;
            else car1_yCount <= car1_yCount + 1;
            car1_yPixel <= car1_yCoord - halfSide + car1_yCount;
        ////////////////////////////////////////////////////////////////////           
        ////////////////////////////////////////////////////////////////////   
        
        end
    end
    
    
endmodule    