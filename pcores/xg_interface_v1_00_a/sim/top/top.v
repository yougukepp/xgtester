`timescale 1ns / 1ps

module top
#(
    // Master AXI Stream Data Width
    parameter C_M_AXIS_DATA_WIDTH=256,
    parameter C_S_AXIS_DATA_WIDTH=256,
    parameter C_M_AXIS_TUSER_WIDTH=128,
    parameter C_S_AXIS_TUSER_WIDTH=128
) (
    // Part 1: System side signals
    // Global Ports
    input           sys_clk_p,
    input           sys_clk_n,
    input           resetn,
    //GTX Clock 156.25MHz
    input           refclk156_p,
    input           refclk156_n,

    // Part 3: PHY side signals
    // XAUI PHY Interface
    output          xaui_tx_l0_p,
    output          xaui_tx_l0_n,
    output          xaui_tx_l1_p,
    output          xaui_tx_l1_n,
    output          xaui_tx_l2_p,
    output          xaui_tx_l2_n,
    output          xaui_tx_l3_p,
    output          xaui_tx_l3_n,

    input           xaui_rx_l0_p,
    input           xaui_rx_l0_n,
    input           xaui_rx_l1_p,
    input           xaui_rx_l1_n,
    input           xaui_rx_l2_p,
    input           xaui_rx_l2_n,
    input           xaui_rx_l3_p,
    input           xaui_rx_l3_n
); 

    wire            axi_aclk;
    wire            clk50m;

    wire            locked;
    wire            resetn_locked;
    wire            ready;
        
    wire [C_M_AXIS_DATA_WIDTH - 1:0] m_axis_tdata;
    wire [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0] m_axis_tstrb;
    wire [C_M_AXIS_TUSER_WIDTH-1:0] m_axis_tuser;
    wire m_axis_tvalid;
    wire m_axis_tready;
    wire m_axis_tlast;

    wire [C_S_AXIS_DATA_WIDTH - 1:0] s_axis_tdata;
    wire [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0] s_axis_tstrb;
    wire [C_S_AXIS_TUSER_WIDTH-1:0] s_axis_tuser;
    wire  s_axis_tvalid;
    wire  s_axis_tready;
    wire  s_axis_tlast;


    assign resetn_locked = resetn & locked;
    assign data_path_resetn = resetn_locked & ready;

    clk_module clk_module(
        .sys_clk_P      (sys_clk_p),
        .sys_clk_N      (sys_clk_n),
       
        .clk160m        (axi_aclk),
        .clk50m         (clk50m),
        .locked         (locked)); 
                
    data_path 
    #(
    .TIME_STAMP_DWIDTH (64),
    .C_M_AXIS_DATA_WIDTH(C_M_AXIS_DATA_WIDTH),
    .C_S_AXIS_DATA_WIDTH(C_S_AXIS_DATA_WIDTH),
    .C_M_AXIS_TUSER_WIDTH(C_M_AXIS_TUSER_WIDTH),
    .C_S_AXIS_TUSER_WIDTH(C_S_AXIS_TUSER_WIDTH),
    .NUM_QUEUES(5))
    data_path
    (
    .axi_aclk(axi_aclk), 
    .axi_resetn(data_path_resetn), 
    .m_axis_tdata_0(m_axis_tdata), 
    .m_axis_tstrb_0(m_axis_tstrb), 
    .m_axis_tuser_0(m_axis_tuser), 
    .m_axis_tvalid_0(m_axis_tvalid), 
    .m_axis_tready_0(m_axis_tready), 
    .m_axis_tlast_0(m_axis_tlast), 
    .s_axis_tdata_0(s_axis_tdata), 
    .s_axis_tstrb_0(s_axis_tstrb), 
    .s_axis_tuser_0(s_axis_tuser), 
    .s_axis_tvalid_0(s_axis_tvalid), 
    .s_axis_tready_0(s_axis_tready), 
    .s_axis_tlast_0(s_axis_tlast)); 

    xg_interface
    #(
        .C_M_AXIS_DATA_WIDTH(C_M_AXIS_DATA_WIDTH),
        .C_S_AXIS_DATA_WIDTH(C_S_AXIS_DATA_WIDTH),
        .C_XAUI_REVERSE(0),
        .C_M_AXIS_TUSER_WIDTH(C_M_AXIS_TUSER_WIDTH),
        .C_S_AXIS_TUSER_WIDTH(C_S_AXIS_TUSER_WIDTH),
        .C_DEFAULT_VALUE_ENABLE(0),
        .C_DEFAULT_SRC_PORT(0),
        .C_DEFAULT_DST_PORT(0)
    ) xg_interface (
        .axi_aclk(axi_aclk), 
        .axi_resetn(resetn_locked), 

        .clk50m(clk50m), 
        .refclk156_p(refclk156_p), 
        .refclk156_n(refclk156_n), 
        .clk156(clk156), 
        
        .axis_tx_tdata(m_axis_tdata), 
        .axis_tx_tkeep(m_axis_tstrb), 
        .axis_tx_tvalid(m_axis_tvalid), 
        .axis_tx_tready(m_axis_tready), 
        .axis_tx_tlast(m_axis_tlast), 
        .axis_tx_tuser(m_axis_tuser), 
        
        .axis_rx_tdata(s_axis_tdata), 
        .axis_rx_tkeep(s_axis_tstrb), 
        .axis_rx_tvalid(s_axis_tvalid), 
        .axis_rx_tready(s_axis_tready), 
        .axis_rx_tlast(s_axis_tlast), 
        .axis_rx_tuser(s_axis_tuser), 
        
        .xaui_tx_l0_p(xaui_tx_l0_p), 
        .xaui_tx_l0_n(xaui_tx_l0_n), 
        .xaui_tx_l1_p(xaui_tx_l1_p), 
        .xaui_tx_l1_n(xaui_tx_l1_n), 
        .xaui_tx_l2_p(xaui_tx_l2_p), 
        .xaui_tx_l2_n(xaui_tx_l2_n), 
        .xaui_tx_l3_p(xaui_tx_l3_p), 
        .xaui_tx_l3_n(xaui_tx_l3_n), 
        .xaui_rx_l0_p(xaui_rx_l0_p), 
        .xaui_rx_l0_n(xaui_rx_l0_n), 
        .xaui_rx_l1_p(xaui_rx_l1_p), 
        .xaui_rx_l1_n(xaui_rx_l1_n), 
        .xaui_rx_l2_p(xaui_rx_l2_p), 
        .xaui_rx_l2_n(xaui_rx_l2_n), 
        .xaui_rx_l3_p(xaui_rx_l3_p), 
        .xaui_rx_l3_n(xaui_rx_l3_n), 
        .ready(ready));

endmodule

