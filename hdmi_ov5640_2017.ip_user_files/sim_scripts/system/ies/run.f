-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_8 -sv \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_10 -sv \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_14 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/lib_bmg_v1_0_13 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_datamover_v5_1_24 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/4ab6/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_vdma_v6_3_10 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/7860/hdl/axi_vdma_v6_3_rfs.v" \
-endlib
-makelib ies_lib/axi_vdma_v6_3_10 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/7860/hdl/axi_vdma_v6_3_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_vdma_0_0/sim/system_axi_vdma_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ipshared/8797/src/ov5640_capture_data.v" \
  "../../../bd/system/ip/system_ov5640_capture_data_0_0/sim/system_ov5640_capture_data_0_0.v" \
-endlib
-makelib ies_lib/v_vid_in_axi4s_v4_0_9 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_v_vid_in_axi4s_0_0/sim/system_v_vid_in_axi4s_0_0.v" \
  "../../../bd/system/ipshared/31a1/src/asyn_rst_syn.v" \
  "../../../bd/system/ipshared/31a1/src/dvi_encoder.v" \
  "../../../bd/system/ipshared/31a1/src/serializer_10_to_1.v" \
  "../../../bd/system/ipshared/31a1/src/dvi_transmitter_top.v" \
  "../../../bd/system/ip/system_DVI_Transmitter_0_0/sim/system_DVI_Transmitter_0_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/v_tc_v6_1_13 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/v_axi4s_vid_out_v4_0_11 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/1a1e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_v_axi4s_vid_out_0_0/sim/system_v_axi4s_vid_out_0_0.v" \
-endlib
-makelib ies_lib/v_tc_v6_2_1 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/cd2e/hdl/v_tc_v6_2_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_v_tc_0_0/sim/system_v_tc_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib ies_lib/xlconstant_v1_1_7 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_0/sim/bd_8422_one_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_1/sim/bd_8422_psr0_0.vhd" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_2/sim/bd_8422_psr_aclk_0.vhd" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_3/sim/bd_8422_psr_aclk1_0.vhd" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/25b7/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_4/sim/bd_8422_arsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_5/sim/bd_8422_rsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_6/sim/bd_8422_awsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_7/sim/bd_8422_wsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_8/sim/bd_8422_bsw_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_9/sim/bd_8422_s00mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_10/sim/bd_8422_s00tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_11/sim/bd_8422_s00sic_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_12/sim/bd_8422_s00a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/896c/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_13/sim/bd_8422_sarn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_14/sim/bd_8422_srn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_15/sim/bd_8422_s01mmu_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_16/sim/bd_8422_s01tr_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_17/sim/bd_8422_s01sic_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_18/sim/bd_8422_s01a2s_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_19/sim/bd_8422_sawn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_20/sim/bd_8422_swn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_21/sim/bd_8422_sbn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_22/sim/bd_8422_m00s2a_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_23/sim/bd_8422_m00arn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_24/sim/bd_8422_m00rn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_25/sim/bd_8422_m00awn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_26/sim/bd_8422_m00wn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_27/sim/bd_8422_m00bn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/7bd7/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_28/sim/bd_8422_m00e_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_1/bd_0/sim/bd_8422.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_22 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_1/sim/system_axi_smc_1.v" \
  "../../../bd/system/ip/system_system_ila_2_0/bd_0/ip/ip_0/sim/bd_1519_ila_lib_0.v" \
-endlib
-makelib ies_lib/gigantic_mux \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_system_ila_2_0/bd_0/ip/ip_1/bd_1519_g_inst_0_gigantic_mux.v" \
  "../../../bd/system/ip/system_system_ila_2_0/bd_0/ip/ip_1/sim/bd_1519_g_inst_0.v" \
-endlib
-makelib ies_lib/xlconcat_v2_1_4 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_system_ila_2_0/bd_0/ip/ip_2/sim/bd_1519_slot_1_aw_0.v" \
  "../../../bd/system/ip/system_system_ila_2_0/bd_0/ip/ip_3/sim/bd_1519_slot_1_w_0.v" \
  "../../../bd/system/ip/system_system_ila_2_0/bd_0/ip/ip_4/sim/bd_1519_slot_1_b_0.v" \
  "../../../bd/system/ip/system_system_ila_2_0/bd_0/ip/ip_5/sim/bd_1519_slot_1_ar_0.v" \
  "../../../bd/system/ip/system_system_ila_2_0/bd_0/ip/ip_6/sim/bd_1519_slot_1_r_0.v" \
  "../../../bd/system/ip/system_system_ila_2_0/bd_0/sim/bd_1519.v" \
  "../../../bd/system/ip/system_system_ila_2_0/sim/system_system_ila_2_0.v" \
  "../../../bd/system/ip/system_system_ila_0_1/bd_0/ip/ip_0/sim/bd_1579_ila_lib_0.v" \
  "../../../bd/system/ip/system_system_ila_0_1/bd_0/sim/bd_1579.v" \
  "../../../bd/system/ip/system_system_ila_0_1/sim/system_system_ila_0_1.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_21 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_23 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_22 \
  "../../../../hdmi_ov5640_2017.srcs/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
  "../../../bd/system/sim/system.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

