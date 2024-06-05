
#----------------------------HDMI接口--------------------------------------------------
set_property PACKAGE_PIN V16 [get_ports tmds_oen]
set_property IOSTANDARD LVCMOS33 [get_ports tmds_oen]
#n20 t20 v20   n20 v20 t20
#v20 n20 t20  v20 t20 n20
#t20 n20 v20  t20 v20 n20
set_property PACKAGE_PIN N20 [get_ports {TMDS_tmds_data_p[2]}]
set_property PACKAGE_PIN T20 [get_ports {TMDS_tmds_data_p[1]}]
set_property PACKAGE_PIN V20 [get_ports {TMDS_tmds_data_p[0]}]
set_property PACKAGE_PIN N18 [get_ports TMDS_tmds_clk_p]

#----------------------------摄像头接口-------------------------------------------------

#72M
create_clock -period 13.888 -name cam_pclk [get_ports cam_pclk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cam_pclk_IBUF]
set_property PACKAGE_PIN T11 [get_ports cam_pclk]
set_property IOSTANDARD LVCMOS33 [get_ports cam_pclk]
set_property PACKAGE_PIN B20 [get_ports cam_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports cam_rst_n]

set_property PACKAGE_PIN T15 [get_ports {sccb_tri_io[0]}]
set_property PACKAGE_PIN T16 [get_ports {sccb_tri_io[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sccb_tri_io[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sccb_tri_io[0]}]
set_property PULLUP true [get_ports {sccb_tri_io[0]}]
set_property PULLUP true [get_ports {sccb_tri_io[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports cam_href]
set_property IOSTANDARD LVCMOS33 [get_ports cam_vsync]
set_property PACKAGE_PIN A20 [get_ports cam_href]
set_property PACKAGE_PIN B19 [get_ports cam_vsync]

set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[0]}]
set_property PACKAGE_PIN V18 [get_ports {cam_data[7]}]
set_property PACKAGE_PIN V17 [get_ports {cam_data[6]}]
set_property PACKAGE_PIN U12 [get_ports {cam_data[5]}]
set_property PACKAGE_PIN W13 [get_ports {cam_data[4]}]
set_property PACKAGE_PIN T14 [get_ports {cam_data[3]}]
set_property PACKAGE_PIN U13 [get_ports {cam_data[2]}]
set_property PACKAGE_PIN V13 [get_ports {cam_data[1]}]
set_property PACKAGE_PIN T10 [get_ports {cam_data[0]}]









set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
