`timescale 1ns / 1ps

module xaui_top(
    /* Global Ports */
    input           reset,
    /* DRP Clock 50MHz */
    input           clk50m,
    /* GTX Clock 156.25MHz */
    input           refclk156_p,
    input           refclk156_n,
    output          clk156,
    output          clk156_locked,

    /* XAUI Configuration */
    input [6:0]     configuration_vector,
    /* XAUI Ready */
    output reg      ready,

    /* xgmii */
    input[63:0]     xgmii_txd,
    input[7:0]      xgmii_txc,
    output[63:0]    xgmii_rxd,
    output[7:0]     xgmii_rxc,

    /* XAUI TX side */
    output          xaui_tx_l0_p,
    output          xaui_tx_l0_n,
    output          xaui_tx_l1_p,
    output          xaui_tx_l1_n,
    output          xaui_tx_l2_p,
    output          xaui_tx_l2_n,
    output          xaui_tx_l3_p,
    output          xaui_tx_l3_n,
    /* XAUI RX side */
    input           xaui_rx_l0_p,
    input           xaui_rx_l0_n,
    input           xaui_rx_l1_p,
    input           xaui_rx_l1_n,
    input           xaui_rx_l2_p,
    input           xaui_rx_l2_n,
    input           xaui_rx_l3_p,
    input           xaui_rx_l3_n);

    BUFG clk156_bufg (
        .I(txoutclk),
        .O(clk156)); 
    
    /* FIXME: 使用差分时钟变换原语 */
    IBUFDS_GTXE1 clk156_diff_buf(
        .I(refclk156_p),
        .IB(refclk156_n),
        .CEB(1'b0),
        .O(refclk),
        .ODIV2()); 

    wire [3:0] sync_status;
    wire [7:0] status_vector;
    reg [6:0] configuration_vector_i;

    always@(posedge clk156)
        if(reset)
            configuration_vector_i <= configuration_vector;
        else if(configuration_vector_i[3:2] != 2'b00)
            configuration_vector_i[3:2] <= 2'b00;
        else if(status_vector[7] != 1'b1)
            configuration_vector_i[3] <= 1'b1;
        else if(status_vector[1:0] != 2'b0)
            configuration_vector_i[2] <= 1'b1;
        else
            configuration_vector_i[3:2] <= configuration_vector_i[3:2];
    
    reg reset156;
    always@(posedge clk156)
        reset156 <= reset;

    xaui_block
    #(
        .WRAPPER_SIM_GTXRESET_SPEEDUP(1)
    ) xaui_block
    (
        .reset         (reset),
        .reset156      (reset156),
        .clk156        (clk156),
        .dclk          (clk50m),
        .refclk        (refclk),
        .txoutclk      (txoutclk),
        
        .xgmii_txd     (xgmii_txd),
        .xgmii_txc     (xgmii_txc),
        .xgmii_rxd     (xgmii_rxd),
        .xgmii_rxc     (xgmii_rxc),
        
        .xaui_tx_l0_p  (xaui_tx_l0_p),
        .xaui_tx_l0_n  (xaui_tx_l0_n),
        .xaui_tx_l1_p  (xaui_tx_l1_p),
        .xaui_tx_l1_n  (xaui_tx_l1_n),
        .xaui_tx_l2_p  (xaui_tx_l2_p),
        .xaui_tx_l2_n  (xaui_tx_l2_n),
        .xaui_tx_l3_p  (xaui_tx_l3_p),
        .xaui_tx_l3_n  (xaui_tx_l3_n),
        .xaui_rx_l0_p  (xaui_rx_l0_p),
        .xaui_rx_l0_n  (xaui_rx_l0_n),
        .xaui_rx_l1_p  (xaui_rx_l1_p),
        .xaui_rx_l1_n  (xaui_rx_l1_n),
        .xaui_rx_l2_p  (xaui_rx_l2_p),
        .xaui_rx_l2_n  (xaui_rx_l2_n),
        .xaui_rx_l3_p  (xaui_rx_l3_p),
        .xaui_rx_l3_n  (xaui_rx_l3_n),
        
        .txlock        (clk156_locked),
        .signal_detect (4'b1111),
        .drp_i         (16'h0),
        .drp_addr      (8'b0),
        .drp_en        (4'b0),
        .drp_we        (4'b0),
        .drp_o         (),
        .drp_rdy       (),
        
        .configuration_vector (configuration_vector_i),

        .align_status  (align_status),
        .sync_status   (sync_status),
        .mgt_tx_ready  (mgt_tx_ready),
        .status_vector (status_vector)); 

    always@(posedge clk156)
        if(reset)
            ready <= 1'b0;
        else
            ready <= (&sync_status) & mgt_tx_ready & align_status & (8'hfc == status_vector);

endmodule

