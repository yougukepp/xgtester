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
// Filename:           user_logic.v
// Version:           		1.00.a
// Description:       User logic module.
// Date:              Sat Aug 24 22:44:29 2013 (by Create and Import Peripheral Wizard)
// Verilog Standard:  Verilog-2001
//----------------------------------------------------------------------------
// Naming Conventions:
//   active low signals:                    					"*_n"
//   clock signals:                         							"clk", "clk_div#", "clk_#x"
//   reset signals:                         								"rst", "rst_n"
//   generics:                              									"C_*"
//   user defined types:                    					"*_TYPE"
//   state machine next state:              		"*_ns"
//   state machine current state:           	"*_cs"
//   combinatorial signals:                 				"*_com"
//   pipelined or register delay signals:   "*_d#"
//   counter signals:                       						"*cnt*"
//   clock enable signals:                  				"*_ce"
//   internal version of output port:       	"*_i"
//   device pins:                           								"*_pin"
//   ports:                                 										"- Names begin with Uppercase"
//   processes:                             								"*_PROCESS"
//   component instantiations:              		"<ENTITY_>I_<#|FUNC>"
//----------------------------------------------------------------------------

//`uselib lib=unisims_ver
//`uselib lib=proc_common_v3_00_a

module bram_output_queues
#(
    //Master AXI Stream Data Width
    parameter C_M_AXIS_DATA_WIDTH		=	256,
    parameter C_S_AXIS_DATA_WIDTH			=	256,
    parameter C_M_AXIS_TUSER_WIDTH	=	128,
    parameter C_S_AXIS_TUSER_WIDTH	=	128,
		parameter NUM_QUEUES = 5,
		parameter NUM_PKT_GEN_QUEUES = 4
)
(
  // -- ADD USER PORTS BELOW THIS LINE ---------------
  // --USER ports added here 
	// Global Ports
    axi_aclk,
    axi_resetn,

    // Slave Stream Ports (interface to data path)
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tuser,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,

    // Master Stream Ports (interface to TX queues)
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

    m_axis_tdata_4,
    m_axis_tstrb_4,
    m_axis_tuser_4,
    m_axis_tvalid_4,
    m_axis_tready_4,
    m_axis_tlast_4,
  // -- ADD USER PORTS ABOVE THIS LINE ---------------

  // -- DO NOT EDIT BELOW THIS LINE ------------------
  // -- Bus protocol ports, do not add to or delete 
  Bus2IP_Clk,                     		// Bus to IP clock
  Bus2IP_Resetn,                  	// Bus to IP reset
  Bus2IP_Data,                    		// Bus to IP data bus
  Bus2IP_BE,                      		// Bus to IP byte enables
  Bus2IP_RdCE,                    // Bus to IP read chip enable
  Bus2IP_WrCE,                    // Bus to IP write chip enable
  IP2Bus_Data,                    		// IP to Bus data bus
  IP2Bus_RdAck,                   // IP to Bus read transfer acknowledgement
  IP2Bus_WrAck,                   // IP to Bus write transfer acknowledgement
  IP2Bus_Error                    		// IP to Bus error response
  // -- DO NOT EDIT ABOVE THIS LINE ------------------
); // user_logic

// -- ADD USER PARAMETERS BELOW THIS LINE ------------
// --USER parameters added here 
	function integer log2;
      input integer number;
      begin
         log2=0;
         while(2**log2<number) begin
            log2=log2+1;
         end
      end
   endfunction // log2
	 
	 
// -- ADD USER PARAMETERS ABOVE THIS LINE ------------
localparam 	MAX_PACKET_SIZE 			= 1600;
localparam  BUFFER_SIZE              			= 4096; // Buffer size 4096B
localparam  BUFFER_SIZE_WIDTH   = log2(BUFFER_SIZE/(C_M_AXIS_DATA_WIDTH/8));
localparam  BUFFER_THRESHOLD 	= (BUFFER_SIZE-MAX_PACKET_SIZE)/(C_M_AXIS_DATA_WIDTH/8);
localparam 	PACKET_RAM_SIZE_WIDTH   = log2(MAX_PACKET_SIZE/(C_M_AXIS_DATA_WIDTH/8));
localparam 	DST_POS 	= 24;
localparam 	IDLE 						= 0;
localparam  WR_PKT 		= 1;
localparam  DROP 					= 2;
// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol parameters, do not add to or delete
parameter 	C_NUM_REG                      		= 24;
parameter 	C_SLV_DWIDTH                    = 32;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

// -- ADD USER PORTS BELOW THIS LINE -----------------
// --USER ports added here
 // Global Ports
 input 																																								axi_aclk;
 input 																																								axi_resetn;

 // Slave Stream Ports (interface to data path)
 input [C_S_AXIS_DATA_WIDTH - 1:0] 									s_axis_tdata;
 input [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0] 			s_axis_tstrb;
 input [C_S_AXIS_TUSER_WIDTH-1:0] 								s_axis_tuser;
 input 																																								s_axis_tvalid;
 output reg 																																			s_axis_tready;
 input 																																								s_axis_tlast;

 // Master Stream Ports (interface to TX queues)
 //10g_interface0
 output [C_M_AXIS_DATA_WIDTH - 1:0] 							m_axis_tdata_0;
 output [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0] 	m_axis_tstrb_0;
 output [C_M_AXIS_TUSER_WIDTH-1:0] 						m_axis_tuser_0;
 output  																																						m_axis_tvalid_0;
 input 																																								m_axis_tready_0;
 output  																																						m_axis_tlast_0;
 //10g_interface1
 output [C_M_AXIS_DATA_WIDTH - 1:0] 							m_axis_tdata_1;
 output [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0] 	m_axis_tstrb_1;
 output [C_M_AXIS_TUSER_WIDTH-1:0] 						m_axis_tuser_1;
 output  																																						m_axis_tvalid_1;
 input 																																								m_axis_tready_1;
 output  																																						m_axis_tlast_1;
 //10g_interface2
 output [C_M_AXIS_DATA_WIDTH - 1:0] 							m_axis_tdata_2;
 output [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0] 	m_axis_tstrb_2;
 output [C_M_AXIS_TUSER_WIDTH-1:0] 						m_axis_tuser_2;
 output  																																						m_axis_tvalid_2;
 input 																																								m_axis_tready_2;
 output  																																						m_axis_tlast_2;
 //10g_interface3
 output [C_M_AXIS_DATA_WIDTH - 1:0] 							m_axis_tdata_3;
 output [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0] 	m_axis_tstrb_3;
 output [C_M_AXIS_TUSER_WIDTH-1:0] 						m_axis_tuser_3;
 output  																																						m_axis_tvalid_3;
 input 																																								m_axis_tready_3;
 output  																																						m_axis_tlast_3;
//oped
 output [C_M_AXIS_DATA_WIDTH - 1:0] 							m_axis_tdata_4;
 output [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0] 	m_axis_tstrb_4;
 output [C_M_AXIS_TUSER_WIDTH-1:0] 					  m_axis_tuser_4;
 output  																																						m_axis_tvalid_4;
 input 																																								m_axis_tready_4;
 output  																																						m_axis_tlast_4;
// -- ADD USER PORTS ABOVE THIS LINE -----------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol ports, do not add to or delete
input                                     													 Bus2IP_Clk;
input                                     													 Bus2IP_Resetn;
input      		[C_SLV_DWIDTH-1 : 0]           Bus2IP_Data;
input      		[C_SLV_DWIDTH/8-1 : 0]        Bus2IP_BE;
input      		[C_NUM_REG-1 : 0]              		Bus2IP_RdCE;
input      		[C_NUM_REG-1 : 0]              		Bus2IP_WrCE;
output     	[C_SLV_DWIDTH-1 : 0]            IP2Bus_Data;
output                                    													IP2Bus_RdAck;
output                                    													IP2Bus_WrAck;
output                                    													IP2Bus_Error;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

//----------------------------------------------------------------------------
// Implementation
//----------------------------------------------------------------------------

  // --USER nets declarations added here, as needed for user logic
	//特征FIFO
	reg   [NUM_PKT_GEN_QUEUES-1:0]            pkt_gen_wr_en;
	reg   [PACKET_RAM_SIZE_WIDTH-1:0]			pkt_gen_wr_addr[NUM_PKT_GEN_QUEUES-1:0];
	wire [NUM_PKT_GEN_QUEUES-1:0]          	rd_loop_en;
	wire [NUM_PKT_GEN_QUEUES-1:0]						pkt_gen_tlast;
	wire [C_M_AXIS_TUSER_WIDTH-1:0]					pkt_gen_tuser[NUM_PKT_GEN_QUEUES-1:0];
	wire [((C_M_AXIS_DATA_WIDTH/8))-1:0]		pkt_gen_tstrb[NUM_PKT_GEN_QUEUES-1:0];
	wire [C_M_AXIS_DATA_WIDTH-1:0]							pkt_gen_tdata[NUM_PKT_GEN_QUEUES-1:0];
	wire [NUM_PKT_GEN_QUEUES-1:0]          	pkt_gen_rdy;
	wire [NUM_PKT_GEN_QUEUES-1:0]          	pkt_gen_nearly_full;
	wire [NUM_PKT_GEN_QUEUES-1:0]          	pkt_gen_full;
	wire [NUM_PKT_GEN_QUEUES-1:0]          	pkt_gen_fullfill;
	reg 	 [NUM_PKT_GEN_QUEUES-1:0]          	pkt_gen_oq;
	wire [NUM_PKT_GEN_QUEUES-1:0]            pkt_num_oq;
	
	//control	register
	wire [C_SLV_DWIDTH-1 : 0]														  pkt_wr_ctrl;		//特征FIFO写控制(slv_reg0——只写)
																																																							//pkt_wr_ctrl[i]==1——pkt_gen_ram for MAC[i] is enabled to read
	reg   [C_SLV_DWIDTH-1 : 0]															pkt_wr_status;		//特征FIFO写状态(slv_reg1——只读)
																																																									//pkt_wr_status[i]==1——pkt_gen_ram[i] is written																																																						
	wire [NUM_PKT_GEN_QUEUES-1:0]						pkt_send_en;			//特征FIFO发送使能	
	
	//OPED FIFO
	reg 	 [1:0]                																								 state;
  reg 	 [1:0]                																								 state_next;
	wire [C_M_AXIS_TUSER_WIDTH-1:0]           fifo_out_tuser;
  wire [C_M_AXIS_DATA_WIDTH-1:0]        			 fifo_out_tdata;
  wire [((C_M_AXIS_DATA_WIDTH/8))-1:0]     fifo_out_tstrb;
  wire 																				 	                                 fifo_out_tlast;
	wire                																													 nearly_full_fifo;
  wire                                                                           empty;
	wire                																													 rd_en;
  reg                                                                             wr_en;
	wire																																					 oped_oq;
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
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg16;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg17;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg18;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg19;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg20;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg21;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg22;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_reg23;
  wire       [23 : 0]                       									 slv_reg_write_sel;
  wire       [23 : 0]                       									 slv_reg_read_sel;
  reg        [C_SLV_DWIDTH-1 : 0]           slv_ip2bus_data;
  wire                                      											 slv_read_ack;
  wire                                      											 slv_write_ack;
  integer                                   											 byte_index, bit_index;

  // USER logic implementation added here
	generate
   genvar i;
   for(i=0; i<NUM_PKT_GEN_QUEUES; i=i+1) begin: output_queues
		small_ram_loop 		
		#(
				.WIDTH(417),
				.MAX_DEPTH_BITS(6)
			)
		pkt_gen_ram (
			.clk(axi_aclk), 
			.reset(~axi_resetn), 
			.din(), 
			.wr_en(), 
			.wr_addr(), 
			.rd_loop_en(rd_loop_en[i]), 
			.dout({pkt_gen_tlast[i], pkt_gen_tuser[i], pkt_gen_tstrb[i], pkt_gen_tdata[i]}), 
			.rdy(pkt_gen_rdy[i]), 
			.nearly_full(pkt_gen_nearly_full[i]), 
			.full(pkt_gen_full[i]), 
			.fullfill(pkt_gen_fullfill[i])
    );
		end
		endgenerate
		
		//Feature package written to the FIFO
		always @(posedge axi_aclk) begin
			if(~axi_resetn)  begin
				pkt_gen_oq	<=	0;
			end
			else	if((!state)	&&	state_next)	begin
					pkt_gen_oq	<=	(s_axis_tuser[DST_POS]	& s_axis_tuser[DST_POS + 4]) |
																			((s_axis_tuser[DST_POS + 1]	& s_axis_tuser[DST_POS + 5])<<1) |
																			((s_axis_tuser[DST_POS + 2]	& s_axis_tuser[DST_POS + 6])<<2) |
																			((s_axis_tuser[DST_POS + 3]	& s_axis_tuser[DST_POS + 7])<<3);
			end
			else	begin
				pkt_gen_oq	<=	pkt_gen_oq;
			end
		end
		
																	
		assign 	pkt_num_oq	=	log2(pkt_gen_oq);
		
		reg	[2 : 0]		j;
		
		always @(*) begin
			if(~axi_resetn)  begin
				for(j=0; j<NUM_PKT_GEN_QUEUES; j=j+1)	begin
					pkt_gen_wr_en[j] = 0;
				end
			end
			else if(pkt_gen_oq && s_axis_tready)		pkt_gen_wr_en[pkt_num_oq] = s_axis_tvalid;
			else																																pkt_gen_wr_en[pkt_num_oq] = 0;
		end
		
	 
	 reg	[2 : 0]		k;
	 
		always @(posedge axi_aclk) begin
			if(~axi_resetn)  begin
				for(k=0; k<NUM_PKT_GEN_QUEUES; k=k+1)	begin
					pkt_gen_wr_addr[k] <= 0;
				end
				pkt_wr_status								<= 0;
			end
			else if(pkt_gen_oq && s_axis_tvalid && (!s_axis_tlast) && s_axis_tready)	begin
				pkt_gen_wr_addr[pkt_num_oq] <= pkt_gen_wr_addr[pkt_num_oq] + 1;
			end
			else if(pkt_gen_oq && s_axis_tvalid && s_axis_tlast && s_axis_tready)		begin
				pkt_gen_wr_addr[pkt_num_oq] <= 0;
				pkt_wr_status[pkt_num_oq]				<=1'b1;
			end
			else	begin
				pkt_gen_wr_addr[pkt_num_oq] <= pkt_gen_wr_addr[pkt_num_oq];
				pkt_wr_status[pkt_num_oq]				<= pkt_wr_status[pkt_num_oq];
			end
		end
	
																	
				
		fallthrough_small_fifo
       #( .WIDTH(C_M_AXIS_DATA_WIDTH+C_M_AXIS_DATA_WIDTH/8+C_M_AXIS_TUSER_WIDTH+1),
           .MAX_DEPTH_BITS(BUFFER_SIZE_WIDTH),
           .PROG_FULL_THRESHOLD(BUFFER_THRESHOLD))
				oped_output_fifo
        (
				 // Outputs
         .dout                            ({fifo_out_tlast, fifo_out_tuser, fifo_out_tstrb, fifo_out_tdata}),
         .full                           	  (),
         .nearly_full                 (),
				 .prog_full                    (nearly_full_fifo),
         .empty                         (empty),
         // Inputs
         .din                            		({s_axis_tlast, s_axis_tuser, s_axis_tstrb, s_axis_tdata}),
         .wr_en                         (wr_en),
         .rd_en                          (rd_en),
         .reset                          	(~axi_resetn),
         .clk                            		(axi_aclk)
				 );
				 
				 
		//packet from oped is written to fifo for transmitten to PC
		//packet from MAC is drop
		assign oped_oq = (s_axis_tuser[DST_POS + 1] & (!s_axis_tuser[DST_POS + 5])) | 
																	 (s_axis_tuser[DST_POS + 3] & (!s_axis_tuser[DST_POS + 7])) |
																	 (s_axis_tuser[DST_POS + 5] & (!s_axis_tuser[DST_POS + 1])) |
																	 (s_axis_tuser[DST_POS + 7] & (!s_axis_tuser[DST_POS + 3]));
					 
		
		always @(*) begin
      state_next   			= state;
      wr_en           		= 0;
			s_axis_tready  = 0;

      case(state)
        /* oped fifo */
        IDLE: begin
           if(s_axis_tvalid) begin
              if(oped_oq && (~nearly_full_fifo)) begin // Feature pack is ready for write or oped oq is NOT _nearly_ full (able to fit in the maximum pacekt).
                  state_next = WR_PKT;
              end
              else begin
              	  state_next = DROP;
              end
           end
        end

        /* wait until eop */
        WR_PKT: begin
           s_axis_tready = 1;
					 wr_en	            =  s_axis_tvalid;
					 if(s_axis_tvalid & s_axis_tlast) begin
							state_next = IDLE;
					 end
        end // case: WR_PKT

        DROP: begin
           s_axis_tready = 1;
           if(s_axis_tvalid & s_axis_tlast) begin
           	  state_next = IDLE;
           end
        end
      endcase // case(state)
   end // always @ (*)
	 
	 
	 always @(posedge axi_aclk) begin
      if(~axi_resetn) begin
         state <= IDLE;
      end
      else begin
         state <= state_next;
      end
	 end
	 
	 /*
	 //包间隔设置
	 reg [6:0]  gap_count;
	 reg	pkt_fifo_en;
	 
	 always @(posedge axi_aclk) begin
			if(~axi_resetn)	begin
				gap_count	<=	0;
				pkt_fifo_en	<=	1;
			end
			else if(pkt_gen_tlast) begin
				gap_count	<=	gap_count + 1;
				pkt_fifo_en	<=	0;
			end
			else if(gap_count	==	7'h7F)	begin
				pkt_fifo_en	<=	1;
			end
			else	begin
				gap_count	<=	gap_count + 1;
			end
	 end

	 //
 	 */
	 

	//Feature pack cyclically read from FIFO
	assign		pkt_send_en				=		pkt_wr_ctrl[NUM_PKT_GEN_QUEUES - 1 : 0];
	//MAC0
	//assign		rd_loop_en[0]			=		m_axis_tready_0 & pkt_send_en[0] & pkt_fifo_en;
	assign		rd_loop_en[0]			=		m_axis_tready_0 & pkt_send_en[0];
	assign		m_axis_tdata_0	=		pkt_gen_tdata[0];
	assign		m_axis_tstrb_0		=		pkt_gen_tstrb[0];
	assign		m_axis_tuser_0	=		pkt_gen_tuser[0];
	assign		m_axis_tvalid_0	=		pkt_gen_rdy[0];
	assign		m_axis_tlast_0		=		pkt_gen_tlast[0];	
	//MAC1
	assign		rd_loop_en[1]			=		m_axis_tready_1 & pkt_send_en[1];
	assign		m_axis_tdata_1	=		pkt_gen_tdata[1];
	assign		m_axis_tstrb_1		=		pkt_gen_tstrb[1];
	assign		m_axis_tuser_1	=		pkt_gen_tuser[1];
	assign		m_axis_tvalid_1	=		pkt_gen_rdy[1];
	assign		m_axis_tlast_1		=		pkt_gen_tlast[1];	
	//MAC2
	assign		rd_loop_en[2]			=		m_axis_tready_2 & pkt_send_en[2];
	assign		m_axis_tdata_2	=		pkt_gen_tdata[2];
	assign		m_axis_tstrb_2		=		pkt_gen_tstrb[2];
	assign		m_axis_tuser_2	=		pkt_gen_tuser[2];
	assign		m_axis_tvalid_2	=		pkt_gen_rdy[2];
	assign		m_axis_tlast_2		=		pkt_gen_tlast[2];	
	//MAC3
	assign		rd_loop_en[3]			=		m_axis_tready_3 & pkt_send_en[3];
	assign		m_axis_tdata_3	=		pkt_gen_tdata[3];
	assign		m_axis_tstrb_3		=		pkt_gen_tstrb[3];
	assign		m_axis_tuser_3	=		pkt_gen_tuser[3];
	assign		m_axis_tvalid_3	=		pkt_gen_rdy[3];
	assign		m_axis_tlast_3		=		pkt_gen_tlast[3];	
	//PCIE
	assign		m_axis_tdata_4	=		fifo_out_tdata;
  assign		m_axis_tstrb_4		=		fifo_out_tstrb;
  assign		m_axis_tuser_4	=		fifo_out_tuser;
  assign		m_axis_tvalid_4	=		~empty;
  assign		m_axis_tlast_4		=		fifo_out_tlast;
	assign   rd_en			 							= 		m_axis_tready_4 & ~empty;
	
	assign		pkt_wr_ctrl					=		slv_reg0;
	
	always	@(posedge axi_aclk) begin
		slv_reg0	<=	4'hF;
	end
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
    slv_reg_write_sel = Bus2IP_WrCE[23:0],
    slv_reg_read_sel  = Bus2IP_RdCE[23:0],
    slv_write_ack       = Bus2IP_WrCE[0] || Bus2IP_WrCE[1] || Bus2IP_WrCE[2] || Bus2IP_WrCE[3] || Bus2IP_WrCE[4] || Bus2IP_WrCE[5] || Bus2IP_WrCE[6] || Bus2IP_WrCE[7] || Bus2IP_WrCE[8] || Bus2IP_WrCE[9] || Bus2IP_WrCE[10] || Bus2IP_WrCE[11] || Bus2IP_WrCE[12] || Bus2IP_WrCE[13] || Bus2IP_WrCE[14] || Bus2IP_WrCE[15] || Bus2IP_WrCE[16] || Bus2IP_WrCE[17] || Bus2IP_WrCE[18] || Bus2IP_WrCE[19] || Bus2IP_WrCE[20] || Bus2IP_WrCE[21] || Bus2IP_WrCE[22] || Bus2IP_WrCE[23],
    slv_read_ack        = Bus2IP_RdCE[0] || Bus2IP_RdCE[1] || Bus2IP_RdCE[2] || Bus2IP_RdCE[3] || Bus2IP_RdCE[4] || Bus2IP_RdCE[5] || Bus2IP_RdCE[6] || Bus2IP_RdCE[7] || Bus2IP_RdCE[8] || Bus2IP_RdCE[9] || Bus2IP_RdCE[10] || Bus2IP_RdCE[11] || Bus2IP_RdCE[12] || Bus2IP_RdCE[13] || Bus2IP_RdCE[14] || Bus2IP_RdCE[15] || Bus2IP_RdCE[16] || Bus2IP_RdCE[17] || Bus2IP_RdCE[18] || Bus2IP_RdCE[19] || Bus2IP_RdCE[20] || Bus2IP_RdCE[21] || Bus2IP_RdCE[22] || Bus2IP_RdCE[23];

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
          slv_reg16 <= 0;
          slv_reg17 <= 0;
          slv_reg18 <= 0;
          slv_reg19 <= 0;
          slv_reg20 <= 0;
          slv_reg21 <= 0;
          slv_reg22 <= 0;
          slv_reg23 <= 0;
        end
      else
        case ( slv_reg_write_sel )
          24'b100000000000000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg0[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b010000000000000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg1[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b001000000000000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg2[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000100000000000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg3[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000010000000000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg4[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000001000000000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg5[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000100000000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg6[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000010000000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg7[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000001000000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg8[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000100000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg9[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000010000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg10[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000001000000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg11[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000000100000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg12[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000000010000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg13[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000000001000000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg14[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000000000100000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg15[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000000000010000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg16[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000000000001000000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg17[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000000000000100000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg18[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000000000000010000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg19[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000000000000001000 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg20[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000000000000000100 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg21[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000000000000000010 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg22[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
          24'b000000000000000000000001 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                slv_reg23[(byte_index*8) +: 8] <= Bus2IP_Data[(byte_index*8) +: 8];
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
            slv_reg16 <= slv_reg16;
            slv_reg17 <= slv_reg17;
            slv_reg18 <= slv_reg18;
            slv_reg19 <= slv_reg19;
            slv_reg20 <= slv_reg20;
            slv_reg21 <= slv_reg21;
            slv_reg22 <= slv_reg22;
            slv_reg23 <= slv_reg23;
                    end
        endcase

    end // SLAVE_REG_WRITE_PROC

  // implement slave model register read mux
  always @( slv_reg_read_sel or slv_reg0 or pkt_wr_status or slv_reg2 or slv_reg3 or slv_reg4 or slv_reg5 or slv_reg6 or slv_reg7 or slv_reg8 or slv_reg9 or slv_reg10 or slv_reg11 or slv_reg12 or slv_reg13 or slv_reg14 or slv_reg15 or slv_reg16 or slv_reg17 or slv_reg18 or slv_reg19 or slv_reg20 or slv_reg21 or slv_reg22 or slv_reg23 )
    begin 

      case ( slv_reg_read_sel )
        24'b100000000000000000000000 : slv_ip2bus_data <= slv_reg0;
        24'b010000000000000000000000 : slv_ip2bus_data <= pkt_wr_status;
        24'b001000000000000000000000 : slv_ip2bus_data <= slv_reg2;
        24'b000100000000000000000000 : slv_ip2bus_data <= slv_reg3;
        24'b000010000000000000000000 : slv_ip2bus_data <= slv_reg4;
        24'b000001000000000000000000 : slv_ip2bus_data <= slv_reg5;
        24'b000000100000000000000000 : slv_ip2bus_data <= slv_reg6;
        24'b000000010000000000000000 : slv_ip2bus_data <= slv_reg7;
        24'b000000001000000000000000 : slv_ip2bus_data <= slv_reg8;
        24'b000000000100000000000000 : slv_ip2bus_data <= slv_reg9;
        24'b000000000010000000000000 : slv_ip2bus_data <= slv_reg10;
        24'b000000000001000000000000 : slv_ip2bus_data <= slv_reg11;
        24'b000000000000100000000000 : slv_ip2bus_data <= slv_reg12;
        24'b000000000000010000000000 : slv_ip2bus_data <= slv_reg13;
        24'b000000000000001000000000 : slv_ip2bus_data <= slv_reg14;
        24'b000000000000000100000000 : slv_ip2bus_data <= slv_reg15;
        24'b000000000000000010000000 : slv_ip2bus_data <= slv_reg16;
        24'b000000000000000001000000 : slv_ip2bus_data <= slv_reg17;
        24'b000000000000000000100000 : slv_ip2bus_data <= slv_reg18;
        24'b000000000000000000010000 : slv_ip2bus_data <= slv_reg19;
        24'b000000000000000000001000 : slv_ip2bus_data <= slv_reg20;
        24'b000000000000000000000100 : slv_ip2bus_data <= slv_reg21;
        24'b000000000000000000000010 : slv_ip2bus_data <= slv_reg22;
        24'b000000000000000000000001 : slv_ip2bus_data <= slv_reg23;
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
*/
endmodule
