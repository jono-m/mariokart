`timescale 1ns / 1ps

module pause_repeater #(parameter DELAY=30000000)   // .01 sec with a 100Mhz clock
          (input reset, clock, in,
           output reg out = 0);
  reg [26:0] count = 0;

  always @(posedge clock) begin
    if (reset) begin
      count <= 0;
      out <= in;
    end
    else begin
      if(in == 0) begin
        count <= 0;
        out <= 0;
      end
      else if(count == 0) begin
        out <= 1;
        count <= count + 1;
      end
      else if(count == DELAY) begin
        count <= 0;
      end
      else begin
        out <= 0;
        count <= count + 1;
      end
    end
  end
      
endmodule