`timescale 1ns / 1ps

module sd_controller(
    output reg cs,
    output mosi,
    input miso,
    output sclk,
    
    input rd,
    input wr,
    input dm_in,
    input reset,
    input [7:0] din,
    output reg [7:0] dout,
    output reg byte_available,
    output ready_for_read,
    input [31:0] address,
    input clk,
    output [4:0] status
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
    assign status = state;
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
    
    always @(posedge clk) begin
        if(reset == 1) begin
            state <= RST;
            sclk_sig <= 0;
        end
        else begin
            case(state)
                RST: begin
                    sclk_sig <= 0;
                    cmd_out <= {56{1'b1}};
                    byte_counter <= 0;
                    byte_available <= 0;
                    cmd_mode <= 1;
                    response_mode <= 1;
                    bit_counter <= 160;
                    cs <= 1;
                    state <= INIT;
                end
                INIT: begin
                    if(bit_counter == 0) begin
                        cs <= 0;
                        state <= CMD0;
                    end
                    else begin
                        bit_counter <= bit_counter - 1;
                        sclk_sig <= ~sclk_sig;
                    end
                end
                CMD0: begin
                    cmd_out <= 56'hFF_40_00_00_00_00_95;
                    bit_counter <= 55;
                    return_state <= CMD55;
                    state <= SEND_CMD;
                end
                CMD55: begin
                    cmd_out <= 56'hFF_77_00_00_00_00_01;
                    bit_counter <= 55;
                    return_state <= CMD41;
                    state <= SEND_CMD;
                end
                CMD41: begin
                    cmd_out <= 56'hFF_69_00_00_00_00_01;
                    bit_counter <= 55;
                    return_state <= POLL_CMD;
                    state <= SEND_CMD;
                end
                POLL_CMD: begin
                    if(recv_data[0] == 0) begin
                        state <= IDLE;
                    end
                    else begin
                        state <= CMD55;
                    end
                end
                IDLE: begin
                    if(rd == 1) begin
                        state <= READ_BLOCK;
                    end
                    else if(wr == 1) begin
                        state <= WRITE_BLOCK_CMD;
                    end
                    else begin
                        state <= IDLE;
                    end
                end
                READ_BLOCK: begin
                    cmd_out <= {16'hFF_51, address, 8'hFF};
                    bit_counter <= 55;
                    return_state <= READ_BLOCK_WAIT;
                    state <= SEND_CMD;
                end
                READ_BLOCK_WAIT: begin
                    if(sclk_sig == 1 && miso == 0) begin
                        state <= READ_BLOCK_DATA;
                        byte_counter <= 511;
                        bit_counter <= 7;
                        return_state <= READ_BLOCK_DATA;
                        state <= RECEIVE_BYTE;
                    end
                    sclk_sig <= ~sclk_sig;
                end
                READ_BLOCK_DATA: begin
                    dout <= recv_data;
                    byte_available <= 1;
                    if (byte_counter == 0) begin
                        bit_counter <= 7;
                        return_state <= READ_BLOCK_CRC;
                        state <= RECEIVE_BYTE;
                    end
                    else begin
                        byte_counter <= byte_counter - 1;
                        return_state <= READ_BLOCK_DATA;
                        bit_counter <= 7;
                        state <= RECEIVE_BYTE;
                    end
                end
                READ_BLOCK_CRC: begin
                    bit_counter <= 7;
                    return_state <= IDLE;
                    state <= RECEIVE_BYTE;
                end
                SEND_CMD: begin
                    if (sclk_sig == 1) begin
                        if (bit_counter == 0) begin
                            state <= RECEIVE_BYTE_WAIT;
                        end
                        else begin
                            bit_counter <= bit_counter - 1;
                            cmd_out <= {cmd_out[54:0], 1'b1};
                        end
                    end
                    sclk_sig <= ~sclk_sig;
                end
                RECEIVE_BYTE_WAIT: begin
                    if (sclk_sig == 1) begin
                        if (miso == 0) begin
                            recv_data <= 0;
                            if (response_mode == 0) begin
                                bit_counter <= 3;
                            end
                            else begin
                                bit_counter <= 6;
                            end
                            state <= RECEIVE_BYTE;
                        end
                    end
                    sclk_sig <= ~sclk_sig;
                end
                RECEIVE_BYTE: begin
                    byte_available <= 0;
                    if (sclk_sig == 1) begin
                        recv_data <= {recv_data[6:0], miso};
                        if (bit_counter == 0) begin
                            state <= return_state;
                        end
                        else begin
                            bit_counter <= bit_counter - 1;
                        end
                    end
                    sclk_sig <= ~sclk_sig;
                end
                WRITE_BLOCK_CMD: begin
                    cmd_mode <= 1;
                    if (data_mode == 0) begin
                        cmd_out <= {8'hFF, 8'h59, address, 8'hFF};
                    end
                    else begin
                        cmd_out <= {8'hFF, 8'h58, address, 8'hFF};
                    end
                    bit_counter <= 55;
                    return_state <= WRITE_BLOCK_INIT;
                    state <= SEND_CMD;
                end
                WRITE_BLOCK_INIT: begin
                    cmd_mode <= 0;
                    byte_counter <= WRITE_DATA_SIZE; 
                    state <= WRITE_BLOCK_DATA;
                end
                WRITE_BLOCK_DATA: begin
                    if (byte_counter == 0) begin
                        state <= RECEIVE_BYTE_WAIT;
                        return_state <= WRITE_BLOCK_WAIT;
                        response_mode <= 0;
                    end
                    else begin
                        if ((byte_counter == 2) || (byte_counter == 1)) begin
                            data_sig <= 8'hFF;
                        end
                        else if (byte_counter == WRITE_DATA_SIZE) begin
                            if (data_mode == 0) begin
                                data_sig <= 8'hFC;
                            end
                            else begin
                                data_sig <= 8'hFE;
                            end
                        end
                        bit_counter <= 7;
                        state <= WRITE_BLOCK_BYTE;
                        byte_counter <= byte_counter - 1;
                    end
                end
                WRITE_BLOCK_BYTE: begin
                    if (sclk_sig == 1) begin
                        if (bit_counter == 0) begin
                            state <= WRITE_BLOCK_DATA;
                        end
                        else begin
                            data_sig <= {data_sig[6:0], 1'b1};
                            bit_counter <= bit_counter - 1;
                        end;
                    end;
                    sclk_sig <= ~sclk_sig;
                end
                WRITE_BLOCK_WAIT: begin
                    response_mode <= 1;
                    if (sclk_sig == 1) begin
                        if (miso == 1) begin
                            if (data_mode == 0) begin
                                state <= WRITE_BLOCK_INIT;
                            end
                            else begin
                                state <= IDLE;
                            end
                        end
                    end
                    sclk_sig = ~sclk_sig;
                end
            endcase
        end
    end

    assign sclk = sclk_sig;
    assign mosi = cmd_mode ? cmd_out[55] : data_sig[7];
    assign ready_for_read = (state == IDLE);
endmodule