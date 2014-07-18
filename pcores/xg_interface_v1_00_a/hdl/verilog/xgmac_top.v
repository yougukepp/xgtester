`timescale 1ns / 1ps

module xgmac_top( 
    /* System side signals */
    input           clk160m,
    input           reset,
    /* configuration */
    input  [68:0]   configuration_vector,
    output reg      ready,
    /* AXI_Stream TX side */
    input  [63:0]   axis_tx_tdata,
    input           axis_tx_tvalid,
    input  [7:0]    axis_tx_tkeep,
    output          axis_tx_tready,
    input           axis_tx_tlast,
    /* AXI_Stream TX side */
    output [63:0]   axis_rx_tdata,
    output          axis_rx_tvalid,
    output [7:0]    axis_rx_tkeep,
    input           axis_rx_tready,
    output          axis_rx_tlast,
    /* xgmii TX side */
    input           tx_clk0,
    input           tx_dcm_lock,
    output [63:0]   xgmii_txd,
    output [7:0]    xgmii_txc,
    /* xgmii RX side */
    input           rx_clk0,
    input           rx_dcm_lock,
    input  [63:0]   xgmii_rxd,
    input  [7:0]    xgmii_rxc);

    wire   [63:0]   tx_data;
    wire   [7:0]    tx_data_valid;
    wire   [63:0]   rx_data;
    wire   [7:0]    rx_data_valid;

    /* TX RX 都无错是 有效 ready */
    wire   [1:0]    status_vector;

    /* FIXME: 修改tstrb */
    /* 发送端 axis 转 xgmac接口 */
    tx_queue tx_queue(
        .reset          (reset),

        .clk            (clk160m), 
        .tdata          (axis_tx_tdata), 
        .tstrb          (axis_tx_tkeep), 
        .tvalid         (axis_tx_tvalid), 
        .tready         (axis_tx_tready), 
        .tlast          (axis_tx_tlast), 

        .clk156         (tx_clk0), 
        .tx_start       (tx_start), 
        .tx_ack         (tx_ack), 
        .tx_data        (tx_data), 
        .tx_data_valid  (tx_data_valid));

    /* 发送端 axis 转 xgmac接口 */
    rx_queue rx_queue(
        .reset          (reset), 

        .clk156         (rx_clk0), 
        .rx_good_frame  (rx_good_frame), 
        .rx_bad_frame   (rx_bad_frame), 
        .rx_data        (rx_data), 
        .rx_data_valid  (rx_data_valid),

        .clk            (clk160m), 
        .tdata          (axis_rx_tdata), 
        .tstrb          (axis_rx_tkeep), 
        .tvalid         (axis_rx_tvalid), 
        .tlast          (axis_rx_tlast), 
        .tready         (axis_rx_tready)); 

    xgmac xgmac_ngc
    (
        .reset                (reset),

        .tx_start             (tx_start),
        .tx_ack               (tx_ack),
        .tx_data              (tx_data),
        .tx_data_valid        (tx_data_valid),
        .tx_underrun          (1'b0),

        .tx_statistics_vector (),
        .tx_statistics_valid  (),

        .tx_ifg_delay         (8'b0),
        .pause_val            (16'h0),
        .pause_req            (1'b0),

        .rx_good_frame        (rx_good_frame),
        .rx_bad_frame         (rx_bad_frame),
        .rx_data              (rx_data),
        .rx_data_valid        (rx_data_valid),

        .rx_statistics_vector (),
        .rx_statistics_valid  (),

        .configuration_vector (configuration_vector),
        .status_vector        (status_vector),

        .tx_clk0              (tx_clk0),
        .tx_dcm_lock          (tx_dcm_lock),
        .xgmii_txd            (xgmii_txd),
        .xgmii_txc            (xgmii_txc),

        .rx_clk0              (rx_clk0),
        .rx_dcm_lock          (rx_dcm_lock),
        .xgmii_rxd            (xgmii_rxd),
        .xgmii_rxc            (xgmii_rxc)); 

    always@(posedge clk160m)
        if(reset)
            ready <= 1'b0;
        else
            ready <= ~(|status_vector);

endmodule

