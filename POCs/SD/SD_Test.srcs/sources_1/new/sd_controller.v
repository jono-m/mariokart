module sd_controller(
    output reg cs,
    output reg mosi,
    input miso,
    output reg sclk,
    
    input rd,
    input wr,
    input dm_in,
    input reset,
    input [7:0] din,
    output reg [7:0] dout,
    input [31:0] adr,
    input clk
);

    parameter RST = 0;
    parameter INIT = 1;
    parameter CMD0 = 2;
    parameter CMD55 = 3;
    parameter CMD41 = 4;
    parameter POLL_CMD = 5;
    
    parameter IDLE = 6;
    parameter READ_BLOCK = 7;
    parameter READ_BLOCK_WAIT = 8;
    parameter READ_BLOCK_DATA = 9;
    parameter READ_BLOCK_CRC = 10;
    parameter SEND_CMD = 11;
    parameter RECEIVE_BYTE_WAIT = 12;
    parameter RECEIVE_BYTE = 13;
    parameter WRITE_BLOCK_CMD = 14;
    parameter WRITE_BLOCK_INIT = 15;
    parameter WRITE_BLOCK_DATA = 16;
    parameter WRITE_BLOCK_BYTE = 17;
    parameter WRITE_BLOCK_WAIT = 18;
    
    parameter WRITE_DATA_SIZE = 515;
    
    reg [4:0] state = RST;
    reg [4:0] return_state;
    reg sclk_sig = 0;
    reg [55:0] cmd_out;
    reg [7:0] recv_data;
    reg cmd_mode = 1;
    reg data_mode = 1;
    reg response_mode = 1;
    reg [7:0] data_sig = 8'h00;
    
    reg [9:0] byte_counter;
    reg [9:0] bit_counter;
    
    always @(posedge clk or reset) begin
        if(reset == 1) begin
            state <= RST;
            sclk_sig <= 0;
        end
        else begin
            case(state)
                RST: begin
                end
                INIT: begin
                end
                CMD0: begin
                end
                
    end
endmodule