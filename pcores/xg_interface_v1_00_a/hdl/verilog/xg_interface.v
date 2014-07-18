`timescale 1ns / 1ps

module xg_interface
#(
        // Master AXI Stream Data Width
    parameter C_M_AXIS_DATA_WIDTH=256,
    parameter C_S_AXIS_DATA_WIDTH=256,
    parameter C_XAUI_REVERSE=0,
    parameter C_M_AXIS_TUSER_WIDTH=128,
    parameter C_S_AXIS_TUSER_WIDTH=128,
    parameter C_DEFAULT_VALUE_ENABLE = 0,
    parameter C_DEFAULT_SRC_PORT = 0,
    parameter C_DEFAULT_DST_PORT = 0,
    parameter C_XGMAC_CONFIGURATION  =   {5'b01000, 64'h0583000000000000},
    parameter C_XAUI_CONFIGURATION   =   7'b0000001
) (
    /* Part 1: System side signals */
    /* Global Ports */
    input           axi_aclk,
    input           axi_resetn,
    /* DRP Clock 50MHz */
    input           clk50m,
    /* GTX Clock 156.25MHz */
    input           refclk156_p,
    input           refclk156_n,
    output          clk156,

    /* Part 2: Data Path signals */
    /* AXI_Stream TX side */
    input [C_S_AXIS_DATA_WIDTH - 1:0] axis_tx_tdata,
    input [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0] axis_tx_tkeep,
    input  axis_tx_tvalid,
    output axis_tx_tready,
    input  axis_tx_tlast,
    input [C_S_AXIS_TUSER_WIDTH-1:0] axis_tx_tuser,
    /* AXI_Stream RX side */
    output [C_M_AXIS_DATA_WIDTH - 1:0] axis_rx_tdata,
    output [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0] axis_rx_tkeep,
    output axis_rx_tvalid,
    input  axis_rx_tready,
    output axis_rx_tlast,
    output [C_M_AXIS_TUSER_WIDTH-1:0] axis_rx_tuser, // Dummy AXI TUSER

    /* Part 3: PHY side signals */
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
    input           xaui_rx_l3_n,

    /* ready */
    output reg      ready);
        
    localparam C_M_AXIS_DATA_WIDTH_INTERNAL=64;
    localparam C_S_AXIS_DATA_WIDTH_INTERNAL=64;
        
    wire txoutclk;

    wire [63:0] xgmii_rxd, xgmii_txd;
    wire [ 7:0] xgmii_rxc, xgmii_txc;

    wire [63 : 0] tx_data;
    wire [7 : 0]  tx_data_valid;
    wire          tx_start;
    wire          tx_ack;

    wire [63 : 0] rx_data;
    wire [7 : 0]  rx_data_valid;

    wire          rx_good_frame;
    wire          rx_bad_frame;
        
    wire [C_M_AXIS_DATA_WIDTH_INTERNAL - 1:0] m_axis_tdata_internal;
    wire [((C_M_AXIS_DATA_WIDTH_INTERNAL / 8)) - 1:0] m_axis_tstrb_internal;
    wire [C_M_AXIS_TUSER_WIDTH-1:0] m_axis_tuser_internal; // Dummy AXI TUSER
    wire m_axis_tvalid_internal;
    wire m_axis_tready_internal;
    wire m_axis_tlast_internal;

    wire [C_S_AXIS_DATA_WIDTH_INTERNAL - 1:0] s_axis_tdata_internal;
    wire [((C_S_AXIS_DATA_WIDTH_INTERNAL / 8)) - 1:0] s_axis_tstrb_internal;
    wire [C_S_AXIS_TUSER_WIDTH-1:0] s_axis_tuser_internal;
    wire s_axis_tvalid_internal;
    wire s_axis_tready_internal;
    wire s_axis_tlast_internal;

    wire xgmac_ready;
    wire xaui_ready;
    
    wire reset;

    assign reset = ~axi_resetn; 
    assign m_axis_tuser_internal = {(C_M_AXIS_TUSER_WIDTH){1'b0}};

    always@(posedge axi_aclk)
        if(reset)
            ready <= 1'b0;
        else
            ready <= xgmac_ready && xaui_ready;
        
    nf10_axis_converter_rx 
    #(
        .C_M_AXIS_DATA_WIDTH(C_M_AXIS_DATA_WIDTH),
        .C_S_AXIS_DATA_WIDTH(C_M_AXIS_DATA_WIDTH_INTERNAL),
        .C_DEFAULT_VALUE_ENABLE(C_DEFAULT_VALUE_ENABLE),
        .C_DEFAULT_SRC_PORT(C_DEFAULT_SRC_PORT),
        .C_DEFAULT_DST_PORT(C_DEFAULT_DST_PORT)
    ) converter_master (
        .axi_aclk(axi_aclk),
        .axi_resetn(axi_resetn),

        .m_axis_tdata(axis_rx_tdata),
        .m_axis_tstrb(axis_rx_tkeep),
        .m_axis_tvalid(axis_rx_tvalid),
        .m_axis_tready(axis_rx_tready),
        .m_axis_tlast(axis_rx_tlast),
        .m_axis_tuser(axis_rx_tuser),

        .s_axis_tdata(m_axis_tdata_internal),
        .s_axis_tstrb(m_axis_tstrb_internal),
        .s_axis_tvalid(m_axis_tvalid_internal),
        .s_axis_tready(m_axis_tready_internal),
        .s_axis_tlast(m_axis_tlast_internal),
        .s_axis_tuser(m_axis_tuser_internal),

        .rx_time_stamp(64'h0));

    nf10_axis_converter_tx
    #(
        .C_M_AXIS_DATA_WIDTH(C_S_AXIS_DATA_WIDTH_INTERNAL),
        .C_S_AXIS_DATA_WIDTH(C_S_AXIS_DATA_WIDTH)
    ) converter_slave (
        .axi_aclk(axi_aclk),
        .axi_resetn(axi_resetn), 
        
        .m_axis_tdata(s_axis_tdata_internal),
        .m_axis_tstrb(s_axis_tstrb_internal),
        .m_axis_tvalid(s_axis_tvalid_internal),
        .m_axis_tready(s_axis_tready_internal),
        .m_axis_tlast(s_axis_tlast_internal),
        .m_axis_tuser(s_axis_tuser_internal), 
        
        .s_axis_tdata(axis_tx_tdata),
        .s_axis_tstrb(axis_tx_tkeep),
        .s_axis_tvalid(axis_tx_tvalid),
        .s_axis_tready(axis_tx_tready),
        .s_axis_tlast(axis_tx_tlast),
        .s_axis_tuser(axis_tx_tuser));
    
    xgmac_top xgmac( 
        .clk160m    (axi_aclk),
        .reset      (reset),

        .configuration_vector(C_XGMAC_CONFIGURATION),
        .ready      (xgmac_ready),

        .axis_tx_tdata(s_axis_tdata_internal),
        .axis_tx_tkeep(s_axis_tstrb_internal),
        .axis_tx_tvalid(s_axis_tvalid_internal),
        .axis_tx_tready(s_axis_tready_internal),
        .axis_tx_tlast(s_axis_tlast_internal),

        .axis_rx_tdata(m_axis_tdata_internal),
        .axis_rx_tkeep(m_axis_tstrb_internal),
        .axis_rx_tvalid(m_axis_tvalid_internal),
        .axis_rx_tready(m_axis_tready_internal),
        .axis_rx_tlast(m_axis_tlast_internal),

        .tx_clk0(clk156),
        .tx_dcm_lock(clk156_locked),
        .xgmii_txd(xgmii_txd),
        .xgmii_txc(xgmii_txc),

        .rx_clk0(clk156),
        .rx_dcm_lock(clk156_locked),
        .xgmii_rxd(xgmii_rxd),
        .xgmii_rxc(xgmii_rxc));

    xaui_top xaui(
        .reset                  (reset), 
        .clk50m                 (clk50m), 
        .refclk156_p            (refclk156_p), 
        .refclk156_n            (refclk156_n), 
        .clk156                 (clk156), 
        .clk156_locked          (clk156_locked),

        .configuration_vector   (C_XAUI_CONFIGURATION),

        .ready                  (xaui_ready),

        .xgmii_txd              (xgmii_txd), 
        .xgmii_txc              (xgmii_txc), 
        .xgmii_rxd              (xgmii_rxd), 
        .xgmii_rxc              (xgmii_rxc),

        .xaui_tx_l0_p           (xaui_tx_l0_p), 
        .xaui_tx_l0_n           (xaui_tx_l0_n), 
        .xaui_tx_l1_p           (xaui_tx_l1_p), 
        .xaui_tx_l1_n           (xaui_tx_l1_n), 
        .xaui_tx_l2_p           (xaui_tx_l2_p), 
        .xaui_tx_l2_n           (xaui_tx_l2_n), 
        .xaui_tx_l3_p           (xaui_tx_l3_p), 
        .xaui_tx_l3_n           (xaui_tx_l3_n), 
        .xaui_rx_l0_p           (xaui_rx_l0_p), 
        .xaui_rx_l0_n           (xaui_rx_l0_n), 
        .xaui_rx_l1_p           (xaui_rx_l1_p), 
        .xaui_rx_l1_n           (xaui_rx_l1_n), 
        .xaui_rx_l2_p           (xaui_rx_l2_p), 
        .xaui_rx_l2_n           (xaui_rx_l2_n), 
        .xaui_rx_l3_p           (xaui_rx_l3_p), 
        .xaui_rx_l3_n           (xaui_rx_l3_n));

endmodule

