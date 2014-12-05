`timescale 1ns / 1ps

module information_map(input clk_100mhz, input rst, input load,
    input in_loading_phase,
	input [31:0] address_offset,
	input [9:0] x, input [8:0] y,
	output [1:0] map_type,
	output is_loaded,

    output reg [20:0] item_box1, output reg [20:0] item_box2,
    output reg [20:0] item_box3, output reg [20:0] item_box4,
    output reg [20:0] item_box5, output reg [20:0] item_box6,
    output reg [20:0] item_box7, output reg [20:0] item_box8,

	// SD Card Control signals
	input sd_byte_available, sd_ready_for_read, input [7:0] sd_byte, 
	output reg [31:0] sd_address = 0,
	output reg sd_do_read = 0
    );
    wire [16:0] bram_trackinfo_adr;
    reg [7:0] bram_trackinfo_write;
    wire [7:0] bram_trackinfo_read;
    reg bram_trackinfo_we;   
    trackinfo_bram trackinfo_bram(.clka(clk_100mhz), .addra(bram_trackinfo_adr), 
            .dina(bram_trackinfo_write), .douta(bram_trackinfo_read), 
            .wea(bram_trackinfo_we));

	wire [16:0] read_address = ((480-1)-y)*(640/4) + (x >> 2);
    wire [1:0] mt1 = bram_trackinfo_read[7:6];
    wire [1:0] mt2 = bram_trackinfo_read[5:4];
    wire [1:0] mt3 = bram_trackinfo_read[3:2];
    wire [1:0] mt4 = bram_trackinfo_read[1:0];
    
    wire [1:0] n = x[1:0];
    assign map_type = (n == 0) ? mt1 : ((n == 1) ? mt2 : ((n == 2) ? mt3 : mt4));

    reg was_byte_available = 0;
    reg [16:0] loaded_rows = 0;
    reg [16:0] write_address = 0;

    wire loaded = (loaded_rows >= 76800);
    assign is_loaded = loaded;
    assign bram_trackinfo_adr = is_loaded ? read_address : write_address;

    reg loading_boxes = 1;
    reg [23:0] box_data = 0;
    reg [1:0] box_byte = 0;
    reg [4:0] boxes_loaded = 0;

    always @(posedge clk_100mhz) begin
        if(rst) begin
            item_box1 <= 0;
            item_box2 <= 0;
            item_box3 <= 0;
            item_box4 <= 0;
            item_box5 <= 0;
            item_box6 <= 0;
            item_box7 <= 0;
            item_box8 <= 0;
            bram_trackinfo_write <= 0;
            bram_trackinfo_we <= 0;
            loaded_rows <= 0;
            sd_address <= 0;
            sd_do_read <= 0;
            was_byte_available <= 0;
            write_address <= 0;
            loading_boxes <= 1;
            box_data <= 0;
            box_byte <= 0;
            boxes_loaded <= 0;
        end
        else begin
            if(loaded == 0 && load == 1) begin
                if(sd_ready_for_read == 1) begin
                    sd_do_read <= 1;
                    sd_address <= loading_boxes ? (address_offset) : 
                            (address_offset + 24 + loaded_rows);
                end
                else if(sd_do_read == 1) begin
                    was_byte_available <= sd_byte_available;
                    if(was_byte_available == 0 && sd_byte_available == 1) begin
                        if(loading_boxes == 1) begin
                            if(box_byte == 0) begin
                                box_byte <= box_byte + 1;
                                box_data[23:16] <= sd_byte;
                            end
                            else if(box_byte == 1) begin
                                box_byte <= box_byte + 1;
                                box_data[15:8] <= sd_byte;
                            end
                            else if(box_byte == 2) begin
                                box_byte <= 0;
                                box_data[7:0] <= sd_byte;
                                boxes_loaded <= boxes_loaded + 1;
                                case(boxes_loaded)
                                    0: item_box1 <= {box_data[23:8], sd_byte[7:3]};
                                    1: item_box2 <= {box_data[23:8], sd_byte[7:3]};
                                    2: item_box3 <= {box_data[23:8], sd_byte[7:3]};
                                    3: item_box4 <= {box_data[23:8], sd_byte[7:3]};
                                    4: item_box5 <= {box_data[23:8], sd_byte[7:3]};
                                    5: item_box6 <= {box_data[23:8], sd_byte[7:3]};
                                    6: item_box7 <= {box_data[23:8], sd_byte[7:3]};
                                    7: begin
                                        item_box8 <= {box_data[23:8], sd_byte[7:3]};
                                        loading_boxes <= 0;
                                    end
                                endcase
                            end
                        end
                        else begin
                            bram_trackinfo_write <= sd_byte;
                            bram_trackinfo_we <= 1;
                            write_address <= loaded_rows;
                            loaded_rows <= loaded_rows + 1;
                        end
                    end
                end
            end
            else begin
                sd_do_read <= 0;
                bram_trackinfo_we <= 0;
            end
        end
    end
endmodule
