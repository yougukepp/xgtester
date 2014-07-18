//----------------------------------------------------------------------------
// user_logic.v - module
//----------------------------------------------------------------------------
//
// ***************************************************************************
// ** Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.            **
// **                                                                       **
// ** Xilinx, Inc.                                                          **
// ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"         **
// ** AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND       **
// ** SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,        **
// ** OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,        **
// ** APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION           **
// ** THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,     **
// ** AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE      **
// ** FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY              **
// ** WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE               **
// ** IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR        **
// ** REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF       **
// ** INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS       **
// ** FOR A PARTICULAR PURPOSE.                                             **
// **                                                                       **
// ***************************************************************************
//
//----------------------------------------------------------------------------
// Filename:          user_logic.v
// Version:           1.00.a
// Description:       User logic module.
// Date:              Sat Oct 05 14:45:14 2013 (by Create and Import Peripheral Wizard)
// Verilog Standard:  Verilog-2001
//----------------------------------------------------------------------------
// Naming Conventions:
//   active low signals:                    "*_n"
//   clock signals:                         "clk", "clk_div#", "clk_#x"
//   reset signals:                         "rst", "rst_n"
//   generics:                              "C_*"
//   user defined types:                    "*_TYPE"
//   state machine next state:              "*_ns"
//   state machine current state:           "*_cs"
//   combinatorial signals:                 "*_com"
//   pipelined or register delay signals:   "*_d#"
//   counter signals:                       "*cnt*"
//   clock enable signals:                  "*_ce"
//   internal version of output port:       "*_i"
//   device pins:                           "*_pin"
//   ports:                                 "- Names begin with Uppercase"
//   processes:                             "*_PROCESS"
//   component instantiations:              "<ENTITY_>I_<#|FUNC>"
//----------------------------------------------------------------------------

//`uselib lib=unisims_ver
//`uselib lib=proc_common_v3_00_a

`timescale 1ns / 1ps

module pkt_count_tx
#(
    //AXI Stream Data Width
    parameter C_M_AXIS_DATA_WIDTH        =    256,
    parameter C_S_AXIS_DATA_WIDTH            =    256,
    parameter C_M_AXIS_TUSER_WIDTH    =    128,
    parameter C_S_AXIS_TUSER_WIDTH    =    128,
    parameter C_PKT_COUNT_DWIDTH         =     64,        //帧计数器位宽
    parameter NUM_PKT_GEN_QUEUES = 1            //1个MAC端口
)
(
  // -- ADD USER PORTS BELOW THIS LINE ---------------
  // --USER ports added here 
    // Global Ports
   axi_aclk,
   axi_resetn,
     
     // Master Stream Ports
   m_axis_tdata_0,
   m_axis_tstrb_0,
   m_axis_tuser_0,
   m_axis_tvalid_0,
   m_axis_tready_0,
   m_axis_tlast_0,
     
     m_axis_tdata_1,
   m_axis_tstrb_1,
   m_axis_tuser_1,
   m_axis_tvalid_1,
   m_axis_tready_1,
   m_axis_tlast_1,
     
     m_axis_tdata_2,
   m_axis_tstrb_2,
   m_axis_tuser_2,
   m_axis_tvalid_2,
   m_axis_tready_2,
   m_axis_tlast_2,
     
     m_axis_tdata_3,
   m_axis_tstrb_3,
   m_axis_tuser_3,
   m_axis_tvalid_3,
   m_axis_tready_3,
   m_axis_tlast_3,
     
     // Slave Stream Ports
   s_axis_tdata_0,
   s_axis_tstrb_0,
   s_axis_tuser_0,
   s_axis_tvalid_0,
   s_axis_tready_0,
   s_axis_tlast_0,
     
     s_axis_tdata_1,
   s_axis_tstrb_1,
   s_axis_tuser_1,
   s_axis_tvalid_1,
   s_axis_tready_1,
   s_axis_tlast_1,
     
     s_axis_tdata_2,
   s_axis_tstrb_2,
   s_axis_tuser_2,
   s_axis_tvalid_2,
   s_axis_tready_2,
   s_axis_tlast_2,
     
     s_axis_tdata_3,
   s_axis_tstrb_3,
   s_axis_tuser_3,
   s_axis_tvalid_3,
   s_axis_tready_3,
   s_axis_tlast_3,
     
  // -- ADD USER PORTS ABOVE THIS LINE ---------------

  // -- DO NOT EDIT BELOW THIS LINE ------------------
  // -- Bus protocol ports, do not add to or delete 
  Bus2IP_Clk,                     // Bus to IP clock
  Bus2IP_Resetn,                  // Bus to IP reset
  Bus2IP_Data,                    // Bus to IP data bus
  Bus2IP_BE,                      // Bus to IP byte enables
  Bus2IP_RdCE,                    // Bus to IP read chip enable
  Bus2IP_WrCE,                    // Bus to IP write chip enable
  IP2Bus_Data,                    // IP to Bus data bus
  IP2Bus_RdAck,                   // IP to Bus read transfer acknowledgement
  IP2Bus_WrAck,                   // IP to Bus write transfer acknowledgement
  IP2Bus_Error                    // IP to Bus error response
  // -- DO NOT EDIT ABOVE THIS LINE ------------------
); // user_logic

// -- ADD USER PARAMETERS BELOW THIS LINE ------------
// --USER parameters added here 
localparam MODULE_END_WAIT                                     =         0;
localparam MODULE_END                                                         =         1;
// -- ADD USER PARAMETERS ABOVE THIS LINE ------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol parameters, do not add to or delete
parameter C_NUM_REG                      = 16;
parameter C_SLV_DWIDTH                = 32;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

// -- ADD USER PORTS BELOW THIS LINE -----------------
// --USER ports added here
 // Global Ports
input         axi_aclk;
input         axi_resetn;

// Master Stream Ports
output      [C_M_AXIS_DATA_WIDTH-1:0]           m_axis_tdata_0;
output      [((C_M_AXIS_DATA_WIDTH/8))-1:0]     m_axis_tstrb_0;
output      [C_M_AXIS_TUSER_WIDTH-1:0]          m_axis_tuser_0;
output                                          m_axis_tvalid_0;
input                                           m_axis_tready_0;
output                                          m_axis_tlast_0;

output      [C_M_AXIS_DATA_WIDTH-1:0]           m_axis_tdata_1;
output      [((C_M_AXIS_DATA_WIDTH/8))-1:0]     m_axis_tstrb_1;
output      [C_M_AXIS_TUSER_WIDTH-1:0]          m_axis_tuser_1;
output                                          m_axis_tvalid_1;
input                                           m_axis_tready_1;
output                                          m_axis_tlast_1;

output      [C_M_AXIS_DATA_WIDTH-1:0]           m_axis_tdata_2;
output      [((C_M_AXIS_DATA_WIDTH/8))-1:0]     m_axis_tstrb_2;
output      [C_M_AXIS_TUSER_WIDTH-1:0]          m_axis_tuser_2;
output                                          m_axis_tvalid_2;
input                                           m_axis_tready_2;
output                                          m_axis_tlast_2;

output      [C_M_AXIS_DATA_WIDTH-1:0]           m_axis_tdata_3;
output      [((C_M_AXIS_DATA_WIDTH/8))-1:0]     m_axis_tstrb_3;
output      [C_M_AXIS_TUSER_WIDTH-1:0]          m_axis_tuser_3;
output                                          m_axis_tvalid_3;
input                                           m_axis_tready_3;
output                                          m_axis_tlast_3;

// Slave Stream Ports
input       [C_S_AXIS_DATA_WIDTH-1:0]           s_axis_tdata_0;
input       [((C_S_AXIS_DATA_WIDTH/8))-1:0]     s_axis_tstrb_0;
input       [C_S_AXIS_TUSER_WIDTH-1:0]          s_axis_tuser_0;
input                                           s_axis_tvalid_0;
output                                          s_axis_tready_0;
input                                           s_axis_tlast_0;

input       [C_S_AXIS_DATA_WIDTH-1:0]           s_axis_tdata_1;
input       [((C_S_AXIS_DATA_WIDTH/8))-1:0]     s_axis_tstrb_1;
input       [C_S_AXIS_TUSER_WIDTH-1:0]          s_axis_tuser_1;
input                                           s_axis_tvalid_1;
output                                          s_axis_tready_1;
input                                           s_axis_tlast_1;

input       [C_S_AXIS_DATA_WIDTH-1:0]           s_axis_tdata_2;
input       [((C_S_AXIS_DATA_WIDTH/8))-1:0]     s_axis_tstrb_2;
input       [C_S_AXIS_TUSER_WIDTH-1:0]          s_axis_tuser_2;
input                                           s_axis_tvalid_2;
output                                          s_axis_tready_2;
input                                           s_axis_tlast_2;

input       [C_S_AXIS_DATA_WIDTH-1:0]           s_axis_tdata_3;
input       [((C_S_AXIS_DATA_WIDTH/8))-1:0]     s_axis_tstrb_3;
input       [C_S_AXIS_TUSER_WIDTH-1:0]          s_axis_tuser_3;
input                                           s_axis_tvalid_3;
output                                          s_axis_tready_3;
input                                           s_axis_tlast_3;
// -- ADD USER PORTS ABOVE THIS LINE -----------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol ports, do not add to or delete
input                                                                                                                                         Bus2IP_Clk;
input                                                                                                                                         Bus2IP_Resetn;
input              [C_SLV_DWIDTH-1 : 0]                                                           Bus2IP_Data;
input              [C_SLV_DWIDTH/8-1 : 0]                                                     Bus2IP_BE;
input              [C_NUM_REG-1 : 0]                                                                  Bus2IP_RdCE;
input               [C_NUM_REG-1 : 0]                                                                  Bus2IP_WrCE;
output      [C_SLV_DWIDTH-1 : 0]                                                           IP2Bus_Data;
output                                                                                                                                    IP2Bus_RdAck;
output                                                                                                                                    IP2Bus_WrAck;
output                                                                                                                                    IP2Bus_Error;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

//----------------------------------------------------------------------------
// Implementation
//----------------------------------------------------------------------------

  // --USER nets declarations added here, as needed for user logic
    //PKT FIFO
  wire     [NUM_PKT_GEN_QUEUES-1:0]                               pkt_input_fifo_nearly_full;
  wire     [NUM_PKT_GEN_QUEUES-1:0]                              pkt_input_fifo_empty;
  wire       [NUM_PKT_GEN_QUEUES-1:0]                                  pkt_input_fifo_rd_en;
  reg              [NUM_PKT_GEN_QUEUES-1:0]                                         pkt_count_state;
    reg              [NUM_PKT_GEN_QUEUES-1:0]                                         pkt_count_state_next;
    
    wire         [C_M_AXIS_DATA_WIDTH-1:0]                                            m_axis_tdata[NUM_PKT_GEN_QUEUES-1:0];
    wire         [(C_M_AXIS_DATA_WIDTH/8)-1:0]                            m_axis_tstrb[NUM_PKT_GEN_QUEUES-1:0];                
    wire         [C_M_AXIS_TUSER_WIDTH-1:0]                                    m_axis_tuser[NUM_PKT_GEN_QUEUES-1:0];
    wire       [NUM_PKT_GEN_QUEUES-1:0]                                  m_axis_tvalid;
    wire       [NUM_PKT_GEN_QUEUES-1:0]                                  m_axis_tready;
    wire       [NUM_PKT_GEN_QUEUES-1:0]                                  m_axis_tlast;
    
    wire         [C_M_AXIS_DATA_WIDTH-1:0]                                            s_axis_tdata[NUM_PKT_GEN_QUEUES-1:0];
    wire         [(C_M_AXIS_DATA_WIDTH/8)-1:0]                            s_axis_tstrb[NUM_PKT_GEN_QUEUES-1:0];                
    wire         [C_M_AXIS_TUSER_WIDTH-1:0]                                    s_axis_tuser[NUM_PKT_GEN_QUEUES-1:0];
    wire       [NUM_PKT_GEN_QUEUES-1:0]                                  s_axis_tvalid;
    wire       [NUM_PKT_GEN_QUEUES-1:0]                                  s_axis_tready;
    wire       [NUM_PKT_GEN_QUEUES-1:0]                                  s_axis_tlast;
    
    //发送帧计数
    reg                [ C_PKT_COUNT_DWIDTH -1 : 0 ]                    pkt_count_mac[NUM_PKT_GEN_QUEUES-1:0];        //MAC0帧计数
    
    wire         [C_SLV_DWIDTH-1 : 0]                                                   pkt_count_mac_l[NUM_PKT_GEN_QUEUES-1:0];
  wire      [C_SLV_DWIDTH-1 : 0]                                                 pkt_count_mac_h[NUM_PKT_GEN_QUEUES-1:0];
    // Nets for user logic slave model s/w accessible register example
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg0;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg1;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg2;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg3;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg4;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg5;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg6;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg7;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg8;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg9;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg10;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg11;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg12;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg13;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg14;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg15;
  wire       [15 : 0]                                                            slv_reg_write_sel;
  wire       [15 : 0]                                                            slv_reg_read_sel;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_ip2bus_data;
  wire                                                                                   slv_read_ack;
  wire                                                                                   slv_write_ack;
  integer                                                                                byte_index, bit_index;

  // USER logic implementation added here
    assign        m_axis_tdata_0    =    m_axis_tdata[0];
    assign        m_axis_tdata_1    =    m_axis_tdata[1];
    assign        m_axis_tdata_2    =    m_axis_tdata[2];
    assign        m_axis_tdata_3    =    m_axis_tdata[3];
    assign        m_axis_tstrb_0        =    m_axis_tstrb[0];
    assign        m_axis_tstrb_1        =    m_axis_tstrb[1];
    assign        m_axis_tstrb_2        =    m_axis_tstrb[2];
    assign        m_axis_tstrb_3        =    m_axis_tstrb[3];
    assign        m_axis_tuser_0    =    m_axis_tuser[0];
    assign        m_axis_tuser_1    =    m_axis_tuser[1];
    assign        m_axis_tuser_2    =    m_axis_tuser[2];
    assign        m_axis_tuser_3    =    m_axis_tuser[3];
    assign        {m_axis_tvalid_3, m_axis_tvalid_2, m_axis_tvalid_1, m_axis_tvalid_0}        =    m_axis_tvalid;
  assign        m_axis_tready    =    {m_axis_tready_3, m_axis_tready_2, m_axis_tready_1, m_axis_tready_0};
    assign        {m_axis_tlast_3, m_axis_tlast_2, m_axis_tlast_1, m_axis_tlast_0}                        =    m_axis_tlast;
    
    assign        s_axis_tdata[0]            =    s_axis_tdata_0;
    assign        s_axis_tdata[1]            =    s_axis_tdata_1;
    assign        s_axis_tdata[2]            =    s_axis_tdata_2;
    assign        s_axis_tdata[3]            =    s_axis_tdata_3;
    assign        s_axis_tstrb[0]            =    s_axis_tstrb_0;
    assign        s_axis_tstrb[1]            =    s_axis_tstrb_1;
    assign        s_axis_tstrb[2]            =    s_axis_tstrb_2;
    assign        s_axis_tstrb[3]            =    s_axis_tstrb_3;
    assign        s_axis_tuser[0]            =    s_axis_tuser_0;
    assign        s_axis_tuser[1]            =    s_axis_tuser_1;
    assign        s_axis_tuser[2]            =    s_axis_tuser_2;
    assign        s_axis_tuser[3]            =    s_axis_tuser_3;
    assign        s_axis_tvalid            =    {s_axis_tvalid_3, s_axis_tvalid_2, s_axis_tvalid_1, s_axis_tvalid_0};
  assign        {s_axis_tready_3, s_axis_tready_2, s_axis_tready_1, s_axis_tready_0}        =    s_axis_tready;
    assign        s_axis_tlast                =    {s_axis_tlast_3, s_axis_tlast_2, s_axis_tlast_1, s_axis_tlast_0};
    
    
    //pkt input fifo
    generate
  genvar i;
  for(i=0; i<NUM_PKT_GEN_QUEUES; i=i+1) begin:pkt_input_fifo
    fallthrough_small_fifo
        #( .WIDTH(C_M_AXIS_DATA_WIDTH+C_M_AXIS_TUSER_WIDTH+C_M_AXIS_DATA_WIDTH/8+1),
                         .MAX_DEPTH_BITS(2))
        pkt_input_fifo
        (// Outputs
         .dout                            ({m_axis_tlast[i], m_axis_tuser[i], m_axis_tstrb[i], m_axis_tdata[i]}),
         .full                                 (),
         .nearly_full                 (pkt_input_fifo_nearly_full[i]),
         .prog_full                    (),
         .empty                         (pkt_input_fifo_empty[i]),
         // Inputs
         .din                                  ({s_axis_tlast[i], s_axis_tuser[i], s_axis_tstrb[i], s_axis_tdata[i]}),
         .wr_en                         (s_axis_tvalid[i] & ~pkt_input_fifo_nearly_full[i]),
         .rd_en                          (pkt_input_fifo_rd_en[i]),
         .reset                           (~axi_resetn),
         .clk                               (axi_aclk)
          );
    end
    endgenerate
    
    
    assign     s_axis_tready = ~pkt_input_fifo_nearly_full;
    assign     pkt_input_fifo_rd_en = m_axis_tready & (~pkt_input_fifo_empty);
    assign     m_axis_tvalid = ~pkt_input_fifo_empty;
    
    assign        {pkt_count_mac_h[0], pkt_count_mac_l[0]}    =        pkt_count_mac[0];
    assign        {pkt_count_mac_h[1], pkt_count_mac_l[1]}    =        pkt_count_mac[1];
    assign        {pkt_count_mac_h[2], pkt_count_mac_l[2]}    =        pkt_count_mac[2];
    assign        {pkt_count_mac_h[3], pkt_count_mac_l[3]}    =        pkt_count_mac[3];
    
    generate
    genvar j;

    for(j=0; j<NUM_PKT_GEN_QUEUES; j=j+1) begin : PP_ADD_FOR_CLOSE_XST_WARNING_0
    always @(posedge axi_aclk) begin
        if(~axi_resetn) pkt_count_state[j] <= MODULE_END_WAIT;
        else pkt_count_state[j] <= pkt_count_state_next[j];
    end
    end

    endgenerate
    

    generate
    genvar n;
    
    for(n=0; n<NUM_PKT_GEN_QUEUES; n=n+1) begin : PP_ADD_FOR_CLOSE_XST_WARNING_1
    always @(*) begin    
        pkt_count_state_next[n] = MODULE_END_WAIT;
        
        case( pkt_count_state[n] )
            MODULE_END_WAIT:begin
                if( m_axis_tlast[n] & m_axis_tvalid[n] )begin
                    pkt_count_state_next[n] = MODULE_END;
                end
            end
            MODULE_END:begin
                if( !( m_axis_tlast[n] & m_axis_tvalid[n] ) )begin
                    pkt_count_state_next[n] = MODULE_END_WAIT;
                end
            end
        endcase 
    end
    end
    
    endgenerate
    
    generate
    genvar k;
    
    for(k=0; k<NUM_PKT_GEN_QUEUES; k=k+1) begin : PP_ADD_FOR_CLOSE_XST_WARNING_2
    always @(posedge axi_aclk) begin
        if(~axi_resetn) begin
            pkt_count_mac[k]    <=    {C_PKT_COUNT_DWIDTH{1'b0}};            
        end
        else    begin
            case( pkt_count_state[k] )
                MODULE_END_WAIT: ;
                MODULE_END:    begin
                        pkt_count_mac[k]    <=  pkt_count_mac[k] + 1;
                    end
            endcase
        end
    end
    end
    
    endgenerate
    
    /*
    generate
    genvar k;
    
    for(k=0; k<NUM_PKT_GEN_QUEUES; k=k+1) begin:pkt_count
    always @(posedge axi_aclk) begin
        if(~axi_resetn) begin
                pkt_count_mac[k]    <=    0;
            end
            else    if(s_axis_tlast[k] && s_axis_tvalid[k])    begin
                pkt_count_mac[k]    <=    pkt_count_mac[k] + 1;
            end
            else    begin
                pkt_count_mac[k]    <=    pkt_count_mac[k];
            end
      end
    end
    
    endgenerate
    */
    
    // ------------------------------------------------------
  // Example code to read/write user logic slave model s/w accessible registers
  // 
  // Note:
  // The example code presented here is to show you one way of reading/writing
  // software accessible registers implemented in the user logic slave model.
  // Each bit of the Bus2IP_WrCE/Bus2IP_RdCE signals is configured to correspond
  // to one software accessible register by the top level template. For example,
  // if you have four 32 bit software accessible registers in the user logic,
  // you are basically operating on the following memory mapped registers:
  // 
  //    Bus2IP_WrCE/Bus2IP_RdCE   Memory Mapped Register
  //                     "1000"   C_BASEADDR + 0x0
  //                     "0100"   C_BASEADDR + 0x4
  //                     "0010"   C_BASEADDR + 0x8
  //                     "0001"   C_BASEADDR + 0xC
  // 
  // ------------------------------------------------------

  assign
    slv_reg_write_sel = Bus2IP_WrCE[15:0],
    slv_reg_read_sel  = Bus2IP_RdCE[15:0],
    slv_write_ack     = Bus2IP_WrCE[0] || Bus2IP_WrCE[1] || Bus2IP_WrCE[2] || Bus2IP_WrCE[3] || Bus2IP_WrCE[4] || Bus2IP_WrCE[5] || Bus2IP_WrCE[6] || Bus2IP_WrCE[7] || Bus2IP_WrCE[8] || Bus2IP_WrCE[9] || Bus2IP_WrCE[10] || Bus2IP_WrCE[11] || Bus2IP_WrCE[12] || Bus2IP_WrCE[13] || Bus2IP_WrCE[14] || Bus2IP_WrCE[15],
    slv_read_ack      = Bus2IP_RdCE[0] || Bus2IP_RdCE[1] || Bus2IP_RdCE[2] || Bus2IP_RdCE[3] || Bus2IP_RdCE[4] || Bus2IP_RdCE[5] || Bus2IP_RdCE[6] || Bus2IP_RdCE[7] || Bus2IP_RdCE[8] || Bus2IP_RdCE[9] || Bus2IP_RdCE[10] || Bus2IP_RdCE[11] || Bus2IP_RdCE[12] || Bus2IP_RdCE[13] || Bus2IP_RdCE[14] || Bus2IP_RdCE[15];

  // implement slave model register(s)
  always @( posedge Bus2IP_Clk )
    begin

      if ( Bus2IP_Resetn == 1'b0 )
        begin
          slv_reg0 <= 0;
          slv_reg1 <= 0;
          slv_reg2 <= 0;
          slv_reg3 <= 0;
          slv_reg4 <= 0;
          slv_reg5 <= 0;
          slv_reg6 <= 0;
          slv_reg7 <= 0;
          slv_reg8 <= 0;
          slv_reg9 <= 0;
          slv_reg10 <= 0;
          slv_reg11 <= 0;
          slv_reg12 <= 0;
          slv_reg13 <= 0;
          slv_reg14 <= 0;
          slv_reg15 <= 0;
        end
      else
        case ( slv_reg_write_sel )
          16'b1000000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg0[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0100000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg1[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0010000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg2[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0001000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg3[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0000100000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg4[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0000010000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg5[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0000001000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg6[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0000000100000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg7[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0000000010000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg8[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0000000001000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg9[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0000000000100000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg10[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0000000000010000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg11[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0000000000001000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg12[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0000000000000100 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg13[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0000000000000010 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg14[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          16'b0000000000000001 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg15[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          default : begin
            slv_reg0 <= slv_reg0;
            slv_reg1 <= slv_reg1;
            slv_reg2 <= slv_reg2;
            slv_reg3 <= slv_reg3;
            slv_reg4 <= slv_reg4;
            slv_reg5 <= slv_reg5;
            slv_reg6 <= slv_reg6;
            slv_reg7 <= slv_reg7;
            slv_reg8 <= slv_reg8;
            slv_reg9 <= slv_reg9;
            slv_reg10 <= slv_reg10;
            slv_reg11 <= slv_reg11;
            slv_reg12 <= slv_reg12;
            slv_reg13 <= slv_reg13;
            slv_reg14 <= slv_reg14;
            slv_reg15 <= slv_reg15;
                    end
        endcase

    end // SLAVE_REG_WRITE_PROC

  // implement slave model register read mux
  always @( slv_reg_read_sel or pkt_count_mac_l[0] or pkt_count_mac_h[0] or pkt_count_mac_l[1] or pkt_count_mac_h[1] 
                                            or pkt_count_mac_l[2] or pkt_count_mac_h[2] or pkt_count_mac_l[3] or pkt_count_mac_h[3] or slv_reg8 or slv_reg9 or slv_reg10 or slv_reg11 or slv_reg12 or slv_reg13 or slv_reg14 or slv_reg15 )
    begin 

      case ( slv_reg_read_sel )
        16'b1000000000000000 : slv_ip2bus_data <= pkt_count_mac_l[0];
        16'b0100000000000000 : slv_ip2bus_data <= pkt_count_mac_h[0];
        16'b0010000000000000 : slv_ip2bus_data <= pkt_count_mac_l[1];
        16'b0001000000000000 : slv_ip2bus_data <= pkt_count_mac_h[1];
        16'b0000100000000000 : slv_ip2bus_data <= pkt_count_mac_l[2];
        16'b0000010000000000 : slv_ip2bus_data <= pkt_count_mac_h[2];
        16'b0000001000000000 : slv_ip2bus_data <= pkt_count_mac_l[3];
        16'b0000000100000000 : slv_ip2bus_data <= pkt_count_mac_h[3];
        16'b0000000010000000 : slv_ip2bus_data <= slv_reg8;
        16'b0000000001000000 : slv_ip2bus_data <= slv_reg9;
        16'b0000000000100000 : slv_ip2bus_data <= slv_reg10;
        16'b0000000000010000 : slv_ip2bus_data <= slv_reg11;
        16'b0000000000001000 : slv_ip2bus_data <= slv_reg12;
        16'b0000000000000100 : slv_ip2bus_data <= slv_reg13;
        16'b0000000000000010 : slv_ip2bus_data <= slv_reg14;
        16'b0000000000000001 : slv_ip2bus_data <= slv_reg15;
        default : slv_ip2bus_data <= 0;
      endcase

    end // SLAVE_REG_READ_PROC

  // ------------------------------------------------------------
  // Example code to drive IP to Bus signals
  // ------------------------------------------------------------

    assign IP2Bus_Data = (slv_read_ack == 1'b1) ? slv_ip2bus_data :  0 ;
  assign IP2Bus_WrAck = slv_write_ack;
  assign IP2Bus_RdAck = slv_read_ack;
  assign IP2Bus_Error = 0;

endmodule
