`timescale 1ns / 1ps

module sd_loader(input clk_100mhz, input rst,
                 input imap_loaded, output imap_load, 
                 input video_loaded, output video_load,
                 output all_loaded, output [31:0] sd_address,
                 output sd_read);
  wire [1:0] loaders = {imap_load, video_load};
  assign all_loaded = imap_loaded && video_loaded;

  always @(posedge clk_100mhz) begin
    if(rst == 1) begin
      imap_load <= 1;
      video_load <= 0;
    end
    else begin
      if(imap_loaded == 1) begin
        imap_load <= 0;
        video_load <= 1;
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