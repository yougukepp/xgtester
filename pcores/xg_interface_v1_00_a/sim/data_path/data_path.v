`timescale 1ns / 1ps

module data_path
#( 
    parameter TIME_STAMP_DWIDTH     =   64,
    parameter C_M_AXIS_DATA_WIDTH   =   256,
    parameter C_S_AXIS_DATA_WIDTH   =   256,
    parameter C_M_AXIS_TUSER_WIDTH  =   128,
    parameter C_S_AXIS_TUSER_WIDTH  =   128,
    parameter NUM_QUEUES            =   5
) (
    input                                   axi_aclk,
    input                                   axi_resetn, 

    // Master Stream Ports
    output [C_M_AXIS_DATA_WIDTH - 1:0] m_axis_tdata_0,
    output [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0] m_axis_tstrb_0,
    output [C_M_AXIS_TUSER_WIDTH-1:0] m_axis_tuser_0, // Dummy AXI TUSER
    output m_axis_tvalid_0,
    input  m_axis_tready_0,
    output m_axis_tlast_0,

    // Slave Stream Ports
    input [C_S_AXIS_DATA_WIDTH - 1:0] s_axis_tdata_0,
    input [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0] s_axis_tstrb_0,
    input [C_S_AXIS_TUSER_WIDTH-1:0] s_axis_tuser_0,
    input  s_axis_tvalid_0,
    output s_axis_tready_0,
    input  s_axis_tlast_0
		);

    /* time stamp counter */
    wire    [TIME_STAMP_DWIDTH-1:0]         counter_val;

    /* input_arbiter */
    wire    [C_M_AXIS_DATA_WIDTH-1:0]       arbiter_m_axis_tdata;
    wire    [((C_M_AXIS_DATA_WIDTH/8))-1:0] arbiter_m_axis_tstrb;
    wire    [C_M_AXIS_TUSER_WIDTH-1:0]      arbiter_m_axis_tuser;
    wire                                    arbiter_m_axis_tvalid;
    wire                                    arbiter_m_axis_tready;
    wire                                    arbiter_m_axis_tlast;

    /* pkt_count */
    wire    [C_M_AXIS_DATA_WIDTH-1:0]       pkt_count_m_axis_tdata;
    wire    [((C_M_AXIS_DATA_WIDTH/8))-1:0] pkt_count_m_axis_tstrb;
    wire    [C_M_AXIS_TUSER_WIDTH-1:0]      pkt_count_m_axis_tuser;
    wire                                    pkt_count_m_axis_tvalid;
    wire                                    pkt_count_m_axis_tready;
    wire                                    pkt_count_m_axis_tlast;

    /* output_port_lookup */
    wire    [C_M_AXIS_DATA_WIDTH-1:0]       lookup_m_axis_tdata;
    wire    [((C_M_AXIS_DATA_WIDTH/8))-1:0] lookup_m_axis_tstrb;
    wire    [C_M_AXIS_TUSER_WIDTH-1:0]      lookup_m_axis_tuser;
    wire                                    lookup_m_axis_tvalid;
    wire                                    lookup_m_axis_tready;
    wire                                    lookup_m_axis_tlast;

    /* bram_output_Queues */
    wire    [C_M_AXIS_DATA_WIDTH-1:0]       output_m_axis_tdata_0;
    wire    [((C_M_AXIS_DATA_WIDTH/8))-1:0] output_m_axis_tstrb_0;
    wire    [C_M_AXIS_TUSER_WIDTH-1:0]      output_m_axis_tuser_0;
    wire                                    output_m_axis_tvalid_0;
    wire                                    output_m_axis_tready_0;
    wire                                    output_m_axis_tlast_0;


    /* pkt_count_tx */
    wire    [C_M_AXIS_DATA_WIDTH-1:0]       pkt_count_tx_m_axis_tdata_0;
    wire    [((C_M_AXIS_DATA_WIDTH/8))-1:0] pkt_count_tx_m_axis_tstrb_0;
    wire    [C_M_AXIS_TUSER_WIDTH-1:0]      pkt_count_tx_m_axis_tuser_0;
    wire                                    pkt_count_tx_m_axis_tvalid_0;
    wire                                    pkt_count_tx_m_axis_tready_0;
    wire                                    pkt_count_tx_m_axis_tlast_0;


    wire reset = ~axi_resetn;

    time_stamp_counter #(
        .TIME_STAMP_DWIDTH(TIME_STAMP_DWIDTH)
    ) time_stamp_counter (
        .clk(axi_aclk), 
        .reset(reset), 
        .counter_val(counter_val)
    );


    nf10_input_arbiter 
    #(
        .C_M_AXIS_DATA_WIDTH(C_M_AXIS_DATA_WIDTH),
        .C_S_AXIS_DATA_WIDTH(C_S_AXIS_DATA_WIDTH),
        .C_M_AXIS_TUSER_WIDTH(C_M_AXIS_TUSER_WIDTH),
        .C_S_AXIS_TUSER_WIDTH(C_S_AXIS_TUSER_WIDTH),
        .NUM_QUEUES(NUM_QUEUES)
    ) input_arbiter (
        .axi_aclk(axi_aclk), 
        .axi_resetn(axi_resetn), 

        .m_axis_tdata(arbiter_m_axis_tdata), 
        .m_axis_tstrb(arbiter_m_axis_tstrb), 
        .m_axis_tuser(arbiter_m_axis_tuser), 
        .m_axis_tvalid(arbiter_m_axis_tvalid), 
        .m_axis_tready(arbiter_m_axis_tready), 
        .m_axis_tlast(arbiter_m_axis_tlast), 

        .s_axis_tdata_0(s_axis_tdata_0), 
        .s_axis_tstrb_0(s_axis_tstrb_0), 
        .s_axis_tuser_0(s_axis_tuser_0), 
        .s_axis_tvalid_0(s_axis_tvalid_0), 
        .s_axis_tready_0(s_axis_tready_0), 
        .s_axis_tlast_0(s_axis_tlast_0), 

        .s_axis_tdata_1(), 
        .s_axis_tstrb_1(), 
        .s_axis_tuser_1(), 
        .s_axis_tvalid_1(), 
        .s_axis_tready_1(), 
        .s_axis_tlast_1(), 

        .s_axis_tdata_2(), 
        .s_axis_tstrb_2(), 
        .s_axis_tuser_2(), 
        .s_axis_tvalid_2(), 
        .s_axis_tready_2(), 
        .s_axis_tlast_2(), 

        .s_axis_tdata_3(), 
        .s_axis_tstrb_3(), 
        .s_axis_tuser_3(), 
        .s_axis_tvalid_3(), 
        .s_axis_tready_3(), 
        .s_axis_tlast_3(), 

        .s_axis_tdata_4(), 
        .s_axis_tstrb_4(), 
        .s_axis_tuser_4(), 
        .s_axis_tvalid_4(), 
        .s_axis_tready_4(), 
        .s_axis_tlast_4()
    ); 
    
    output_port_lookup
    #(
        .C_M_AXIS_DATA_WIDTH(C_M_AXIS_DATA_WIDTH),
        .C_S_AXIS_DATA_WIDTH(C_S_AXIS_DATA_WIDTH),
        .C_M_AXIS_TUSER_WIDTH(C_M_AXIS_TUSER_WIDTH),
        .C_S_AXIS_TUSER_WIDTH(C_S_AXIS_TUSER_WIDTH),
        .SRC_PORT_POS(16),
        .DST_PORT_POS(24)
    ) output_port_lookup (
        .axi_aclk(axi_aclk), 
        .axi_resetn(axi_resetn), 

        .m_axis_tdata(lookup_m_axis_tdata), 
        .m_axis_tstrb(lookup_m_axis_tstrb), 
        .m_axis_tuser(lookup_m_axis_tuser), 
        .m_axis_tvalid(lookup_m_axis_tvalid), 
        .m_axis_tready(lookup_m_axis_tready), 
        .m_axis_tlast(lookup_m_axis_tlast), 

        .s_axis_tdata(arbiter_m_axis_tdata), 
        .s_axis_tstrb(arbiter_m_axis_tstrb), 
        .s_axis_tuser(arbiter_m_axis_tuser), 
        .s_axis_tvalid(arbiter_m_axis_tvalid), 
        .s_axis_tready(arbiter_m_axis_tready), 
        .s_axis_tlast(arbiter_m_axis_tlast), 

        .Bus2IP_Clk(), 
        .Bus2IP_Resetn(), 
        .Bus2IP_Data(), 
        .Bus2IP_BE(), 
        .Bus2IP_RdCE(), 
        .Bus2IP_WrCE(), 
        .IP2Bus_Data(), 
        .IP2Bus_RdAck(), 
        .IP2Bus_WrAck(), 
        .IP2Bus_Error()
    );

    bram_output_queues 
    #(
        .C_M_AXIS_DATA_WIDTH(C_M_AXIS_DATA_WIDTH),
        .C_S_AXIS_DATA_WIDTH(C_S_AXIS_DATA_WIDTH),
        .C_M_AXIS_TUSER_WIDTH(C_M_AXIS_TUSER_WIDTH),
        .C_S_AXIS_TUSER_WIDTH(C_S_AXIS_TUSER_WIDTH),
        .NUM_QUEUES(5),
        .NUM_PKT_GEN_QUEUES(4)
    ) bram_output_queues (
        .axi_aclk(axi_aclk), 
        .axi_resetn(axi_resetn), 

        .s_axis_tdata(lookup_m_axis_tdata), 
        .s_axis_tstrb(lookup_m_axis_tstrb), 
        .s_axis_tuser(lookup_m_axis_tuser), 
        .s_axis_tvalid(lookup_m_axis_tvalid), 
        .s_axis_tready(lookup_m_axis_tready), 
        .s_axis_tlast(lookup_m_axis_tlast), 

        .m_axis_tdata_0(output_m_axis_tdata_0), 
        .m_axis_tstrb_0(output_m_axis_tstrb_0), 
        .m_axis_tuser_0(output_m_axis_tuser_0), 
        .m_axis_tvalid_0(output_m_axis_tvalid_0), 
        .m_axis_tready_0(output_m_axis_tready_0), 
        .m_axis_tlast_0(output_m_axis_tlast_0), 

        .m_axis_tdata_1(), 
        .m_axis_tstrb_1(), 
        .m_axis_tuser_1(), 
        .m_axis_tvalid_1(), 
        .m_axis_tready_1(), 
        .m_axis_tlast_1(), 

        .m_axis_tdata_2(), 
        .m_axis_tstrb_2(), 
        .m_axis_tuser_2(), 
        .m_axis_tvalid_2(), 
        .m_axis_tready_2(), 
        .m_axis_tlast_2(), 

        .m_axis_tdata_3(), 
        .m_axis_tstrb_3(), 
        .m_axis_tuser_3(), 
        .m_axis_tvalid_3(), 
        .m_axis_tready_3(), 
        .m_axis_tlast_3(), 

        .m_axis_tdata_4(), 
        .m_axis_tstrb_4(), 
        .m_axis_tuser_4(), 
        .m_axis_tvalid_4(), 
        .m_axis_tready_4(), 
        .m_axis_tlast_4(), 

        .Bus2IP_Clk(), 
        .Bus2IP_Resetn(), 
        .Bus2IP_Data(), 
        .Bus2IP_BE(), 
        .Bus2IP_RdCE(), 
        .Bus2IP_WrCE(), 
        .IP2Bus_Data(), 
        .IP2Bus_RdAck(), 
        .IP2Bus_WrAck(), 
        .IP2Bus_Error()
    );


    pkt_count_tx 
    #(
        .C_M_AXIS_DATA_WIDTH(C_M_AXIS_DATA_WIDTH),
        .C_S_AXIS_DATA_WIDTH(C_S_AXIS_DATA_WIDTH),
        .C_M_AXIS_TUSER_WIDTH(C_M_AXIS_TUSER_WIDTH),
        .C_S_AXIS_TUSER_WIDTH(C_S_AXIS_TUSER_WIDTH),
        .C_PKT_COUNT_DWIDTH(64),
        .NUM_PKT_GEN_QUEUES(4)
    ) pkt_count_tx_0 (
        .axi_aclk(axi_aclk), 
        .axi_resetn(axi_resetn), 

        .m_axis_tdata_0(m_axis_tdata_0), 
        .m_axis_tstrb_0(m_axis_tstrb_0), 
        .m_axis_tuser_0(m_axis_tuser_0), 
        .m_axis_tvalid_0(m_axis_tvalid_0), 
        .m_axis_tready_0(m_axis_tready_0), 
        .m_axis_tlast_0(m_axis_tlast_0), 

        .s_axis_tdata_0(output_m_axis_tdata_0), 
        .s_axis_tstrb_0(output_m_axis_tstrb_0), 
        .s_axis_tuser_0(output_m_axis_tuser_0), 
        .s_axis_tvalid_0(output_m_axis_tvalid_0), 
        .s_axis_tready_0(output_m_axis_tready_0), 
        .s_axis_tlast_0(output_m_axis_tlast_0), 

        .m_axis_tdata_1(), 
        .m_axis_tstrb_1(), 
        .m_axis_tuser_1(), 
        .m_axis_tvalid_1(), 
        .m_axis_tready_1(), 
        .m_axis_tlast_1(), 

        .m_axis_tdata_2(), 
        .m_axis_tstrb_2(), 
        .m_axis_tuser_2(), 
        .m_axis_tvalid_2(), 
        .m_axis_tready_2(), 
        .m_axis_tlast_2(), 

        .m_axis_tdata_3(), 
        .m_axis_tstrb_3(), 
        .m_axis_tuser_3(), 
        .m_axis_tvalid_3(), 
        .m_axis_tready_3(), 
        .m_axis_tlast_3(), 

        .s_axis_tdata_1(), 
        .s_axis_tstrb_1(), 
        .s_axis_tuser_1(), 
        .s_axis_tvalid_1(), 
        .s_axis_tready_1(), 
        .s_axis_tlast_1(), 

        .s_axis_tdata_2(), 
        .s_axis_tstrb_2(), 
        .s_axis_tuser_2(), 
        .s_axis_tvalid_2(), 
        .s_axis_tready_2(), 
        .s_axis_tlast_2(), 

        .s_axis_tdata_3(), 
        .s_axis_tstrb_3(), 
        .s_axis_tuser_3(), 
        .s_axis_tvalid_3(), 
        .s_axis_tready_3(), 
        .s_axis_tlast_3(), 

        .Bus2IP_Clk(), 
        .Bus2IP_Resetn(), 
        .Bus2IP_Data(), 
        .Bus2IP_BE(), 
        .Bus2IP_RdCE(), 
        .Bus2IP_WrCE(), 
        .IP2Bus_Data(), 
        .IP2Bus_RdAck(), 
        .IP2Bus_WrAck(), 
        .IP2Bus_Error()
    );


endmodule
