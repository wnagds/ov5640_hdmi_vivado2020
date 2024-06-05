-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Jun  5 04:47:44 2024
-- Host        : DESKTOP-1FDB31H running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/wnagds/Desktop/hdmi_ov5640_2017/hdmi_ov5640_2017.srcs/sources_1/bd/system/ip/system_system_ila_0_1/system_system_ila_0_1_stub.vhdl
-- Design      : system_system_ila_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_system_ila_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    SLOT_0_VID_IO_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    SLOT_0_VID_IO_active_video : in STD_LOGIC;
    SLOT_0_VID_IO_vsync : in STD_LOGIC
  );

end system_system_ila_0_1;

architecture stub of system_system_ila_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,SLOT_0_VID_IO_data[23:0],SLOT_0_VID_IO_active_video,SLOT_0_VID_IO_vsync";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_1579,Vivado 2020.2";
begin
end;