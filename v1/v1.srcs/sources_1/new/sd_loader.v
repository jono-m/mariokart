`timescale 1ns / 1ps

module sd_loader(input clk_100mhz, input rst,
                 input in_loading_phase,
                 input imap_loaded, output reg imap_load, input [31:0] imap_sd_adr, input imap_sd_read,
                 input video_loaded, output reg video_load, input [31:0] video_sd_adr, input video_sd_read,
                 output all_loaded, output reg [31:0] sd_address,
                 output reg sd_read);
  wire [1:0] loaders = {imap_load, video_load};
  assign all_loaded = imap_loaded && video_loaded;

  reg last_in_loading_phase = 0;
  always @(posedge clk_100mhz) begin
    if(rst == 1) begin
      imap_load <= 0;
      video_load <= 0;
      last_in_loading_phase <= 0;
    end
    else begin
      if(last_in_loading_phase == 0 && in_loading_phase == 1) begin
        imap_load <= 1;
      end
      if(in_loading_phase) begin
        if(imap_loaded == 1) begin
          imap_load <= 0;
          video_load <= 1;
        end
      end
    end
  end

  always @(*) begin
    case (loaders)
      2'b01: begin
        sd_address = video_sd_adr;
        sd_read = video_sd_read;
      end
      2'b10: begin
        sd_address = imap_sd_adr;
        sd_read = imap_sd_read;
      end
      2'b00: begin
        sd_address = 0;
        sd_read = 0;
      end
      2'b11: begin
        sd_address = 0;
        sd_read = 0;
      end
    endcase
  end
endmodule