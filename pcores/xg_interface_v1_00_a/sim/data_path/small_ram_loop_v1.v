`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:46 08/15/2013 
// Design Name: 
// Module Name:    small_ram_loop 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Write-once read-out cycle RAM(Read-After-Write)
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module small_ram_loop
	#(
				parameter WIDTH = 417,
				parameter MAX_DEPTH_BITS = 6
     )
		(
				input          																														clk,
				input          																														reset,
				
				input 						[WIDTH-1:0]  															din,     				// Data in
				input          																														wr_en,   		// Write enable
				input 						[MAX_DEPTH_BITS - 1 : 0]		wr_addr,	// Write	address
				
				input																																			rd_loop_en,   // Loop read enable
				output					[WIDTH-1:0]																dout,								// Data out
				
				output	  reg    																										rdy,
				output																																	nearly_full,		
				output         																													full,
				output																																	fullfill							//Loop read over
		);
		
		parameter MAX_DEPTH   = 2 ** MAX_DEPTH_BITS - 1;
		
		// ------------ Internal Params --------
   localparam								READ_LOOP_START		=		0;
	 localparam								READ_LOOP_IN						=		1;
	 localparam								READ_LOOP_LAST			=		2;
	 localparam								READ_LOOP_END				=		3;
	 
		reg [MAX_DEPTH_BITS - 1 : 0]					rd_addr;
		reg																															rd_en;
		reg [MAX_DEPTH_BITS - 1 : 0]					wr_depth;	//最后写入地址
		reg [1:0]			  																							state, state_next;
		
		
		always @(posedge clk) begin
			if(reset) 	state		<=		READ_LOOP_END;
			else					state		<=		state_next ;
		end
		
		
		always @(*) begin		
			state_next  =  state;
			
			case(state)
				READ_LOOP_END : begin
					if(rd_loop_en)		 state_next		=		READ_LOOP_START;
				end
				READ_LOOP_START : begin
					if(rd_addr < wr_depth)		state_next		=		READ_LOOP_IN;
				end
				READ_LOOP_IN : begin
					if(rd_addr == wr_depth - 1)		state_next		=		READ_LOOP_LAST;
				end
				READ_LOOP_LAST : begin
					if(rd_addr == wr_depth)		state_next		=		READ_LOOP_END;
				end
			endcase
		end
		
		
		always	@(posedge clk)
		begin
			if(reset)	begin
				rd_en			<=	0;
				rd_addr	<=	0;
				rdy 	        <= 0;
			end
			else if(state == READ_LOOP_START)			
			begin
				rd_en		  <=	1;
				rd_addr	<=	0;
				rdy 	        <= 0;
			end
			else if(state == READ_LOOP_IN)					
			begin
				rd_en			<=	1;
				rd_addr	<=	rd_addr + 1;
				rdy 	        <= 1;
			end
			else if(state == READ_LOOP_LAST)
			begin
				rd_en			<=	1;
				rd_addr	<=	rd_addr + 1;
				rdy 	        <= 0;
			end
			else if(state == READ_LOOP_END)
			begin
				rd_en		  <=	0;
				rd_addr	<=	0;
				rdy 	        <= 0;
			end
			else			rd_en		<=		rd_en;
		end
		
		
		always	@(posedge clk)
		begin
			if(reset)						wr_depth	<=	1;
			//else	if(wr_en)	wr_depth	<=	(wr_addr >= wr_depth) ? wr_addr : wr_depth;		//存储最后写入地址(最大地址)
			//else										wr_depth	<=	wr_depth;
		end
	
		
		small_ram
		#(
			.WIDTH(WIDTH),
			.MAX_DEPTH_BITS(MAX_DEPTH_BITS)
			)
		ram_mem 
		(
    .clk(clk), 
    .reset(reset), 
    .din(din), 
    .wr_en(wr_en), 
    .wr_addr(wr_addr), 
    .rd_en(rd_en), 
    .rd_addr(rd_addr), 
    .dout(dout)
    );
		
		

		assign 	nearly_full  =   wr_addr >= MAX_DEPTH-1;
		assign 	full 							 = 	wr_addr == MAX_DEPTH;
		assign		fullfill					 =		(rd_addr == wr_depth + 1);
		
endmodule
