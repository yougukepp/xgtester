module xgmac
(
    input  reset,
    input  tx_underrun,
    input  [63 : 0] tx_data,
    input  [7 : 0] tx_data_valid,
    input  tx_start,
    output tx_ack,
    input  [7 : 0] tx_ifg_delay,
    output [24 : 0] tx_statistics_vector,
    output tx_statistics_valid,
    input  [15 : 0] pause_val,
    input  pause_req,
    output [63 : 0] rx_data,
    output [7 : 0] rx_data_valid,
    output rx_good_frame,
    output rx_bad_frame,
    output [28 : 0] rx_statistics_vector,
    output rx_statistics_valid,
    input [68 : 0]  configuration_vector,
    output  [1 : 0] status_vector,
    input  tx_clk0,
    input  tx_dcm_lock,
    output [63 : 0] xgmii_txd,
    output [7 : 0] xgmii_txc,
    input  rx_clk0,
    input  rx_dcm_lock,
    input  [63 : 0] xgmii_rxd,
    input  [7 : 0] xgmii_rxc);

endmodule