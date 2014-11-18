// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (win64) Build 932637 Wed Jun 11 13:33:10 MDT 2014
// Date        : Tue Nov 18 14:33:34 2014
// Host        : brad-windows running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/brad_000/Documents/GitHub/mariokart/POCs/CAMERA/CAMERA.srcs/sources_1/ip/pixel_buffer/pixel_buffer_stub.v
// Design      : pixel_buffer
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_2,Vivado 2014.2" *)
module pixel_buffer(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[16:0],dina[35:0],clkb,enb,addrb[16:0],doutb[35:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [16:0]addra;
  input [35:0]dina;
  input clkb;
  input enb;
  input [16:0]addrb;
  output [35:0]doutb;
endmodule
