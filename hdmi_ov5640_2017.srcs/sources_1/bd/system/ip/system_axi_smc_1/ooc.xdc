# aclk {FREQ_HZ 1.5e+08 CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1 PHASE 0.000} aclk1 {FREQ_HZ 1e+08 CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0 PHASE 0.000}
# Clock Domain: system_processing_system7_0_0_FCLK_CLK1
create_clock -name aclk -period 6.667 [get_ports aclk]
# Clock Domain: system_processing_system7_0_0_FCLK_CLK0
create_clock -name aclk1 -period 10.000 [get_ports aclk1]
# Generated clocks
