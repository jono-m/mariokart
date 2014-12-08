`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2014 09:20:11 PM
// Design Name: 
// Module Name: audio_logic
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


module audio_logic(
    input clk,
    input rst,
    input playing,
    input [7:0] music_data,
    input [2:0] phase,
    output [22:0] current_address,
    output ampPWM,
    output ampSD
    );
    assign ampSD = 1'd1;
    // reg [22:0] music_address = 23'd0;
    // reg [22:0] music_length = 23'd0;
    wire [7:0] music_out;

    wire [22:0] music_address = (phase == `PHASE_RACING || phase == `PHASE_LOADING_RACING || phase == `PHASE_LOADING_RESULTS || phase == `PHASE_RESULTS) ? `MUSIC_GAME_ADDRESS : `MUSIC_START_ADDRESS;
    wire [22:0] music_length = (phase == `PHASE_RACING || phase == `PHASE_LOADING_RACING || phase == `PHASE_LOADING_RESULTS || phase == `PHASE_RESULTS) ? `MUSIC_GAME_LENGTH : `MUSIC_START_LENGTH;

    wire play_enable = playing && (phase == `PHASE_RACING || phase == `PHASE_RESULTS || phase == `PHASE_START_SCREEN || phase == `PHASE_CHARACTER_SELECT);

    music_logic music(.clk(clk), .reset(rst), .music_address(music_address), .music_length(music_length), .play(play_enable), .dataIn(music_data), .current_address(current_address), .dataOut(music_out));
    
    audio_PWM audio_PWM(.clk(clk), .reset(rst), .music_data(music_out), .PWM_out(ampPWM));
    
endmodule
