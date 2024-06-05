// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jun  5 04:47:44 2024
// Host        : DESKTOP-1FDB31H running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/wnagds/Desktop/hdmi_ov5640_2017/hdmi_ov5640_2017.srcs/sources_1/bd/system/ip/system_system_ila_0_1/system_system_ila_0_1_stub.v
// Design      : system_system_ila_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_1579,Vivado 2020.2" *)
module system_system_ila_0_1(clk, SLOT_0_VID_IO_data, 
  SLOT_0_VID_IO_active_video, SLOT_0_VID_IO_vsync)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_VID_IO_data[23:0],SLOT_0_VID_IO_active_video,SLOT_0_VID_IO_vsync" */;
  input clk;
  input [23:0]SLOT_0_VID_IO_data;
  input SLOT_0_VID_IO_active_video;
  input SLOT_0_VID_IO_vsync;
endmodule
