// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jun  5 04:45:07 2024
// Host        : DESKTOP-1FDB31H running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/wnagds/Desktop/hdmi_ov5640_2017/hdmi_ov5640_2017.srcs/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_stub.v
// Design      : system_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module system_clk_wiz_0_0(pixel_clk, pixel_clkx5, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="pixel_clk,pixel_clkx5,reset,locked,clk_in1" */;
  output pixel_clk;
  output pixel_clkx5;
  input reset;
  output locked;
  input clk_in1;
endmodule
