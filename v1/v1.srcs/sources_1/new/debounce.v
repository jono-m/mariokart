`timescale 1ns / 1ps

// Switch Debounce Module
// use your system clock for the clock input
// to produce a synchronous, debounced output
module debounce #(parameter DELAY=1000000)   // .01 sec with a 100Mhz clock
          (input reset, clock, noisy,
           output reg clean);

  reg [16:0] count;
  reg new;

  always @(posedge clock) begin
    if (reset) begin
      count <= 0;
      new <= noisy;
      clean <= noisy;
    end
    else if (noisy != new) begin
      new <= noisy;
      count <= 0;
    end
    else if (count == DELAY) begin
      clean <= new;
    end
    else begin
      count <= count+1;
    end
  end
      
endmodule