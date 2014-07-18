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
// Description:       User logic module.控制数据帧的发送方向：1）MAC端口(接收FIFO)
//                                                                                                                                                                                                                             2）循环发送FIFO(特征FIFO)
//                                                                                                                                                                                                                             3）PC(数据采样)
// Date:              Thu Aug 01 22:19:58 2013 (by Create and Import Peripheral Wizard)
// Verilog Standard:  Verilog-2001
//----------------------------------------------------------------------------
// Naming Conventions:
//   active low signals:                                            "*_n"
//   clock signals:                                                         "clk", "clk_div#", "clk_#x"
//   reset signals:                                                             "rst", "rst_n"
//   generics:                                                                      "C_*"
//   user defined types:                                            "*_TYPE"
//   state machine next state:                          "*_ns"
//   state machine current state:                   "*_cs"
//   combinatorial signals:                                     "*_com"
//   pipelined or register delay signals:       "*_d#"
//   counter signals:                                                   "*cnt*"
//   clock enable signals:                                      "*_ce"
//   internal version of output port:               "*_i"
//   device pins:                                                               "*_pin"
//   ports:                                                                             "- Names begin with Uppercase"
//   processes:                                                                 "*_PROCESS"
//   component instantiations:                          "<ENTITY_>I_<#|FUNC>"
//----------------------------------------------------------------------------

//`uselib lib=unisims_ver
//`uselib lib=proc_common_v3_00_a

`timescale 1ns / 1ps

module output_port_lookup
#(
    //Master AXI Stream Data Width
    parameter C_M_AXIS_DATA_WIDTH        =    256,
    parameter C_S_AXIS_DATA_WIDTH            =    256,
    parameter C_M_AXIS_TUSER_WIDTH    =    128,
    parameter C_S_AXIS_TUSER_WIDTH    =    128,
    parameter SRC_PORT_POS                                            =    16,
    parameter DST_PORT_POS                                            =    24
)
(
  // -- ADD USER PORTS BELOW THIS LINE ---------------
  // --USER ports added here 
  // Global Ports
    axi_aclk,
    axi_resetn,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tuser,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
        
  // -- ADD USER PORTS ABOVE THIS LINE ---------------

  // -- DO NOT EDIT BELOW THIS LINE ------------------
  // -- Bus protocol ports, do not add to or delete 
  Bus2IP_Clk,                                 // Bus to IP clock
  Bus2IP_Resetn,                          // Bus to IP reset
  Bus2IP_Data,                                // Bus to IP data bus
  Bus2IP_BE,                                  // Bus to IP byte enables
  Bus2IP_RdCE,                            // Bus to IP read chip enable
  Bus2IP_WrCE,                        // Bus to IP write chip enable
  IP2Bus_Data,                                // IP to Bus data bus
  IP2Bus_RdAck,                       // IP to Bus read transfer acknowledgement
  IP2Bus_WrAck,                       // IP to Bus write transfer acknowledgement
  IP2Bus_Error                                // IP to Bus error response
  // -- DO NOT EDIT ABOVE THIS LINE ------------------
); // user_logic

// -- ADD USER PARAMETERS BELOW THIS LINE ------------
// --USER parameters added here 
localparam     MODULE_HEADER                 =         0;
localparam     IN_PACKET                                             =         1;
localparam     SRC_PORT_OPED0                    =        8'b00000010;
localparam     SRC_PORT_OPED1                    =        8'b00001000;
localparam     SRC_PORT_OPED2                    =        8'b00100000;
localparam     SRC_PORT_OPED3                    =        8'b10000000;
localparam     SRC_PORT_MAC0                        =        8'b00000001;
localparam     SRC_PORT_MAC1                        =        8'b00000100;
localparam     SRC_PORT_MAC2                        =        8'b00010000;
localparam     SRC_PORT_MAC3                        =        8'b01000000;
// -- ADD USER PARAMETERS ABOVE THIS LINE ------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol parameters, do not add to or delete
parameter         C_NUM_REG                    =     12;
parameter         C_SLV_DWIDTH              =     32;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

// -- ADD USER PORTS BELOW THIS LINE -----------------
// --USER ports added here 
// -- ADD USER PORTS ABOVE THIS LINE -----------------
// Global Ports
input                                                                                                                                                             axi_aclk;
input                                                                                                                                                             axi_resetn;

// Master Stream Ports (interface to data path)
output [C_M_AXIS_DATA_WIDTH - 1:0]                         m_axis_tdata;
output [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0]     m_axis_tstrb;
output reg [C_M_AXIS_TUSER_WIDTH-1:0]         m_axis_tuser;
output                                                                                                                                                         m_axis_tvalid;
input                                                                                                                                                              m_axis_tready;
output                                                                                                                                                         m_axis_tlast;

// Slave Stream Ports (interface to pkt_count)
input     [C_S_AXIS_DATA_WIDTH - 1:0]                             s_axis_tdata;
input     [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0]         s_axis_tstrb;
input     [C_S_AXIS_TUSER_WIDTH-1:0]                             s_axis_tuser;
input                                                                                                                                                              s_axis_tvalid;
output                                                                                                                                                         s_axis_tready;
input                                                                                                                                                              s_axis_tlast;

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol ports, do not add to or delete
input                                                                                                                         Bus2IP_Clk;
input                                                                                                                         Bus2IP_Resetn;
input      [C_SLV_DWIDTH-1 : 0]                                               Bus2IP_Data;
input      [C_SLV_DWIDTH/8-1 : 0]                                         Bus2IP_BE;
input      [C_NUM_REG-1 : 0]                                                          Bus2IP_RdCE;
input      [C_NUM_REG-1 : 0]                                                          Bus2IP_WrCE;
output   [C_SLV_DWIDTH-1 : 0]                                               IP2Bus_Data;
output                                                                                                                    IP2Bus_RdAck;
output                                                                                                                    IP2Bus_WrAck;
output                                                                                                                        IP2Bus_Error;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

//----------------------------------------------------------------------------
// Implementation
//----------------------------------------------------------------------------

  // --USER nets declarations added here, as needed for user logic
  wire      [C_M_AXIS_TUSER_WIDTH-1:0]             tuser_fifo;
  wire                                                                                                                                                    in_fifo_nearly_full;
  wire                                                                                                                                                    in_fifo_empty;
  wire                                                                                                                                                    in_fifo_rd_en;
  reg                                                                                                                                                       state, state_next;
  wire        [C_SLV_DWIDTH-1 : 0]                                                    dst_port_oped0;    //源端口为OPED0（SRC_PORT:0000,0010）的输出目的端口
  wire        [C_SLV_DWIDTH-1 : 0]                                                    dst_port_oped1;    //源端口为OPED1（SRC_PORT:0000,1000）的输出目的端口
  wire        [C_SLV_DWIDTH-1 : 0]                                                    dst_port_oped2;    //源端口为OPED2（SRC_PORT:0010,0000）的输出目的端口
  wire        [C_SLV_DWIDTH-1 : 0]                                                    dst_port_oped3;    //源端口为OPED3（SRC_PORT:1000,0000）的输出目的端口
  wire        [C_SLV_DWIDTH-1 : 0]                                                    dst_port_mac0;    //源端口为MAC0（SRC_PORT:0000,0001）的输出目的端口
  wire        [C_SLV_DWIDTH-1 : 0]                                                    dst_port_mac1;    //源端口为MAC1（SRC_PORT:0000,0100）的输出目的端口
  wire        [C_SLV_DWIDTH-1 : 0]                                                    dst_port_mac2;    //源端口为MAC2（SRC_PORT:0001,0000）的输出目的端口
  wire        [C_SLV_DWIDTH-1 : 0]                                                    dst_port_mac3;    //源端口为MAC3（SRC_PORT:0100,0000）的输出目的端口
  wire        [C_SLV_DWIDTH-1 : 0]                                                    pkt_samp_intel;    //数据包采样间隔N
  wire        [C_SLV_DWIDTH-1 : 0]                                                    dst_port_ctrl;          //控制寄存器：使能数据包采样
                                                                                                                                                                        /*
                                                                                                                                                                        dst_port_ctrl[7:0]——采样源端口(MAC3～MAC0)
                                                                                                                                                                        dst_port_ctrl[15:8]——目的端口(OPED3~OPED0)
                                                                                                                                                                        dst_port_ctrl[7:0]和dst_port_ctrl[15:8]采用与TUSER通道相同的独热编码
                                                                                                                                                                        dst_port_ctrl[16]——1：使能采样
                                                                                                                                                                        */                                                                                                                                                                    
  wire                                                                                                                                                   PKT_SAMP_EN;    //采样使能
  reg           [C_SLV_DWIDTH-1 : 0]                                                   pkt_samp_count;      //采样计数寄存器
  // Nets for user logic slave model s/w accessible register example
  reg        [C_SLV_DWIDTH-1 : 0]                                       slv_reg0;    //源端口为MAC0（SRC_PORT:0000,0001）的输出目的端口
  reg        [C_SLV_DWIDTH-1 : 0]                                       slv_reg1;    //源端口为MAC1（SRC_PORT:0000,0100）的输出目的端口
  reg        [C_SLV_DWIDTH-1 : 0]                                       slv_reg2;    //源端口为MAC2（SRC_PORT:0001,0000）的输出目的端口
  reg        [C_SLV_DWIDTH-1 : 0]                                       slv_reg3;    //源端口为MAC3（SRC_PORT:0100,0000）的输出目的端口
  reg        [C_SLV_DWIDTH-1 : 0]                                       slv_reg4;    //源端口为OPED0（SRC_PORT:0000,0010）的输出目的端口
  reg        [C_SLV_DWIDTH-1 : 0]                                       slv_reg5;    //源端口为OPED1（SRC_PORT:0000,1000）的输出目的端口
  reg        [C_SLV_DWIDTH-1 : 0]                                       slv_reg6;    //源端口为OPED2（SRC_PORT:0010,0000）的输出目的端口
  reg        [C_SLV_DWIDTH-1 : 0]                                       slv_reg7;    //源端口为OPED3（SRC_PORT:1000,0000）的输出目的端口
  reg        [C_SLV_DWIDTH-1 : 0]                                       slv_reg8;    //数据包采样间隔N
  reg        [C_SLV_DWIDTH-1 : 0]                                       slv_reg9;    //控制寄存器：使能数据包采样
  reg        [C_SLV_DWIDTH-1 : 0]                                       slv_reg10;
  reg        [C_SLV_DWIDTH-1 : 0]                                       slv_reg11;
  wire      [11 : 0]                                                                                           slv_reg_write_sel;
  wire      [11 : 0]                                                                                           slv_reg_read_sel;
  reg        [C_SLV_DWIDTH-1 : 0]                                       slv_ip2bus_data;
  wire                                                                                                              slv_read_ack;
  wire                                                                                                              slv_write_ack;
  integer                                                                                                           byte_index, bit_index;

  // USER logic implementation added here
    fallthrough_small_fifo
      #( .WIDTH(C_M_AXIS_DATA_WIDTH+C_M_AXIS_TUSER_WIDTH+C_M_AXIS_DATA_WIDTH/8+1),
           .MAX_DEPTH_BITS(2))
      input_fifo
      (// Outputs
         .dout                               ({m_axis_tlast, tuser_fifo, m_axis_tstrb, m_axis_tdata}),
         .full                                   (),
         .nearly_full                    (in_fifo_nearly_full),
         .prog_full                       (),
         .empty                            (in_fifo_empty),
         // Inputs
         .din                                    ({s_axis_tlast, s_axis_tuser, s_axis_tstrb, s_axis_tdata}),
         .wr_en                            (s_axis_tvalid & ~in_fifo_nearly_full),
         .rd_en                         (in_fifo_rd_en),
         .reset                           (~axi_resetn),
         .clk                              (axi_aclk)
     );
            
    assign     in_fifo_rd_en         =     m_axis_tready && !in_fifo_empty;
  assign     m_axis_tvalid     =     !in_fifo_empty;
    assign     s_axis_tready         =     !in_fifo_nearly_full;
    
    //采样间隔计数
    always @(posedge axi_aclk) begin
        if((~axi_resetn) || (~PKT_SAMP_EN))        
            pkt_samp_count    <=    0;
        else if(state==MODULE_HEADER)    begin
            if(m_axis_tvalid && (tuser_fifo[SRC_PORT_POS+7:SRC_PORT_POS] == dst_port_ctrl[7:0])) begin
                if(pkt_samp_count < pkt_samp_intel)
                    pkt_samp_count    <=    pkt_samp_count  +    1;
                else
                    pkt_samp_count    <=    0;
            end
        else 
            pkt_samp_count    <=    pkt_samp_count;
        end
    end
    
    // packet is from the cpu if it is on an odd numbered port
    /*
   assign pkt_is_from_cpu = m_axis_tuser[SRC_PORT_POS+1] ||
                                                                                                 m_axis_tuser[SRC_PORT_POS+3] ||
                                                           m_axis_tuser[SRC_PORT_POS+5] ||
                                                           m_axis_tuser[SRC_PORT_POS+7];
    */
    
    /*
    always @(*) begin
        m_axis_tuser = tuser_fifo;
        
        if (m_axis_tvalid) begin
                if(~|m_axis_tuser[SRC_PORT_POS+:8]) begin
                    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = 8'b1;
                end // Default: Send to MAC 0
          else if(PKT_SAMP_EN && (pkt_samp_count==pkt_samp_intel) &&
                        (tuser_fifo[SRC_PORT_POS+7:SRC_PORT_POS] == dst_port_ctrl[7:0]))    begin    //使能数据包采样功能
                        m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_ctrl[15:8];
          end
            else    begin
                case(m_axis_tuser[SRC_PORT_POS+7:SRC_PORT_POS])    
                    SRC_PORT_OPED0    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_oped0;
                    SRC_PORT_OPED1    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_oped1;
                    SRC_PORT_OPED2    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_oped2;
                    SRC_PORT_OPED3    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_oped3;
                    SRC_PORT_MAC0    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_mac0;
                    SRC_PORT_MAC1    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_mac1;
                    SRC_PORT_MAC2    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_mac2;
                    SRC_PORT_MAC3    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_mac3;
            endcase
            end
            end
    end
    */
    
    // modify the dst port in tuser
   always @(*) begin
      m_axis_tuser = tuser_fifo;
      state_next      = state;

      case(state)
            MODULE_HEADER: begin
            if (m_axis_tvalid) begin
                if(~|m_axis_tuser[SRC_PORT_POS+:8]) begin
                    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = 8'b1;
                end // Default: Send to MAC 0
          else if(PKT_SAMP_EN && (pkt_samp_count==pkt_samp_intel) &&
                        (tuser_fifo[SRC_PORT_POS+7:SRC_PORT_POS] == dst_port_ctrl[7:0]))    begin    //使能数据包采样功能
                        m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_ctrl[15:8];
          end
            else    begin
                case(m_axis_tuser[SRC_PORT_POS+7:SRC_PORT_POS])    
                    SRC_PORT_OPED0    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_oped0;
                    SRC_PORT_OPED1    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_oped1;
                    SRC_PORT_OPED2    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_oped2;
                    SRC_PORT_OPED3    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_oped3;
                    SRC_PORT_MAC0    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_mac0;
                    SRC_PORT_MAC1    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_mac1;
                    SRC_PORT_MAC2    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_mac2;
                    SRC_PORT_MAC3    :    m_axis_tuser[DST_PORT_POS+7:DST_PORT_POS] = dst_port_mac3;
            endcase
            end
          if(m_axis_tready) begin
               state_next = IN_PACKET;
            end
       end
    end // case: MODULE_HEADER

    IN_PACKET: begin
       if(m_axis_tlast & m_axis_tvalid & m_axis_tready) begin
          state_next = MODULE_HEADER;
       end
    end
      endcase // case (state)
   end // always @ (*)

   always @(posedge axi_aclk) begin
      if(~axi_resetn) begin
            state <= MODULE_HEADER;
      end
      else begin
            state <= state_next;
      end
   end
     
    
    assign        PKT_SAMP_EN    =        dst_port_ctrl[16];
    assign        dst_port_mac0            =        slv_reg0;
    assign        dst_port_mac1            =        slv_reg1;
    assign        dst_port_mac2            =        slv_reg2;
    assign        dst_port_mac3            =        slv_reg3;
    assign        dst_port_oped0        =        slv_reg4;
    assign        dst_port_oped1        =        slv_reg5;
    assign        dst_port_oped2        =        slv_reg6;
    assign        dst_port_oped3        =        slv_reg7;
    assign        pkt_samp_intel            =        slv_reg8;
    assign        dst_port_ctrl                    =        slv_reg9;    
    
    
    //
    always @(posedge axi_aclk) begin
        if(~axi_resetn) begin
            slv_reg0    <=    0;
            slv_reg1    <=    0;
            slv_reg2    <=    0;
            slv_reg3    <=    0;
            slv_reg4    <=    0;
            slv_reg5    <=    0;
            slv_reg6    <=    0;
            slv_reg7    <=    0;
        end
        else    begin
                                slv_reg0    <=    1;
                                slv_reg1    <=    22;
                                slv_reg2    <=    44;
                                slv_reg3    <=    64;
                                slv_reg4    <=    17;
                                slv_reg5    <=    34;
                                slv_reg6    <=    68;
                                slv_reg7    <=    136;
        end
    end
    //
    
    
    
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

/*
  assign
    slv_reg_write_sel  = Bus2IP_WrCE[11:0],
    slv_reg_read_sel   = Bus2IP_RdCE[11:0],
    slv_write_ack          = Bus2IP_WrCE[0] || Bus2IP_WrCE[1] || Bus2IP_WrCE[2] || Bus2IP_WrCE[3] || Bus2IP_WrCE[4] || Bus2IP_WrCE[5] || Bus2IP_WrCE[6] || Bus2IP_WrCE[7] || Bus2IP_WrCE[8] || Bus2IP_WrCE[9] || Bus2IP_WrCE[10] || Bus2IP_WrCE[11],
    slv_read_ack              = Bus2IP_RdCE[0] || Bus2IP_RdCE[1] || Bus2IP_RdCE[2] || Bus2IP_RdCE[3] || Bus2IP_RdCE[4] || Bus2IP_RdCE[5] || Bus2IP_RdCE[6] || Bus2IP_RdCE[7] || Bus2IP_RdCE[8] || Bus2IP_RdCE[9] || Bus2IP_RdCE[10] || Bus2IP_RdCE[11];

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
        end
      else
        case ( slv_reg_write_sel )
          12'b100000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg0[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          12'b010000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg1[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          12'b001000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg2[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          12'b000100000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg3[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          12'b000010000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg4[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          12'b000001000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg5[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          12'b000000100000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg6[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          12'b000000010000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg7[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          12'b000000001000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg8[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          12'b000000000100 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg9[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          12'b000000000010 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg10[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          12'b000000000001 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg11[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
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
            end
        endcase

    end // SLAVE_REG_WRITE_PROC

  // implement slave model register read mux
  always @( slv_reg_read_sel or slv_reg0 or slv_reg1 or slv_reg2 or slv_reg3 or slv_reg4 or slv_reg5 or slv_reg6 or slv_reg7 or slv_reg8 or slv_reg9 or slv_reg10 or slv_reg11 )
    begin 

      case ( slv_reg_read_sel )
        12'b100000000000 : slv_ip2bus_data <= slv_reg0;
        12'b010000000000 : slv_ip2bus_data <= slv_reg1;
        12'b001000000000 : slv_ip2bus_data <= slv_reg2;
        12'b000100000000 : slv_ip2bus_data <= slv_reg3;
        12'b000010000000 : slv_ip2bus_data <= slv_reg4;
        12'b000001000000 : slv_ip2bus_data <= slv_reg5;
        12'b000000100000 : slv_ip2bus_data <= slv_reg6;
        12'b000000010000 : slv_ip2bus_data <= slv_reg7;
        12'b000000001000 : slv_ip2bus_data <= slv_reg8;
        12'b000000000100 : slv_ip2bus_data <= slv_reg9;
        12'b000000000010 : slv_ip2bus_data <= slv_reg10;
        12'b000000000001 : slv_ip2bus_data <= slv_reg11;
        default : slv_ip2bus_data <= 0;
      endcase

    end // SLAVE_REG_READ_PROC

  // ------------------------------------------------------------
  // Example code to drive IP to Bus signals
  // ------------------------------------------------------------

    assign IP2Bus_Data             = (slv_read_ack == 1'b1) ? slv_ip2bus_data :  0 ;
   assign IP2Bus_WrAck = slv_write_ack;
   assign IP2Bus_RdAck = slv_read_ack;
   assign IP2Bus_Error         = 0;

*/

endmodule
