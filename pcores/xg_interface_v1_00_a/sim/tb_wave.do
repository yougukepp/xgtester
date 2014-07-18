# clk_module
add wave -group clk_module \
-label clk_p sim:/tb/uut/clk_module/sys_clk_P \
-label clk_n sim:/tb/uut/clk_module/sys_clk_N \
-label locked sim:/tb/uut/clk_module/locked \
-label clk50m sim:/tb/uut/clk_module/clk50m \
-label clk160m sim:/tb/uut/clk_module/clk160m

# data_path
add wave -group data_path \
-label clk160m sim:/tb/uut/data_path/axi_aclk \
-label resetn sim:/tb/uut/data_path/axi_resetn \
-label s_axis_tdata_0 -hex sim:/tb/uut/data_path/s_axis_tdata_0 \
-label s_axis_tstrb_0 -hex sim:/tb/uut/data_path/s_axis_tstrb_0 \
-label s_axis_tvalid_0 sim:/tb/uut/data_path/s_axis_tvalid_0 \
-label s_axis_tready_0 sim:/tb/uut/data_path/s_axis_tready_0 \
-label s_axis_tlast_0 sim:/tb/uut/data_path/s_axis_tlast_0 \
-label s_axis_tuser_0 -hex sim:/tb/uut/data_path/s_axis_tuser_0 \
-label m_axis_tdata_0 -hex sim:/tb/uut/data_path/m_axis_tdata_0 \
-label m_axis_tstrb_0 -hex sim:/tb/uut/data_path/m_axis_tstrb_0 \
-label m_axis_tvalid_0 sim:/tb/uut/data_path/m_axis_tvalid_0 \
-label m_axis_tready_0 sim:/tb/uut/data_path/m_axis_tready_0 \
-label m_axis_tlast_0 sim:/tb/uut/data_path/m_axis_tlast_0 \
-label m_axis_tuser_0 -hex sim:/tb/uut/data_path/m_axis_tuser_0

# xg_interface
add wave -group xg_interface \
-label mac_conf -hex sim:/tb/uut/xg_interface/C_XGMAC_CONFIGURATION \
-label xaui_conf -hex sim:/tb/uut/xg_interface/C_XAUI_CONFIGURATION \
-label clk160m sim:/tb/uut/xg_interface/axi_aclk \
-label clk156 sim:/tb/uut/xg_interface/clk156 \
-label clk50m sim:/tb/uut/xg_interface/clk50m \
-label resetn sim:/tb/uut/xg_interface/axi_resetn \
-label ready sim:/tb/uut/xg_interface/ready\
-label axis_tx_tdata -hex sim:/tb/uut/xg_interface/axis_tx_tdata \
-label axis_tx_tkeep -hex sim:/tb/uut/xg_interface/axis_tx_tkeep \
-label axis_tx_tvalid sim:/tb/uut/xg_interface/axis_tx_tvalid \
-label axis_tx_tready sim:/tb/uut/xg_interface/axis_tx_tready \
-label axis_tx_tlast sim:/tb/uut/xg_interface/axis_tx_tlast \
-label axis_tx_tuser -hex sim:/tb/uut/xg_interface/axis_tx_tuser \
-label axis_rx_tdata -hex sim:/tb/uut/xg_interface/axis_rx_tdata \
-label axis_rx_tkeep -hex sim:/tb/uut/xg_interface/axis_rx_tkeep \
-label axis_rx_tvalid sim:/tb/uut/xg_interface/axis_rx_tvalid \
-label axis_rx_tready sim:/tb/uut/xg_interface/axis_rx_tready \
-label axis_rx_tlast sim:/tb/uut/xg_interface/axis_rx_tlast \
-label axis_rx_tuser -hex sim:/tb/uut/xg_interface/axis_rx_tuser

# tx_queue
add wave -group tx_queue \
-label clk160m sim:/tb/uut/xg_interface/xgmac/tx_queue/clk \
-label reset sim:/tb/uut/xg_interface/xgmac/tx_queue/reset \
-label tdata -hex sim:/tb/uut/xg_interface/xgmac/tx_queue/tdata \
-label tkeep -hex sim:/tb/uut/xg_interface/xgmac/tx_queue/tstrb \
-label tvalid sim:/tb/uut/xg_interface/xgmac/tx_queue/tvalid \
-label tready sim:/tb/uut/xg_interface/xgmac/tx_queue/tready \
-label tlast sim:/tb/uut/xg_interface/xgmac/tx_queue/tlast \
-label clk156 sim:/tb/uut/xg_interface/xgmac/tx_queue/clk156 \
-label tx_start sim:/tb/uut/xg_interface/xgmac/tx_queue/tx_start \
-label tx_ack sim:/tb/uut/xg_interface/xgmac/tx_queue/tx_ack \
-label tx_data -hex sim:/tb/uut/xg_interface/xgmac/tx_queue/tx_data \
-label tx_data_valid -hex sim:/tb/uut/xg_interface/xgmac/tx_queue/tx_data_valid

# xgmac
add wave -group xgmac_top \
-label configuration -hex sim:/tb/uut/xg_interface/xgmac/configuration_vector \
-label status sim:/tb/uut/xg_interface/xgmac/status_vector \
-label ready sim:/tb/uut/xg_interface/xgmac/ready \
-label tx_clk sim:/tb/uut/xg_interface/xgmac/tx_clk0 \
-label tx_start sim:/tb/uut/xg_interface/xgmac/tx_start \
-label tx_ack sim:/tb/uut/xg_interface/xgmac/tx_ack \
-label tx_data -hex sim:/tb/uut/xg_interface/xgmac/tx_data \
-label tx_data_valid -hex sim:/tb/uut/xg_interface/xgmac/tx_data_valid \
-label xgmii_txd -hex sim:/tb/uut/xg_interface/xgmac/xgmii_txd \
-label xgmii_txc -hex sim:/tb/uut/xg_interface/xgmac/xgmii_txc \
-label xgmii_rxd -hex sim:/tb/uut/xg_interface/xgmac/xgmii_rxd \
-label xgmii_rxc -hex sim:/tb/uut/xg_interface/xgmac/xgmii_rxc \
-label rx_clk sim:/tb/uut/xg_interface/xgmac/rx_clk0 \
-label rx_good_frame sim:/tb/uut/xg_interface/xgmac/rx_good_frame \
-label rx_bad_frame sim:/tb/uut/xg_interface/xgmac/rx_bad_frame \
-label rx_data -hex sim:/tb/uut/xg_interface/xgmac/rx_data \
-label rx_data_valid -hex sim:/tb/uut/xg_interface/xgmac/rx_data_valid

# rx_queue
add wave -group rx_queue \
-label clk156 sim:/tb/uut/xg_interface/xgmac/rx_queue/clk156 \
-label reset sim:/tb/uut/xg_interface/xgmac/rx_queue/reset \
-label rx_good_frame sim:/tb/uut/xg_interface/xgmac/rx_queue/rx_good_frame \
-label rx_bad_frame sim:/tb/uut/xg_interface/xgmac/rx_queue/rx_bad_frame \
-label rx_data -hex sim:/tb/uut/xg_interface/xgmac/rx_queue/rx_data \
-label rx_data_valid -hex sim:/tb/uut/xg_interface/xgmac/rx_queue/rx_data_valid \
-label clk160m sim:/tb/uut/xg_interface/xgmac/rx_queue/clk \
-label tdata -hex sim:/tb/uut/xg_interface/xgmac/rx_queue/tdata \
-label tkeep -hex sim:/tb/uut/xg_interface/xgmac/rx_queue/tstrb \
-label tvalid sim:/tb/uut/xg_interface/xgmac/rx_queue/tvalid \
-label tready sim:/tb/uut/xg_interface/xgmac/rx_queue/tready \
-label tlast sim:/tb/uut/xg_interface/xgmac/rx_queue/tlast

add wave -group xaui_top \
-label clk156 sim:/tb/uut/xg_interface/xaui/clk156 \
-label reset sim:/tb/uut/xg_interface/xaui/reset \
-label configure -hex sim:/tb/uut/xg_interface/xaui/configuration_vector_i \
-label status -hex sim:/tb/uut/xg_interface/xaui/status_vector \
-label sync_status sim:/tb/uut/xg_interface/xaui/sync_status \
-label mgt_tx_ready sim:/tb/uut/xg_interface/xaui/mgt_tx_ready \
-label align_status sim:/tb/uut/xg_interface/xaui/align_status \
-label ready sim:/tb/uut/xg_interface/xaui/ready \
-label xgmii_txd -hex sim:/tb/uut/xg_interface/xaui/xgmii_txd \
-label xgmii_txc -hex sim:/tb/uut/xg_interface/xaui/xgmii_txc \
-label tx_3p sim:/tb/uut/xg_interface/xaui/xaui_tx_l3_p \
-label tx_3n sim:/tb/uut/xg_interface/xaui/xaui_tx_l3_n \
-label tx_2p sim:/tb/uut/xg_interface/xaui/xaui_tx_l2_p \
-label tx_2n sim:/tb/uut/xg_interface/xaui/xaui_tx_l2_n \
-label tx_1p sim:/tb/uut/xg_interface/xaui/xaui_tx_l1_p \
-label tx_1n sim:/tb/uut/xg_interface/xaui/xaui_tx_l1_n \
-label tx_0p sim:/tb/uut/xg_interface/xaui/xaui_tx_l0_p \
-label tx_0n sim:/tb/uut/xg_interface/xaui/xaui_tx_l0_n \
-label rx_3p sim:/tb/uut/xg_interface/xaui/xaui_rx_l3_p \
-label rx_3n sim:/tb/uut/xg_interface/xaui/xaui_rx_l3_n \
-label rx_2p sim:/tb/uut/xg_interface/xaui/xaui_rx_l2_p \
-label rx_2n sim:/tb/uut/xg_interface/xaui/xaui_rx_l2_n \
-label rx_1p sim:/tb/uut/xg_interface/xaui/xaui_rx_l1_p \
-label rx_1n sim:/tb/uut/xg_interface/xaui/xaui_rx_l1_n \
-label rx_0p sim:/tb/uut/xg_interface/xaui/xaui_rx_l0_p \
-label rx_0n sim:/tb/uut/xg_interface/xaui/xaui_rx_l0_n \
-label xgmii_rxd -hex sim:/tb/uut/xg_interface/xaui/xgmii_rxd \
-label xgmii_rxc -hex sim:/tb/uut/xg_interface/xaui/xgmii_rxc
