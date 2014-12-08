`timescale 1ns / 1ps

module sd_loader(input clk_100mhz, input rst,
                 input in_loading_phase,
                 input imap_loaded, output reg imap_load, input [31:0] imap_sd_adr, input imap_sd_read,
                 input video_loaded, output reg video_load, input [31:0] video_sd_adr, input video_sd_read,
                 input sound_loaded, output reg sound_load, input [31:0] sound_sd_adr, input sound_sd_read,
                 output all_loaded, output reg [31:0] sd_address,
                 output reg sd_read);
  wire [2:0] loaders = {imap_load, video_load, sound_load};
  assign all_loaded = imap_loaded && video_loaded && sound_loaded;

  reg last_in_loading_phase = 0;
  always @(posedge clk_100mhz) begin
    if(rst == 1) begin
      imap_load <= 0;
      video_load <= 0;
      sound_load <= 0;
      last_in_loading_phase <= 0;
    end
    else begin
      if(last_in_loading_phase == 0 && in_loading_phase == 1) begin
        imap_load <= 1;
      end
      if(in_loading_phase) begin
        if(imap_loaded == 0) begin
          imap_load <= 1;
          video_load <= 0;
          sound_load <= 0;
        end
        else if(video_loaded == 0) begin
          imap_load <= 0;
          video_load <= 1;
          sound_load <= 0;
        end
        else if(sound_loaded == 0) begin
          imap_load <= 0;
          video_load <= 0;
          sound_load <= 1;
        end
      end
    end
  end

  always @(*) begin
    case (loaders)
      3'b100: begin
        sd_address = imap_sd_adr;
        sd_read = imap_sd_read;
      end
      3'b010: begin
        sd_address = video_sd_adr;
        sd_read = video_sd_read;
      end
      3'b001: begin
        sd_address = sound_sd_adr;
        sd_read = sound_sd_read;
      end
      default: begin
        sd_address = 0;
        sd_read = 0;
      end
    endcase
  end
endmodule