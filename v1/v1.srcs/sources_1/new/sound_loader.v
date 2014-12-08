`timescale 1ns / 1ps

module sound_loader(input clk_12mhz, input rst, input load,
		output is_loaded,

		input [22:0] sound_address,
		output [7:0] sample,

		// SD Card Control signals
		input sd_byte_available, sd_ready_for_read, input [7:0] sd_byte, 
		output reg [31:0] sd_address = 0,
		output reg sd_do_read = 0,

        // Cellular RAM signals
        inout cram_data[15:0], output cram_adr[22:0], output reg cram_we);
	
    reg was_byte_available = 0;
    reg [22:0] loaded_rows = 0;
    reg [22:0] write_address = 0;

    reg [15:0] new_data = 0;
    wire loaded = (loaded_rows >= `SOUND_SD_LENGTH);
    assign is_loaded = loaded;
    assign cram_adr = is_loaded ? sound_address : write_address;
    assign cram_data = is_loaded ? 16'bZZZZ_ZZZZ_ZZZZ_ZZZZ : new_data;

    always @(posedge clk_12mhz) begin
        if(rst) begin
            loaded_rows <= 0;
            sd_address <= 0;
            sd_do_read <= 0;
            was_byte_available <= 0;
            write_address <= 0;
            cram_we <= 0;
            new_data <= 0;
        end
        else begin
            if(loaded == 0 && load == 1) begin
                if(sd_ready_for_read == 1) begin
                    sd_do_read <= 1;
                    sd_address <= `SOUND_SD_ADR + loaded_rows;
                end
                else if(sd_do_read == 1) begin
                    was_byte_available <= sd_byte_available;
                    if(was_byte_available == 0 && sd_byte_available == 1) begin
                        new_data[7:0] <= sd_byte;
                        cram_we <= 1;
                        write_address <= loaded_rows;
                        loaded_rows <= loaded_rows + 1;
                    end
                end
            end
            else begin
                sd_do_read <= 0;
                cram_we <= 0;
            end
        end
    end
endmodule

