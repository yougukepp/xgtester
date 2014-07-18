////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.87xd
//  \   \         Application: netgen
//  /   /         Filename: xaui.v
// /___/   /\     Timestamp: Wed Nov 20 19:10:09 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog E:/workspace/xaui/tmp/_cg/xaui.ngc E:/workspace/xaui/tmp/_cg/xaui.v 
// Device	: 6vlx240tff1156-1
// Input file	: E:/workspace/xaui/tmp/_cg/xaui.ngc
// Output file	: E:/workspace/xaui/tmp/_cg/xaui.v
// # of Modules	: 1
// Design Name	: xaui
// Xilinx        : E:\Xilinx\13.4\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module xaui (
  align_status, mgt_enchansync, reset, usrclk, mgt_powerdown, mgt_loopback, mgt_rxlock, mgt_tx_reset, mgt_txcharisk, mgt_syncok, mgt_rxdata, xgmii_txc
, mgt_enable_align, xgmii_txd, status_vector, mgt_rxcharisk, configuration_vector, mgt_codevalid, mgt_codecomma, sync_status, xgmii_rxc, xgmii_rxd, 
mgt_txdata, mgt_rx_reset, signal_detect
)/* synthesis syn_black_box syn_noprune=1 */;
  output align_status;
  output mgt_enchansync;
  input reset;
  input usrclk;
  output mgt_powerdown;
  output mgt_loopback;
  input [3 : 0] mgt_rxlock;
  input [3 : 0] mgt_tx_reset;
  output [7 : 0] mgt_txcharisk;
  input [3 : 0] mgt_syncok;
  input [63 : 0] mgt_rxdata;
  input [7 : 0] xgmii_txc;
  output [3 : 0] mgt_enable_align;
  input [63 : 0] xgmii_txd;
  output [7 : 0] status_vector;
  input [7 : 0] mgt_rxcharisk;
  input [6 : 0] configuration_vector;
  input [7 : 0] mgt_codevalid;
  input [7 : 0] mgt_codecomma;
  output [3 : 0] sync_status;
  output [7 : 0] xgmii_rxc;
  output [63 : 0] xgmii_rxd;
  output [63 : 0] mgt_txdata;
  input [3 : 0] mgt_rx_reset;
  input [3 : 0] signal_detect;
  
  // synthesis translate_off
  
  wire N0;
  wire N1;
  wire \NlwRenamedSig_OI_status_vector[7] ;
  wire \NlwRenamedSig_OI_status_vector[1] ;
  wire \NlwRenamedSig_OI_status_vector[0] ;
  wire NlwRenamedSig_OI_align_status;
  wire \BU2/N109 ;
  wire \BU2/N108 ;
  wire \BU2/N106 ;
  wire \BU2/N104 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT152 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT322 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT191_1190 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT311_1189 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT222 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1511 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT3211 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT281_1185 ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_82_OUT<5> ;
  wire \BU2/N102 ;
  wire \BU2/N100 ;
  wire \BU2/N98 ;
  wire \BU2/N96 ;
  wire \BU2/N94 ;
  wire \BU2/N92 ;
  wire \BU2/U0/transmitter/recoder/_n0136<4>1 ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/q_det_glue_ce_1176 ;
  wire \BU2/N90 ;
  wire \BU2/N88 ;
  wire \BU2/N86 ;
  wire \BU2/N84 ;
  wire \BU2/N82 ;
  wire \BU2/N80 ;
  wire \BU2/N78 ;
  wire \BU2/N76 ;
  wire \BU2/N74 ;
  wire \BU2/U0/receiver/recoder/lane_terminate_0_rstpot_1166 ;
  wire \BU2/U0/receiver/recoder/lane_terminate_1_rstpot_1165 ;
  wire \BU2/U0/receiver/recoder/lane_terminate_2_rstpot_1164 ;
  wire \BU2/U0/receiver/recoder/lane_terminate_3_rstpot_1163 ;
  wire \BU2/U0/receiver/recoder/lane_terminate_4_rstpot_1162 ;
  wire \BU2/U0/receiver/recoder/lane_terminate_5_rstpot_1161 ;
  wire \BU2/U0/receiver/recoder/lane_terminate_6_rstpot_1160 ;
  wire \BU2/U0/receiver/recoder/lane_terminate_7_rstpot_1159 ;
  wire \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/state_rstpot_1158 ;
  wire \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/enchansync_rstpot_1157 ;
  wire \BU2/U0/usrclk_reset_rstpot_1156 ;
  wire \BU2/U0/clear_local_fault_edge_1155 ;
  wire \BU2/U0/clear_local_fault_edge_rstpot_1154 ;
  wire \BU2/U0/clear_aligned_edge_1153 ;
  wire \BU2/U0/clear_aligned_edge_rstpot_1152 ;
  wire \BU2/U0/transmitter/state_machine/next_ifg_is_a_glue_rst_1151 ;
  wire \BU2/U0/transmitter/align/extra_a_glue_set_1150 ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/q_det_glue_set_1149 ;
  wire \BU2/U0/transmitter/recoder/txc_out_0_glue_rst_1148 ;
  wire \BU2/U0/transmitter/recoder/txc_out_1_glue_rst_1147 ;
  wire \BU2/U0/transmitter/recoder/txc_out_2_glue_rst_1146 ;
  wire \BU2/U0/transmitter/recoder/txc_out_3_glue_rst_1145 ;
  wire \BU2/U0/transmitter/recoder/txc_out_4_glue_rst_1144 ;
  wire \BU2/U0/transmitter/recoder/txc_out_5_glue_rst_1143 ;
  wire \BU2/U0/transmitter/recoder/txc_out_6_glue_rst_1142 ;
  wire \BU2/U0/transmitter/recoder/txc_out_7_glue_rst_1141 ;
  wire \BU2/U0/tx_local_fault_glue_set_1140 ;
  wire \BU2/U0/rx_local_fault_glue_set_1139 ;
  wire \BU2/U0/aligned_sticky_glue_set_1138 ;
  wire \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[7]_equal_136_o_0 ;
  wire \BU2/N72 ;
  wire \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[15]_equal_137_o_0 ;
  wire \BU2/N70 ;
  wire \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[23]_equal_138_o_0 ;
  wire \BU2/N68 ;
  wire \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[31]_equal_139_o_0 ;
  wire \BU2/N66 ;
  wire \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[39]_equal_140_o_0 ;
  wire \BU2/N64 ;
  wire \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[47]_equal_141_o_0 ;
  wire \BU2/N62 ;
  wire \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[55]_equal_142_o_0 ;
  wire \BU2/N60 ;
  wire \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[63]_equal_143_o_0 ;
  wire \BU2/N58 ;
  wire \BU2/N56 ;
  wire \BU2/N54 ;
  wire \BU2/N52 ;
  wire \BU2/N50 ;
  wire \BU2/U0/receiver/recoder/error_lane<4><4>1 ;
  wire \BU2/U0/receiver/recoder/error_lane<7><7>1_1116 ;
  wire \BU2/N48 ;
  wire \BU2/U0/receiver/recoder/error_lane<2><2>2_1110 ;
  wire \BU2/U0/receiver/recoder/error_lane<2><2>1_1109 ;
  wire \BU2/U0/receiver/recoder/error_lane<0><0>1_1107 ;
  wire \BU2/N46 ;
  wire \BU2/N44 ;
  wire \BU2/N42 ;
  wire \BU2/N40 ;
  wire \BU2/N38 ;
  wire \BU2/N36 ;
  wire \BU2/N34 ;
  wire \BU2/N32 ;
  wire \BU2/U0/receiver/code_error<0>2_1097 ;
  wire \BU2/U0/receiver/code_error<0>1_1096 ;
  wire \BU2/U0/receiver/code_error<1>2_1095 ;
  wire \BU2/U0/receiver/code_error<1>1_1094 ;
  wire \BU2/U0/receiver/code_error<2>2_1093 ;
  wire \BU2/U0/receiver/code_error<2>1_1092 ;
  wire \BU2/U0/receiver/code_error<3>2_1091 ;
  wire \BU2/U0/receiver/code_error<3>1_1090 ;
  wire \BU2/U0/receiver/code_error<4>2_1089 ;
  wire \BU2/U0/receiver/code_error<4>1_1088 ;
  wire \BU2/U0/receiver/code_error<5>2_1087 ;
  wire \BU2/U0/receiver/code_error<5>1_1086 ;
  wire \BU2/U0/receiver/code_error<6>2_1085 ;
  wire \BU2/U0/receiver/code_error<6>1_1084 ;
  wire \BU2/U0/receiver/code_error<7>2_1083 ;
  wire \BU2/U0/receiver/code_error<7>1_1082 ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o1_1081 ;
  wire \BU2/N28 ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o1_1079 ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o1_1078 ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o1_1077 ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o1_1076 ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o1_1075 ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o1_1074 ;
  wire \BU2/U0/transmitter/state_machine/Mmux_p_state_comb.state_temp2 ;
  wire \BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<0> ;
  wire \BU2/U0/transmitter/state_machine/next_ifg_is_a_1071 ;
  wire \BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<0>2 ;
  wire \BU2/N8 ;
  wire \BU2/U0/transmitter/align/extra_a_1066 ;
  wire \BU2/N6 ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/q_det_PWR_11_o_MUX_77_o2_1062 ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/q_det_PWR_11_o_MUX_77_o1_1061 ;
  wire \BU2/U0/transmitter/is_terminate<0>7_1059 ;
  wire \BU2/U0/transmitter/is_terminate<0>6_1058 ;
  wire \BU2/U0/transmitter/is_terminate<0>5_1057 ;
  wire \BU2/U0/transmitter/is_terminate<0>4_1056 ;
  wire \BU2/U0/transmitter/is_terminate<0>3_1055 ;
  wire \BU2/U0/transmitter/is_terminate<0>2_1054 ;
  wire \BU2/U0/transmitter/is_terminate<0>1_1053 ;
  wire \BU2/U0/transmitter/is_terminate<1>7_1051 ;
  wire \BU2/U0/transmitter/is_terminate<1>6_1050 ;
  wire \BU2/U0/transmitter/is_terminate<1>5_1049 ;
  wire \BU2/U0/transmitter/is_terminate<1>4_1048 ;
  wire \BU2/U0/transmitter/is_terminate<1>3_1047 ;
  wire \BU2/U0/transmitter/is_terminate<1>2_1046 ;
  wire \BU2/U0/transmitter/is_terminate<1>1_1045 ;
  wire \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_70_o_1037 ;
  wire \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_74_o_1036 ;
  wire \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_72_o_1035 ;
  wire \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o ;
  wire \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_76_o_1033 ;
  wire \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o ;
  wire \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o ;
  wire \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o ;
  wire \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o2 ;
  wire \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o1 ;
  wire \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o1 ;
  wire \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o1 ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/is_terminate_GND_17_o_AND_21_o_1010 ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/is_terminate_GND_17_o_AND_21_o_1008 ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/GND_17_o_reduce_nor_14_o_1007 ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/is_terminate_GND_17_o_AND_21_o_1006 ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/is_terminate_GND_17_o_AND_21_o_1004 ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/is_terminate_GND_17_o_AND_21_o_1002 ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/is_terminate_GND_17_o_AND_21_o_1000 ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/is_terminate_GND_17_o_AND_21_o_998 ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/is_terminate_GND_17_o_AND_21_o_996 ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/q_det_993 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT163 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT332 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT121_987 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT110 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT271_985 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT261_984 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT115 ;
  wire \BU2/U0/transmitter/recoder/_n0142 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT293 ;
  wire \BU2/U0/transmitter/recoder/_n0449 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT102 ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_82_OUT<7> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_82_OUT<6> ;
  wire \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT21 ;
  wire \BU2/U0/receiver/recoder/code_error_delay_1_922 ;
  wire \BU2/U0/receiver/recoder/code_error_delay_3_920 ;
  wire \BU2/U0/receiver/recoder/code_error_delay_2_918 ;
  wire \BU2/U0/receiver/recoder/code_error_delay_0_916 ;
  wire \BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<0> ;
  wire \BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<1> ;
  wire \BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<2> ;
  wire \BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<3> ;
  wire \BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<4> ;
  wire \BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<5> ;
  wire \BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<6> ;
  wire \BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<7> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<0> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<1> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<2> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<3> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<4> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<5> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<6> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<7> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<8> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<9> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<10> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<11> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<12> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<13> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<14> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<15> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<16> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<17> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<18> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<19> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<20> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<21> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<22> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<23> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<24> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<25> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<26> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<27> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<28> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<29> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<30> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<31> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<32> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<33> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<34> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<35> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<36> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<37> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<38> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<39> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<40> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<41> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<42> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<43> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<44> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<45> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<46> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<47> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<48> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<49> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<50> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<51> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<52> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<53> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<54> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<55> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<56> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<57> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<58> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<59> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<60> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<61> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<62> ;
  wire \BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<63> ;
  wire \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a[0]_got_a[3]_AND_40_o ;
  wire \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a[4]_got_a[7]_AND_43_o ;
  wire \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/state_758 ;
  wire \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/Mram_got_a[3]_GND_19_o_Mux_10_o ;
  wire \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/deskew_error_sliced_755 ;
  wire \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/Mram_got_a[7]_GND_19_o_Mux_11_o ;
  wire \BU2/U0/receiver/sync_status_753 ;
  wire \BU2/U0/receiver/sync_status_int ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txc_out_717 ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<0> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<1> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<2> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<3> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<4> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<5> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<6> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<7> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txc_out_700 ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<0> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<1> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<2> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<3> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<4> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<5> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<6> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<7> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txc_out_683 ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<0> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<1> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<2> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<3> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<4> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<5> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<6> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<7> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txc_out_666 ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<0> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<1> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<2> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<3> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<4> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<5> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<6> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<7> ;
  wire \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txc_out_649 ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<0> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<1> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<2> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<3> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<4> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<5> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<6> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<7> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txc_out_632 ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<0> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<1> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<2> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<3> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<4> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<5> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<6> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<7> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txc_out_615 ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<0> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<1> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<2> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<3> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<4> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<5> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<6> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<7> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txc_out_598 ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<0> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<1> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<2> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<3> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<4> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<5> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<6> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<7> ;
  wire \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ;
  wire \BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<0>1_580 ;
  wire \BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<1> ;
  wire \BU2/U0/transmitter/state_machine/is_idle[1]_is_q[1]_AND_11_o_0 ;
  wire \BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<2> ;
  wire \BU2/U0/transmitter/k_r_prbs_i/prbs[5]_prbs[6]_XOR_33_o ;
  wire \BU2/U0/transmitter/k_r_prbs_i/prbs[6]_prbs[7]_XOR_34_o ;
  wire \BU2/U0/transmitter/align/prbs[6]_prbs[7]_XOR_17_o ;
  wire \BU2/U0/transmitter/align/n0020_inv ;
  wire \BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<0> ;
  wire \BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<1> ;
  wire \BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<2> ;
  wire \BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<3> ;
  wire \BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<4> ;
  wire \BU2/U0/transmitter/align/_n0051_inv ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<7> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<8> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<9> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<10> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<11> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<12> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<13> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<14> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<15> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<16> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<17> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<18> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<19> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<20> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<21> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<22> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<23> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<24> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<25> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<26> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<27> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<28> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<29> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<30> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<31> ;
  wire \BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<0> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<1> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<2> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<3> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<4> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<5> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<6> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<7> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<8> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<9> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<10> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<11> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<12> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<13> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<14> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<15> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<16> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<17> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<18> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<19> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<20> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<21> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<22> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<23> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<24> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<25> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<26> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<27> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<28> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<29> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<30> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<31> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<32> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<33> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<34> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<35> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<36> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<37> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<38> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<39> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<40> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<41> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<42> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<43> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<44> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<45> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<46> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<47> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<48> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<49> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<50> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<51> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<52> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<53> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<54> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<55> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<56> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<57> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<58> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<59> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<60> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<61> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<62> ;
  wire \BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<63> ;
  wire \BU2/U0/usrclk_reset_pipe_333 ;
  wire \BU2/U0/p_clear_local_fault_edge.last_value_332 ;
  wire \BU2/U0/clear_local_fault_331 ;
  wire \BU2/U0/p_clear_aligned_edge.last_value_330 ;
  wire \BU2/U0/usrclk_reset_329 ;
  wire \BU2/U0/clear_aligned_328 ;
  wire \BU2/soft_reset ;
  wire [5 : 2] NlwRenamedSignal_status_vector;
  wire [63 : 0] xgmii_txd_2;
  wire [7 : 0] xgmii_txc_3;
  wire [63 : 0] xgmii_rxd_4;
  wire [7 : 0] xgmii_rxc_5;
  wire [63 : 0] mgt_txdata_6;
  wire [7 : 0] mgt_txcharisk_7;
  wire [63 : 0] mgt_rxdata_8;
  wire [7 : 0] mgt_rxcharisk_9;
  wire [7 : 0] mgt_codevalid_10;
  wire [7 : 0] mgt_codecomma_11;
  wire [0 : 0] NlwRenamedSig_OI_mgt_enable_align;
  wire [3 : 0] mgt_syncok_12;
  wire [3 : 0] mgt_rxlock_13;
  wire [3 : 0] mgt_tx_reset_14;
  wire [3 : 0] mgt_rx_reset_15;
  wire [3 : 0] signal_detect_16;
  wire [6 : 2] configuration_vector_17;
  wire [1 : 0] NlwRenamedSignal_configuration_vector;
  wire [7 : 7] \BU2/U0/receiver/recoder/error_lane<7> ;
  wire [5 : 5] \BU2/U0/receiver/recoder/error_lane<5> ;
  wire [6 : 6] \BU2/U0/receiver/recoder/error_lane<6> ;
  wire [1 : 1] \BU2/U0/receiver/recoder/error_lane<1> ;
  wire [2 : 2] \BU2/U0/receiver/recoder/error_lane<2> ;
  wire [0 : 0] \BU2/U0/receiver/recoder/error_lane<0> ;
  wire [1 : 0] \BU2/U0/transmitter/a_due ;
  wire [1 : 0] \BU2/U0/transmitter/is_terminate ;
  wire [2 : 1] \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_mux_105_OUT ;
  wire [7 : 0] \BU2/U0/receiver/recoder/lane_terminate ;
  wire [7 : 0] \BU2/U0/receiver/recoder/error_lane ;
  wire [7 : 0] \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a ;
  wire [1 : 0] \BU2/U0/transmitter/tx_code_k ;
  wire [1 : 0] \BU2/U0/transmitter/tx_code_q ;
  wire [1 : 0] \BU2/U0/transmitter/tx_code_r ;
  wire [1 : 0] \BU2/U0/transmitter/tx_code_a ;
  wire [7 : 0] \BU2/U0/receiver/recoder/code_error_pipe ;
  wire [7 : 0] \BU2/U0/receiver/code_error ;
  wire [63 : 0] \BU2/U0/receiver/recoder/rxd_pipe ;
  wire [7 : 0] \BU2/U0/receiver/recoder/rxc_pipe ;
  wire [3 : 0] \BU2/U0/receiver/recoder/lane_term_pipe ;
  wire [31 : 0] \BU2/U0/receiver/recoder/rxd_half_pipe ;
  wire [3 : 0] \BU2/U0/receiver/recoder/rxc_half_pipe ;
  wire [1 : 0] \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_align ;
  wire [0 : 0] \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/deskew_error ;
  wire [8 : 0] \BU2/U0/transmitter/idle_detect_i0/comp ;
  wire [7 : 0] \BU2/U0/transmitter/idle_detect_i0/muxcyo ;
  wire [8 : 0] \BU2/U0/transmitter/idle_detect_i1/comp ;
  wire [7 : 0] \BU2/U0/transmitter/idle_detect_i1/muxcyo ;
  wire [2 : 0] \BU2/U0/transmitter/state_machine/state_1 ;
  wire [2 : 0] \BU2/U0/transmitter/state_machine/state_0 ;
  wire [2 : 0] \BU2/U0/transmitter/state_machine/p_state_comb.state_temp ;
  wire [8 : 1] \BU2/U0/transmitter/k_r_prbs_i/prbs ;
  wire [7 : 1] \BU2/U0/transmitter/align/prbs ;
  wire [4 : 0] \BU2/U0/transmitter/align/count ;
  wire [31 : 7] \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg ;
  wire [63 : 0] \BU2/U0/transmitter/txd_pipe ;
  wire [7 : 0] \BU2/U0/transmitter/txc_pipe ;
  wire [1 : 0] \BU2/U0/transmitter/tx_is_q ;
  wire [1 : 0] \BU2/U0/transmitter/tx_is_idle ;
  wire [1 : 0] \BU2/U0/transmitter/tx_is_idle_comb ;
  wire [1 : 0] \BU2/U0/transmitter/tx_is_q_comb ;
  wire [2 : 0] \BU2/U0/transmitter/seq_detect_i1/comp ;
  wire [1 : 0] \BU2/U0/transmitter/seq_detect_i1/muxcyo ;
  wire [2 : 0] \BU2/U0/transmitter/seq_detect_i0/comp ;
  wire [1 : 0] \BU2/U0/transmitter/seq_detect_i0/muxcyo ;
  assign
    align_status = NlwRenamedSig_OI_align_status,
    mgt_rxlock_13[3] = mgt_rxlock[3],
    mgt_rxlock_13[2] = mgt_rxlock[2],
    mgt_rxlock_13[1] = mgt_rxlock[1],
    mgt_rxlock_13[0] = mgt_rxlock[0],
    mgt_tx_reset_14[3] = mgt_tx_reset[3],
    mgt_tx_reset_14[2] = mgt_tx_reset[2],
    mgt_tx_reset_14[1] = mgt_tx_reset[1],
    mgt_tx_reset_14[0] = mgt_tx_reset[0],
    mgt_txcharisk[7] = mgt_txcharisk_7[7],
    mgt_txcharisk[6] = mgt_txcharisk_7[6],
    mgt_txcharisk[5] = mgt_txcharisk_7[5],
    mgt_txcharisk[4] = mgt_txcharisk_7[4],
    mgt_txcharisk[3] = mgt_txcharisk_7[3],
    mgt_txcharisk[2] = mgt_txcharisk_7[2],
    mgt_txcharisk[1] = mgt_txcharisk_7[1],
    mgt_txcharisk[0] = mgt_txcharisk_7[0],
    mgt_syncok_12[3] = mgt_syncok[3],
    mgt_syncok_12[2] = mgt_syncok[2],
    mgt_syncok_12[1] = mgt_syncok[1],
    mgt_syncok_12[0] = mgt_syncok[0],
    mgt_rxdata_8[63] = mgt_rxdata[63],
    mgt_rxdata_8[62] = mgt_rxdata[62],
    mgt_rxdata_8[61] = mgt_rxdata[61],
    mgt_rxdata_8[60] = mgt_rxdata[60],
    mgt_rxdata_8[59] = mgt_rxdata[59],
    mgt_rxdata_8[58] = mgt_rxdata[58],
    mgt_rxdata_8[57] = mgt_rxdata[57],
    mgt_rxdata_8[56] = mgt_rxdata[56],
    mgt_rxdata_8[55] = mgt_rxdata[55],
    mgt_rxdata_8[54] = mgt_rxdata[54],
    mgt_rxdata_8[53] = mgt_rxdata[53],
    mgt_rxdata_8[52] = mgt_rxdata[52],
    mgt_rxdata_8[51] = mgt_rxdata[51],
    mgt_rxdata_8[50] = mgt_rxdata[50],
    mgt_rxdata_8[49] = mgt_rxdata[49],
    mgt_rxdata_8[48] = mgt_rxdata[48],
    mgt_rxdata_8[47] = mgt_rxdata[47],
    mgt_rxdata_8[46] = mgt_rxdata[46],
    mgt_rxdata_8[45] = mgt_rxdata[45],
    mgt_rxdata_8[44] = mgt_rxdata[44],
    mgt_rxdata_8[43] = mgt_rxdata[43],
    mgt_rxdata_8[42] = mgt_rxdata[42],
    mgt_rxdata_8[41] = mgt_rxdata[41],
    mgt_rxdata_8[40] = mgt_rxdata[40],
    mgt_rxdata_8[39] = mgt_rxdata[39],
    mgt_rxdata_8[38] = mgt_rxdata[38],
    mgt_rxdata_8[37] = mgt_rxdata[37],
    mgt_rxdata_8[36] = mgt_rxdata[36],
    mgt_rxdata_8[35] = mgt_rxdata[35],
    mgt_rxdata_8[34] = mgt_rxdata[34],
    mgt_rxdata_8[33] = mgt_rxdata[33],
    mgt_rxdata_8[32] = mgt_rxdata[32],
    mgt_rxdata_8[31] = mgt_rxdata[31],
    mgt_rxdata_8[30] = mgt_rxdata[30],
    mgt_rxdata_8[29] = mgt_rxdata[29],
    mgt_rxdata_8[28] = mgt_rxdata[28],
    mgt_rxdata_8[27] = mgt_rxdata[27],
    mgt_rxdata_8[26] = mgt_rxdata[26],
    mgt_rxdata_8[25] = mgt_rxdata[25],
    mgt_rxdata_8[24] = mgt_rxdata[24],
    mgt_rxdata_8[23] = mgt_rxdata[23],
    mgt_rxdata_8[22] = mgt_rxdata[22],
    mgt_rxdata_8[21] = mgt_rxdata[21],
    mgt_rxdata_8[20] = mgt_rxdata[20],
    mgt_rxdata_8[19] = mgt_rxdata[19],
    mgt_rxdata_8[18] = mgt_rxdata[18],
    mgt_rxdata_8[17] = mgt_rxdata[17],
    mgt_rxdata_8[16] = mgt_rxdata[16],
    mgt_rxdata_8[15] = mgt_rxdata[15],
    mgt_rxdata_8[14] = mgt_rxdata[14],
    mgt_rxdata_8[13] = mgt_rxdata[13],
    mgt_rxdata_8[12] = mgt_rxdata[12],
    mgt_rxdata_8[11] = mgt_rxdata[11],
    mgt_rxdata_8[10] = mgt_rxdata[10],
    mgt_rxdata_8[9] = mgt_rxdata[9],
    mgt_rxdata_8[8] = mgt_rxdata[8],
    mgt_rxdata_8[7] = mgt_rxdata[7],
    mgt_rxdata_8[6] = mgt_rxdata[6],
    mgt_rxdata_8[5] = mgt_rxdata[5],
    mgt_rxdata_8[4] = mgt_rxdata[4],
    mgt_rxdata_8[3] = mgt_rxdata[3],
    mgt_rxdata_8[2] = mgt_rxdata[2],
    mgt_rxdata_8[1] = mgt_rxdata[1],
    mgt_rxdata_8[0] = mgt_rxdata[0],
    xgmii_txc_3[7] = xgmii_txc[7],
    xgmii_txc_3[6] = xgmii_txc[6],
    xgmii_txc_3[5] = xgmii_txc[5],
    xgmii_txc_3[4] = xgmii_txc[4],
    xgmii_txc_3[3] = xgmii_txc[3],
    xgmii_txc_3[2] = xgmii_txc[2],
    xgmii_txc_3[1] = xgmii_txc[1],
    xgmii_txc_3[0] = xgmii_txc[0],
    mgt_enable_align[3] = NlwRenamedSig_OI_mgt_enable_align[0],
    mgt_enable_align[2] = NlwRenamedSig_OI_mgt_enable_align[0],
    mgt_enable_align[1] = NlwRenamedSig_OI_mgt_enable_align[0],
    mgt_enable_align[0] = NlwRenamedSig_OI_mgt_enable_align[0],
    xgmii_txd_2[63] = xgmii_txd[63],
    xgmii_txd_2[62] = xgmii_txd[62],
    xgmii_txd_2[61] = xgmii_txd[61],
    xgmii_txd_2[60] = xgmii_txd[60],
    xgmii_txd_2[59] = xgmii_txd[59],
    xgmii_txd_2[58] = xgmii_txd[58],
    xgmii_txd_2[57] = xgmii_txd[57],
    xgmii_txd_2[56] = xgmii_txd[56],
    xgmii_txd_2[55] = xgmii_txd[55],
    xgmii_txd_2[54] = xgmii_txd[54],
    xgmii_txd_2[53] = xgmii_txd[53],
    xgmii_txd_2[52] = xgmii_txd[52],
    xgmii_txd_2[51] = xgmii_txd[51],
    xgmii_txd_2[50] = xgmii_txd[50],
    xgmii_txd_2[49] = xgmii_txd[49],
    xgmii_txd_2[48] = xgmii_txd[48],
    xgmii_txd_2[47] = xgmii_txd[47],
    xgmii_txd_2[46] = xgmii_txd[46],
    xgmii_txd_2[45] = xgmii_txd[45],
    xgmii_txd_2[44] = xgmii_txd[44],
    xgmii_txd_2[43] = xgmii_txd[43],
    xgmii_txd_2[42] = xgmii_txd[42],
    xgmii_txd_2[41] = xgmii_txd[41],
    xgmii_txd_2[40] = xgmii_txd[40],
    xgmii_txd_2[39] = xgmii_txd[39],
    xgmii_txd_2[38] = xgmii_txd[38],
    xgmii_txd_2[37] = xgmii_txd[37],
    xgmii_txd_2[36] = xgmii_txd[36],
    xgmii_txd_2[35] = xgmii_txd[35],
    xgmii_txd_2[34] = xgmii_txd[34],
    xgmii_txd_2[33] = xgmii_txd[33],
    xgmii_txd_2[32] = xgmii_txd[32],
    xgmii_txd_2[31] = xgmii_txd[31],
    xgmii_txd_2[30] = xgmii_txd[30],
    xgmii_txd_2[29] = xgmii_txd[29],
    xgmii_txd_2[28] = xgmii_txd[28],
    xgmii_txd_2[27] = xgmii_txd[27],
    xgmii_txd_2[26] = xgmii_txd[26],
    xgmii_txd_2[25] = xgmii_txd[25],
    xgmii_txd_2[24] = xgmii_txd[24],
    xgmii_txd_2[23] = xgmii_txd[23],
    xgmii_txd_2[22] = xgmii_txd[22],
    xgmii_txd_2[21] = xgmii_txd[21],
    xgmii_txd_2[20] = xgmii_txd[20],
    xgmii_txd_2[19] = xgmii_txd[19],
    xgmii_txd_2[18] = xgmii_txd[18],
    xgmii_txd_2[17] = xgmii_txd[17],
    xgmii_txd_2[16] = xgmii_txd[16],
    xgmii_txd_2[15] = xgmii_txd[15],
    xgmii_txd_2[14] = xgmii_txd[14],
    xgmii_txd_2[13] = xgmii_txd[13],
    xgmii_txd_2[12] = xgmii_txd[12],
    xgmii_txd_2[11] = xgmii_txd[11],
    xgmii_txd_2[10] = xgmii_txd[10],
    xgmii_txd_2[9] = xgmii_txd[9],
    xgmii_txd_2[8] = xgmii_txd[8],
    xgmii_txd_2[7] = xgmii_txd[7],
    xgmii_txd_2[6] = xgmii_txd[6],
    xgmii_txd_2[5] = xgmii_txd[5],
    xgmii_txd_2[4] = xgmii_txd[4],
    xgmii_txd_2[3] = xgmii_txd[3],
    xgmii_txd_2[2] = xgmii_txd[2],
    xgmii_txd_2[1] = xgmii_txd[1],
    xgmii_txd_2[0] = xgmii_txd[0],
    status_vector[7] = \NlwRenamedSig_OI_status_vector[7] ,
    status_vector[6] = NlwRenamedSig_OI_align_status,
    status_vector[5] = NlwRenamedSignal_status_vector[5],
    status_vector[4] = NlwRenamedSignal_status_vector[4],
    status_vector[3] = NlwRenamedSignal_status_vector[3],
    status_vector[2] = NlwRenamedSignal_status_vector[2],
    status_vector[1] = \NlwRenamedSig_OI_status_vector[1] ,
    status_vector[0] = \NlwRenamedSig_OI_status_vector[0] ,
    mgt_rxcharisk_9[7] = mgt_rxcharisk[7],
    mgt_rxcharisk_9[6] = mgt_rxcharisk[6],
    mgt_rxcharisk_9[5] = mgt_rxcharisk[5],
    mgt_rxcharisk_9[4] = mgt_rxcharisk[4],
    mgt_rxcharisk_9[3] = mgt_rxcharisk[3],
    mgt_rxcharisk_9[2] = mgt_rxcharisk[2],
    mgt_rxcharisk_9[1] = mgt_rxcharisk[1],
    mgt_rxcharisk_9[0] = mgt_rxcharisk[0],
    configuration_vector_17[6] = configuration_vector[6],
    configuration_vector_17[5] = configuration_vector[5],
    configuration_vector_17[4] = configuration_vector[4],
    configuration_vector_17[3] = configuration_vector[3],
    configuration_vector_17[2] = configuration_vector[2],
    NlwRenamedSignal_configuration_vector[1] = configuration_vector[1],
    NlwRenamedSignal_configuration_vector[0] = configuration_vector[0],
    mgt_codevalid_10[7] = mgt_codevalid[7],
    mgt_codevalid_10[6] = mgt_codevalid[6],
    mgt_codevalid_10[5] = mgt_codevalid[5],
    mgt_codevalid_10[4] = mgt_codevalid[4],
    mgt_codevalid_10[3] = mgt_codevalid[3],
    mgt_codevalid_10[2] = mgt_codevalid[2],
    mgt_codevalid_10[1] = mgt_codevalid[1],
    mgt_codevalid_10[0] = mgt_codevalid[0],
    mgt_powerdown = NlwRenamedSignal_configuration_vector[1],
    mgt_codecomma_11[7] = mgt_codecomma[7],
    mgt_codecomma_11[6] = mgt_codecomma[6],
    mgt_codecomma_11[5] = mgt_codecomma[5],
    mgt_codecomma_11[4] = mgt_codecomma[4],
    mgt_codecomma_11[3] = mgt_codecomma[3],
    mgt_codecomma_11[2] = mgt_codecomma[2],
    mgt_codecomma_11[1] = mgt_codecomma[1],
    mgt_codecomma_11[0] = mgt_codecomma[0],
    sync_status[3] = NlwRenamedSignal_status_vector[5],
    sync_status[2] = NlwRenamedSignal_status_vector[4],
    sync_status[1] = NlwRenamedSignal_status_vector[3],
    sync_status[0] = NlwRenamedSignal_status_vector[2],
    xgmii_rxc[7] = xgmii_rxc_5[7],
    xgmii_rxc[6] = xgmii_rxc_5[6],
    xgmii_rxc[5] = xgmii_rxc_5[5],
    xgmii_rxc[4] = xgmii_rxc_5[4],
    xgmii_rxc[3] = xgmii_rxc_5[3],
    xgmii_rxc[2] = xgmii_rxc_5[2],
    xgmii_rxc[1] = xgmii_rxc_5[1],
    xgmii_rxc[0] = xgmii_rxc_5[0],
    xgmii_rxd[63] = xgmii_rxd_4[63],
    xgmii_rxd[62] = xgmii_rxd_4[62],
    xgmii_rxd[61] = xgmii_rxd_4[61],
    xgmii_rxd[60] = xgmii_rxd_4[60],
    xgmii_rxd[59] = xgmii_rxd_4[59],
    xgmii_rxd[58] = xgmii_rxd_4[58],
    xgmii_rxd[57] = xgmii_rxd_4[57],
    xgmii_rxd[56] = xgmii_rxd_4[56],
    xgmii_rxd[55] = xgmii_rxd_4[55],
    xgmii_rxd[54] = xgmii_rxd_4[54],
    xgmii_rxd[53] = xgmii_rxd_4[53],
    xgmii_rxd[52] = xgmii_rxd_4[52],
    xgmii_rxd[51] = xgmii_rxd_4[51],
    xgmii_rxd[50] = xgmii_rxd_4[50],
    xgmii_rxd[49] = xgmii_rxd_4[49],
    xgmii_rxd[48] = xgmii_rxd_4[48],
    xgmii_rxd[47] = xgmii_rxd_4[47],
    xgmii_rxd[46] = xgmii_rxd_4[46],
    xgmii_rxd[45] = xgmii_rxd_4[45],
    xgmii_rxd[44] = xgmii_rxd_4[44],
    xgmii_rxd[43] = xgmii_rxd_4[43],
    xgmii_rxd[42] = xgmii_rxd_4[42],
    xgmii_rxd[41] = xgmii_rxd_4[41],
    xgmii_rxd[40] = xgmii_rxd_4[40],
    xgmii_rxd[39] = xgmii_rxd_4[39],
    xgmii_rxd[38] = xgmii_rxd_4[38],
    xgmii_rxd[37] = xgmii_rxd_4[37],
    xgmii_rxd[36] = xgmii_rxd_4[36],
    xgmii_rxd[35] = xgmii_rxd_4[35],
    xgmii_rxd[34] = xgmii_rxd_4[34],
    xgmii_rxd[33] = xgmii_rxd_4[33],
    xgmii_rxd[32] = xgmii_rxd_4[32],
    xgmii_rxd[31] = xgmii_rxd_4[31],
    xgmii_rxd[30] = xgmii_rxd_4[30],
    xgmii_rxd[29] = xgmii_rxd_4[29],
    xgmii_rxd[28] = xgmii_rxd_4[28],
    xgmii_rxd[27] = xgmii_rxd_4[27],
    xgmii_rxd[26] = xgmii_rxd_4[26],
    xgmii_rxd[25] = xgmii_rxd_4[25],
    xgmii_rxd[24] = xgmii_rxd_4[24],
    xgmii_rxd[23] = xgmii_rxd_4[23],
    xgmii_rxd[22] = xgmii_rxd_4[22],
    xgmii_rxd[21] = xgmii_rxd_4[21],
    xgmii_rxd[20] = xgmii_rxd_4[20],
    xgmii_rxd[19] = xgmii_rxd_4[19],
    xgmii_rxd[18] = xgmii_rxd_4[18],
    xgmii_rxd[17] = xgmii_rxd_4[17],
    xgmii_rxd[16] = xgmii_rxd_4[16],
    xgmii_rxd[15] = xgmii_rxd_4[15],
    xgmii_rxd[14] = xgmii_rxd_4[14],
    xgmii_rxd[13] = xgmii_rxd_4[13],
    xgmii_rxd[12] = xgmii_rxd_4[12],
    xgmii_rxd[11] = xgmii_rxd_4[11],
    xgmii_rxd[10] = xgmii_rxd_4[10],
    xgmii_rxd[9] = xgmii_rxd_4[9],
    xgmii_rxd[8] = xgmii_rxd_4[8],
    xgmii_rxd[7] = xgmii_rxd_4[7],
    xgmii_rxd[6] = xgmii_rxd_4[6],
    xgmii_rxd[5] = xgmii_rxd_4[5],
    xgmii_rxd[4] = xgmii_rxd_4[4],
    xgmii_rxd[3] = xgmii_rxd_4[3],
    xgmii_rxd[2] = xgmii_rxd_4[2],
    xgmii_rxd[1] = xgmii_rxd_4[1],
    xgmii_rxd[0] = xgmii_rxd_4[0],
    mgt_loopback = NlwRenamedSignal_configuration_vector[0],
    mgt_txdata[63] = mgt_txdata_6[63],
    mgt_txdata[62] = mgt_txdata_6[62],
    mgt_txdata[61] = mgt_txdata_6[61],
    mgt_txdata[60] = mgt_txdata_6[60],
    mgt_txdata[59] = mgt_txdata_6[59],
    mgt_txdata[58] = mgt_txdata_6[58],
    mgt_txdata[57] = mgt_txdata_6[57],
    mgt_txdata[56] = mgt_txdata_6[56],
    mgt_txdata[55] = mgt_txdata_6[55],
    mgt_txdata[54] = mgt_txdata_6[54],
    mgt_txdata[53] = mgt_txdata_6[53],
    mgt_txdata[52] = mgt_txdata_6[52],
    mgt_txdata[51] = mgt_txdata_6[51],
    mgt_txdata[50] = mgt_txdata_6[50],
    mgt_txdata[49] = mgt_txdata_6[49],
    mgt_txdata[48] = mgt_txdata_6[48],
    mgt_txdata[47] = mgt_txdata_6[47],
    mgt_txdata[46] = mgt_txdata_6[46],
    mgt_txdata[45] = mgt_txdata_6[45],
    mgt_txdata[44] = mgt_txdata_6[44],
    mgt_txdata[43] = mgt_txdata_6[43],
    mgt_txdata[42] = mgt_txdata_6[42],
    mgt_txdata[41] = mgt_txdata_6[41],
    mgt_txdata[40] = mgt_txdata_6[40],
    mgt_txdata[39] = mgt_txdata_6[39],
    mgt_txdata[38] = mgt_txdata_6[38],
    mgt_txdata[37] = mgt_txdata_6[37],
    mgt_txdata[36] = mgt_txdata_6[36],
    mgt_txdata[35] = mgt_txdata_6[35],
    mgt_txdata[34] = mgt_txdata_6[34],
    mgt_txdata[33] = mgt_txdata_6[33],
    mgt_txdata[32] = mgt_txdata_6[32],
    mgt_txdata[31] = mgt_txdata_6[31],
    mgt_txdata[30] = mgt_txdata_6[30],
    mgt_txdata[29] = mgt_txdata_6[29],
    mgt_txdata[28] = mgt_txdata_6[28],
    mgt_txdata[27] = mgt_txdata_6[27],
    mgt_txdata[26] = mgt_txdata_6[26],
    mgt_txdata[25] = mgt_txdata_6[25],
    mgt_txdata[24] = mgt_txdata_6[24],
    mgt_txdata[23] = mgt_txdata_6[23],
    mgt_txdata[22] = mgt_txdata_6[22],
    mgt_txdata[21] = mgt_txdata_6[21],
    mgt_txdata[20] = mgt_txdata_6[20],
    mgt_txdata[19] = mgt_txdata_6[19],
    mgt_txdata[18] = mgt_txdata_6[18],
    mgt_txdata[17] = mgt_txdata_6[17],
    mgt_txdata[16] = mgt_txdata_6[16],
    mgt_txdata[15] = mgt_txdata_6[15],
    mgt_txdata[14] = mgt_txdata_6[14],
    mgt_txdata[13] = mgt_txdata_6[13],
    mgt_txdata[12] = mgt_txdata_6[12],
    mgt_txdata[11] = mgt_txdata_6[11],
    mgt_txdata[10] = mgt_txdata_6[10],
    mgt_txdata[9] = mgt_txdata_6[9],
    mgt_txdata[8] = mgt_txdata_6[8],
    mgt_txdata[7] = mgt_txdata_6[7],
    mgt_txdata[6] = mgt_txdata_6[6],
    mgt_txdata[5] = mgt_txdata_6[5],
    mgt_txdata[4] = mgt_txdata_6[4],
    mgt_txdata[3] = mgt_txdata_6[3],
    mgt_txdata[2] = mgt_txdata_6[2],
    mgt_txdata[1] = mgt_txdata_6[1],
    mgt_txdata[0] = mgt_txdata_6[0],
    mgt_rx_reset_15[3] = mgt_rx_reset[3],
    mgt_rx_reset_15[2] = mgt_rx_reset[2],
    mgt_rx_reset_15[1] = mgt_rx_reset[1],
    mgt_rx_reset_15[0] = mgt_rx_reset[0],
    signal_detect_16[3] = signal_detect[3],
    signal_detect_16[2] = signal_detect[2],
    signal_detect_16[1] = signal_detect[1],
    signal_detect_16[0] = signal_detect[0];
  VCC   VCC_0 (
    .P(N1)
  );
  GND   GND_1 (
    .G(N0)
  );
  LUT5 #(
    .INIT ( 32'h44405540 ))
  \BU2/U0/transmitter/state_machine/Mmux_p_state_comb.state_temp43_G  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/q_det_993 ),
    .I2(\BU2/U0/transmitter/tx_is_idle [0]),
    .I3(\BU2/U0/transmitter/tx_is_q [0]),
    .I4(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .O(\BU2/N109 )
  );
  LUT6 #(
    .INIT ( 64'hEEE0E0E000000000 ))
  \BU2/U0/transmitter/state_machine/Mmux_p_state_comb.state_temp43_F  (
    .I0(\BU2/U0/transmitter/tx_is_idle [0]),
    .I1(\BU2/U0/transmitter/tx_is_q [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I3(\BU2/U0/transmitter/state_machine/next_ifg_is_a_1071 ),
    .I4(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I5(\BU2/U0/transmitter/a_due [0]),
    .O(\BU2/N108 )
  );
  MUXF7   \BU2/U0/transmitter/state_machine/Mmux_p_state_comb.state_temp43  (
    .I0(\BU2/N108 ),
    .I1(\BU2/N109 ),
    .S(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .O(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [1])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \BU2/U0/transmitter/recoder/_n0142<4>1  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .O(\BU2/U0/transmitter/recoder/_n0142 )
  );
  LUT5 #(
    .INIT ( 32'hFF0F2202 ))
  \BU2/U0/transmitter/align/extra_a_glue_set  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I4(\BU2/U0/transmitter/align/extra_a_1066 ),
    .O(\BU2/U0/transmitter/align/extra_a_glue_set_1150 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEFFFFFF54FF ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT101  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<2> ),
    .I3(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT102 ),
    .I5(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [18]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<18> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEFFFFFF54FF ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT131  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<4> ),
    .I3(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT102 ),
    .I5(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [20]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<20> )
  );
  LUT5 #(
    .INIT ( 32'h80088888 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1101  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I2(configuration_vector_17[6]),
    .I3(configuration_vector_17[5]),
    .I4(configuration_vector_17[4]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT110 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAABAAA8 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT191  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [26]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I2(\BU2/U0/transmitter/tx_code_k [0]),
    .I3(\BU2/U0/transmitter/tx_code_r [0]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<2> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT191_1190 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<26> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAABAAA8 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT451  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [7]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I2(\BU2/U0/transmitter/tx_code_k [0]),
    .I3(\BU2/U0/transmitter/tx_code_r [0]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<4> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT191_1190 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAABAAA8 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT231  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [7]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I2(\BU2/U0/transmitter/tx_code_k [0]),
    .I3(\BU2/U0/transmitter/tx_code_r [0]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<2> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT191_1190 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAABAAA8 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT211  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [28]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I2(\BU2/U0/transmitter/tx_code_k [0]),
    .I3(\BU2/U0/transmitter/tx_code_r [0]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<4> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT191_1190 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<28> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAABAAA8 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT41  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [12]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I2(\BU2/U0/transmitter/tx_code_k [0]),
    .I3(\BU2/U0/transmitter/tx_code_r [0]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<4> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT191_1190 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<12> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAABAAA8 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT22  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [10]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I2(\BU2/U0/transmitter/tx_code_k [0]),
    .I3(\BU2/U0/transmitter/tx_code_r [0]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<2> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT191_1190 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<10> )
  );
  LUT6 #(
    .INIT ( 64'h0100000101010101 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1211  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I1(\BU2/U0/transmitter/tx_code_k [0]),
    .I2(\BU2/U0/transmitter/tx_code_r [0]),
    .I3(configuration_vector_17[6]),
    .I4(configuration_vector_17[5]),
    .I5(configuration_vector_17[4]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT121_987 )
  );
  LUT5 #(
    .INIT ( 32'hAAA8AAAA ))
  \BU2/U0/transmitter/recoder/txc_out_5_glue_rst  (
    .I0(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_82_OUT<5> ),
    .I1(\BU2/U0/usrclk_reset_329 ),
    .I2(configuration_vector_17[6]),
    .I3(configuration_vector_17[5]),
    .I4(configuration_vector_17[4]),
    .O(\BU2/U0/transmitter/recoder/txc_out_5_glue_rst_1143 )
  );
  LUT5 #(
    .INIT ( 32'hAAA8AAAA ))
  \BU2/U0/transmitter/recoder/txc_out_6_glue_rst  (
    .I0(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_82_OUT<6> ),
    .I1(\BU2/U0/usrclk_reset_329 ),
    .I2(configuration_vector_17[6]),
    .I3(configuration_vector_17[5]),
    .I4(configuration_vector_17[4]),
    .O(\BU2/U0/transmitter/recoder/txc_out_6_glue_rst_1142 )
  );
  LUT5 #(
    .INIT ( 32'hAAA8AAAA ))
  \BU2/U0/transmitter/recoder/txc_out_7_glue_rst  (
    .I0(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_82_OUT<7> ),
    .I1(\BU2/U0/usrclk_reset_329 ),
    .I2(configuration_vector_17[6]),
    .I3(configuration_vector_17[5]),
    .I4(configuration_vector_17[4]),
    .O(\BU2/U0/transmitter/recoder/txc_out_7_glue_rst_1141 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF282A ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT311  (
    .I0(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<5> ),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT311_1189 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<37> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEE8AFFFF228A ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT581  (
    .I0(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<5> ),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT311_1189 ),
    .I5(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [29]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<61> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEE8AFFFF228A ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT491  (
    .I0(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<5> ),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT311_1189 ),
    .I5(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [21]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<53> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEE8AFFFF228A ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT401  (
    .I0(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<5> ),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT311_1189 ),
    .I5(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [13]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<45> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEE8AFFFF228A ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT221  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<5> ),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .I3(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT222 ),
    .I5(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [29]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<29> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF282A ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT561  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<5> ),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I3(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT222 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEE8AFFFF228A ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT55  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<5> ),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .I3(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT222 ),
    .I5(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [13]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<13> )
  );
  LUT5 #(
    .INIT ( 32'h80008888 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT271  (
    .I0(\BU2/U0/transmitter/recoder/_n0449 ),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<1> ),
    .I2(configuration_vector_17[5]),
    .I3(configuration_vector_17[6]),
    .I4(configuration_vector_17[4]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<33> )
  );
  LUT5 #(
    .INIT ( 32'h880808F8 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT11  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<0> ),
    .I1(\BU2/U0/transmitter/recoder/_n0142 ),
    .I2(configuration_vector_17[4]),
    .I3(configuration_vector_17[6]),
    .I4(configuration_vector_17[5]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h80008888 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT121  (
    .I0(\BU2/U0/transmitter/recoder/_n0142 ),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<1> ),
    .I2(configuration_vector_17[5]),
    .I3(configuration_vector_17[6]),
    .I4(configuration_vector_17[4]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \BU2/U0/transmitter/recoder/_n0136<4>11  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .O(\BU2/U0/transmitter/recoder/_n0136<4>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAEAAA2 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT281  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [7]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<2> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT281_1185 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<34> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAEAAA2 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT571  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [28]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<4> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT281_1185 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<60> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAEAAA2 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT541  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [26]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<2> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT281_1185 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<58> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAEAAA2 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT481  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [20]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<4> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT281_1185 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<52> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAEAAA2 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT461  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [18]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<2> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT281_1185 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<50> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAEAAA2 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT391  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [12]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<4> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT281_1185 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<44> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAEAAA2 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT371  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [10]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<2> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT281_1185 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<42> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAEAAA2 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT301  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [7]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<4> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT281_1185 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<36> )
  );
  LUT6 #(
    .INIT ( 64'h0200000202020202 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT2711  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I3(configuration_vector_17[6]),
    .I4(configuration_vector_17[5]),
    .I5(configuration_vector_17[4]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT271_985 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCF8880888A ))
  \BU2/U0/transmitter/state_machine/next_ifg_is_a_glue_rst  (
    .I0(\BU2/N92 ),
    .I1(\BU2/N106 ),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .I3(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I4(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I5(\BU2/U0/usrclk_reset_329 ),
    .O(\BU2/U0/transmitter/state_machine/next_ifg_is_a_glue_rst_1151 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \BU2/U0/transmitter/state_machine/next_ifg_is_a_glue_rst_SW1  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I3(\BU2/U0/transmitter/state_machine/next_ifg_is_a_1071 ),
    .O(\BU2/N106 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFCFAA82 ))
  \BU2/U0/receiver/recoder/error_lane<6><6>6  (
    .I0(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_mux_105_OUT [2]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [54]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [55]),
    .I3(\BU2/N100 ),
    .I4(\BU2/N104 ),
    .I5(\BU2/U0/receiver/recoder/code_error_pipe [2]),
    .O(\BU2/U0/receiver/recoder/error_lane [6])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \BU2/U0/receiver/recoder/error_lane<6><6>6_SW1  (
    .I0(\BU2/U0/receiver/recoder/lane_terminate [4]),
    .I1(\BU2/U0/receiver/recoder/lane_terminate [5]),
    .O(\BU2/N104 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/aligned_sticky_glue_set  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\NlwRenamedSig_OI_status_vector[7] ),
    .I2(\BU2/U0/clear_aligned_edge_1153 ),
    .O(\BU2/U0/aligned_sticky_glue_set_1138 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFE6F7E6B3 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT14  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [21]),
    .I3(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<5> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT102 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<21> )
  );
  LUT6 #(
    .INIT ( 64'hFFBABAFF45000045 ))
  \BU2/U0/transmitter/align/mux211  (
    .I0(\BU2/U0/transmitter/tx_code_a [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/align/count [1]),
    .I4(\BU2/U0/transmitter/align/count [2]),
    .I5(\BU2/U0/transmitter/align/prbs [3]),
    .O(\BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8880888 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT151  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1511 ),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<6> ),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I4(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [22]),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT152 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<22> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF0888 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT611  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1511 ),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<6> ),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT152 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8880888 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT241  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1511 ),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<6> ),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I4(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [30]),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT152 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<30> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8880888 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT65  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1511 ),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<6> ),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I4(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [14]),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT152 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<14> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF0888 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT321  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT3211 ),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<6> ),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT322 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<38> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8880888 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT591  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT3211 ),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<6> ),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I4(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [30]),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT322 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<62> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8880888 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT501  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT3211 ),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<6> ),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I4(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [22]),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT322 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<54> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8880888 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT411  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT3211 ),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<6> ),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I4(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [14]),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT322 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<46> )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \BU2/U0/transmitter/tqmsg_capture_1/q_det_glue_set  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/q_det_glue_ce_1176 ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/q_det_glue_set_1149 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF8AFF ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT231  (
    .I0(\BU2/U0/receiver/recoder/error_lane<0> [0]),
    .I1(\BU2/U0/receiver/recoder/error_lane<0><0>1_1107 ),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o1 ),
    .I3(NlwRenamedSig_OI_align_status),
    .I4(\BU2/U0/receiver/recoder/rxd_half_pipe [2]),
    .I5(\BU2/U0/receiver/recoder/code_error_delay_0_916 ),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF8AFF ))
  \BU2/U0/receiver/recoder/Mmux_rxc_pipe[3]_GND_20_o_mux_25_OUT11  (
    .I0(\BU2/U0/receiver/recoder/error_lane<0> [0]),
    .I1(\BU2/U0/receiver/recoder/error_lane<0><0>1_1107 ),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o1 ),
    .I3(NlwRenamedSig_OI_align_status),
    .I4(\BU2/U0/receiver/recoder/rxc_half_pipe [0]),
    .I5(\BU2/U0/receiver/recoder/code_error_delay_0_916 ),
    .O(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT321  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<1> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<1> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<9> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT311  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<0> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<0> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<8> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT301  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<7> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<7> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT251  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<7> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<7> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<31> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT241  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<6> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<6> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<30> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT221  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<5> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<5> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<29> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT211  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<4> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<4> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<28> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT201  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<3> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<3> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<27> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT191  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<2> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<2> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<26> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT181  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<1> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<1> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<25> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT171  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<0> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<0> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<24> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT161  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<7> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<7> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<23> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT151  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<6> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<6> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<22> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT141  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<5> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<5> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<21> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT131  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<4> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<4> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<20> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT111  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<3> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<3> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<19> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT101  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<2> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<2> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<18> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT91  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<1> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<1> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<17> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT81  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<0> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<0> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<16> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT71  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<7> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<7> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<15> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT61  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<6> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<6> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<14> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT51  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<5> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<5> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<13> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT41  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<4> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<4> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<12> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT33  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<3> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<3> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<11> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \BU2/U0/transmitter/tqmsg_capture_1/Mmux_last_qmsg[31]_txd_in[63]_mux_5_OUT28  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<2> ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<2> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<10> )
  );
  LUT5 #(
    .INIT ( 32'h4044F044 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1521  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I2(configuration_vector_17[5]),
    .I3(configuration_vector_17[4]),
    .I4(configuration_vector_17[6]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT152 )
  );
  LUT5 #(
    .INIT ( 32'h4044F044 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT3221  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I2(configuration_vector_17[5]),
    .I3(configuration_vector_17[4]),
    .I4(configuration_vector_17[6]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT322 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80088888 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT262  (
    .I0(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<0> ),
    .I1(\BU2/U0/transmitter/recoder/_n0449 ),
    .I2(configuration_vector_17[6]),
    .I3(configuration_vector_17[5]),
    .I4(configuration_vector_17[4]),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<32> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF4BBBBBBB8 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1151  (
    .I0(configuration_vector_17[6]),
    .I1(configuration_vector_17[4]),
    .I2(\BU2/U0/transmitter/tx_code_r [0]),
    .I3(\BU2/U0/transmitter/tx_code_a [0]),
    .I4(\BU2/U0/transmitter/tx_code_k [0]),
    .I5(configuration_vector_17[5]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT115 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFF2A ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1911  (
    .I0(configuration_vector_17[4]),
    .I1(configuration_vector_17[6]),
    .I2(configuration_vector_17[5]),
    .I3(\BU2/U0/transmitter/tx_code_r [0]),
    .I4(\BU2/U0/transmitter/tx_code_a [0]),
    .I5(\BU2/U0/transmitter/tx_code_k [0]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT191_1190 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF4F44B0BB0000 ))
  \BU2/U0/transmitter/align/mux111  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I3(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I4(\BU2/U0/transmitter/align/count [0]),
    .I5(\BU2/U0/transmitter/align/prbs [1]),
    .O(\BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h77F755F544045505 ))
  \BU2/U0/transmitter/align/mux1111  (
    .I0(\BU2/U0/transmitter/align/count [1]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I4(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I5(\BU2/U0/transmitter/align/prbs [2]),
    .O(\BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  \BU2/U0/transmitter/align/n0020_inv1  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I3(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .O(\BU2/U0/transmitter/align/n0020_inv )
  );
  LUT6 #(
    .INIT ( 64'h4141FF41FF41FF41 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1631  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .I3(configuration_vector_17[4]),
    .I4(configuration_vector_17[5]),
    .I5(configuration_vector_17[6]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT163 )
  );
  LUT6 #(
    .INIT ( 64'h5959FF59FF59FF59 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT3111  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(configuration_vector_17[4]),
    .I4(configuration_vector_17[5]),
    .I5(configuration_vector_17[6]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT311_1189 )
  );
  LUT6 #(
    .INIT ( 64'h4141FF41FF41FF41 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT3321  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I3(configuration_vector_17[4]),
    .I4(configuration_vector_17[5]),
    .I5(configuration_vector_17[6]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT332 )
  );
  LUT6 #(
    .INIT ( 64'h5959FF59FF59FF59 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT2221  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I3(configuration_vector_17[4]),
    .I4(configuration_vector_17[5]),
    .I5(configuration_vector_17[6]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT222 )
  );
  LUT5 #(
    .INIT ( 32'hFF0F2202 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT15111  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .I2(configuration_vector_17[4]),
    .I3(configuration_vector_17[5]),
    .I4(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1511 )
  );
  LUT5 #(
    .INIT ( 32'hFF0F2202 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT32111  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I2(configuration_vector_17[4]),
    .I3(configuration_vector_17[5]),
    .I4(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT3211 )
  );
  LUT6 #(
    .INIT ( 64'h73A3FFAF73A373A3 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT2931  (
    .I0(configuration_vector_17[6]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(configuration_vector_17[4]),
    .I3(configuration_vector_17[5]),
    .I4(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I5(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT293 )
  );
  LUT6 #(
    .INIT ( 64'h2AFF2A2AFFFFFFFF ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT2811  (
    .I0(configuration_vector_17[4]),
    .I1(configuration_vector_17[5]),
    .I2(configuration_vector_17[6]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I4(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I5(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT281_1185 )
  );
  LUT5 #(
    .INIT ( 32'hFF54FFFF ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT61  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txc_out_632 ),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I3(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT21 ),
    .I4(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_82_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \BU2/U0/transmitter/recoder/_n0449<9>1  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .O(\BU2/U0/transmitter/recoder/_n0449 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv1  (
    .I0(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 ),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/q_det_PWR_11_o_MUX_77_o1_1061 ),
    .I3(\BU2/U0/transmitter/tqmsg_capture_1/q_det_PWR_11_o_MUX_77_o2_1062 ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF44444440 ))
  \BU2/U0/receiver/recoder/error_lane<4><4>4  (
    .I0(\BU2/U0/receiver/recoder/lane_terminate [0]),
    .I1(\BU2/N102 ),
    .I2(\BU2/U0/receiver/recoder/lane_terminate [1]),
    .I3(\BU2/U0/receiver/recoder/lane_terminate [2]),
    .I4(\BU2/U0/receiver/recoder/lane_terminate [3]),
    .I5(\BU2/U0/receiver/recoder/code_error_pipe [0]),
    .O(\BU2/U0/receiver/recoder/error_lane [4])
  );
  LUT5 #(
    .INIT ( 32'hFFFF7FFF ))
  \BU2/U0/receiver/recoder/error_lane<4><4>4_SW0  (
    .I0(\BU2/U0/receiver/recoder/rxc_pipe [4]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [34]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [35]),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [36]),
    .I4(\BU2/U0/receiver/recoder/error_lane<4><4>1 ),
    .O(\BU2/N102 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \BU2/U0/receiver/recoder/error_lane<6><6>6_SW0  (
    .I0(\BU2/U0/receiver/recoder/rxc_pipe [6]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [50]),
    .I2(\BU2/U0/receiver/recoder/error_lane<6> [6]),
    .O(\BU2/N100 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFCFAA82 ))
  \BU2/U0/receiver/recoder/error_lane<1><1>4  (
    .I0(\BU2/U0/receiver/recoder/error_lane<1> [1]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [14]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [15]),
    .I3(\BU2/N98 ),
    .I4(\BU2/U0/receiver/recoder/lane_terminate [0]),
    .I5(\BU2/U0/receiver/recoder/code_error_delay_1_922 ),
    .O(\BU2/U0/receiver/recoder/error_lane [1])
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \BU2/U0/receiver/recoder/error_lane<1><1>4_SW0  (
    .I0(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o1 ),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [13]),
    .I2(\BU2/U0/receiver/recoder/code_error_pipe [1]),
    .O(\BU2/N98 )
  );
  LUT6 #(
    .INIT ( 64'h4000551551005504 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/state_rstpot  (
    .I0(\BU2/N96 ),
    .I1(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/state_758 ),
    .I2(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/deskew_error [0]),
    .I3(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_align [1]),
    .I4(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/deskew_error_sliced_755 ),
    .I5(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_align [0]),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/state_rstpot_1158 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/state_rstpot_SW0  (
    .I0(\BU2/U0/usrclk_reset_329 ),
    .I1(\BU2/U0/receiver/sync_status_753 ),
    .O(\BU2/N96 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \BU2/U0/clear_local_fault_edge_rstpot  (
    .I0(\BU2/U0/clear_local_fault_331 ),
    .I1(\BU2/U0/p_clear_local_fault_edge.last_value_332 ),
    .I2(\BU2/U0/usrclk_reset_329 ),
    .O(\BU2/U0/clear_local_fault_edge_rstpot_1154 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \BU2/U0/clear_aligned_edge_rstpot  (
    .I0(\BU2/U0/clear_aligned_328 ),
    .I1(\BU2/U0/p_clear_aligned_edge.last_value_330 ),
    .I2(\BU2/U0/usrclk_reset_329 ),
    .O(\BU2/U0/clear_aligned_edge_rstpot_1152 )
  );
  LUT6 #(
    .INIT ( 64'hFEFFFEFEFFFFFFFF ))
  \BU2/U0/rx_local_fault_glue_set  (
    .I0(mgt_rx_reset_15[1]),
    .I1(\BU2/N94 ),
    .I2(mgt_rx_reset_15[0]),
    .I3(\BU2/U0/clear_local_fault_edge_1155 ),
    .I4(\NlwRenamedSig_OI_status_vector[1] ),
    .I5(NlwRenamedSig_OI_align_status),
    .O(\BU2/U0/rx_local_fault_glue_set_1139 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \BU2/U0/rx_local_fault_glue_set_SW0  (
    .I0(mgt_rx_reset_15[2]),
    .I1(mgt_rx_reset_15[3]),
    .O(\BU2/N94 )
  );
  LUT5 #(
    .INIT ( 32'h80088888 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT261  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I2(configuration_vector_17[6]),
    .I3(configuration_vector_17[5]),
    .I4(configuration_vector_17[4]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT261_984 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \BU2/U0/transmitter/state_machine/next_ifg_is_a_glue_rst_SW0  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .O(\BU2/N92 )
  );
  LUT6 #(
    .INIT ( 64'hCFCFFFCF45455545 ))
  \BU2/U0/transmitter/recoder/txc_out_1_glue_rst  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT21 ),
    .I2(\BU2/U0/transmitter/recoder/_n0136<4>1 ),
    .I3(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txc_out_700 ),
    .I4(\BU2/U0/transmitter/tx_code_q [0]),
    .I5(\BU2/U0/usrclk_reset_329 ),
    .O(\BU2/U0/transmitter/recoder/txc_out_1_glue_rst_1147 )
  );
  LUT6 #(
    .INIT ( 64'hCFCFFFCF45455545 ))
  \BU2/U0/transmitter/recoder/txc_out_2_glue_rst  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT21 ),
    .I2(\BU2/U0/transmitter/recoder/_n0136<4>1 ),
    .I3(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txc_out_683 ),
    .I4(\BU2/U0/transmitter/tx_code_q [0]),
    .I5(\BU2/U0/usrclk_reset_329 ),
    .O(\BU2/U0/transmitter/recoder/txc_out_2_glue_rst_1146 )
  );
  LUT6 #(
    .INIT ( 64'hCFCFFFCF45455545 ))
  \BU2/U0/transmitter/recoder/txc_out_3_glue_rst  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT21 ),
    .I2(\BU2/U0/transmitter/recoder/_n0136<4>1 ),
    .I3(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txc_out_666 ),
    .I4(\BU2/U0/transmitter/tx_code_q [0]),
    .I5(\BU2/U0/usrclk_reset_329 ),
    .O(\BU2/U0/transmitter/recoder/txc_out_3_glue_rst_1145 )
  );
  LUT5 #(
    .INIT ( 32'hFFCF5545 ))
  \BU2/U0/transmitter/recoder/txc_out_4_glue_rst  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT21 ),
    .I2(\BU2/U0/transmitter/recoder/_n0449 ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txc_out_649 ),
    .I4(\BU2/U0/usrclk_reset_329 ),
    .O(\BU2/U0/transmitter/recoder/txc_out_4_glue_rst_1144 )
  );
  LUT5 #(
    .INIT ( 32'hFFCF5545 ))
  \BU2/U0/transmitter/recoder/txc_out_0_glue_rst  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT21 ),
    .I2(\BU2/U0/transmitter/recoder/_n0142 ),
    .I3(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txc_out_717 ),
    .I4(\BU2/U0/usrclk_reset_329 ),
    .O(\BU2/U0/transmitter/recoder/txc_out_0_glue_rst_1148 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF044404440444 ))
  \BU2/U0/transmitter/tqmsg_capture_1/q_det_glue_ce  (
    .I0(\BU2/U0/transmitter/tx_code_q [0]),
    .I1(\BU2/U0/transmitter/tqmsg_capture_1/q_det_993 ),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I4(\BU2/U0/transmitter/tqmsg_capture_1/q_det_PWR_11_o_MUX_77_o1_1061 ),
    .I5(\BU2/U0/transmitter/tqmsg_capture_1/q_det_PWR_11_o_MUX_77_o2_1062 ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/q_det_glue_ce_1176 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFCFAA82 ))
  \BU2/U0/receiver/recoder/error_lane<5><5>5  (
    .I0(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_mux_105_OUT [1]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [46]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [47]),
    .I3(\BU2/N90 ),
    .I4(\BU2/U0/receiver/recoder/lane_terminate [4]),
    .I5(\BU2/U0/receiver/recoder/code_error_pipe [1]),
    .O(\BU2/U0/receiver/recoder/error_lane [5])
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \BU2/U0/receiver/recoder/error_lane<5><5>5_SW0  (
    .I0(\BU2/U0/receiver/recoder/rxc_pipe [5]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [42]),
    .I2(\BU2/U0/receiver/recoder/error_lane<5> [5]),
    .O(\BU2/N90 )
  );
  LUT6 #(
    .INIT ( 64'hFFFEFFFFFFFEFFFE ))
  \BU2/U0/tx_local_fault_glue_set  (
    .I0(mgt_tx_reset_14[3]),
    .I1(mgt_tx_reset_14[0]),
    .I2(mgt_tx_reset_14[1]),
    .I3(mgt_tx_reset_14[2]),
    .I4(\BU2/U0/clear_local_fault_edge_1155 ),
    .I5(\NlwRenamedSig_OI_status_vector[0] ),
    .O(\BU2/U0/tx_local_fault_glue_set_1140 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \BU2/U0/transmitter/G_FILTER_LOW[0].filter/is_terminate_GND_17_o_AND_21_o  (
    .I0(\BU2/U0/transmitter/is_terminate [0]),
    .I1(\BU2/U0/transmitter/txd_pipe [7]),
    .I2(\BU2/U0/transmitter/txd_pipe [6]),
    .I3(\BU2/U0/transmitter/txd_pipe [5]),
    .I4(\BU2/U0/transmitter/txd_pipe [4]),
    .I5(\BU2/N88 ),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/is_terminate_GND_17_o_AND_21_o_1010 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/transmitter/G_FILTER_LOW[0].filter/is_terminate_GND_17_o_AND_21_o_SW0_SW0  (
    .I0(\BU2/U0/transmitter/txd_pipe [2]),
    .I1(\BU2/U0/transmitter/txd_pipe [3]),
    .I2(\BU2/U0/transmitter/txd_pipe [1]),
    .I3(\BU2/U0/transmitter/txd_pipe [0]),
    .O(\BU2/N88 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \BU2/U0/transmitter/G_FILTER_LOW[1].filter/is_terminate_GND_17_o_AND_21_o  (
    .I0(\BU2/U0/transmitter/is_terminate [0]),
    .I1(\BU2/U0/transmitter/txd_pipe [15]),
    .I2(\BU2/U0/transmitter/txd_pipe [14]),
    .I3(\BU2/U0/transmitter/txd_pipe [13]),
    .I4(\BU2/U0/transmitter/txd_pipe [12]),
    .I5(\BU2/N86 ),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/is_terminate_GND_17_o_AND_21_o_1008 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/transmitter/G_FILTER_LOW[1].filter/is_terminate_GND_17_o_AND_21_o_SW0_SW0  (
    .I0(\BU2/U0/transmitter/txd_pipe [9]),
    .I1(\BU2/U0/transmitter/txd_pipe [11]),
    .I2(\BU2/U0/transmitter/txd_pipe [8]),
    .I3(\BU2/U0/transmitter/txd_pipe [10]),
    .O(\BU2/N86 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \BU2/U0/transmitter/G_FILTER_LOW[2].filter/is_terminate_GND_17_o_AND_21_o  (
    .I0(\BU2/U0/transmitter/is_terminate [0]),
    .I1(\BU2/U0/transmitter/txd_pipe [23]),
    .I2(\BU2/U0/transmitter/txd_pipe [22]),
    .I3(\BU2/U0/transmitter/txd_pipe [21]),
    .I4(\BU2/U0/transmitter/txd_pipe [20]),
    .I5(\BU2/N84 ),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/is_terminate_GND_17_o_AND_21_o_1006 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/transmitter/G_FILTER_LOW[2].filter/is_terminate_GND_17_o_AND_21_o_SW0_SW0  (
    .I0(\BU2/U0/transmitter/txd_pipe [18]),
    .I1(\BU2/U0/transmitter/txd_pipe [19]),
    .I2(\BU2/U0/transmitter/txd_pipe [17]),
    .I3(\BU2/U0/transmitter/txd_pipe [16]),
    .O(\BU2/N84 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \BU2/U0/transmitter/G_FILTER_LOW[3].filter/is_terminate_GND_17_o_AND_21_o  (
    .I0(\BU2/U0/transmitter/is_terminate [0]),
    .I1(\BU2/U0/transmitter/txd_pipe [31]),
    .I2(\BU2/U0/transmitter/txd_pipe [30]),
    .I3(\BU2/U0/transmitter/txd_pipe [29]),
    .I4(\BU2/U0/transmitter/txd_pipe [28]),
    .I5(\BU2/N82 ),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/is_terminate_GND_17_o_AND_21_o_1004 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/transmitter/G_FILTER_LOW[3].filter/is_terminate_GND_17_o_AND_21_o_SW0_SW0  (
    .I0(\BU2/U0/transmitter/txd_pipe [26]),
    .I1(\BU2/U0/transmitter/txd_pipe [27]),
    .I2(\BU2/U0/transmitter/txd_pipe [25]),
    .I3(\BU2/U0/transmitter/txd_pipe [24]),
    .O(\BU2/N82 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/is_terminate_GND_17_o_AND_21_o  (
    .I0(\BU2/U0/transmitter/is_terminate [1]),
    .I1(\BU2/U0/transmitter/txd_pipe [39]),
    .I2(\BU2/U0/transmitter/txd_pipe [38]),
    .I3(\BU2/U0/transmitter/txd_pipe [37]),
    .I4(\BU2/U0/transmitter/txd_pipe [36]),
    .I5(\BU2/N80 ),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/is_terminate_GND_17_o_AND_21_o_1002 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/is_terminate_GND_17_o_AND_21_o_SW0_SW0  (
    .I0(\BU2/U0/transmitter/txd_pipe [34]),
    .I1(\BU2/U0/transmitter/txd_pipe [35]),
    .I2(\BU2/U0/transmitter/txd_pipe [33]),
    .I3(\BU2/U0/transmitter/txd_pipe [32]),
    .O(\BU2/N80 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/is_terminate_GND_17_o_AND_21_o  (
    .I0(\BU2/U0/transmitter/is_terminate [1]),
    .I1(\BU2/U0/transmitter/txd_pipe [47]),
    .I2(\BU2/U0/transmitter/txd_pipe [46]),
    .I3(\BU2/U0/transmitter/txd_pipe [45]),
    .I4(\BU2/U0/transmitter/txd_pipe [44]),
    .I5(\BU2/N78 ),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/is_terminate_GND_17_o_AND_21_o_1000 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/is_terminate_GND_17_o_AND_21_o_SW0_SW0  (
    .I0(\BU2/U0/transmitter/txd_pipe [42]),
    .I1(\BU2/U0/transmitter/txd_pipe [43]),
    .I2(\BU2/U0/transmitter/txd_pipe [41]),
    .I3(\BU2/U0/transmitter/txd_pipe [40]),
    .O(\BU2/N78 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/is_terminate_GND_17_o_AND_21_o  (
    .I0(\BU2/U0/transmitter/is_terminate [1]),
    .I1(\BU2/U0/transmitter/txd_pipe [55]),
    .I2(\BU2/U0/transmitter/txd_pipe [54]),
    .I3(\BU2/U0/transmitter/txd_pipe [53]),
    .I4(\BU2/U0/transmitter/txd_pipe [52]),
    .I5(\BU2/N76 ),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/is_terminate_GND_17_o_AND_21_o_998 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/is_terminate_GND_17_o_AND_21_o_SW0_SW0  (
    .I0(\BU2/U0/transmitter/txd_pipe [50]),
    .I1(\BU2/U0/transmitter/txd_pipe [51]),
    .I2(\BU2/U0/transmitter/txd_pipe [49]),
    .I3(\BU2/U0/transmitter/txd_pipe [48]),
    .O(\BU2/N76 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/is_terminate_GND_17_o_AND_21_o  (
    .I0(\BU2/U0/transmitter/is_terminate [1]),
    .I1(\BU2/U0/transmitter/txd_pipe [63]),
    .I2(\BU2/U0/transmitter/txd_pipe [62]),
    .I3(\BU2/U0/transmitter/txd_pipe [61]),
    .I4(\BU2/U0/transmitter/txd_pipe [60]),
    .I5(\BU2/N74 ),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/is_terminate_GND_17_o_AND_21_o_996 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/is_terminate_GND_17_o_AND_21_o_SW0_SW0  (
    .I0(\BU2/U0/transmitter/txd_pipe [58]),
    .I1(\BU2/U0/transmitter/txd_pipe [59]),
    .I2(\BU2/U0/transmitter/txd_pipe [57]),
    .I3(\BU2/U0/transmitter/txd_pipe [56]),
    .O(\BU2/N74 )
  );
  FD   \BU2/U0/receiver/recoder/lane_terminate_0  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/lane_terminate_0_rstpot_1166 ),
    .Q(\BU2/U0/receiver/recoder/lane_terminate [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/receiver/recoder/lane_terminate_0_rstpot  (
    .I0(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[7]_equal_136_o_0 ),
    .I1(mgt_rxcharisk_9[0]),
    .O(\BU2/U0/receiver/recoder/lane_terminate_0_rstpot_1166 )
  );
  FD   \BU2/U0/receiver/recoder/lane_terminate_1  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/lane_terminate_1_rstpot_1165 ),
    .Q(\BU2/U0/receiver/recoder/lane_terminate [1])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/receiver/recoder/lane_terminate_1_rstpot  (
    .I0(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[15]_equal_137_o_0 ),
    .I1(mgt_rxcharisk_9[2]),
    .O(\BU2/U0/receiver/recoder/lane_terminate_1_rstpot_1165 )
  );
  FD   \BU2/U0/receiver/recoder/lane_terminate_2  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/lane_terminate_2_rstpot_1164 ),
    .Q(\BU2/U0/receiver/recoder/lane_terminate [2])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/receiver/recoder/lane_terminate_2_rstpot  (
    .I0(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[23]_equal_138_o_0 ),
    .I1(mgt_rxcharisk_9[4]),
    .O(\BU2/U0/receiver/recoder/lane_terminate_2_rstpot_1164 )
  );
  FD   \BU2/U0/receiver/recoder/lane_terminate_3  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/lane_terminate_3_rstpot_1163 ),
    .Q(\BU2/U0/receiver/recoder/lane_terminate [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/receiver/recoder/lane_terminate_3_rstpot  (
    .I0(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[31]_equal_139_o_0 ),
    .I1(mgt_rxcharisk_9[6]),
    .O(\BU2/U0/receiver/recoder/lane_terminate_3_rstpot_1163 )
  );
  FD   \BU2/U0/receiver/recoder/lane_terminate_4  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/lane_terminate_4_rstpot_1162 ),
    .Q(\BU2/U0/receiver/recoder/lane_terminate [4])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/receiver/recoder/lane_terminate_4_rstpot  (
    .I0(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[39]_equal_140_o_0 ),
    .I1(mgt_rxcharisk_9[1]),
    .O(\BU2/U0/receiver/recoder/lane_terminate_4_rstpot_1162 )
  );
  FD   \BU2/U0/receiver/recoder/lane_terminate_5  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/lane_terminate_5_rstpot_1161 ),
    .Q(\BU2/U0/receiver/recoder/lane_terminate [5])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/receiver/recoder/lane_terminate_5_rstpot  (
    .I0(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[47]_equal_141_o_0 ),
    .I1(mgt_rxcharisk_9[3]),
    .O(\BU2/U0/receiver/recoder/lane_terminate_5_rstpot_1161 )
  );
  FD   \BU2/U0/receiver/recoder/lane_terminate_6  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/lane_terminate_6_rstpot_1160 ),
    .Q(\BU2/U0/receiver/recoder/lane_terminate [6])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/receiver/recoder/lane_terminate_6_rstpot  (
    .I0(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[55]_equal_142_o_0 ),
    .I1(mgt_rxcharisk_9[5]),
    .O(\BU2/U0/receiver/recoder/lane_terminate_6_rstpot_1160 )
  );
  FD   \BU2/U0/receiver/recoder/lane_terminate_7  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/lane_terminate_7_rstpot_1159 ),
    .Q(\BU2/U0/receiver/recoder/lane_terminate [7])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/receiver/recoder/lane_terminate_7_rstpot  (
    .I0(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[63]_equal_143_o_0 ),
    .I1(mgt_rxcharisk_9[7]),
    .O(\BU2/U0/receiver/recoder/lane_terminate_7_rstpot_1159 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/state  (
    .C(usrclk),
    .D(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/state_rstpot_1158 ),
    .Q(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/state_758 )
  );
  FD   \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/enchansync  (
    .C(usrclk),
    .D(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/enchansync_rstpot_1157 ),
    .Q(mgt_enchansync)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/enchansync_rstpot  (
    .I0(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/state_758 ),
    .I1(\BU2/U0/receiver/sync_status_753 ),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/enchansync_rstpot_1157 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/usrclk_reset  (
    .C(usrclk),
    .D(\BU2/U0/usrclk_reset_rstpot_1156 ),
    .Q(\BU2/U0/usrclk_reset_329 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \BU2/U0/usrclk_reset_rstpot  (
    .I0(\BU2/U0/usrclk_reset_pipe_333 ),
    .I1(reset),
    .O(\BU2/U0/usrclk_reset_rstpot_1156 )
  );
  FD   \BU2/U0/clear_local_fault_edge  (
    .C(usrclk),
    .D(\BU2/U0/clear_local_fault_edge_rstpot_1154 ),
    .Q(\BU2/U0/clear_local_fault_edge_1155 )
  );
  FD   \BU2/U0/clear_aligned_edge  (
    .C(usrclk),
    .D(\BU2/U0/clear_aligned_edge_rstpot_1152 ),
    .Q(\BU2/U0/clear_aligned_edge_1153 )
  );
  FDS   \BU2/U0/transmitter/state_machine/next_ifg_is_a  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/state_machine/next_ifg_is_a_glue_rst_1151 ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/state_machine/next_ifg_is_a_1071 )
  );
  FDR   \BU2/U0/transmitter/align/extra_a  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/align/extra_a_glue_set_1150 ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/align/extra_a_1066 )
  );
  FDR   \BU2/U0/transmitter/tqmsg_capture_1/q_det  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/q_det_glue_set_1149 ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/q_det_993 )
  );
  FDS   \BU2/U0/transmitter/recoder/txc_out_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/txc_out_0_glue_rst_1148 ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txcharisk_7[0])
  );
  FDS   \BU2/U0/transmitter/recoder/txc_out_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/txc_out_1_glue_rst_1147 ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txcharisk_7[2])
  );
  FDS   \BU2/U0/transmitter/recoder/txc_out_2  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/txc_out_2_glue_rst_1146 ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txcharisk_7[4])
  );
  FDS   \BU2/U0/transmitter/recoder/txc_out_3  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/txc_out_3_glue_rst_1145 ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txcharisk_7[6])
  );
  FDS   \BU2/U0/transmitter/recoder/txc_out_4  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/txc_out_4_glue_rst_1144 ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txcharisk_7[1])
  );
  FDS   \BU2/U0/transmitter/recoder/txc_out_5  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/txc_out_5_glue_rst_1143 ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txcharisk_7[3])
  );
  FDS   \BU2/U0/transmitter/recoder/txc_out_6  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/txc_out_6_glue_rst_1142 ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txcharisk_7[5])
  );
  FDS   \BU2/U0/transmitter/recoder/txc_out_7  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/txc_out_7_glue_rst_1141 ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txcharisk_7[7])
  );
  FDR   \BU2/U0/tx_local_fault  (
    .C(usrclk),
    .D(\BU2/U0/tx_local_fault_glue_set_1140 ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\NlwRenamedSig_OI_status_vector[0] )
  );
  FDR   \BU2/U0/rx_local_fault  (
    .C(usrclk),
    .D(\BU2/U0/rx_local_fault_glue_set_1139 ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\NlwRenamedSig_OI_status_vector[1] )
  );
  FDR   \BU2/U0/aligned_sticky  (
    .C(usrclk),
    .D(\BU2/U0/aligned_sticky_glue_set_1138 ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\NlwRenamedSig_OI_status_vector[7] )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF7FFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[7]_equal_136_o  (
    .I0(mgt_rxdata_8[7]),
    .I1(mgt_rxdata_8[6]),
    .I2(mgt_rxdata_8[5]),
    .I3(mgt_rxdata_8[4]),
    .I4(\BU2/U0/usrclk_reset_329 ),
    .I5(\BU2/N72 ),
    .O(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[7]_equal_136_o_0 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[7]_equal_136_o_SW0  (
    .I0(mgt_rxdata_8[3]),
    .I1(mgt_rxdata_8[1]),
    .I2(mgt_rxdata_8[2]),
    .I3(mgt_rxdata_8[0]),
    .O(\BU2/N72 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF7FFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[15]_equal_137_o  (
    .I0(mgt_rxdata_8[23]),
    .I1(mgt_rxdata_8[22]),
    .I2(mgt_rxdata_8[21]),
    .I3(mgt_rxdata_8[20]),
    .I4(\BU2/U0/usrclk_reset_329 ),
    .I5(\BU2/N70 ),
    .O(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[15]_equal_137_o_0 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[15]_equal_137_o_SW0  (
    .I0(mgt_rxdata_8[19]),
    .I1(mgt_rxdata_8[17]),
    .I2(mgt_rxdata_8[18]),
    .I3(mgt_rxdata_8[16]),
    .O(\BU2/N70 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF7FFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[23]_equal_138_o  (
    .I0(mgt_rxdata_8[39]),
    .I1(mgt_rxdata_8[38]),
    .I2(mgt_rxdata_8[37]),
    .I3(mgt_rxdata_8[36]),
    .I4(\BU2/U0/usrclk_reset_329 ),
    .I5(\BU2/N68 ),
    .O(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[23]_equal_138_o_0 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[23]_equal_138_o_SW0  (
    .I0(mgt_rxdata_8[35]),
    .I1(mgt_rxdata_8[33]),
    .I2(mgt_rxdata_8[34]),
    .I3(mgt_rxdata_8[32]),
    .O(\BU2/N68 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF7FFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[31]_equal_139_o  (
    .I0(mgt_rxdata_8[55]),
    .I1(mgt_rxdata_8[54]),
    .I2(mgt_rxdata_8[53]),
    .I3(mgt_rxdata_8[52]),
    .I4(\BU2/U0/usrclk_reset_329 ),
    .I5(\BU2/N66 ),
    .O(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[31]_equal_139_o_0 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[31]_equal_139_o_SW0  (
    .I0(mgt_rxdata_8[51]),
    .I1(mgt_rxdata_8[49]),
    .I2(mgt_rxdata_8[50]),
    .I3(mgt_rxdata_8[48]),
    .O(\BU2/N66 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF7FFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[39]_equal_140_o  (
    .I0(mgt_rxdata_8[8]),
    .I1(mgt_rxdata_8[15]),
    .I2(mgt_rxdata_8[14]),
    .I3(\BU2/N64 ),
    .I4(\BU2/U0/usrclk_reset_329 ),
    .I5(mgt_rxdata_8[9]),
    .O(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[39]_equal_140_o_0 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[39]_equal_140_o_SW0  (
    .I0(mgt_rxdata_8[13]),
    .I1(mgt_rxdata_8[12]),
    .I2(mgt_rxdata_8[11]),
    .I3(mgt_rxdata_8[10]),
    .O(\BU2/N64 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF7FFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[47]_equal_141_o  (
    .I0(mgt_rxdata_8[31]),
    .I1(mgt_rxdata_8[30]),
    .I2(mgt_rxdata_8[29]),
    .I3(mgt_rxdata_8[28]),
    .I4(\BU2/U0/usrclk_reset_329 ),
    .I5(\BU2/N62 ),
    .O(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[47]_equal_141_o_0 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[47]_equal_141_o_SW0  (
    .I0(mgt_rxdata_8[27]),
    .I1(mgt_rxdata_8[25]),
    .I2(mgt_rxdata_8[26]),
    .I3(mgt_rxdata_8[24]),
    .O(\BU2/N62 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF7FFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[55]_equal_142_o  (
    .I0(mgt_rxdata_8[47]),
    .I1(mgt_rxdata_8[46]),
    .I2(mgt_rxdata_8[45]),
    .I3(mgt_rxdata_8[44]),
    .I4(\BU2/U0/usrclk_reset_329 ),
    .I5(\BU2/N60 ),
    .O(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[55]_equal_142_o_0 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[55]_equal_142_o_SW0  (
    .I0(mgt_rxdata_8[43]),
    .I1(mgt_rxdata_8[41]),
    .I2(mgt_rxdata_8[42]),
    .I3(mgt_rxdata_8[40]),
    .O(\BU2/N60 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF7FFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[63]_equal_143_o  (
    .I0(mgt_rxdata_8[63]),
    .I1(mgt_rxdata_8[62]),
    .I2(mgt_rxdata_8[61]),
    .I3(mgt_rxdata_8[60]),
    .I4(\BU2/U0/usrclk_reset_329 ),
    .I5(\BU2/N58 ),
    .O(\BU2/U0/receiver/recoder/PWR_21_o_rxd_in[63]_equal_143_o_0 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \BU2/U0/receiver/recoder/PWR_21_o_rxd_in[63]_equal_143_o_SW0  (
    .I0(mgt_rxdata_8[59]),
    .I1(mgt_rxdata_8[57]),
    .I2(mgt_rxdata_8[58]),
    .I3(mgt_rxdata_8[56]),
    .O(\BU2/N58 )
  );
  LUT6 #(
    .INIT ( 64'h0008080000000008 ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_70_o  (
    .I0(\BU2/U0/receiver/recoder/rxd_half_pipe [3]),
    .I1(\BU2/U0/receiver/recoder/rxd_half_pipe [4]),
    .I2(\BU2/N56 ),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [6]),
    .I4(\BU2/U0/receiver/recoder/rxd_half_pipe [7]),
    .I5(\BU2/U0/receiver/recoder/rxd_half_pipe [5]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_70_o_1037 )
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_70_o_SW0  (
    .I0(\BU2/U0/receiver/recoder/rxd_half_pipe [1]),
    .I1(\BU2/U0/receiver/recoder/rxd_half_pipe [2]),
    .I2(\BU2/U0/receiver/recoder/rxc_half_pipe [0]),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [0]),
    .O(\BU2/N56 )
  );
  LUT6 #(
    .INIT ( 64'h0008080000000008 ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_72_o  (
    .I0(\BU2/U0/receiver/recoder/rxd_half_pipe [11]),
    .I1(\BU2/U0/receiver/recoder/rxd_half_pipe [12]),
    .I2(\BU2/N54 ),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [14]),
    .I4(\BU2/U0/receiver/recoder/rxd_half_pipe [15]),
    .I5(\BU2/U0/receiver/recoder/rxd_half_pipe [13]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_72_o_1035 )
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_72_o_SW0  (
    .I0(\BU2/U0/receiver/recoder/rxd_half_pipe [9]),
    .I1(\BU2/U0/receiver/recoder/rxd_half_pipe [10]),
    .I2(\BU2/U0/receiver/recoder/rxc_half_pipe [1]),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [8]),
    .O(\BU2/N54 )
  );
  LUT6 #(
    .INIT ( 64'h0008080000000008 ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_74_o  (
    .I0(\BU2/U0/receiver/recoder/rxd_half_pipe [19]),
    .I1(\BU2/U0/receiver/recoder/rxd_half_pipe [20]),
    .I2(\BU2/N52 ),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [22]),
    .I4(\BU2/U0/receiver/recoder/rxd_half_pipe [23]),
    .I5(\BU2/U0/receiver/recoder/rxd_half_pipe [21]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_74_o_1036 )
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_74_o_SW0  (
    .I0(\BU2/U0/receiver/recoder/rxd_half_pipe [17]),
    .I1(\BU2/U0/receiver/recoder/rxd_half_pipe [18]),
    .I2(\BU2/U0/receiver/recoder/rxc_half_pipe [2]),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [16]),
    .O(\BU2/N52 )
  );
  LUT6 #(
    .INIT ( 64'h0008080000000008 ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_76_o  (
    .I0(\BU2/U0/receiver/recoder/rxd_half_pipe [27]),
    .I1(\BU2/U0/receiver/recoder/rxd_half_pipe [28]),
    .I2(\BU2/N50 ),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [30]),
    .I4(\BU2/U0/receiver/recoder/rxd_half_pipe [31]),
    .I5(\BU2/U0/receiver/recoder/rxd_half_pipe [29]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_76_o_1033 )
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_76_o_SW0  (
    .I0(\BU2/U0/receiver/recoder/rxd_half_pipe [25]),
    .I1(\BU2/U0/receiver/recoder/rxd_half_pipe [26]),
    .I2(\BU2/U0/receiver/recoder/rxc_half_pipe [3]),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [24]),
    .O(\BU2/N50 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF9FFFFFFFF ))
  \BU2/U0/receiver/recoder/error_lane<4><4>2  (
    .I0(\BU2/U0/receiver/recoder/rxd_pipe [38]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [39]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [33]),
    .I3(\BU2/U0/receiver/recoder/code_error_pipe [4]),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [32]),
    .I5(\BU2/U0/receiver/recoder/rxd_pipe [37]),
    .O(\BU2/U0/receiver/recoder/error_lane<4><4>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFEFFFEFFFEAAAA ))
  \BU2/U0/receiver/recoder/error_lane<7><7>3  (
    .I0(\BU2/U0/receiver/recoder/code_error_pipe [3]),
    .I1(\BU2/U0/receiver/recoder/lane_terminate [4]),
    .I2(\BU2/U0/receiver/recoder/lane_terminate [5]),
    .I3(\BU2/U0/receiver/recoder/lane_terminate [6]),
    .I4(\BU2/U0/receiver/recoder/error_lane<7> [7]),
    .I5(\BU2/U0/receiver/recoder/error_lane<7><7>1_1116 ),
    .O(\BU2/U0/receiver/recoder/error_lane [7])
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \BU2/U0/receiver/recoder/error_lane<7><7>2  (
    .I0(\BU2/U0/receiver/recoder/rxd_pipe [59]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [60]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [58]),
    .I3(\BU2/U0/receiver/recoder/rxc_pipe [7]),
    .O(\BU2/U0/receiver/recoder/error_lane<7><7>1_1116 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \BU2/U0/receiver/recoder/error_lane<7><7>1  (
    .I0(\BU2/U0/receiver/recoder/rxd_pipe [63]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [62]),
    .I2(\BU2/U0/receiver/recoder/code_error_pipe [7]),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [56]),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [57]),
    .I5(\BU2/U0/receiver/recoder/rxd_pipe [61]),
    .O(\BU2/U0/receiver/recoder/error_lane<7> [7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF7FFFFFFFF ))
  \BU2/U0/receiver/recoder/error_lane<5><5>1  (
    .I0(\BU2/U0/receiver/recoder/rxd_pipe [45]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [44]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [41]),
    .I3(\BU2/U0/receiver/recoder/code_error_pipe [5]),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [40]),
    .I5(\BU2/U0/receiver/recoder/rxd_pipe [43]),
    .O(\BU2/U0/receiver/recoder/error_lane<5> [5])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF7FFFFFFFF ))
  \BU2/U0/receiver/recoder/error_lane<6><6>1  (
    .I0(\BU2/U0/receiver/recoder/rxd_pipe [53]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [52]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [49]),
    .I3(\BU2/U0/receiver/recoder/code_error_pipe [6]),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [48]),
    .I5(\BU2/U0/receiver/recoder/rxd_pipe [51]),
    .O(\BU2/U0/receiver/recoder/error_lane<6> [6])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFC5554 ))
  \BU2/U0/receiver/recoder/error_lane<3><3>  (
    .I0(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o2 ),
    .I1(\BU2/U0/receiver/recoder/lane_terminate [2]),
    .I2(\BU2/U0/receiver/recoder/lane_terminate [1]),
    .I3(\BU2/U0/receiver/recoder/lane_terminate [0]),
    .I4(\BU2/N48 ),
    .I5(\BU2/U0/receiver/recoder/code_error_delay_3_920 ),
    .O(\BU2/U0/receiver/recoder/error_lane [3])
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \BU2/U0/receiver/recoder/error_lane<3><3>_SW0  (
    .I0(\BU2/U0/receiver/recoder/rxd_pipe [30]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [31]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [29]),
    .I3(\BU2/U0/receiver/recoder/code_error_pipe [3]),
    .O(\BU2/N48 )
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  \BU2/U0/receiver/recoder/error_lane<1><1>1  (
    .I0(\BU2/U0/receiver/recoder/lane_term_pipe [1]),
    .I1(\BU2/U0/receiver/recoder/lane_term_pipe [0]),
    .I2(\BU2/U0/receiver/recoder/lane_term_pipe [2]),
    .I3(\BU2/U0/receiver/recoder/lane_term_pipe [3]),
    .O(\BU2/U0/receiver/recoder/error_lane<1> [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF8AAA ))
  \BU2/U0/receiver/recoder/error_lane<2><2>4  (
    .I0(\BU2/U0/receiver/recoder/error_lane<2> [2]),
    .I1(\BU2/U0/receiver/recoder/code_error_pipe [2]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [21]),
    .I3(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o1 ),
    .I4(\BU2/U0/receiver/recoder/error_lane<2><2>1_1109 ),
    .I5(\BU2/U0/receiver/recoder/error_lane<2><2>2_1110 ),
    .O(\BU2/U0/receiver/recoder/error_lane [2])
  );
  LUT6 #(
    .INIT ( 64'h0010000000000010 ))
  \BU2/U0/receiver/recoder/error_lane<2><2>3  (
    .I0(\BU2/U0/receiver/recoder/lane_term_pipe [2]),
    .I1(\BU2/U0/receiver/recoder/lane_term_pipe [0]),
    .I2(\BU2/U0/receiver/recoder/lane_term_pipe [3]),
    .I3(\BU2/U0/receiver/recoder/lane_term_pipe [1]),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [23]),
    .I5(\BU2/U0/receiver/recoder/rxd_pipe [22]),
    .O(\BU2/U0/receiver/recoder/error_lane<2><2>2_1110 )
  );
  LUT5 #(
    .INIT ( 32'hFEAAFEFE ))
  \BU2/U0/receiver/recoder/error_lane<2><2>2  (
    .I0(\BU2/U0/receiver/recoder/code_error_delay_2_918 ),
    .I1(\BU2/U0/receiver/recoder/lane_terminate [0]),
    .I2(\BU2/U0/receiver/recoder/lane_terminate [1]),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [22]),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [23]),
    .O(\BU2/U0/receiver/recoder/error_lane<2><2>1_1109 )
  );
  LUT6 #(
    .INIT ( 64'hEEEEEEEEEEEFEEEE ))
  \BU2/U0/receiver/recoder/error_lane<2><2>1  (
    .I0(\BU2/U0/receiver/recoder/lane_terminate [0]),
    .I1(\BU2/U0/receiver/recoder/lane_terminate [1]),
    .I2(\BU2/U0/receiver/recoder/lane_term_pipe [2]),
    .I3(\BU2/U0/receiver/recoder/lane_term_pipe [0]),
    .I4(\BU2/U0/receiver/recoder/lane_term_pipe [3]),
    .I5(\BU2/U0/receiver/recoder/lane_term_pipe [1]),
    .O(\BU2/U0/receiver/recoder/error_lane<2> [2])
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \BU2/U0/receiver/recoder/error_lane<0><0>3  (
    .I0(\BU2/U0/receiver/recoder/error_lane<0> [0]),
    .I1(\BU2/U0/receiver/recoder/error_lane<0><0>1_1107 ),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o1 ),
    .I3(\BU2/U0/receiver/recoder/code_error_delay_0_916 ),
    .O(\BU2/U0/receiver/recoder/error_lane [0])
  );
  LUT4 #(
    .INIT ( 16'hF9FF ))
  \BU2/U0/receiver/recoder/error_lane<0><0>2  (
    .I0(\BU2/U0/receiver/recoder/rxd_pipe [6]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [7]),
    .I2(\BU2/U0/receiver/recoder/code_error_pipe [0]),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [5]),
    .O(\BU2/U0/receiver/recoder/error_lane<0><0>1_1107 )
  );
  LUT4 #(
    .INIT ( 16'h5554 ))
  \BU2/U0/receiver/recoder/error_lane<0><0>1  (
    .I0(\BU2/U0/receiver/recoder/lane_term_pipe [0]),
    .I1(\BU2/U0/receiver/recoder/lane_term_pipe [2]),
    .I2(\BU2/U0/receiver/recoder/lane_term_pipe [3]),
    .I3(\BU2/U0/receiver/recoder/lane_term_pipe [1]),
    .O(\BU2/U0/receiver/recoder/error_lane<0> [0])
  );
  LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<0>  (
    .I0(mgt_rxdata_8[4]),
    .I1(mgt_rxdata_8[3]),
    .I2(mgt_rxdata_8[5]),
    .I3(mgt_rxdata_8[7]),
    .I4(\BU2/N46 ),
    .I5(mgt_rxdata_8[6]),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [0])
  );
  LUT5 #(
    .INIT ( 32'hEFFFFFFF ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<0>_SW0  (
    .I0(mgt_rxdata_8[0]),
    .I1(mgt_rxdata_8[1]),
    .I2(mgt_rxdata_8[2]),
    .I3(mgt_rxcharisk_9[0]),
    .I4(mgt_codevalid_10[0]),
    .O(\BU2/N46 )
  );
  LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<1>  (
    .I0(mgt_rxdata_8[20]),
    .I1(mgt_rxdata_8[19]),
    .I2(mgt_rxdata_8[21]),
    .I3(mgt_rxdata_8[23]),
    .I4(\BU2/N44 ),
    .I5(mgt_rxdata_8[22]),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [1])
  );
  LUT5 #(
    .INIT ( 32'hEFFFFFFF ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<1>_SW0  (
    .I0(mgt_rxdata_8[16]),
    .I1(mgt_rxdata_8[17]),
    .I2(mgt_rxdata_8[18]),
    .I3(mgt_rxcharisk_9[2]),
    .I4(mgt_codevalid_10[2]),
    .O(\BU2/N44 )
  );
  LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<2>  (
    .I0(mgt_rxdata_8[36]),
    .I1(mgt_rxdata_8[35]),
    .I2(mgt_rxdata_8[37]),
    .I3(mgt_rxdata_8[39]),
    .I4(\BU2/N42 ),
    .I5(mgt_rxdata_8[38]),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [2])
  );
  LUT5 #(
    .INIT ( 32'hEFFFFFFF ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<2>_SW0  (
    .I0(mgt_rxdata_8[32]),
    .I1(mgt_rxdata_8[33]),
    .I2(mgt_rxdata_8[34]),
    .I3(mgt_rxcharisk_9[4]),
    .I4(mgt_codevalid_10[4]),
    .O(\BU2/N42 )
  );
  LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<3>  (
    .I0(mgt_rxdata_8[52]),
    .I1(mgt_rxdata_8[51]),
    .I2(mgt_rxdata_8[53]),
    .I3(mgt_rxdata_8[55]),
    .I4(\BU2/N40 ),
    .I5(mgt_rxdata_8[54]),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [3])
  );
  LUT5 #(
    .INIT ( 32'hEFFFFFFF ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<3>_SW0  (
    .I0(mgt_rxdata_8[48]),
    .I1(mgt_rxdata_8[49]),
    .I2(mgt_rxdata_8[50]),
    .I3(mgt_rxcharisk_9[6]),
    .I4(mgt_codevalid_10[6]),
    .O(\BU2/N40 )
  );
  LUT6 #(
    .INIT ( 64'h0100000000000000 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<4>  (
    .I0(mgt_rxdata_8[9]),
    .I1(mgt_rxdata_8[8]),
    .I2(mgt_rxdata_8[15]),
    .I3(mgt_rxdata_8[14]),
    .I4(mgt_rxdata_8[13]),
    .I5(\BU2/N38 ),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [4])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<4>_SW0  (
    .I0(mgt_rxdata_8[12]),
    .I1(mgt_rxdata_8[11]),
    .I2(mgt_rxdata_8[10]),
    .I3(mgt_rxcharisk_9[1]),
    .I4(mgt_codevalid_10[1]),
    .O(\BU2/N38 )
  );
  LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<5>  (
    .I0(mgt_rxdata_8[28]),
    .I1(mgt_rxdata_8[27]),
    .I2(mgt_rxdata_8[29]),
    .I3(mgt_rxdata_8[31]),
    .I4(\BU2/N36 ),
    .I5(mgt_rxdata_8[30]),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [5])
  );
  LUT5 #(
    .INIT ( 32'hEFFFFFFF ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<5>_SW0  (
    .I0(mgt_rxdata_8[24]),
    .I1(mgt_rxdata_8[25]),
    .I2(mgt_rxdata_8[26]),
    .I3(mgt_rxcharisk_9[3]),
    .I4(mgt_codevalid_10[3]),
    .O(\BU2/N36 )
  );
  LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<6>  (
    .I0(mgt_rxdata_8[44]),
    .I1(mgt_rxdata_8[43]),
    .I2(mgt_rxdata_8[45]),
    .I3(mgt_rxdata_8[47]),
    .I4(\BU2/N34 ),
    .I5(mgt_rxdata_8[46]),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [6])
  );
  LUT5 #(
    .INIT ( 32'hEFFFFFFF ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<6>_SW0  (
    .I0(mgt_rxdata_8[40]),
    .I1(mgt_rxdata_8[41]),
    .I2(mgt_rxdata_8[42]),
    .I3(mgt_rxcharisk_9[5]),
    .I4(mgt_codevalid_10[5]),
    .O(\BU2/N34 )
  );
  LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<7>  (
    .I0(mgt_rxdata_8[60]),
    .I1(mgt_rxdata_8[59]),
    .I2(mgt_rxdata_8[61]),
    .I3(mgt_rxdata_8[63]),
    .I4(\BU2/N32 ),
    .I5(mgt_rxdata_8[62]),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [7])
  );
  LUT5 #(
    .INIT ( 32'hEFFFFFFF ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a<7>_SW0  (
    .I0(mgt_rxdata_8[56]),
    .I1(mgt_rxdata_8[57]),
    .I2(mgt_rxdata_8[58]),
    .I3(mgt_rxcharisk_9[7]),
    .I4(mgt_codevalid_10[7]),
    .O(\BU2/N32 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \BU2/U0/receiver/code_error<0>3  (
    .I0(mgt_codevalid_10[0]),
    .I1(\BU2/U0/receiver/code_error<0>2_1097 ),
    .I2(mgt_rxcharisk_9[0]),
    .O(\BU2/U0/receiver/code_error [0])
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/receiver/code_error<0>2  (
    .I0(mgt_rxdata_8[2]),
    .I1(mgt_rxdata_8[3]),
    .I2(mgt_rxdata_8[0]),
    .I3(mgt_rxdata_8[1]),
    .I4(\BU2/U0/receiver/code_error<0>1_1096 ),
    .I5(mgt_rxdata_8[4]),
    .O(\BU2/U0/receiver/code_error<0>2_1097 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/receiver/code_error<0>1  (
    .I0(mgt_rxdata_8[6]),
    .I1(mgt_rxdata_8[7]),
    .I2(mgt_rxdata_8[5]),
    .O(\BU2/U0/receiver/code_error<0>1_1096 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \BU2/U0/receiver/code_error<1>3  (
    .I0(mgt_codevalid_10[2]),
    .I1(\BU2/U0/receiver/code_error<1>2_1095 ),
    .I2(mgt_rxcharisk_9[2]),
    .O(\BU2/U0/receiver/code_error [1])
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/receiver/code_error<1>2  (
    .I0(mgt_rxdata_8[18]),
    .I1(mgt_rxdata_8[19]),
    .I2(mgt_rxdata_8[16]),
    .I3(mgt_rxdata_8[17]),
    .I4(\BU2/U0/receiver/code_error<1>1_1094 ),
    .I5(mgt_rxdata_8[20]),
    .O(\BU2/U0/receiver/code_error<1>2_1095 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/receiver/code_error<1>1  (
    .I0(mgt_rxdata_8[22]),
    .I1(mgt_rxdata_8[23]),
    .I2(mgt_rxdata_8[21]),
    .O(\BU2/U0/receiver/code_error<1>1_1094 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \BU2/U0/receiver/code_error<2>3  (
    .I0(mgt_codevalid_10[4]),
    .I1(\BU2/U0/receiver/code_error<2>2_1093 ),
    .I2(mgt_rxcharisk_9[4]),
    .O(\BU2/U0/receiver/code_error [2])
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/receiver/code_error<2>2  (
    .I0(mgt_rxdata_8[34]),
    .I1(mgt_rxdata_8[35]),
    .I2(mgt_rxdata_8[32]),
    .I3(mgt_rxdata_8[33]),
    .I4(\BU2/U0/receiver/code_error<2>1_1092 ),
    .I5(mgt_rxdata_8[36]),
    .O(\BU2/U0/receiver/code_error<2>2_1093 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/receiver/code_error<2>1  (
    .I0(mgt_rxdata_8[38]),
    .I1(mgt_rxdata_8[39]),
    .I2(mgt_rxdata_8[37]),
    .O(\BU2/U0/receiver/code_error<2>1_1092 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \BU2/U0/receiver/code_error<3>3  (
    .I0(mgt_codevalid_10[6]),
    .I1(\BU2/U0/receiver/code_error<3>2_1091 ),
    .I2(mgt_rxcharisk_9[6]),
    .O(\BU2/U0/receiver/code_error [3])
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/receiver/code_error<3>2  (
    .I0(mgt_rxdata_8[50]),
    .I1(mgt_rxdata_8[51]),
    .I2(mgt_rxdata_8[48]),
    .I3(mgt_rxdata_8[49]),
    .I4(\BU2/U0/receiver/code_error<3>1_1090 ),
    .I5(mgt_rxdata_8[52]),
    .O(\BU2/U0/receiver/code_error<3>2_1091 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/receiver/code_error<3>1  (
    .I0(mgt_rxdata_8[54]),
    .I1(mgt_rxdata_8[55]),
    .I2(mgt_rxdata_8[53]),
    .O(\BU2/U0/receiver/code_error<3>1_1090 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \BU2/U0/receiver/code_error<4>3  (
    .I0(mgt_codevalid_10[1]),
    .I1(\BU2/U0/receiver/code_error<4>2_1089 ),
    .I2(mgt_rxcharisk_9[1]),
    .O(\BU2/U0/receiver/code_error [4])
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/receiver/code_error<4>2  (
    .I0(mgt_rxdata_8[10]),
    .I1(mgt_rxdata_8[11]),
    .I2(mgt_rxdata_8[8]),
    .I3(mgt_rxdata_8[9]),
    .I4(\BU2/U0/receiver/code_error<4>1_1088 ),
    .I5(mgt_rxdata_8[12]),
    .O(\BU2/U0/receiver/code_error<4>2_1089 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/receiver/code_error<4>1  (
    .I0(mgt_rxdata_8[14]),
    .I1(mgt_rxdata_8[15]),
    .I2(mgt_rxdata_8[13]),
    .O(\BU2/U0/receiver/code_error<4>1_1088 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \BU2/U0/receiver/code_error<5>3  (
    .I0(mgt_codevalid_10[3]),
    .I1(\BU2/U0/receiver/code_error<5>2_1087 ),
    .I2(mgt_rxcharisk_9[3]),
    .O(\BU2/U0/receiver/code_error [5])
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/receiver/code_error<5>2  (
    .I0(mgt_rxdata_8[26]),
    .I1(mgt_rxdata_8[27]),
    .I2(mgt_rxdata_8[24]),
    .I3(mgt_rxdata_8[25]),
    .I4(\BU2/U0/receiver/code_error<5>1_1086 ),
    .I5(mgt_rxdata_8[28]),
    .O(\BU2/U0/receiver/code_error<5>2_1087 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/receiver/code_error<5>1  (
    .I0(mgt_rxdata_8[30]),
    .I1(mgt_rxdata_8[31]),
    .I2(mgt_rxdata_8[29]),
    .O(\BU2/U0/receiver/code_error<5>1_1086 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \BU2/U0/receiver/code_error<6>3  (
    .I0(mgt_codevalid_10[5]),
    .I1(\BU2/U0/receiver/code_error<6>2_1085 ),
    .I2(mgt_rxcharisk_9[5]),
    .O(\BU2/U0/receiver/code_error [6])
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/receiver/code_error<6>2  (
    .I0(mgt_rxdata_8[42]),
    .I1(mgt_rxdata_8[43]),
    .I2(mgt_rxdata_8[40]),
    .I3(mgt_rxdata_8[41]),
    .I4(\BU2/U0/receiver/code_error<6>1_1084 ),
    .I5(mgt_rxdata_8[44]),
    .O(\BU2/U0/receiver/code_error<6>2_1085 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/receiver/code_error<6>1  (
    .I0(mgt_rxdata_8[46]),
    .I1(mgt_rxdata_8[47]),
    .I2(mgt_rxdata_8[45]),
    .O(\BU2/U0/receiver/code_error<6>1_1084 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \BU2/U0/receiver/code_error<7>3  (
    .I0(mgt_codevalid_10[7]),
    .I1(\BU2/U0/receiver/code_error<7>2_1083 ),
    .I2(mgt_rxcharisk_9[7]),
    .O(\BU2/U0/receiver/code_error [7])
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/receiver/code_error<7>2  (
    .I0(mgt_rxdata_8[58]),
    .I1(mgt_rxdata_8[59]),
    .I2(mgt_rxdata_8[56]),
    .I3(mgt_rxdata_8[57]),
    .I4(\BU2/U0/receiver/code_error<7>1_1082 ),
    .I5(mgt_rxdata_8[60]),
    .O(\BU2/U0/receiver/code_error<7>2_1083 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/receiver/code_error<7>1  (
    .I0(mgt_rxdata_8[62]),
    .I1(mgt_rxdata_8[63]),
    .I2(mgt_rxdata_8[61]),
    .O(\BU2/U0/receiver/code_error<7>1_1082 )
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o2  (
    .I0(\BU2/U0/transmitter/txd_pipe [2]),
    .I1(\BU2/U0/transmitter/txd_pipe [3]),
    .I2(\BU2/U0/transmitter/txd_pipe [0]),
    .I3(\BU2/U0/transmitter/txd_pipe [1]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o1_1081 ),
    .I5(\BU2/U0/transmitter/txd_pipe [4]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o1  (
    .I0(\BU2/U0/transmitter/txd_pipe [6]),
    .I1(\BU2/U0/transmitter/txd_pipe [7]),
    .I2(\BU2/U0/transmitter/txd_pipe [5]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o1_1081 )
  );
  LUT6 #(
    .INIT ( 64'h9777FFF7FFFFFFFF ))
  \BU2/U0/transmitter/G_FILTER_LOW[1].filter/GND_17_o_reduce_nor_14_o  (
    .I0(\BU2/U0/transmitter/txd_pipe [11]),
    .I1(\BU2/U0/transmitter/txd_pipe [10]),
    .I2(\BU2/U0/transmitter/txd_pipe [9]),
    .I3(\BU2/U0/transmitter/txd_pipe [8]),
    .I4(\BU2/N28 ),
    .I5(\BU2/U0/transmitter/txd_pipe [12]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/GND_17_o_reduce_nor_14_o_1007 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \BU2/U0/transmitter/G_FILTER_LOW[1].filter/GND_17_o_reduce_nor_14_o_SW0  (
    .I0(\BU2/U0/transmitter/txd_pipe [15]),
    .I1(\BU2/U0/transmitter/txd_pipe [14]),
    .I2(\BU2/U0/transmitter/txd_pipe [13]),
    .O(\BU2/N28 )
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o2  (
    .I0(\BU2/U0/transmitter/txd_pipe [18]),
    .I1(\BU2/U0/transmitter/txd_pipe [19]),
    .I2(\BU2/U0/transmitter/txd_pipe [16]),
    .I3(\BU2/U0/transmitter/txd_pipe [17]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o1_1079 ),
    .I5(\BU2/U0/transmitter/txd_pipe [20]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o1  (
    .I0(\BU2/U0/transmitter/txd_pipe [22]),
    .I1(\BU2/U0/transmitter/txd_pipe [23]),
    .I2(\BU2/U0/transmitter/txd_pipe [21]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o1_1079 )
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o2  (
    .I0(\BU2/U0/transmitter/txd_pipe [26]),
    .I1(\BU2/U0/transmitter/txd_pipe [27]),
    .I2(\BU2/U0/transmitter/txd_pipe [24]),
    .I3(\BU2/U0/transmitter/txd_pipe [25]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o1_1078 ),
    .I5(\BU2/U0/transmitter/txd_pipe [28]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o1  (
    .I0(\BU2/U0/transmitter/txd_pipe [30]),
    .I1(\BU2/U0/transmitter/txd_pipe [31]),
    .I2(\BU2/U0/transmitter/txd_pipe [29]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o1_1078 )
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o2  (
    .I0(\BU2/U0/transmitter/txd_pipe [34]),
    .I1(\BU2/U0/transmitter/txd_pipe [35]),
    .I2(\BU2/U0/transmitter/txd_pipe [32]),
    .I3(\BU2/U0/transmitter/txd_pipe [33]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o1_1077 ),
    .I5(\BU2/U0/transmitter/txd_pipe [36]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o1  (
    .I0(\BU2/U0/transmitter/txd_pipe [38]),
    .I1(\BU2/U0/transmitter/txd_pipe [39]),
    .I2(\BU2/U0/transmitter/txd_pipe [37]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o1_1077 )
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o2  (
    .I0(\BU2/U0/transmitter/txd_pipe [42]),
    .I1(\BU2/U0/transmitter/txd_pipe [43]),
    .I2(\BU2/U0/transmitter/txd_pipe [40]),
    .I3(\BU2/U0/transmitter/txd_pipe [41]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o1_1076 ),
    .I5(\BU2/U0/transmitter/txd_pipe [44]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o1  (
    .I0(\BU2/U0/transmitter/txd_pipe [46]),
    .I1(\BU2/U0/transmitter/txd_pipe [47]),
    .I2(\BU2/U0/transmitter/txd_pipe [45]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o1_1076 )
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o2  (
    .I0(\BU2/U0/transmitter/txd_pipe [50]),
    .I1(\BU2/U0/transmitter/txd_pipe [51]),
    .I2(\BU2/U0/transmitter/txd_pipe [48]),
    .I3(\BU2/U0/transmitter/txd_pipe [49]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o1_1075 ),
    .I5(\BU2/U0/transmitter/txd_pipe [52]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o1  (
    .I0(\BU2/U0/transmitter/txd_pipe [54]),
    .I1(\BU2/U0/transmitter/txd_pipe [55]),
    .I2(\BU2/U0/transmitter/txd_pipe [53]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o1_1075 )
  );
  LUT6 #(
    .INIT ( 64'hFFF79777FFFFFFFF ))
  \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o2  (
    .I0(\BU2/U0/transmitter/txd_pipe [58]),
    .I1(\BU2/U0/transmitter/txd_pipe [59]),
    .I2(\BU2/U0/transmitter/txd_pipe [56]),
    .I3(\BU2/U0/transmitter/txd_pipe [57]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o1_1074 ),
    .I5(\BU2/U0/transmitter/txd_pipe [60]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o1  (
    .I0(\BU2/U0/transmitter/txd_pipe [62]),
    .I1(\BU2/U0/transmitter/txd_pipe [63]),
    .I2(\BU2/U0/transmitter/txd_pipe [61]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o1_1074 )
  );
  LUT6 #(
    .INIT ( 64'hABABABABABFFABAB ))
  \BU2/U0/transmitter/state_machine/Mmux_p_state_comb.state_temp22  (
    .I0(\BU2/U0/transmitter/state_machine/Mmux_p_state_comb.state_temp2 ),
    .I1(\BU2/U0/transmitter/tx_is_idle [0]),
    .I2(\BU2/U0/transmitter/tx_is_q [0]),
    .I3(\BU2/U0/transmitter/k_r_prbs_i/prbs [8]),
    .I4(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I5(\BU2/U0/transmitter/a_due [0]),
    .O(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [0])
  );
  LUT6 #(
    .INIT ( 64'h20222020AA22AA20 ))
  \BU2/U0/transmitter/state_machine/Mmux_p_state_comb.state_temp21  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/q_det_993 ),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I4(\BU2/U0/transmitter/tx_is_q [0]),
    .I5(\BU2/U0/transmitter/k_r_prbs_i/prbs [8]),
    .O(\BU2/U0/transmitter/state_machine/Mmux_p_state_comb.state_temp2 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0808AA08 ))
  \BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<0>3  (
    .I0(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [1]),
    .I1(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [2]),
    .I2(\BU2/U0/transmitter/k_r_prbs_i/prbs [7]),
    .I3(\BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<0>2 ),
    .I4(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [0]),
    .I5(\BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<0> ),
    .O(\BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<0>1_580 )
  );
  LUT5 #(
    .INIT ( 32'h11111F11 ))
  \BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<0>1  (
    .I0(\BU2/U0/transmitter/tx_is_idle [1]),
    .I1(\BU2/U0/transmitter/tx_is_q [1]),
    .I2(\BU2/U0/transmitter/k_r_prbs_i/prbs [7]),
    .I3(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [2]),
    .I4(\BU2/U0/transmitter/a_due [1]),
    .O(\BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h44EA40EA44404040 ))
  \BU2/U0/transmitter/state_machine/Mmux_state[1][2]_PWR_17_o_wide_mux_20_OUT2  (
    .I0(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [1]),
    .I1(\BU2/U0/transmitter/a_due [1]),
    .I2(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [2]),
    .I3(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [0]),
    .I4(\BU2/U0/transmitter/state_machine/next_ifg_is_a_1071 ),
    .I5(\BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<0>2 ),
    .O(\BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/transmitter/state_machine/Mmux_state[1][2]_PWR_17_o_wide_mux_20_OUT2_SW0  (
    .I0(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [2]),
    .I1(\BU2/U0/transmitter/tx_is_q [1]),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/q_det_993 ),
    .O(\BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h0000000100010001 ))
  \BU2/U0/transmitter/align/Mmux_a_cnt2  (
    .I0(\BU2/U0/transmitter/tx_code_a [1]),
    .I1(\BU2/U0/transmitter/tx_code_a [0]),
    .I2(\BU2/U0/transmitter/align/count [4]),
    .I3(\BU2/U0/transmitter/align/count [3]),
    .I4(\BU2/U0/transmitter/align/count [2]),
    .I5(\BU2/N8 ),
    .O(\BU2/U0/transmitter/a_due [1])
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \BU2/U0/transmitter/align/Mmux_a_cnt2_SW0  (
    .I0(\BU2/U0/transmitter/align/count [0]),
    .I1(\BU2/U0/transmitter/align/count [1]),
    .I2(\BU2/U0/transmitter/align/extra_a_1066 ),
    .O(\BU2/N8 )
  );
  LUT6 #(
    .INIT ( 64'h0101000101010101 ))
  \BU2/U0/transmitter/align/Mmux_a_cnt1  (
    .I0(\BU2/U0/transmitter/tx_code_a [1]),
    .I1(\BU2/U0/transmitter/tx_code_a [0]),
    .I2(\BU2/N6 ),
    .I3(\BU2/U0/transmitter/align/count [1]),
    .I4(\BU2/U0/transmitter/align/extra_a_1066 ),
    .I5(\BU2/U0/transmitter/align/count [0]),
    .O(\BU2/U0/transmitter/a_due [0])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \BU2/U0/transmitter/align/Mmux_a_cnt1_SW0  (
    .I0(\BU2/U0/transmitter/align/count [4]),
    .I1(\BU2/U0/transmitter/align/count [3]),
    .I2(\BU2/U0/transmitter/align/count [2]),
    .O(\BU2/N6 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2  (
    .I0(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txc_out_598 ),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txc_out_615 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<0> ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<1> ),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<5> ),
    .I5(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<6> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o2_1064 )
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1  (
    .I0(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txc_out_632 ),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txc_out_649 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<7> ),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<4> ),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<3> ),
    .I5(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<2> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/PWR_11_o_GND_11_o_AND_1_o1_1063 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \BU2/U0/transmitter/tqmsg_capture_1/q_det_PWR_11_o_MUX_77_o2  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txc_out_666 ),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txc_out_683 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<0> ),
    .I3(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<1> ),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<5> ),
    .I5(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<6> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/q_det_PWR_11_o_MUX_77_o2_1062 )
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \BU2/U0/transmitter/tqmsg_capture_1/q_det_PWR_11_o_MUX_77_o1  (
    .I0(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txc_out_700 ),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txc_out_717 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<7> ),
    .I3(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<4> ),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<3> ),
    .I5(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<2> ),
    .O(\BU2/U0/transmitter/tqmsg_capture_1/q_det_PWR_11_o_MUX_77_o1_1061 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF2000 ))
  \BU2/U0/transmitter/is_terminate<0>8  (
    .I0(\BU2/U0/transmitter/txd_pipe [10]),
    .I1(\BU2/U0/transmitter/txd_pipe [9]),
    .I2(\BU2/U0/transmitter/txd_pipe [8]),
    .I3(\BU2/U0/transmitter/is_terminate<0>7_1059 ),
    .I4(\BU2/U0/transmitter/is_terminate<0>6_1058 ),
    .I5(\BU2/U0/transmitter/is_terminate<0>4_1056 ),
    .O(\BU2/U0/transmitter/is_terminate [0])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \BU2/U0/transmitter/is_terminate<0>7  (
    .I0(\BU2/U0/transmitter/txd_pipe [12]),
    .I1(\BU2/U0/transmitter/txd_pipe [11]),
    .I2(\BU2/U0/transmitter/txd_pipe [14]),
    .I3(\BU2/U0/transmitter/txd_pipe [13]),
    .I4(\BU2/U0/transmitter/txc_pipe [1]),
    .I5(\BU2/U0/transmitter/txd_pipe [15]),
    .O(\BU2/U0/transmitter/is_terminate<0>7_1059 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \BU2/U0/transmitter/is_terminate<0>6  (
    .I0(\BU2/U0/transmitter/txd_pipe [1]),
    .I1(\BU2/U0/transmitter/txd_pipe [2]),
    .I2(\BU2/U0/transmitter/txd_pipe [0]),
    .I3(\BU2/U0/transmitter/is_terminate<0>5_1057 ),
    .O(\BU2/U0/transmitter/is_terminate<0>6_1058 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \BU2/U0/transmitter/is_terminate<0>5  (
    .I0(\BU2/U0/transmitter/txd_pipe [4]),
    .I1(\BU2/U0/transmitter/txd_pipe [3]),
    .I2(\BU2/U0/transmitter/txd_pipe [6]),
    .I3(\BU2/U0/transmitter/txd_pipe [5]),
    .I4(\BU2/U0/transmitter/txc_pipe [0]),
    .I5(\BU2/U0/transmitter/txd_pipe [7]),
    .O(\BU2/U0/transmitter/is_terminate<0>5_1057 )
  );
  LUT6 #(
    .INIT ( 64'h88F8888888888888 ))
  \BU2/U0/transmitter/is_terminate<0>4  (
    .I0(\BU2/U0/transmitter/is_terminate<0>2_1054 ),
    .I1(\BU2/U0/transmitter/is_terminate<0>3_1055 ),
    .I2(\BU2/U0/transmitter/txd_pipe [26]),
    .I3(\BU2/U0/transmitter/txd_pipe [25]),
    .I4(\BU2/U0/transmitter/txd_pipe [24]),
    .I5(\BU2/U0/transmitter/is_terminate<0>1_1053 ),
    .O(\BU2/U0/transmitter/is_terminate<0>4_1056 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \BU2/U0/transmitter/is_terminate<0>3  (
    .I0(\BU2/U0/transmitter/txd_pipe [17]),
    .I1(\BU2/U0/transmitter/txd_pipe [16]),
    .I2(\BU2/U0/transmitter/txd_pipe [18]),
    .O(\BU2/U0/transmitter/is_terminate<0>3_1055 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \BU2/U0/transmitter/is_terminate<0>2  (
    .I0(\BU2/U0/transmitter/txd_pipe [20]),
    .I1(\BU2/U0/transmitter/txd_pipe [19]),
    .I2(\BU2/U0/transmitter/txd_pipe [22]),
    .I3(\BU2/U0/transmitter/txd_pipe [21]),
    .I4(\BU2/U0/transmitter/txc_pipe [2]),
    .I5(\BU2/U0/transmitter/txd_pipe [23]),
    .O(\BU2/U0/transmitter/is_terminate<0>2_1054 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \BU2/U0/transmitter/is_terminate<0>1  (
    .I0(\BU2/U0/transmitter/txd_pipe [28]),
    .I1(\BU2/U0/transmitter/txd_pipe [27]),
    .I2(\BU2/U0/transmitter/txd_pipe [30]),
    .I3(\BU2/U0/transmitter/txd_pipe [29]),
    .I4(\BU2/U0/transmitter/txc_pipe [3]),
    .I5(\BU2/U0/transmitter/txd_pipe [31]),
    .O(\BU2/U0/transmitter/is_terminate<0>1_1053 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF2000 ))
  \BU2/U0/transmitter/is_terminate<1>8  (
    .I0(\BU2/U0/transmitter/txd_pipe [42]),
    .I1(\BU2/U0/transmitter/txd_pipe [41]),
    .I2(\BU2/U0/transmitter/txd_pipe [40]),
    .I3(\BU2/U0/transmitter/is_terminate<1>7_1051 ),
    .I4(\BU2/U0/transmitter/is_terminate<1>6_1050 ),
    .I5(\BU2/U0/transmitter/is_terminate<1>4_1048 ),
    .O(\BU2/U0/transmitter/is_terminate [1])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \BU2/U0/transmitter/is_terminate<1>7  (
    .I0(\BU2/U0/transmitter/txd_pipe [44]),
    .I1(\BU2/U0/transmitter/txd_pipe [43]),
    .I2(\BU2/U0/transmitter/txd_pipe [46]),
    .I3(\BU2/U0/transmitter/txd_pipe [45]),
    .I4(\BU2/U0/transmitter/txc_pipe [5]),
    .I5(\BU2/U0/transmitter/txd_pipe [47]),
    .O(\BU2/U0/transmitter/is_terminate<1>7_1051 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \BU2/U0/transmitter/is_terminate<1>6  (
    .I0(\BU2/U0/transmitter/txd_pipe [33]),
    .I1(\BU2/U0/transmitter/txd_pipe [34]),
    .I2(\BU2/U0/transmitter/txd_pipe [32]),
    .I3(\BU2/U0/transmitter/is_terminate<1>5_1049 ),
    .O(\BU2/U0/transmitter/is_terminate<1>6_1050 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \BU2/U0/transmitter/is_terminate<1>5  (
    .I0(\BU2/U0/transmitter/txd_pipe [36]),
    .I1(\BU2/U0/transmitter/txd_pipe [35]),
    .I2(\BU2/U0/transmitter/txd_pipe [38]),
    .I3(\BU2/U0/transmitter/txd_pipe [37]),
    .I4(\BU2/U0/transmitter/txc_pipe [4]),
    .I5(\BU2/U0/transmitter/txd_pipe [39]),
    .O(\BU2/U0/transmitter/is_terminate<1>5_1049 )
  );
  LUT6 #(
    .INIT ( 64'h88F8888888888888 ))
  \BU2/U0/transmitter/is_terminate<1>4  (
    .I0(\BU2/U0/transmitter/is_terminate<1>2_1046 ),
    .I1(\BU2/U0/transmitter/is_terminate<1>3_1047 ),
    .I2(\BU2/U0/transmitter/txd_pipe [58]),
    .I3(\BU2/U0/transmitter/txd_pipe [57]),
    .I4(\BU2/U0/transmitter/txd_pipe [56]),
    .I5(\BU2/U0/transmitter/is_terminate<1>1_1045 ),
    .O(\BU2/U0/transmitter/is_terminate<1>4_1048 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \BU2/U0/transmitter/is_terminate<1>3  (
    .I0(\BU2/U0/transmitter/txd_pipe [49]),
    .I1(\BU2/U0/transmitter/txd_pipe [48]),
    .I2(\BU2/U0/transmitter/txd_pipe [50]),
    .O(\BU2/U0/transmitter/is_terminate<1>3_1047 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \BU2/U0/transmitter/is_terminate<1>2  (
    .I0(\BU2/U0/transmitter/txd_pipe [52]),
    .I1(\BU2/U0/transmitter/txd_pipe [51]),
    .I2(\BU2/U0/transmitter/txd_pipe [54]),
    .I3(\BU2/U0/transmitter/txd_pipe [53]),
    .I4(\BU2/U0/transmitter/txc_pipe [6]),
    .I5(\BU2/U0/transmitter/txd_pipe [55]),
    .O(\BU2/U0/transmitter/is_terminate<1>2_1046 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \BU2/U0/transmitter/is_terminate<1>1  (
    .I0(\BU2/U0/transmitter/txd_pipe [60]),
    .I1(\BU2/U0/transmitter/txd_pipe [59]),
    .I2(\BU2/U0/transmitter/txd_pipe [62]),
    .I3(\BU2/U0/transmitter/txd_pipe [61]),
    .I4(\BU2/U0/transmitter/txc_pipe [7]),
    .I5(\BU2/U0/transmitter/txd_pipe [63]),
    .O(\BU2/U0/transmitter/is_terminate<1>1_1045 )
  );
  LUT4 #(
    .INIT ( 16'hFF4F ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT621  (
    .I0(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_70_o_1037 ),
    .I1(\BU2/U0/receiver/recoder/rxd_half_pipe [7]),
    .I2(NlwRenamedSig_OI_align_status),
    .I3(\BU2/U0/receiver/recoder/error_lane [0]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hFF4F ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT451  (
    .I0(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_70_o_1037 ),
    .I1(\BU2/U0/receiver/recoder/rxd_half_pipe [4]),
    .I2(NlwRenamedSig_OI_align_status),
    .I3(\BU2/U0/receiver/recoder/error_lane [0]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'hFF4F ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT341  (
    .I0(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_70_o_1037 ),
    .I1(\BU2/U0/receiver/recoder/rxd_half_pipe [3]),
    .I2(NlwRenamedSig_OI_align_status),
    .I3(\BU2/U0/receiver/recoder/error_lane [0]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFF4F ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT301  (
    .I0(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o ),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [4]),
    .I2(NlwRenamedSig_OI_align_status),
    .I3(\BU2/U0/receiver/recoder/error_lane [4]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<36> )
  );
  LUT4 #(
    .INIT ( 16'hFF4F ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT291  (
    .I0(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o ),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [3]),
    .I2(NlwRenamedSig_OI_align_status),
    .I3(\BU2/U0/receiver/recoder/error_lane [4]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<35> )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \BU2/U0/receiver/recoder/Mmux_GND_20_o_GND_20_o_mux_105_OUT31  (
    .I0(\BU2/U0/receiver/recoder/lane_terminate [0]),
    .I1(\BU2/U0/receiver/recoder/lane_terminate [1]),
    .I2(\BU2/U0/receiver/recoder/lane_terminate [2]),
    .I3(\BU2/U0/receiver/recoder/lane_terminate [3]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_mux_105_OUT [2])
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT281  (
    .I0(\BU2/U0/receiver/recoder/rxd_pipe [2]),
    .I1(\BU2/U0/receiver/recoder/error_lane [4]),
    .I2(NlwRenamedSig_OI_align_status),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<34> )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \BU2/U0/receiver/recoder/Mmux_rxc_pipe[3]_GND_20_o_mux_25_OUT51  (
    .I0(\BU2/U0/receiver/recoder/rxc_pipe [0]),
    .I1(\BU2/U0/receiver/recoder/error_lane [4]),
    .I2(NlwRenamedSig_OI_align_status),
    .O(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o11  (
    .I0(\BU2/U0/receiver/recoder/rxd_pipe [12]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [11]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [10]),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [9]),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [8]),
    .I5(\BU2/U0/receiver/recoder/rxc_pipe [1]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o1 )
  );
  LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o11  (
    .I0(\BU2/U0/receiver/recoder/rxd_pipe [20]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [19]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [18]),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [17]),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [16]),
    .I5(\BU2/U0/receiver/recoder/rxc_pipe [2]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o1 )
  );
  LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o11  (
    .I0(\BU2/U0/receiver/recoder/rxd_pipe [2]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [3]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [4]),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [1]),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [0]),
    .I5(\BU2/U0/receiver/recoder/rxc_pipe [0]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o1 )
  );
  LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o21  (
    .I0(\BU2/U0/receiver/recoder/rxd_pipe [28]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [27]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [26]),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [24]),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [25]),
    .I5(\BU2/U0/receiver/recoder/rxc_pipe [3]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o2 )
  );
  LUT4 #(
    .INIT ( 16'h0882 ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o1  (
    .I0(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o2 ),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [29]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [30]),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [31]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT641  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [1]),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_72_o_1035 ),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [9]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<9> )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT531  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [7]),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o ),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [25]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<57> )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT441  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [6]),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o ),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [17]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<49> )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT361  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [5]),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o ),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [9]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<41> )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT271  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [4]),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o ),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [1]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<33> )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT181  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [3]),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_76_o_1033 ),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [25]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<25> )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT121  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [0]),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_70_o_1037 ),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [1]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT91  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [2]),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_74_o_1036 ),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [17]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<17> )
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  \BU2/U0/receiver/recoder/Mmux_GND_20_o_GND_20_o_mux_105_OUT21  (
    .I0(\BU2/U0/receiver/recoder/lane_terminate [0]),
    .I1(\BU2/U0/receiver/recoder/lane_terminate [1]),
    .I2(\BU2/U0/receiver/recoder/lane_terminate [2]),
    .I3(\BU2/U0/receiver/recoder/lane_terminate [3]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_mux_105_OUT [1])
  );
  LUT4 #(
    .INIT ( 16'h4440 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT631  (
    .I0(\BU2/U0/receiver/recoder/error_lane [1]),
    .I1(NlwRenamedSig_OI_align_status),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_72_o_1035 ),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [8]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<8> )
  );
  LUT4 #(
    .INIT ( 16'h4440 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT431  (
    .I0(\BU2/U0/receiver/recoder/error_lane [6]),
    .I1(NlwRenamedSig_OI_align_status),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o ),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [16]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<48> )
  );
  LUT4 #(
    .INIT ( 16'h4440 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT351  (
    .I0(\BU2/U0/receiver/recoder/error_lane [5]),
    .I1(NlwRenamedSig_OI_align_status),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o ),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [8]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<40> )
  );
  LUT4 #(
    .INIT ( 16'h4440 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT261  (
    .I0(\BU2/U0/receiver/recoder/error_lane [4]),
    .I1(NlwRenamedSig_OI_align_status),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o ),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [0]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<32> )
  );
  LUT4 #(
    .INIT ( 16'h4440 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT81  (
    .I0(\BU2/U0/receiver/recoder/error_lane [2]),
    .I1(NlwRenamedSig_OI_align_status),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_74_o_1036 ),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [16]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<16> )
  );
  LUT4 #(
    .INIT ( 16'h4440 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT11  (
    .I0(\BU2/U0/receiver/recoder/error_lane [0]),
    .I1(NlwRenamedSig_OI_align_status),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_70_o_1037 ),
    .I3(\BU2/U0/receiver/recoder/rxd_half_pipe [0]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT611  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_70_o_1037 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [6]),
    .I3(\BU2/U0/receiver/recoder/error_lane [0]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT591  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o ),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [30]),
    .I3(\BU2/U0/receiver/recoder/error_lane [7]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<62> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT581  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o ),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [29]),
    .I3(\BU2/U0/receiver/recoder/error_lane [7]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<61> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT571  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o ),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [28]),
    .I3(\BU2/U0/receiver/recoder/error_lane [7]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<60> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT561  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_70_o_1037 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [5]),
    .I3(\BU2/U0/receiver/recoder/error_lane [0]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT551  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o ),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [27]),
    .I3(\BU2/U0/receiver/recoder/error_lane [7]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<59> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT481  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o ),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [20]),
    .I3(\BU2/U0/receiver/recoder/error_lane [6]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<52> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT471  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o ),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [19]),
    .I3(\BU2/U0/receiver/recoder/error_lane [6]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<51> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT391  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o ),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [12]),
    .I3(\BU2/U0/receiver/recoder/error_lane [5]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<44> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT381  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o ),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [11]),
    .I3(\BU2/U0/receiver/recoder/error_lane [5]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<43> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT251  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_76_o_1033 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [31]),
    .I3(\BU2/U0/receiver/recoder/error_lane [3]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<31> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT241  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_76_o_1033 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [30]),
    .I3(\BU2/U0/receiver/recoder/error_lane [3]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<30> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT221  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_76_o_1033 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [29]),
    .I3(\BU2/U0/receiver/recoder/error_lane [3]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<29> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT211  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_76_o_1033 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [28]),
    .I3(\BU2/U0/receiver/recoder/error_lane [3]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<28> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT201  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_76_o_1033 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [27]),
    .I3(\BU2/U0/receiver/recoder/error_lane [3]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<27> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT161  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_74_o_1036 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [23]),
    .I3(\BU2/U0/receiver/recoder/error_lane [2]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<23> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT151  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_74_o_1036 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [22]),
    .I3(\BU2/U0/receiver/recoder/error_lane [2]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<22> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT141  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_74_o_1036 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [21]),
    .I3(\BU2/U0/receiver/recoder/error_lane [2]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<21> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT131  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_74_o_1036 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [20]),
    .I3(\BU2/U0/receiver/recoder/error_lane [2]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<20> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT111  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_74_o_1036 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [19]),
    .I3(\BU2/U0/receiver/recoder/error_lane [2]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<19> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT71  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_72_o_1035 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [15]),
    .I3(\BU2/U0/receiver/recoder/error_lane [1]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<15> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT65  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_72_o_1035 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [14]),
    .I3(\BU2/U0/receiver/recoder/error_lane [1]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<14> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT51  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_72_o_1035 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [13]),
    .I3(\BU2/U0/receiver/recoder/error_lane [1]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<13> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT41  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_72_o_1035 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [12]),
    .I3(\BU2/U0/receiver/recoder/error_lane [1]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<12> )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT31  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_72_o_1035 ),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [11]),
    .I3(\BU2/U0/receiver/recoder/error_lane [1]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<11> )
  );
  LUT4 #(
    .INIT ( 16'h54FF ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT521  (
    .I0(\BU2/U0/receiver/recoder/error_lane [7]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [24]),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o ),
    .I3(NlwRenamedSig_OI_align_status),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<56> )
  );
  LUT4 #(
    .INIT ( 16'h54FF ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT171  (
    .I0(\BU2/U0/receiver/recoder/error_lane [3]),
    .I1(\BU2/U0/receiver/recoder/rxd_half_pipe [24]),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_76_o_1033 ),
    .I3(NlwRenamedSig_OI_align_status),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<24> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT541  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [7]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [26]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<58> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT461  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [6]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [18]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<50> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT371  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [5]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [10]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<42> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT191  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [3]),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [26]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<26> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT101  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [2]),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [18]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<18> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT210  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [1]),
    .I2(\BU2/U0/receiver/recoder/rxd_half_pipe [10]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxc_pipe[3]_GND_20_o_mux_25_OUT81  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [7]),
    .I2(\BU2/U0/receiver/recoder/rxc_pipe [3]),
    .O(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxc_pipe[3]_GND_20_o_mux_25_OUT71  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [6]),
    .I2(\BU2/U0/receiver/recoder/rxc_pipe [2]),
    .O(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxc_pipe[3]_GND_20_o_mux_25_OUT61  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [5]),
    .I2(\BU2/U0/receiver/recoder/rxc_pipe [1]),
    .O(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxc_pipe[3]_GND_20_o_mux_25_OUT41  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [3]),
    .I2(\BU2/U0/receiver/recoder/rxc_half_pipe [3]),
    .O(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxc_pipe[3]_GND_20_o_mux_25_OUT31  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [2]),
    .I2(\BU2/U0/receiver/recoder/rxc_half_pipe [2]),
    .O(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/receiver/recoder/Mmux_rxc_pipe[3]_GND_20_o_mux_25_OUT21  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/error_lane [1]),
    .I2(\BU2/U0/receiver/recoder/rxc_half_pipe [1]),
    .O(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h0882 ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o2  (
    .I0(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o1 ),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [5]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [6]),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [7]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o )
  );
  LUT4 #(
    .INIT ( 16'h0882 ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o2  (
    .I0(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o1 ),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [13]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [14]),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [15]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o )
  );
  LUT4 #(
    .INIT ( 16'h0882 ))
  \BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o2  (
    .I0(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o1 ),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [21]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [22]),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [23]),
    .O(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA80888888 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT421  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [15]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [14]),
    .I3(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o1 ),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [13]),
    .I5(\BU2/U0/receiver/recoder/error_lane [5]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<47> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA80888888 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT511  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [23]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [22]),
    .I3(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o1 ),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [21]),
    .I5(\BU2/U0/receiver/recoder/error_lane [6]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<55> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA80888888 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT601  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [31]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [30]),
    .I3(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_84_o2 ),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [29]),
    .I5(\BU2/U0/receiver/recoder/error_lane [7]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<63> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA80888888 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT411  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [14]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [15]),
    .I3(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o1 ),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [13]),
    .I5(\BU2/U0/receiver/recoder/error_lane [5]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<46> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA88080888 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT401  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [13]),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_80_o1 ),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [14]),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [15]),
    .I5(\BU2/U0/receiver/recoder/error_lane [5]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<45> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA80888888 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT501  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [22]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [23]),
    .I3(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o1 ),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [21]),
    .I5(\BU2/U0/receiver/recoder/error_lane [6]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<54> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA88080888 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT491  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [21]),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_82_o1 ),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [22]),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [23]),
    .I5(\BU2/U0/receiver/recoder/error_lane [6]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<53> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF8AAAFFFF ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT331  (
    .I0(\BU2/U0/receiver/recoder/rxd_pipe [7]),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [6]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [5]),
    .I3(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o1 ),
    .I4(NlwRenamedSig_OI_align_status),
    .I5(\BU2/U0/receiver/recoder/error_lane [4]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<39> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA80888888 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT321  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [6]),
    .I2(\BU2/U0/receiver/recoder/rxd_pipe [7]),
    .I3(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o1 ),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [5]),
    .I5(\BU2/U0/receiver/recoder/error_lane [4]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<38> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA88080888 ))
  \BU2/U0/receiver/recoder/Mmux_rxd_pipe[31]_GND_20_o_mux_24_OUT311  (
    .I0(NlwRenamedSig_OI_align_status),
    .I1(\BU2/U0/receiver/recoder/rxd_pipe [5]),
    .I2(\BU2/U0/receiver/recoder/GND_20_o_GND_20_o_OR_78_o1 ),
    .I3(\BU2/U0/receiver/recoder/rxd_pipe [6]),
    .I4(\BU2/U0/receiver/recoder/rxd_pipe [7]),
    .I5(\BU2/U0/receiver/recoder/error_lane [4]),
    .O(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<37> )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a[0]_got_a[3]_AND_40_o<0>1  (
    .I0(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [0]),
    .I1(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [1]),
    .I2(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [2]),
    .I3(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [3]),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a[0]_got_a[3]_AND_40_o )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a[4]_got_a[7]_AND_43_o<4>1  (
    .I0(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [4]),
    .I1(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [5]),
    .I2(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [6]),
    .I3(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [7]),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a[4]_got_a[7]_AND_43_o )
  );
  LUT4 #(
    .INIT ( 16'h7FFE ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/Mram_got_a[3]_GND_19_o_Mux_10_o11  (
    .I0(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [3]),
    .I1(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [0]),
    .I2(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [1]),
    .I3(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [2]),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/Mram_got_a[3]_GND_19_o_Mux_10_o )
  );
  LUT4 #(
    .INIT ( 16'h7FFE ))
  \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/Mram_got_a[7]_GND_19_o_Mux_11_o11  (
    .I0(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [7]),
    .I1(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [4]),
    .I2(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [5]),
    .I3(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a [6]),
    .O(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/Mram_got_a[7]_GND_19_o_Mux_11_o )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \BU2/U0/receiver/sync_status_int<3>1  (
    .I0(mgt_syncok_12[3]),
    .I1(mgt_syncok_12[2]),
    .I2(mgt_syncok_12[1]),
    .I3(mgt_syncok_12[0]),
    .O(\BU2/U0/receiver/sync_status_int )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \BU2/U0/transmitter/idle_detect_i0/comp<0><3>1  (
    .I0(xgmii_txd_2[3]),
    .I1(xgmii_txd_2[2]),
    .I2(xgmii_txd_2[1]),
    .I3(xgmii_txd_2[0]),
    .O(\BU2/U0/transmitter/idle_detect_i0/comp [0])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \BU2/U0/transmitter/idle_detect_i0/comp<2><11>1  (
    .I0(xgmii_txd_2[11]),
    .I1(xgmii_txd_2[10]),
    .I2(xgmii_txd_2[9]),
    .I3(xgmii_txd_2[8]),
    .O(\BU2/U0/transmitter/idle_detect_i0/comp [2])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \BU2/U0/transmitter/idle_detect_i0/comp<4><19>1  (
    .I0(xgmii_txd_2[19]),
    .I1(xgmii_txd_2[18]),
    .I2(xgmii_txd_2[17]),
    .I3(xgmii_txd_2[16]),
    .O(\BU2/U0/transmitter/idle_detect_i0/comp [4])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \BU2/U0/transmitter/idle_detect_i0/comp<6><27>1  (
    .I0(xgmii_txd_2[27]),
    .I1(xgmii_txd_2[26]),
    .I2(xgmii_txd_2[25]),
    .I3(xgmii_txd_2[24]),
    .O(\BU2/U0/transmitter/idle_detect_i0/comp [6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \BU2/U0/transmitter/idle_detect_i0/comp<8><3>1  (
    .I0(xgmii_txc_3[3]),
    .I1(xgmii_txc_3[2]),
    .I2(xgmii_txc_3[1]),
    .I3(xgmii_txc_3[0]),
    .O(\BU2/U0/transmitter/idle_detect_i0/comp [8])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \BU2/U0/transmitter/idle_detect_i0/comp<1><7>1  (
    .I0(xgmii_txd_2[7]),
    .I1(xgmii_txd_2[6]),
    .I2(xgmii_txd_2[5]),
    .I3(xgmii_txd_2[4]),
    .O(\BU2/U0/transmitter/idle_detect_i0/comp [1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \BU2/U0/transmitter/idle_detect_i0/comp<3><15>1  (
    .I0(xgmii_txd_2[15]),
    .I1(xgmii_txd_2[14]),
    .I2(xgmii_txd_2[13]),
    .I3(xgmii_txd_2[12]),
    .O(\BU2/U0/transmitter/idle_detect_i0/comp [3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \BU2/U0/transmitter/idle_detect_i0/comp<5><23>1  (
    .I0(xgmii_txd_2[23]),
    .I1(xgmii_txd_2[22]),
    .I2(xgmii_txd_2[21]),
    .I3(xgmii_txd_2[20]),
    .O(\BU2/U0/transmitter/idle_detect_i0/comp [5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \BU2/U0/transmitter/idle_detect_i0/comp<7><31>1  (
    .I0(xgmii_txd_2[31]),
    .I1(xgmii_txd_2[30]),
    .I2(xgmii_txd_2[29]),
    .I3(xgmii_txd_2[28]),
    .O(\BU2/U0/transmitter/idle_detect_i0/comp [7])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \BU2/U0/transmitter/idle_detect_i1/comp<0><3>1  (
    .I0(xgmii_txd_2[35]),
    .I1(xgmii_txd_2[34]),
    .I2(xgmii_txd_2[33]),
    .I3(xgmii_txd_2[32]),
    .O(\BU2/U0/transmitter/idle_detect_i1/comp [0])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \BU2/U0/transmitter/idle_detect_i1/comp<2><11>1  (
    .I0(xgmii_txd_2[43]),
    .I1(xgmii_txd_2[42]),
    .I2(xgmii_txd_2[41]),
    .I3(xgmii_txd_2[40]),
    .O(\BU2/U0/transmitter/idle_detect_i1/comp [2])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \BU2/U0/transmitter/idle_detect_i1/comp<4><19>1  (
    .I0(xgmii_txd_2[51]),
    .I1(xgmii_txd_2[50]),
    .I2(xgmii_txd_2[49]),
    .I3(xgmii_txd_2[48]),
    .O(\BU2/U0/transmitter/idle_detect_i1/comp [4])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \BU2/U0/transmitter/idle_detect_i1/comp<6><27>1  (
    .I0(xgmii_txd_2[59]),
    .I1(xgmii_txd_2[58]),
    .I2(xgmii_txd_2[57]),
    .I3(xgmii_txd_2[56]),
    .O(\BU2/U0/transmitter/idle_detect_i1/comp [6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \BU2/U0/transmitter/idle_detect_i1/comp<8><3>1  (
    .I0(xgmii_txc_3[7]),
    .I1(xgmii_txc_3[6]),
    .I2(xgmii_txc_3[5]),
    .I3(xgmii_txc_3[4]),
    .O(\BU2/U0/transmitter/idle_detect_i1/comp [8])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \BU2/U0/transmitter/idle_detect_i1/comp<1><7>1  (
    .I0(xgmii_txd_2[39]),
    .I1(xgmii_txd_2[38]),
    .I2(xgmii_txd_2[37]),
    .I3(xgmii_txd_2[36]),
    .O(\BU2/U0/transmitter/idle_detect_i1/comp [1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \BU2/U0/transmitter/idle_detect_i1/comp<3><15>1  (
    .I0(xgmii_txd_2[47]),
    .I1(xgmii_txd_2[46]),
    .I2(xgmii_txd_2[45]),
    .I3(xgmii_txd_2[44]),
    .O(\BU2/U0/transmitter/idle_detect_i1/comp [3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \BU2/U0/transmitter/idle_detect_i1/comp<5><23>1  (
    .I0(xgmii_txd_2[55]),
    .I1(xgmii_txd_2[54]),
    .I2(xgmii_txd_2[53]),
    .I3(xgmii_txd_2[52]),
    .O(\BU2/U0/transmitter/idle_detect_i1/comp [5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \BU2/U0/transmitter/idle_detect_i1/comp<7><31>1  (
    .I0(xgmii_txd_2[63]),
    .I1(xgmii_txd_2[62]),
    .I2(xgmii_txd_2[61]),
    .I3(xgmii_txd_2[60]),
    .O(\BU2/U0/transmitter/idle_detect_i1/comp [7])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \BU2/U0/transmitter/G_FILTER_LOW[0].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT51  (
    .I0(\BU2/U0/transmitter/txd_pipe [4]),
    .I1(\BU2/U0/transmitter/txc_pipe [0]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \BU2/U0/transmitter/G_FILTER_LOW[0].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT31  (
    .I0(\BU2/U0/transmitter/txd_pipe [2]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/txc_pipe [0]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \BU2/U0/transmitter/G_FILTER_LOW[0].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT71  (
    .I0(\BU2/U0/transmitter/txc_pipe [0]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/is_terminate_GND_17_o_AND_21_o_1010 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txd_pipe [6]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \BU2/U0/transmitter/G_FILTER_LOW[0].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT11  (
    .I0(\BU2/U0/transmitter/txd_pipe [0]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/is_terminate_GND_17_o_AND_21_o_1010 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txc_pipe [0]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h3A2A ))
  \BU2/U0/transmitter/G_FILTER_LOW[0].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT21  (
    .I0(\BU2/U0/transmitter/txd_pipe [1]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/is_terminate_GND_17_o_AND_21_o_1010 ),
    .I2(\BU2/U0/transmitter/txc_pipe [0]),
    .I3(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o ),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_LOW[0].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT41  (
    .I0(\BU2/U0/transmitter/txc_pipe [0]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/is_terminate_GND_17_o_AND_21_o_1010 ),
    .I3(\BU2/U0/transmitter/txd_pipe [3]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_LOW[0].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT81  (
    .I0(\BU2/U0/transmitter/txc_pipe [0]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/is_terminate_GND_17_o_AND_21_o_1010 ),
    .I3(\BU2/U0/transmitter/txd_pipe [7]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_LOW[0].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT61  (
    .I0(\BU2/U0/transmitter/txc_pipe [0]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/is_terminate_GND_17_o_AND_21_o_1010 ),
    .I3(\BU2/U0/transmitter/txd_pipe [5]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \BU2/U0/transmitter/G_FILTER_LOW[1].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT51  (
    .I0(\BU2/U0/transmitter/txd_pipe [12]),
    .I1(\BU2/U0/transmitter/txc_pipe [1]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \BU2/U0/transmitter/G_FILTER_LOW[1].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT31  (
    .I0(\BU2/U0/transmitter/txd_pipe [10]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/GND_17_o_reduce_nor_14_o_1007 ),
    .I2(\BU2/U0/transmitter/txc_pipe [1]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \BU2/U0/transmitter/G_FILTER_LOW[1].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT71  (
    .I0(\BU2/U0/transmitter/txc_pipe [1]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/is_terminate_GND_17_o_AND_21_o_1008 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/GND_17_o_reduce_nor_14_o_1007 ),
    .I3(\BU2/U0/transmitter/txd_pipe [14]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \BU2/U0/transmitter/G_FILTER_LOW[1].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT11  (
    .I0(\BU2/U0/transmitter/txd_pipe [8]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/is_terminate_GND_17_o_AND_21_o_1008 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/GND_17_o_reduce_nor_14_o_1007 ),
    .I3(\BU2/U0/transmitter/txc_pipe [1]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h3A2A ))
  \BU2/U0/transmitter/G_FILTER_LOW[1].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT21  (
    .I0(\BU2/U0/transmitter/txd_pipe [9]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/is_terminate_GND_17_o_AND_21_o_1008 ),
    .I2(\BU2/U0/transmitter/txc_pipe [1]),
    .I3(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/GND_17_o_reduce_nor_14_o_1007 ),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_LOW[1].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT41  (
    .I0(\BU2/U0/transmitter/txc_pipe [1]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/GND_17_o_reduce_nor_14_o_1007 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/is_terminate_GND_17_o_AND_21_o_1008 ),
    .I3(\BU2/U0/transmitter/txd_pipe [11]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_LOW[1].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT81  (
    .I0(\BU2/U0/transmitter/txc_pipe [1]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/GND_17_o_reduce_nor_14_o_1007 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/is_terminate_GND_17_o_AND_21_o_1008 ),
    .I3(\BU2/U0/transmitter/txd_pipe [15]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_LOW[1].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT61  (
    .I0(\BU2/U0/transmitter/txc_pipe [1]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/GND_17_o_reduce_nor_14_o_1007 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/is_terminate_GND_17_o_AND_21_o_1008 ),
    .I3(\BU2/U0/transmitter/txd_pipe [13]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \BU2/U0/transmitter/G_FILTER_LOW[2].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT51  (
    .I0(\BU2/U0/transmitter/txd_pipe [20]),
    .I1(\BU2/U0/transmitter/txc_pipe [2]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \BU2/U0/transmitter/G_FILTER_LOW[2].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT31  (
    .I0(\BU2/U0/transmitter/txd_pipe [18]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/txc_pipe [2]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \BU2/U0/transmitter/G_FILTER_LOW[2].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT71  (
    .I0(\BU2/U0/transmitter/txc_pipe [2]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/is_terminate_GND_17_o_AND_21_o_1006 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txd_pipe [22]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \BU2/U0/transmitter/G_FILTER_LOW[2].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT11  (
    .I0(\BU2/U0/transmitter/txd_pipe [16]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/is_terminate_GND_17_o_AND_21_o_1006 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txc_pipe [2]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h3A2A ))
  \BU2/U0/transmitter/G_FILTER_LOW[2].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT21  (
    .I0(\BU2/U0/transmitter/txd_pipe [17]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/is_terminate_GND_17_o_AND_21_o_1006 ),
    .I2(\BU2/U0/transmitter/txc_pipe [2]),
    .I3(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o ),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_LOW[2].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT41  (
    .I0(\BU2/U0/transmitter/txc_pipe [2]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/is_terminate_GND_17_o_AND_21_o_1006 ),
    .I3(\BU2/U0/transmitter/txd_pipe [19]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_LOW[2].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT81  (
    .I0(\BU2/U0/transmitter/txc_pipe [2]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/is_terminate_GND_17_o_AND_21_o_1006 ),
    .I3(\BU2/U0/transmitter/txd_pipe [23]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_LOW[2].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT61  (
    .I0(\BU2/U0/transmitter/txc_pipe [2]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/is_terminate_GND_17_o_AND_21_o_1006 ),
    .I3(\BU2/U0/transmitter/txd_pipe [21]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \BU2/U0/transmitter/G_FILTER_LOW[3].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT51  (
    .I0(\BU2/U0/transmitter/txd_pipe [28]),
    .I1(\BU2/U0/transmitter/txc_pipe [3]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \BU2/U0/transmitter/G_FILTER_LOW[3].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT31  (
    .I0(\BU2/U0/transmitter/txd_pipe [26]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/txc_pipe [3]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \BU2/U0/transmitter/G_FILTER_LOW[3].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT71  (
    .I0(\BU2/U0/transmitter/txc_pipe [3]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/is_terminate_GND_17_o_AND_21_o_1004 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txd_pipe [30]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \BU2/U0/transmitter/G_FILTER_LOW[3].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT11  (
    .I0(\BU2/U0/transmitter/txd_pipe [24]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/is_terminate_GND_17_o_AND_21_o_1004 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txc_pipe [3]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h3A2A ))
  \BU2/U0/transmitter/G_FILTER_LOW[3].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT21  (
    .I0(\BU2/U0/transmitter/txd_pipe [25]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/is_terminate_GND_17_o_AND_21_o_1004 ),
    .I2(\BU2/U0/transmitter/txc_pipe [3]),
    .I3(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o ),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_LOW[3].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT41  (
    .I0(\BU2/U0/transmitter/txc_pipe [3]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/is_terminate_GND_17_o_AND_21_o_1004 ),
    .I3(\BU2/U0/transmitter/txd_pipe [27]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_LOW[3].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT81  (
    .I0(\BU2/U0/transmitter/txc_pipe [3]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/is_terminate_GND_17_o_AND_21_o_1004 ),
    .I3(\BU2/U0/transmitter/txd_pipe [31]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_LOW[3].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT61  (
    .I0(\BU2/U0/transmitter/txc_pipe [3]),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/is_terminate_GND_17_o_AND_21_o_1004 ),
    .I3(\BU2/U0/transmitter/txd_pipe [29]),
    .O(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT51  (
    .I0(\BU2/U0/transmitter/txd_pipe [36]),
    .I1(\BU2/U0/transmitter/txc_pipe [4]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT31  (
    .I0(\BU2/U0/transmitter/txd_pipe [34]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/txc_pipe [4]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT71  (
    .I0(\BU2/U0/transmitter/txc_pipe [4]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/is_terminate_GND_17_o_AND_21_o_1002 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txd_pipe [38]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT11  (
    .I0(\BU2/U0/transmitter/txd_pipe [32]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/is_terminate_GND_17_o_AND_21_o_1002 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txc_pipe [4]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h3A2A ))
  \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT21  (
    .I0(\BU2/U0/transmitter/txd_pipe [33]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/is_terminate_GND_17_o_AND_21_o_1002 ),
    .I2(\BU2/U0/transmitter/txc_pipe [4]),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o ),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT41  (
    .I0(\BU2/U0/transmitter/txc_pipe [4]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/is_terminate_GND_17_o_AND_21_o_1002 ),
    .I3(\BU2/U0/transmitter/txd_pipe [35]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT81  (
    .I0(\BU2/U0/transmitter/txc_pipe [4]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/is_terminate_GND_17_o_AND_21_o_1002 ),
    .I3(\BU2/U0/transmitter/txd_pipe [39]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT61  (
    .I0(\BU2/U0/transmitter/txc_pipe [4]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/is_terminate_GND_17_o_AND_21_o_1002 ),
    .I3(\BU2/U0/transmitter/txd_pipe [37]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT51  (
    .I0(\BU2/U0/transmitter/txd_pipe [44]),
    .I1(\BU2/U0/transmitter/txc_pipe [5]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT31  (
    .I0(\BU2/U0/transmitter/txd_pipe [42]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/txc_pipe [5]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT71  (
    .I0(\BU2/U0/transmitter/txc_pipe [5]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/is_terminate_GND_17_o_AND_21_o_1000 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txd_pipe [46]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT11  (
    .I0(\BU2/U0/transmitter/txd_pipe [40]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/is_terminate_GND_17_o_AND_21_o_1000 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txc_pipe [5]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h3A2A ))
  \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT21  (
    .I0(\BU2/U0/transmitter/txd_pipe [41]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/is_terminate_GND_17_o_AND_21_o_1000 ),
    .I2(\BU2/U0/transmitter/txc_pipe [5]),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o ),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT41  (
    .I0(\BU2/U0/transmitter/txc_pipe [5]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/is_terminate_GND_17_o_AND_21_o_1000 ),
    .I3(\BU2/U0/transmitter/txd_pipe [43]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT81  (
    .I0(\BU2/U0/transmitter/txc_pipe [5]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/is_terminate_GND_17_o_AND_21_o_1000 ),
    .I3(\BU2/U0/transmitter/txd_pipe [47]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT61  (
    .I0(\BU2/U0/transmitter/txc_pipe [5]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/is_terminate_GND_17_o_AND_21_o_1000 ),
    .I3(\BU2/U0/transmitter/txd_pipe [45]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT51  (
    .I0(\BU2/U0/transmitter/txd_pipe [52]),
    .I1(\BU2/U0/transmitter/txc_pipe [6]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT31  (
    .I0(\BU2/U0/transmitter/txd_pipe [50]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/txc_pipe [6]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT71  (
    .I0(\BU2/U0/transmitter/txc_pipe [6]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/is_terminate_GND_17_o_AND_21_o_998 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txd_pipe [54]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT11  (
    .I0(\BU2/U0/transmitter/txd_pipe [48]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/is_terminate_GND_17_o_AND_21_o_998 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txc_pipe [6]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h3A2A ))
  \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT21  (
    .I0(\BU2/U0/transmitter/txd_pipe [49]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/is_terminate_GND_17_o_AND_21_o_998 ),
    .I2(\BU2/U0/transmitter/txc_pipe [6]),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o ),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT41  (
    .I0(\BU2/U0/transmitter/txc_pipe [6]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/is_terminate_GND_17_o_AND_21_o_998 ),
    .I3(\BU2/U0/transmitter/txd_pipe [51]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT81  (
    .I0(\BU2/U0/transmitter/txc_pipe [6]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/is_terminate_GND_17_o_AND_21_o_998 ),
    .I3(\BU2/U0/transmitter/txd_pipe [55]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT61  (
    .I0(\BU2/U0/transmitter/txc_pipe [6]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/is_terminate_GND_17_o_AND_21_o_998 ),
    .I3(\BU2/U0/transmitter/txd_pipe [53]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT51  (
    .I0(\BU2/U0/transmitter/txd_pipe [60]),
    .I1(\BU2/U0/transmitter/txc_pipe [7]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT31  (
    .I0(\BU2/U0/transmitter/txd_pipe [58]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/txc_pipe [7]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT71  (
    .I0(\BU2/U0/transmitter/txc_pipe [7]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/is_terminate_GND_17_o_AND_21_o_996 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txd_pipe [62]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT11  (
    .I0(\BU2/U0/transmitter/txd_pipe [56]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/is_terminate_GND_17_o_AND_21_o_996 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o ),
    .I3(\BU2/U0/transmitter/txc_pipe [7]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h3A2A ))
  \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT21  (
    .I0(\BU2/U0/transmitter/txd_pipe [57]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/is_terminate_GND_17_o_AND_21_o_996 ),
    .I2(\BU2/U0/transmitter/txc_pipe [7]),
    .I3(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o ),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT41  (
    .I0(\BU2/U0/transmitter/txc_pipe [7]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/is_terminate_GND_17_o_AND_21_o_996 ),
    .I3(\BU2/U0/transmitter/txd_pipe [59]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT81  (
    .I0(\BU2/U0/transmitter/txc_pipe [7]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/is_terminate_GND_17_o_AND_21_o_996 ),
    .I3(\BU2/U0/transmitter/txd_pipe [63]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/Mmux_txd_in[7]_txd_in[7]_mux_17_OUT61  (
    .I0(\BU2/U0/transmitter/txc_pipe [7]),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/GND_17_o_reduce_nor_14_o ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/is_terminate_GND_17_o_AND_21_o_996 ),
    .I3(\BU2/U0/transmitter/txd_pipe [61]),
    .O(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \BU2/U0/transmitter/state_machine/tx_code_r<0><2>1  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .O(\BU2/U0/transmitter/tx_code_r [0])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \BU2/U0/transmitter/state_machine/tx_code_r<1><2>1  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .O(\BU2/U0/transmitter/tx_code_r [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \BU2/U0/transmitter/state_machine/tx_code_q<0>1  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .O(\BU2/U0/transmitter/tx_code_q [0])
  );
  LUT3 #(
    .INIT ( 8'hAB ))
  \BU2/U0/transmitter/state_machine/is_idle[1]_is_q[1]_AND_11_o_01  (
    .I0(\BU2/U0/usrclk_reset_329 ),
    .I1(\BU2/U0/transmitter/tx_is_idle [1]),
    .I2(\BU2/U0/transmitter/tx_is_q [1]),
    .O(\BU2/U0/transmitter/state_machine/is_idle[1]_is_q[1]_AND_11_o_0 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/transmitter/state_machine/tx_code_a<0>1  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .O(\BU2/U0/transmitter/tx_code_a [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/transmitter/state_machine/tx_code_a<1>1  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .O(\BU2/U0/transmitter/tx_code_a [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \BU2/U0/transmitter/state_machine/tx_code_q<1>1  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .O(\BU2/U0/transmitter/tx_code_q [1])
  );
  LUT6 #(
    .INIT ( 64'hEEE0E0EEEEE2E0EE ))
  \BU2/U0/transmitter/state_machine/Mmux_p_state_comb.state_temp51  (
    .I0(\BU2/U0/transmitter/tx_is_idle [0]),
    .I1(\BU2/U0/transmitter/tx_is_q [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .I3(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I4(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I5(\BU2/U0/transmitter/tqmsg_capture_1/q_det_993 ),
    .O(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [2])
  );
  LUT3 #(
    .INIT ( 8'h41 ))
  \BU2/U0/transmitter/state_machine/tx_code_k<0>1  (
    .I0(\BU2/U0/transmitter/state_machine/state_0 [1]),
    .I1(\BU2/U0/transmitter/state_machine/state_0 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_0 [2]),
    .O(\BU2/U0/transmitter/tx_code_k [0])
  );
  LUT3 #(
    .INIT ( 8'h41 ))
  \BU2/U0/transmitter/state_machine/tx_code_k<1>1  (
    .I0(\BU2/U0/transmitter/state_machine/state_1 [1]),
    .I1(\BU2/U0/transmitter/state_machine/state_1 [0]),
    .I2(\BU2/U0/transmitter/state_machine/state_1 [2]),
    .O(\BU2/U0/transmitter/tx_code_k [1])
  );
  LUT5 #(
    .INIT ( 32'hFFFF999B ))
  \BU2/U0/transmitter/state_machine/Mmux_state[1][2]_PWR_17_o_wide_mux_20_OUT31  (
    .I0(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [1]),
    .I1(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [0]),
    .I2(\BU2/U0/transmitter/tx_is_q [1]),
    .I3(\BU2/U0/transmitter/tqmsg_capture_1/q_det_993 ),
    .I4(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [2]),
    .O(\BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/transmitter/k_r_prbs_i/Mxor_prbs[6]_prbs[7]_XOR_34_o_xo<0>1  (
    .I0(\BU2/U0/transmitter/k_r_prbs_i/prbs [6]),
    .I1(\BU2/U0/transmitter/k_r_prbs_i/prbs [7]),
    .O(\BU2/U0/transmitter/k_r_prbs_i/prbs[6]_prbs[7]_XOR_34_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/transmitter/k_r_prbs_i/Mxor_prbs[5]_prbs[6]_XOR_33_o_xo<0>1  (
    .I0(\BU2/U0/transmitter/k_r_prbs_i/prbs [5]),
    .I1(\BU2/U0/transmitter/k_r_prbs_i/prbs [6]),
    .O(\BU2/U0/transmitter/k_r_prbs_i/prbs[5]_prbs[6]_XOR_33_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \BU2/U0/transmitter/align/_n0051_inv1  (
    .I0(\BU2/U0/transmitter/tx_code_a [1]),
    .I1(\BU2/U0/transmitter/tx_code_a [0]),
    .I2(\BU2/U0/transmitter/align/count [4]),
    .I3(\BU2/U0/transmitter/align/count [3]),
    .I4(\BU2/U0/transmitter/align/count [2]),
    .I5(\BU2/U0/transmitter/align/count [1]),
    .O(\BU2/U0/transmitter/align/_n0051_inv )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/transmitter/align/Mxor_prbs[6]_prbs[7]_XOR_17_o_xo<0>1  (
    .I0(\BU2/U0/transmitter/align/prbs [6]),
    .I1(\BU2/U0/transmitter/align/prbs [7]),
    .O(\BU2/U0/transmitter/align/prbs[6]_prbs[7]_XOR_17_o )
  );
  LUT6 #(
    .INIT ( 64'hFEFEFEEF10101001 ))
  \BU2/U0/transmitter/align/mux311  (
    .I0(\BU2/U0/transmitter/tx_code_a [1]),
    .I1(\BU2/U0/transmitter/tx_code_a [0]),
    .I2(\BU2/U0/transmitter/align/count [3]),
    .I3(\BU2/U0/transmitter/align/count [1]),
    .I4(\BU2/U0/transmitter/align/count [2]),
    .I5(\BU2/U0/transmitter/align/prbs [4]),
    .O(\BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA9 ))
  \BU2/U0/transmitter/align/mux411  (
    .I0(\BU2/U0/transmitter/align/count [4]),
    .I1(\BU2/U0/transmitter/align/count [2]),
    .I2(\BU2/U0/transmitter/align/count [3]),
    .I3(\BU2/U0/transmitter/align/count [1]),
    .I4(\BU2/U0/transmitter/tx_code_a [0]),
    .I5(\BU2/U0/transmitter/tx_code_a [1]),
    .O(\BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hFFEAEAEA ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT171  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<0> ),
    .I2(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT121_987 ),
    .I3(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT110 ),
    .I4(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [24]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<24> )
  );
  LUT5 #(
    .INIT ( 32'hFFEAEAEA ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT81  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<0> ),
    .I2(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT121_987 ),
    .I3(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT110 ),
    .I4(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [16]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<16> )
  );
  LUT5 #(
    .INIT ( 32'hFFEAEAEA ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT631  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<0> ),
    .I2(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT121_987 ),
    .I3(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT110 ),
    .I4(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [8]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<8> )
  );
  LUT5 #(
    .INIT ( 32'hFFEAEAEA ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT521  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<0> ),
    .I2(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT271_985 ),
    .I3(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT261_984 ),
    .I4(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [24]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<56> )
  );
  LUT5 #(
    .INIT ( 32'hFFEAEAEA ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT431  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<0> ),
    .I2(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT271_985 ),
    .I3(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT261_984 ),
    .I4(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [16]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<48> )
  );
  LUT5 #(
    .INIT ( 32'hFFEAEAEA ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT351  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<0> ),
    .I2(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT271_985 ),
    .I3(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT261_984 ),
    .I4(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [8]),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<40> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF10111000 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT161  (
    .I0(\BU2/U0/transmitter/tx_code_a [0]),
    .I1(\BU2/U0/transmitter/tx_code_r [0]),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [23]),
    .I3(\BU2/U0/transmitter/tx_code_q [0]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<7> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT163 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<23> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF10111000 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT251  (
    .I0(\BU2/U0/transmitter/tx_code_a [0]),
    .I1(\BU2/U0/transmitter/tx_code_r [0]),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [31]),
    .I3(\BU2/U0/transmitter/tx_code_q [0]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<7> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT163 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<31> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF10111000 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT621  (
    .I0(\BU2/U0/transmitter/tx_code_a [0]),
    .I1(\BU2/U0/transmitter/tx_code_r [0]),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [7]),
    .I3(\BU2/U0/transmitter/tx_code_q [0]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<7> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT163 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF10111000 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT71  (
    .I0(\BU2/U0/transmitter/tx_code_a [0]),
    .I1(\BU2/U0/transmitter/tx_code_r [0]),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [15]),
    .I3(\BU2/U0/transmitter/tx_code_q [0]),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<7> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT163 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<15> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF10111000 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT331  (
    .I0(\BU2/U0/transmitter/tx_code_a [1]),
    .I1(\BU2/U0/transmitter/tx_code_r [1]),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [7]),
    .I3(\BU2/U0/transmitter/tx_code_q [1]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<7> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT332 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<39> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF10111000 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT421  (
    .I0(\BU2/U0/transmitter/tx_code_a [1]),
    .I1(\BU2/U0/transmitter/tx_code_r [1]),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [15]),
    .I3(\BU2/U0/transmitter/tx_code_q [1]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<7> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT332 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<47> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF10111000 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT511  (
    .I0(\BU2/U0/transmitter/tx_code_a [1]),
    .I1(\BU2/U0/transmitter/tx_code_r [1]),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [23]),
    .I3(\BU2/U0/transmitter/tx_code_q [1]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<7> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT332 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<55> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF10111000 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT601  (
    .I0(\BU2/U0/transmitter/tx_code_a [1]),
    .I1(\BU2/U0/transmitter/tx_code_r [1]),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [31]),
    .I3(\BU2/U0/transmitter/tx_code_q [1]),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<7> ),
    .I5(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT332 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<63> )
  );
  LUT5 #(
    .INIT ( 32'h55404040 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT641  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT110 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [9]),
    .I3(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT121_987 ),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<1> ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<9> )
  );
  LUT5 #(
    .INIT ( 32'h55404040 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT181  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT110 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [25]),
    .I3(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT121_987 ),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<1> ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<25> )
  );
  LUT5 #(
    .INIT ( 32'h55404040 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT91  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT110 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [17]),
    .I3(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT121_987 ),
    .I4(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<1> ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<17> )
  );
  LUT5 #(
    .INIT ( 32'h55404040 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT531  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT261_984 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [25]),
    .I3(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT271_985 ),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<1> ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<57> )
  );
  LUT5 #(
    .INIT ( 32'h55404040 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT441  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT261_984 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [17]),
    .I3(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT271_985 ),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<1> ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<49> )
  );
  LUT5 #(
    .INIT ( 32'h55404040 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT361  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT261_984 ),
    .I2(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [9]),
    .I3(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT271_985 ),
    .I4(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<1> ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<41> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5140 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT111  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/_n0142 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<3> ),
    .I3(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [19]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT115 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<19> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5140 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT201  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/_n0142 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<3> ),
    .I3(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [27]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT115 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<27> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5140 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT341  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/_n0142 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<3> ),
    .I3(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [7]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT115 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5140 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT32  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/_n0142 ),
    .I2(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<3> ),
    .I3(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [11]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT115 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<11> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5140 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT291  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/_n0449 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<3> ),
    .I3(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [7]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT293 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<35> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5140 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT551  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/_n0449 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<3> ),
    .I3(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [27]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT293 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<59> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5140 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT471  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/_n0449 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<3> ),
    .I3(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [19]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT293 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<51> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5140 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT381  (
    .I0(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 ),
    .I1(\BU2/U0/transmitter/recoder/_n0449 ),
    .I2(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<3> ),
    .I3(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [11]),
    .I4(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT293 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<43> )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1021  (
    .I0(configuration_vector_17[4]),
    .I1(configuration_vector_17[5]),
    .I2(configuration_vector_17[6]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT102 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT1131  (
    .I0(configuration_vector_17[4]),
    .I1(configuration_vector_17[6]),
    .I2(configuration_vector_17[5]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_79_OUT113 )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT211  (
    .I0(configuration_vector_17[4]),
    .I1(configuration_vector_17[5]),
    .I2(configuration_vector_17[6]),
    .O(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT21 )
  );
  LUT6 #(
    .INIT ( 64'hFFFEFFFFFFFEFFFE ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT81  (
    .I0(\BU2/U0/transmitter/tx_code_k [1]),
    .I1(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT21 ),
    .I2(\BU2/U0/transmitter/tx_code_r [1]),
    .I3(\BU2/U0/transmitter/tx_code_a [1]),
    .I4(\BU2/U0/transmitter/tx_code_q [1]),
    .I5(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txc_out_598 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_82_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFFFEFFFFFFFEFFFE ))
  \BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT71  (
    .I0(\BU2/U0/transmitter/tx_code_k [1]),
    .I1(\BU2/U0/transmitter/recoder/Mmux_code_sel[9]_PWR_12_o_mux_82_OUT21 ),
    .I2(\BU2/U0/transmitter/tx_code_r [1]),
    .I3(\BU2/U0/transmitter/tx_code_a [1]),
    .I4(\BU2/U0/transmitter/tx_code_q [1]),
    .I5(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txc_out_615 ),
    .O(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_82_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \BU2/U0/transmitter/seq_detect_i1/comp<2><3>1  (
    .I0(xgmii_txc_3[7]),
    .I1(xgmii_txc_3[6]),
    .I2(xgmii_txc_3[5]),
    .I3(xgmii_txc_3[4]),
    .O(\BU2/U0/transmitter/seq_detect_i1/comp [2])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \BU2/U0/transmitter/seq_detect_i1/comp<1><7>1  (
    .I0(xgmii_txd_2[39]),
    .I1(xgmii_txd_2[36]),
    .I2(xgmii_txd_2[38]),
    .I3(xgmii_txd_2[37]),
    .O(\BU2/U0/transmitter/seq_detect_i1/comp [1])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \BU2/U0/transmitter/seq_detect_i1/comp<0><3>1  (
    .I0(xgmii_txd_2[35]),
    .I1(xgmii_txd_2[34]),
    .I2(xgmii_txd_2[33]),
    .I3(xgmii_txd_2[32]),
    .O(\BU2/U0/transmitter/seq_detect_i1/comp [0])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \BU2/U0/transmitter/seq_detect_i0/comp<2><3>1  (
    .I0(xgmii_txc_3[3]),
    .I1(xgmii_txc_3[2]),
    .I2(xgmii_txc_3[1]),
    .I3(xgmii_txc_3[0]),
    .O(\BU2/U0/transmitter/seq_detect_i0/comp [2])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \BU2/U0/transmitter/seq_detect_i0/comp<1><7>1  (
    .I0(xgmii_txd_2[7]),
    .I1(xgmii_txd_2[4]),
    .I2(xgmii_txd_2[6]),
    .I3(xgmii_txd_2[5]),
    .O(\BU2/U0/transmitter/seq_detect_i0/comp [1])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \BU2/U0/transmitter/seq_detect_i0/comp<0><3>1  (
    .I0(xgmii_txd_2[3]),
    .I1(xgmii_txd_2[2]),
    .I2(xgmii_txd_2[1]),
    .I3(xgmii_txd_2[0]),
    .O(\BU2/U0/transmitter/seq_detect_i0/comp [0])
  );
  FDR   \BU2/U0/receiver/recoder/code_error_pipe_0  (
    .C(usrclk),
    .D(\BU2/U0/receiver/code_error [0]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/code_error_pipe [0])
  );
  FDR   \BU2/U0/receiver/recoder/code_error_pipe_1  (
    .C(usrclk),
    .D(\BU2/U0/receiver/code_error [1]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/code_error_pipe [1])
  );
  FDR   \BU2/U0/receiver/recoder/code_error_pipe_2  (
    .C(usrclk),
    .D(\BU2/U0/receiver/code_error [2]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/code_error_pipe [2])
  );
  FDR   \BU2/U0/receiver/recoder/code_error_pipe_3  (
    .C(usrclk),
    .D(\BU2/U0/receiver/code_error [3]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/code_error_pipe [3])
  );
  FDR   \BU2/U0/receiver/recoder/code_error_pipe_4  (
    .C(usrclk),
    .D(\BU2/U0/receiver/code_error [4]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/code_error_pipe [4])
  );
  FDR   \BU2/U0/receiver/recoder/code_error_pipe_5  (
    .C(usrclk),
    .D(\BU2/U0/receiver/code_error [5]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/code_error_pipe [5])
  );
  FDR   \BU2/U0/receiver/recoder/code_error_pipe_6  (
    .C(usrclk),
    .D(\BU2/U0/receiver/code_error [6]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/code_error_pipe [6])
  );
  FDR   \BU2/U0/receiver/recoder/code_error_pipe_7  (
    .C(usrclk),
    .D(\BU2/U0/receiver/code_error [7]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/code_error_pipe [7])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_0  (
    .C(usrclk),
    .D(mgt_rxdata_8[0]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [0])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_1  (
    .C(usrclk),
    .D(mgt_rxdata_8[1]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [1])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_pipe_2  (
    .C(usrclk),
    .D(mgt_rxdata_8[2]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [2])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_pipe_3  (
    .C(usrclk),
    .D(mgt_rxdata_8[3]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [3])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_pipe_4  (
    .C(usrclk),
    .D(mgt_rxdata_8[4]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [4])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_5  (
    .C(usrclk),
    .D(mgt_rxdata_8[5]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [5])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_6  (
    .C(usrclk),
    .D(mgt_rxdata_8[6]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [6])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_pipe_7  (
    .C(usrclk),
    .D(mgt_rxdata_8[7]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [7])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_8  (
    .C(usrclk),
    .D(mgt_rxdata_8[16]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [8])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_9  (
    .C(usrclk),
    .D(mgt_rxdata_8[17]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [9])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_10  (
    .C(usrclk),
    .D(mgt_rxdata_8[18]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [10])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_11  (
    .C(usrclk),
    .D(mgt_rxdata_8[19]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [11])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_12  (
    .C(usrclk),
    .D(mgt_rxdata_8[20]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [12])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_13  (
    .C(usrclk),
    .D(mgt_rxdata_8[21]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [13])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_14  (
    .C(usrclk),
    .D(mgt_rxdata_8[22]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [14])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_15  (
    .C(usrclk),
    .D(mgt_rxdata_8[23]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [15])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_16  (
    .C(usrclk),
    .D(mgt_rxdata_8[32]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [16])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_17  (
    .C(usrclk),
    .D(mgt_rxdata_8[33]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [17])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_18  (
    .C(usrclk),
    .D(mgt_rxdata_8[34]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [18])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_19  (
    .C(usrclk),
    .D(mgt_rxdata_8[35]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [19])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_20  (
    .C(usrclk),
    .D(mgt_rxdata_8[36]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [20])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_21  (
    .C(usrclk),
    .D(mgt_rxdata_8[37]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [21])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_22  (
    .C(usrclk),
    .D(mgt_rxdata_8[38]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [22])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_23  (
    .C(usrclk),
    .D(mgt_rxdata_8[39]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [23])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_pipe_24  (
    .C(usrclk),
    .D(mgt_rxdata_8[48]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [24])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_25  (
    .C(usrclk),
    .D(mgt_rxdata_8[49]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [25])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_26  (
    .C(usrclk),
    .D(mgt_rxdata_8[50]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [26])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_27  (
    .C(usrclk),
    .D(mgt_rxdata_8[51]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [27])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_28  (
    .C(usrclk),
    .D(mgt_rxdata_8[52]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [28])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_29  (
    .C(usrclk),
    .D(mgt_rxdata_8[53]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [29])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_30  (
    .C(usrclk),
    .D(mgt_rxdata_8[54]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [30])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_31  (
    .C(usrclk),
    .D(mgt_rxdata_8[55]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [31])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_32  (
    .C(usrclk),
    .D(mgt_rxdata_8[8]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [32])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_33  (
    .C(usrclk),
    .D(mgt_rxdata_8[9]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [33])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_pipe_34  (
    .C(usrclk),
    .D(mgt_rxdata_8[10]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [34])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_pipe_35  (
    .C(usrclk),
    .D(mgt_rxdata_8[11]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [35])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_pipe_36  (
    .C(usrclk),
    .D(mgt_rxdata_8[12]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [36])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_37  (
    .C(usrclk),
    .D(mgt_rxdata_8[13]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [37])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_38  (
    .C(usrclk),
    .D(mgt_rxdata_8[14]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [38])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_pipe_39  (
    .C(usrclk),
    .D(mgt_rxdata_8[15]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [39])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_40  (
    .C(usrclk),
    .D(mgt_rxdata_8[24]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [40])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_41  (
    .C(usrclk),
    .D(mgt_rxdata_8[25]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [41])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_42  (
    .C(usrclk),
    .D(mgt_rxdata_8[26]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [42])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_43  (
    .C(usrclk),
    .D(mgt_rxdata_8[27]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [43])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_44  (
    .C(usrclk),
    .D(mgt_rxdata_8[28]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [44])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_45  (
    .C(usrclk),
    .D(mgt_rxdata_8[29]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [45])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_46  (
    .C(usrclk),
    .D(mgt_rxdata_8[30]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [46])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_47  (
    .C(usrclk),
    .D(mgt_rxdata_8[31]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [47])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_48  (
    .C(usrclk),
    .D(mgt_rxdata_8[40]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [48])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_49  (
    .C(usrclk),
    .D(mgt_rxdata_8[41]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [49])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_50  (
    .C(usrclk),
    .D(mgt_rxdata_8[42]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [50])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_51  (
    .C(usrclk),
    .D(mgt_rxdata_8[43]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [51])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_52  (
    .C(usrclk),
    .D(mgt_rxdata_8[44]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [52])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_53  (
    .C(usrclk),
    .D(mgt_rxdata_8[45]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [53])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_54  (
    .C(usrclk),
    .D(mgt_rxdata_8[46]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [54])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_55  (
    .C(usrclk),
    .D(mgt_rxdata_8[47]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [55])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_pipe_56  (
    .C(usrclk),
    .D(mgt_rxdata_8[56]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [56])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_57  (
    .C(usrclk),
    .D(mgt_rxdata_8[57]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [57])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_58  (
    .C(usrclk),
    .D(mgt_rxdata_8[58]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [58])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_59  (
    .C(usrclk),
    .D(mgt_rxdata_8[59]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [59])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_60  (
    .C(usrclk),
    .D(mgt_rxdata_8[60]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [60])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_61  (
    .C(usrclk),
    .D(mgt_rxdata_8[61]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [61])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_62  (
    .C(usrclk),
    .D(mgt_rxdata_8[62]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [62])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_pipe_63  (
    .C(usrclk),
    .D(mgt_rxdata_8[63]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_pipe [63])
  );
  FDS   \BU2/U0/receiver/recoder/rxc_pipe_0  (
    .C(usrclk),
    .D(mgt_rxcharisk_9[0]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxc_pipe [0])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_pipe_1  (
    .C(usrclk),
    .D(mgt_rxcharisk_9[2]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxc_pipe [1])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_pipe_2  (
    .C(usrclk),
    .D(mgt_rxcharisk_9[4]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxc_pipe [2])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_pipe_3  (
    .C(usrclk),
    .D(mgt_rxcharisk_9[6]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxc_pipe [3])
  );
  FDS   \BU2/U0/receiver/recoder/rxc_pipe_4  (
    .C(usrclk),
    .D(mgt_rxcharisk_9[1]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxc_pipe [4])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_pipe_5  (
    .C(usrclk),
    .D(mgt_rxcharisk_9[3]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxc_pipe [5])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_pipe_6  (
    .C(usrclk),
    .D(mgt_rxcharisk_9[5]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxc_pipe [6])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_pipe_7  (
    .C(usrclk),
    .D(mgt_rxcharisk_9[7]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxc_pipe [7])
  );
  FDR   \BU2/U0/receiver/recoder/code_error_delay_1  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/code_error_pipe [5]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/code_error_delay_1_922 )
  );
  FDR   \BU2/U0/receiver/recoder/code_error_delay_3  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/code_error_pipe [7]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/code_error_delay_3_920 )
  );
  FDR   \BU2/U0/receiver/recoder/code_error_delay_2  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/code_error_pipe [6]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/code_error_delay_2_918 )
  );
  FDR   \BU2/U0/receiver/recoder/code_error_delay_0  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/code_error_pipe [4]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/code_error_delay_0_916 )
  );
  FDR   \BU2/U0/receiver/recoder/lane_term_pipe_0  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/lane_terminate [4]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/lane_term_pipe [0])
  );
  FDR   \BU2/U0/receiver/recoder/lane_term_pipe_1  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/lane_terminate [5]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/lane_term_pipe [1])
  );
  FDR   \BU2/U0/receiver/recoder/lane_term_pipe_2  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/lane_terminate [6]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/lane_term_pipe [2])
  );
  FDR   \BU2/U0/receiver/recoder/lane_term_pipe_3  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/lane_terminate [7]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/lane_term_pipe [3])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_0  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [32]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [0])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_1  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [33]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [1])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_half_pipe_2  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [34]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [2])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_half_pipe_3  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [35]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [3])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_half_pipe_4  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [36]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [4])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_5  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [37]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [5])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_6  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [38]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [6])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_half_pipe_7  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [39]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [7])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_8  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [40]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [8])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_9  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [41]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [9])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_10  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [42]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [10])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_11  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [43]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [11])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_12  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [44]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [12])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_13  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [45]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [13])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_14  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [46]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [14])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_15  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [47]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [15])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_16  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [48]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [16])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_17  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [49]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [17])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_18  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [50]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [18])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_19  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [51]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [19])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_20  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [52]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [20])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_21  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [53]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [21])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_22  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [54]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [22])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_23  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [55]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [23])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_half_pipe_24  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [56]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [24])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_25  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [57]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [25])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_26  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [58]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [26])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_27  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [59]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [27])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_28  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [60]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [28])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_29  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [61]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [29])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_30  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [62]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [30])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_half_pipe_31  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe [63]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxd_half_pipe [31])
  );
  FDS   \BU2/U0/receiver/recoder/rxc_half_pipe_0  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxc_pipe [4]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxc_half_pipe [0])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_half_pipe_1  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxc_pipe [5]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxc_half_pipe [1])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_half_pipe_2  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxc_pipe [6]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxc_half_pipe [2])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_half_pipe_3  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxc_pipe [7]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/recoder/rxc_half_pipe [3])
  );
  FDS   \BU2/U0/receiver/recoder/rxc_out_0  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<0> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxc_5[0])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_out_1  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<1> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxc_5[1])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_out_2  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<2> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxc_5[2])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_out_3  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<3> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxc_5[3])
  );
  FDS   \BU2/U0/receiver/recoder/rxc_out_4  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<4> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxc_5[4])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_out_5  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<5> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxc_5[5])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_out_6  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<6> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxc_5[6])
  );
  FDR   \BU2/U0/receiver/recoder/rxc_out_7  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxc_pipe[3]_GND_20_o_mux_25_OUT<7> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxc_5[7])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_0  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<0> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[0])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_1  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<1> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[1])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_out_2  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<2> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[2])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_out_3  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<3> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[3])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_out_4  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<4> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[4])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_5  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<5> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[5])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_6  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<6> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[6])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_out_7  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<7> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[7])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_8  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<8> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[8])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_9  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<9> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[9])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_10  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<10> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[10])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_11  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<11> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[11])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_12  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<12> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[12])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_13  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<13> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[13])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_14  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<14> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[14])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_15  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<15> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[15])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_16  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<16> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[16])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_17  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<17> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[17])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_18  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<18> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[18])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_19  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<19> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[19])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_20  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<20> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[20])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_21  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<21> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[21])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_22  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<22> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[22])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_23  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<23> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[23])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_out_24  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<24> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[24])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_25  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<25> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[25])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_26  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<26> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[26])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_27  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<27> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[27])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_28  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<28> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[28])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_29  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<29> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[29])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_30  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<30> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[30])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_31  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<31> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[31])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_32  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<32> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[32])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_33  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<33> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[33])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_out_34  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<34> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[34])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_out_35  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<35> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[35])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_out_36  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<36> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[36])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_37  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<37> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[37])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_38  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<38> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[38])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_out_39  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<39> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[39])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_40  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<40> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[40])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_41  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<41> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[41])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_42  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<42> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[42])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_43  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<43> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[43])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_44  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<44> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[44])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_45  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<45> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[45])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_46  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<46> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[46])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_47  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<47> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[47])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_48  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<48> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[48])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_49  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<49> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[49])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_50  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<50> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[50])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_51  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<51> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[51])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_52  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<52> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[52])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_53  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<53> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[53])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_54  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<54> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[54])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_55  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<55> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[55])
  );
  FDS   \BU2/U0/receiver/recoder/rxd_out_56  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<56> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[56])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_57  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<57> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[57])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_58  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<58> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[58])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_59  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<59> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[59])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_60  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<60> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[60])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_61  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<61> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[61])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_62  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<62> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[62])
  );
  FDR   \BU2/U0/receiver/recoder/rxd_out_63  (
    .C(usrclk),
    .D(\BU2/U0/receiver/recoder/rxd_pipe[31]_GND_20_o_mux_24_OUT<63> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(xgmii_rxd_4[63])
  );
  FDR   \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_align_0  (
    .C(usrclk),
    .D(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a[0]_got_a[3]_AND_40_o ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_align [0])
  );
  FDR   \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_align_1  (
    .C(usrclk),
    .D(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_a[4]_got_a[7]_AND_43_o ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/got_align [1])
  );
  FD   \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/align_status  (
    .C(usrclk),
    .D(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/state_758 ),
    .Q(NlwRenamedSig_OI_align_status)
  );
  FDR   \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/deskew_error_0  (
    .C(usrclk),
    .D(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/Mram_got_a[3]_GND_19_o_Mux_10_o ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/deskew_error [0])
  );
  FDR   \BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/deskew_error_sliced  (
    .C(usrclk),
    .D(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/Mram_got_a[7]_GND_19_o_Mux_11_o ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/G_NO_SYNC.non_iee_deskew_state/deskew_error_sliced_755 )
  );
  FDR   \BU2/U0/receiver/sync_ok_0  (
    .C(usrclk),
    .D(mgt_syncok_12[0]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(NlwRenamedSignal_status_vector[2])
  );
  FDR   \BU2/U0/receiver/sync_ok_1  (
    .C(usrclk),
    .D(mgt_syncok_12[1]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(NlwRenamedSignal_status_vector[3])
  );
  FDR   \BU2/U0/receiver/sync_ok_2  (
    .C(usrclk),
    .D(mgt_syncok_12[2]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(NlwRenamedSignal_status_vector[4])
  );
  FDR   \BU2/U0/receiver/sync_ok_3  (
    .C(usrclk),
    .D(mgt_syncok_12[3]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(NlwRenamedSignal_status_vector[5])
  );
  FDR   \BU2/U0/receiver/sync_status  (
    .C(usrclk),
    .D(\BU2/U0/receiver/sync_status_int ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/receiver/sync_status_753 )
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i0/muxcy_i0  (
    .CI(NlwRenamedSig_OI_mgt_enable_align[0]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i0/comp [0]),
    .LO(\BU2/U0/transmitter/idle_detect_i0/muxcyo [0])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i0/muxcy_i2  (
    .CI(\BU2/U0/transmitter/idle_detect_i0/muxcyo [1]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i0/comp [2]),
    .LO(\BU2/U0/transmitter/idle_detect_i0/muxcyo [2])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i0/muxcy_i4  (
    .CI(\BU2/U0/transmitter/idle_detect_i0/muxcyo [3]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i0/comp [4]),
    .LO(\BU2/U0/transmitter/idle_detect_i0/muxcyo [4])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i0/muxcy_i6  (
    .CI(\BU2/U0/transmitter/idle_detect_i0/muxcyo [5]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i0/comp [6]),
    .LO(\BU2/U0/transmitter/idle_detect_i0/muxcyo [6])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i0/muxcy_i8  (
    .CI(\BU2/U0/transmitter/idle_detect_i0/muxcyo [7]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i0/comp [8]),
    .LO(\BU2/U0/transmitter/tx_is_idle_comb [0])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i0/muxcy_i1  (
    .CI(\BU2/U0/transmitter/idle_detect_i0/muxcyo [0]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i0/comp [1]),
    .LO(\BU2/U0/transmitter/idle_detect_i0/muxcyo [1])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i0/muxcy_i3  (
    .CI(\BU2/U0/transmitter/idle_detect_i0/muxcyo [2]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i0/comp [3]),
    .LO(\BU2/U0/transmitter/idle_detect_i0/muxcyo [3])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i0/muxcy_i5  (
    .CI(\BU2/U0/transmitter/idle_detect_i0/muxcyo [4]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i0/comp [5]),
    .LO(\BU2/U0/transmitter/idle_detect_i0/muxcyo [5])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i0/muxcy_i7  (
    .CI(\BU2/U0/transmitter/idle_detect_i0/muxcyo [6]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i0/comp [7]),
    .LO(\BU2/U0/transmitter/idle_detect_i0/muxcyo [7])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i1/muxcy_i0  (
    .CI(NlwRenamedSig_OI_mgt_enable_align[0]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i1/comp [0]),
    .LO(\BU2/U0/transmitter/idle_detect_i1/muxcyo [0])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i1/muxcy_i2  (
    .CI(\BU2/U0/transmitter/idle_detect_i1/muxcyo [1]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i1/comp [2]),
    .LO(\BU2/U0/transmitter/idle_detect_i1/muxcyo [2])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i1/muxcy_i4  (
    .CI(\BU2/U0/transmitter/idle_detect_i1/muxcyo [3]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i1/comp [4]),
    .LO(\BU2/U0/transmitter/idle_detect_i1/muxcyo [4])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i1/muxcy_i6  (
    .CI(\BU2/U0/transmitter/idle_detect_i1/muxcyo [5]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i1/comp [6]),
    .LO(\BU2/U0/transmitter/idle_detect_i1/muxcyo [6])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i1/muxcy_i8  (
    .CI(\BU2/U0/transmitter/idle_detect_i1/muxcyo [7]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i1/comp [8]),
    .LO(\BU2/U0/transmitter/tx_is_idle_comb [1])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i1/muxcy_i1  (
    .CI(\BU2/U0/transmitter/idle_detect_i1/muxcyo [0]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i1/comp [1]),
    .LO(\BU2/U0/transmitter/idle_detect_i1/muxcyo [1])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i1/muxcy_i3  (
    .CI(\BU2/U0/transmitter/idle_detect_i1/muxcyo [2]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i1/comp [3]),
    .LO(\BU2/U0/transmitter/idle_detect_i1/muxcyo [3])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i1/muxcy_i5  (
    .CI(\BU2/U0/transmitter/idle_detect_i1/muxcyo [4]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i1/comp [5]),
    .LO(\BU2/U0/transmitter/idle_detect_i1/muxcyo [5])
  );
  MUXCY_L   \BU2/U0/transmitter/idle_detect_i1/muxcy_i7  (
    .CI(\BU2/U0/transmitter/idle_detect_i1/muxcyo [6]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/idle_detect_i1/comp [7]),
    .LO(\BU2/U0/transmitter/idle_detect_i1/muxcyo [7])
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txc_out  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/txc_pipe [0]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txc_out_717 )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<0> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<1> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out_2  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<2> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out_3  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<3> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out_4  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<4> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out_5  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<5> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out_6  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<6> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out_7  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[0].filter/txd_out<7> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txc_out  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/txc_pipe [1]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txc_out_700 )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<0> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<1> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out_2  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<2> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out_3  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<3> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out_4  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<4> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out_5  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<5> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out_6  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<6> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out_7  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[1].filter/txd_out<7> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txc_out  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/txc_pipe [2]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txc_out_683 )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<0> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<1> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out_2  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<2> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out_3  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<3> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out_4  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<4> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out_5  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<5> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out_6  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<6> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out_7  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[2].filter/txd_out<7> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txc_out  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/txc_pipe [3]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txc_out_666 )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<0> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<1> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out_2  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<2> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out_3  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<3> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out_4  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<4> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out_5  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<5> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out_6  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<6> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out_7  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_LOW[3].filter/txd_out<7> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txc_out  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/txc_pipe [4]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txc_out_649 )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<0> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<1> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out_2  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<2> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out_3  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<3> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out_4  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<4> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out_5  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<5> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out_6  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<6> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out_7  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[4].filter/txd_out<7> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txc_out  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/txc_pipe [5]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txc_out_632 )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<0> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<1> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out_2  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<2> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out_3  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<3> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out_4  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<4> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out_5  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<5> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out_6  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<6> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out_7  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[5].filter/txd_out<7> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txc_out  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/txc_pipe [6]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txc_out_615 )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<0> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<1> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out_2  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<2> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out_3  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<3> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out_4  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<4> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out_5  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<5> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out_6  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<6> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out_7  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[6].filter/txd_out<7> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txc_out  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/txc_pipe [7]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txc_out_598 )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<0> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<0> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<1> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<1> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out_2  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<2> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<2> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out_3  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<3> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<3> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out_4  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<4> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<4> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out_5  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<5> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<5> )
  );
  FDR   \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out_6  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<6> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<6> )
  );
  FDS   \BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out_7  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_in[7]_txd_in[7]_mux_17_OUT<7> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/G_FILTER_HIGH[7].filter/txd_out<7> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/transmitter/state_machine/state_1_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<0>1_580 ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/state_machine/state_1 [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/transmitter/state_machine/state_1_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<1> ),
    .R(\BU2/U0/transmitter/state_machine/is_idle[1]_is_q[1]_AND_11_o_0 ),
    .Q(\BU2/U0/transmitter/state_machine/state_1 [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/transmitter/state_machine/state_1_2  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/state_machine/state[1][2]_PWR_17_o_wide_mux_20_OUT<2> ),
    .R(\BU2/U0/transmitter/state_machine/is_idle[1]_is_q[1]_AND_11_o_0 ),
    .Q(\BU2/U0/transmitter/state_machine/state_1 [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/transmitter/state_machine/state_0_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [0]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/state_machine/state_0 [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/transmitter/state_machine/state_0_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [1]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/state_machine/state_0 [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/transmitter/state_machine/state_0_2  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/state_machine/p_state_comb.state_temp [2]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/state_machine/state_0 [2])
  );
  FDS   \BU2/U0/transmitter/k_r_prbs_i/prbs_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/k_r_prbs_i/prbs[5]_prbs[6]_XOR_33_o ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/k_r_prbs_i/prbs [1])
  );
  FDS   \BU2/U0/transmitter/k_r_prbs_i/prbs_2  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/k_r_prbs_i/prbs[6]_prbs[7]_XOR_34_o ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/k_r_prbs_i/prbs [2])
  );
  FDS   \BU2/U0/transmitter/k_r_prbs_i/prbs_3  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/k_r_prbs_i/prbs [1]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/k_r_prbs_i/prbs [3])
  );
  FDS   \BU2/U0/transmitter/k_r_prbs_i/prbs_4  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/k_r_prbs_i/prbs [2]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/k_r_prbs_i/prbs [4])
  );
  FDS   \BU2/U0/transmitter/k_r_prbs_i/prbs_5  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/k_r_prbs_i/prbs [3]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/k_r_prbs_i/prbs [5])
  );
  FDS   \BU2/U0/transmitter/k_r_prbs_i/prbs_6  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/k_r_prbs_i/prbs [4]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/k_r_prbs_i/prbs [6])
  );
  FDS   \BU2/U0/transmitter/k_r_prbs_i/prbs_7  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/k_r_prbs_i/prbs [5]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/k_r_prbs_i/prbs [7])
  );
  FDS   \BU2/U0/transmitter/k_r_prbs_i/prbs_8  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/k_r_prbs_i/prbs [6]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/k_r_prbs_i/prbs [8])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/transmitter/align/prbs_1  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/align/n0020_inv ),
    .D(\BU2/U0/transmitter/align/prbs[6]_prbs[7]_XOR_17_o ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/align/prbs [1])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/transmitter/align/prbs_2  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/align/n0020_inv ),
    .D(\BU2/U0/transmitter/align/prbs [1]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/align/prbs [2])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/transmitter/align/prbs_3  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/align/n0020_inv ),
    .D(\BU2/U0/transmitter/align/prbs [2]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/align/prbs [3])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/transmitter/align/prbs_4  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/align/n0020_inv ),
    .D(\BU2/U0/transmitter/align/prbs [3]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/align/prbs [4])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/transmitter/align/prbs_5  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/align/n0020_inv ),
    .D(\BU2/U0/transmitter/align/prbs [4]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/align/prbs [5])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/transmitter/align/prbs_6  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/align/n0020_inv ),
    .D(\BU2/U0/transmitter/align/prbs [5]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/align/prbs [6])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/transmitter/align/prbs_7  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/align/n0020_inv ),
    .D(\BU2/U0/transmitter/align/prbs [6]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/align/prbs [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/transmitter/align/count_0  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/align/_n0051_inv ),
    .D(\BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<0> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/align/count [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/transmitter/align/count_1  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/align/_n0051_inv ),
    .D(\BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<1> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/align/count [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/transmitter/align/count_2  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/align/_n0051_inv ),
    .D(\BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<2> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/align/count [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/transmitter/align/count_3  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/align/_n0051_inv ),
    .D(\BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<3> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/align/count [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/transmitter/align/count_4  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/align/_n0051_inv ),
    .D(\BU2/U0/transmitter/align/count[4]_PWR_13_o_mux_9_OUT<4> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/align/count [4])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_7  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<7> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [7])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_8  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<8> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [8])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_9  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<9> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [9])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_10  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<10> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [10])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_11  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<11> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [11])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_12  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<12> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [12])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_13  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<13> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [13])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_14  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<14> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [14])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_15  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<15> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [15])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_16  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<16> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [16])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_17  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<17> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [17])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_18  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<18> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [18])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_19  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<19> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [19])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_20  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<20> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [20])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_21  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<21> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [21])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_22  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<22> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [22])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_23  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<23> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [23])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_24  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<24> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [24])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_25  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<25> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [25])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_26  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<26> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [26])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_27  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<27> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [27])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_28  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<28> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [28])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_29  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<29> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [29])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_30  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<30> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [30])
  );
  FDRE   \BU2/U0/transmitter/tqmsg_capture_1/last_qmsg_31  (
    .C(usrclk),
    .CE(\BU2/U0/transmitter/tqmsg_capture_1/_n0023_inv ),
    .D(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg[31]_txd_in[63]_mux_5_OUT<31> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tqmsg_capture_1/last_qmsg [31])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<0> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[0])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<1> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[1])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_2  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<2> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[2])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_3  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<3> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[3])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_4  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<4> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[4])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_5  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<5> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[5])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_6  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<6> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[6])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_7  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<7> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[7])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_8  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<8> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[16])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_9  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<9> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[17])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_10  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<10> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[18])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_11  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<11> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[19])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_12  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<12> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[20])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_13  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<13> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[21])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_14  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<14> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[22])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_15  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<15> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[23])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_16  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<16> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[32])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_17  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<17> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[33])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_18  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<18> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[34])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_19  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<19> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[35])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_20  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<20> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[36])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_21  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<21> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[37])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_22  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<22> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[38])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_23  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<23> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[39])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_24  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<24> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[48])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_25  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<25> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[49])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_26  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<26> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[50])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_27  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<27> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[51])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_28  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<28> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[52])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_29  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<29> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[53])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_30  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<30> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[54])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_31  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<31> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[55])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_32  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<32> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[8])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_33  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<33> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[9])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_34  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<34> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[10])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_35  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<35> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[11])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_36  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<36> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[12])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_37  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<37> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[13])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_38  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<38> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[14])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_39  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<39> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[15])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_40  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<40> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[24])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_41  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<41> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[25])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_42  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<42> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[26])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_43  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<43> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[27])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_44  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<44> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[28])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_45  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<45> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[29])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_46  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<46> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[30])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_47  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<47> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[31])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_48  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<48> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[40])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_49  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<49> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[41])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_50  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<50> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[42])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_51  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<51> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[43])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_52  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<52> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[44])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_53  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<53> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[45])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_54  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<54> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[46])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_55  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<55> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[47])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_56  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<56> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[56])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_57  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<57> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[57])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_58  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<58> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[58])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_59  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<59> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[59])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_60  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<60> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[60])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_61  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<61> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[61])
  );
  FDR   \BU2/U0/transmitter/recoder/txd_out_62  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<62> ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[62])
  );
  FDS   \BU2/U0/transmitter/recoder/txd_out_63  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/recoder/code_sel[9]_PWR_12_o_mux_79_OUT<63> ),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(mgt_txdata_6[63])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_0  (
    .C(usrclk),
    .D(xgmii_txd_2[0]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [0])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_1  (
    .C(usrclk),
    .D(xgmii_txd_2[1]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [1])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_2  (
    .C(usrclk),
    .D(xgmii_txd_2[2]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [2])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_3  (
    .C(usrclk),
    .D(xgmii_txd_2[3]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [3])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_4  (
    .C(usrclk),
    .D(xgmii_txd_2[4]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [4])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_5  (
    .C(usrclk),
    .D(xgmii_txd_2[5]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [5])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_6  (
    .C(usrclk),
    .D(xgmii_txd_2[6]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [6])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_7  (
    .C(usrclk),
    .D(xgmii_txd_2[7]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [7])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_8  (
    .C(usrclk),
    .D(xgmii_txd_2[8]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [8])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_9  (
    .C(usrclk),
    .D(xgmii_txd_2[9]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [9])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_10  (
    .C(usrclk),
    .D(xgmii_txd_2[10]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [10])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_11  (
    .C(usrclk),
    .D(xgmii_txd_2[11]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [11])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_12  (
    .C(usrclk),
    .D(xgmii_txd_2[12]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [12])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_13  (
    .C(usrclk),
    .D(xgmii_txd_2[13]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [13])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_14  (
    .C(usrclk),
    .D(xgmii_txd_2[14]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [14])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_15  (
    .C(usrclk),
    .D(xgmii_txd_2[15]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [15])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_16  (
    .C(usrclk),
    .D(xgmii_txd_2[16]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [16])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_17  (
    .C(usrclk),
    .D(xgmii_txd_2[17]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [17])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_18  (
    .C(usrclk),
    .D(xgmii_txd_2[18]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [18])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_19  (
    .C(usrclk),
    .D(xgmii_txd_2[19]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [19])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_20  (
    .C(usrclk),
    .D(xgmii_txd_2[20]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [20])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_21  (
    .C(usrclk),
    .D(xgmii_txd_2[21]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [21])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_22  (
    .C(usrclk),
    .D(xgmii_txd_2[22]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [22])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_23  (
    .C(usrclk),
    .D(xgmii_txd_2[23]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [23])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_24  (
    .C(usrclk),
    .D(xgmii_txd_2[24]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [24])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_25  (
    .C(usrclk),
    .D(xgmii_txd_2[25]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [25])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_26  (
    .C(usrclk),
    .D(xgmii_txd_2[26]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [26])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_27  (
    .C(usrclk),
    .D(xgmii_txd_2[27]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [27])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_28  (
    .C(usrclk),
    .D(xgmii_txd_2[28]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [28])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_29  (
    .C(usrclk),
    .D(xgmii_txd_2[29]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [29])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_30  (
    .C(usrclk),
    .D(xgmii_txd_2[30]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [30])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_31  (
    .C(usrclk),
    .D(xgmii_txd_2[31]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [31])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_32  (
    .C(usrclk),
    .D(xgmii_txd_2[32]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [32])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_33  (
    .C(usrclk),
    .D(xgmii_txd_2[33]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [33])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_34  (
    .C(usrclk),
    .D(xgmii_txd_2[34]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [34])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_35  (
    .C(usrclk),
    .D(xgmii_txd_2[35]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [35])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_36  (
    .C(usrclk),
    .D(xgmii_txd_2[36]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [36])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_37  (
    .C(usrclk),
    .D(xgmii_txd_2[37]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [37])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_38  (
    .C(usrclk),
    .D(xgmii_txd_2[38]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [38])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_39  (
    .C(usrclk),
    .D(xgmii_txd_2[39]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [39])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_40  (
    .C(usrclk),
    .D(xgmii_txd_2[40]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [40])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_41  (
    .C(usrclk),
    .D(xgmii_txd_2[41]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [41])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_42  (
    .C(usrclk),
    .D(xgmii_txd_2[42]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [42])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_43  (
    .C(usrclk),
    .D(xgmii_txd_2[43]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [43])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_44  (
    .C(usrclk),
    .D(xgmii_txd_2[44]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [44])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_45  (
    .C(usrclk),
    .D(xgmii_txd_2[45]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [45])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_46  (
    .C(usrclk),
    .D(xgmii_txd_2[46]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [46])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_47  (
    .C(usrclk),
    .D(xgmii_txd_2[47]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [47])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_48  (
    .C(usrclk),
    .D(xgmii_txd_2[48]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [48])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_49  (
    .C(usrclk),
    .D(xgmii_txd_2[49]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [49])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_50  (
    .C(usrclk),
    .D(xgmii_txd_2[50]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [50])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_51  (
    .C(usrclk),
    .D(xgmii_txd_2[51]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [51])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_52  (
    .C(usrclk),
    .D(xgmii_txd_2[52]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [52])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_53  (
    .C(usrclk),
    .D(xgmii_txd_2[53]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [53])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_54  (
    .C(usrclk),
    .D(xgmii_txd_2[54]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [54])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_55  (
    .C(usrclk),
    .D(xgmii_txd_2[55]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [55])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_56  (
    .C(usrclk),
    .D(xgmii_txd_2[56]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [56])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_57  (
    .C(usrclk),
    .D(xgmii_txd_2[57]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [57])
  );
  FDS   \BU2/U0/transmitter/txd_pipe_58  (
    .C(usrclk),
    .D(xgmii_txd_2[58]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [58])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_59  (
    .C(usrclk),
    .D(xgmii_txd_2[59]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [59])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_60  (
    .C(usrclk),
    .D(xgmii_txd_2[60]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [60])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_61  (
    .C(usrclk),
    .D(xgmii_txd_2[61]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [61])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_62  (
    .C(usrclk),
    .D(xgmii_txd_2[62]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [62])
  );
  FDR   \BU2/U0/transmitter/txd_pipe_63  (
    .C(usrclk),
    .D(xgmii_txd_2[63]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txd_pipe [63])
  );
  FDS   \BU2/U0/transmitter/txc_pipe_0  (
    .C(usrclk),
    .D(xgmii_txc_3[0]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txc_pipe [0])
  );
  FDS   \BU2/U0/transmitter/txc_pipe_1  (
    .C(usrclk),
    .D(xgmii_txc_3[1]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txc_pipe [1])
  );
  FDS   \BU2/U0/transmitter/txc_pipe_2  (
    .C(usrclk),
    .D(xgmii_txc_3[2]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txc_pipe [2])
  );
  FDS   \BU2/U0/transmitter/txc_pipe_3  (
    .C(usrclk),
    .D(xgmii_txc_3[3]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txc_pipe [3])
  );
  FDS   \BU2/U0/transmitter/txc_pipe_4  (
    .C(usrclk),
    .D(xgmii_txc_3[4]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txc_pipe [4])
  );
  FDS   \BU2/U0/transmitter/txc_pipe_5  (
    .C(usrclk),
    .D(xgmii_txc_3[5]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txc_pipe [5])
  );
  FDS   \BU2/U0/transmitter/txc_pipe_6  (
    .C(usrclk),
    .D(xgmii_txc_3[6]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txc_pipe [6])
  );
  FDS   \BU2/U0/transmitter/txc_pipe_7  (
    .C(usrclk),
    .D(xgmii_txc_3[7]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/txc_pipe [7])
  );
  FDR   \BU2/U0/transmitter/tx_is_q_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/tx_is_q_comb [0]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tx_is_q [0])
  );
  FDR   \BU2/U0/transmitter/tx_is_q_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/tx_is_q_comb [1]),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tx_is_q [1])
  );
  FDS   \BU2/U0/transmitter/tx_is_idle_0  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/tx_is_idle_comb [0]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tx_is_idle [0])
  );
  FDS   \BU2/U0/transmitter/tx_is_idle_1  (
    .C(usrclk),
    .D(\BU2/U0/transmitter/tx_is_idle_comb [1]),
    .S(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/transmitter/tx_is_idle [1])
  );
  MUXCY_L   \BU2/U0/transmitter/seq_detect_i1/muxcy_i2  (
    .CI(\BU2/U0/transmitter/seq_detect_i1/muxcyo [1]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/seq_detect_i1/comp [2]),
    .LO(\BU2/U0/transmitter/tx_is_q_comb [1])
  );
  MUXCY_L   \BU2/U0/transmitter/seq_detect_i1/muxcy_i1  (
    .CI(\BU2/U0/transmitter/seq_detect_i1/muxcyo [0]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/seq_detect_i1/comp [1]),
    .LO(\BU2/U0/transmitter/seq_detect_i1/muxcyo [1])
  );
  MUXCY_L   \BU2/U0/transmitter/seq_detect_i1/muxcy_i0  (
    .CI(NlwRenamedSig_OI_mgt_enable_align[0]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/seq_detect_i1/comp [0]),
    .LO(\BU2/U0/transmitter/seq_detect_i1/muxcyo [0])
  );
  MUXCY_L   \BU2/U0/transmitter/seq_detect_i0/muxcy_i2  (
    .CI(\BU2/U0/transmitter/seq_detect_i0/muxcyo [1]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/seq_detect_i0/comp [2]),
    .LO(\BU2/U0/transmitter/tx_is_q_comb [0])
  );
  MUXCY_L   \BU2/U0/transmitter/seq_detect_i0/muxcy_i1  (
    .CI(\BU2/U0/transmitter/seq_detect_i0/muxcyo [0]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/seq_detect_i0/comp [1]),
    .LO(\BU2/U0/transmitter/seq_detect_i0/muxcyo [1])
  );
  MUXCY_L   \BU2/U0/transmitter/seq_detect_i0/muxcy_i0  (
    .CI(NlwRenamedSig_OI_mgt_enable_align[0]),
    .DI(\BU2/soft_reset ),
    .S(\BU2/U0/transmitter/seq_detect_i0/comp [0]),
    .LO(\BU2/U0/transmitter/seq_detect_i0/muxcyo [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \BU2/U0/usrclk_reset_pipe  (
    .C(usrclk),
    .D(reset),
    .Q(\BU2/U0/usrclk_reset_pipe_333 )
  );
  FD   \BU2/U0/clear_local_fault  (
    .C(usrclk),
    .D(configuration_vector_17[2]),
    .Q(\BU2/U0/clear_local_fault_331 )
  );
  FD   \BU2/U0/clear_aligned  (
    .C(usrclk),
    .D(configuration_vector_17[3]),
    .Q(\BU2/U0/clear_aligned_328 )
  );
  FDR   \BU2/U0/p_clear_local_fault_edge.last_value  (
    .C(usrclk),
    .D(\BU2/U0/clear_local_fault_331 ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/p_clear_local_fault_edge.last_value_332 )
  );
  FDR   \BU2/U0/p_clear_aligned_edge.last_value  (
    .C(usrclk),
    .D(\BU2/U0/clear_aligned_328 ),
    .R(\BU2/U0/usrclk_reset_329 ),
    .Q(\BU2/U0/p_clear_aligned_edge.last_value_330 )
  );
  VCC   \BU2/XST_VCC  (
    .P(NlwRenamedSig_OI_mgt_enable_align[0])
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/soft_reset )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
