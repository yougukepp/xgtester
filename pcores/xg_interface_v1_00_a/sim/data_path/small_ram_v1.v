`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:23:35 08/13/2013 
// Design Name: 
// Module Name:    small_ram 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: RAM
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module small_ram
	 #(
				parameter WIDTH = 417,
				parameter MAX_DEPTH_BITS = 6
      )
			(
				input          																														clk,
				input          																														reset,
				
				input 						[WIDTH-1:0]  															din,     			// Data in
				input          																														wr_en,   	// Write enable
				input 						[MAX_DEPTH_BITS - 1 : 0]		wr_addr,
				
				input																																			rd_en,   	// Read enable
				input 						[MAX_DEPTH_BITS - 1 : 0]		rd_addr,
				output	reg	[WIDTH-1:0]																dout
			);
			
	parameter MAX_DEPTH  = 2 ** MAX_DEPTH_BITS;
	
	reg [WIDTH-1:0] 															mem [MAX_DEPTH - 1 : 0];
	
	always	@(posedge clk)
	begin
		if(reset)	begin	
			dout	<=	0;
			mem[0]	<=	{1'h1,	128'hf2,	32'hFFFFFFFF,	256'h0102030405060708090A0B0C0D0E0F1020302E00060504030201060504030202};
			//mem[1]	<=	{1'h0,	128'hf2,	32'hFFFFFFFF,	256'h07070707FD55AA5555AA55AAAA55AA5555AA55AAAA55AA5555AA55AAAA55AA55};
			//mem[2]	<=	{1'h0,	128'hf2,	32'hFFFFFFFF,	256'h0707070707070707070707070707070707070707070707070707070707070707};
			//mem[3]	<=	{1'h1,	128'hf2,	32'h0000FFFF,	256'h0707070707070707070707070707070707070707070707070707070707070707};
			//mem[4]	<=	{1'h0,	128'hf2,	32'hFFFFFFFF,	256'h5555555555555555444444444444444433333333333333332222222222222222};
			//mem[5]	<=	{1'h0,	128'hf2,	32'hFFFFFFFF,	256'h9999999999999999888888888888888877777777777777776666666666666666};
			//mem[6]	<=	{1'h0,	128'hf2,	32'hFFFFFFFF,	256'hDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAA};
			//mem[7]	<=	{1'h0,	128'hf2,	32'hFFFFFFFF,	256'h22222222222222221111111111111111FFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEE};
			//mem[8]	<=	{1'h0,	128'hf2,	32'hFFFFFFFF,	256'h6666666666666666555555555555555544444444444444443333333333333333};
			//mem[9]	<=	{1'h0,	128'hf2,	32'hFFFFFFFF,	256'hAAAAAAAAAAAAAAAA999999999999999988888888888888887777777777777777};
			//mem[10]	<=	{1'h0,	128'hf2,	32'hFFFFFFFF,	256'hEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBB};
			//mem[11]	<=	{1'h0,	128'hf2,	32'hFFFFFFFF,	256'h333333333333333322222222222222221111111111111111FFFFFFFFFFFFFFFF};
			//mem[12]	<=	{1'h0,	128'hf2,	32'hFFFFFFFF,	256'h7777777777777777666666666666666655555555555555554444444444444444};
			//mem[13]	<=	{1'h0,	128'hf2,	32'hFFFFFFFF,	256'hBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAA99999999999999998888888888888888};
			//mem[14]	<=	{1'h0,	128'hf2,	32'hFFFFFFFF,	256'hFFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCC};
			//mem[15]	<=	{1'h1,	128'hf2,	32'h0FFFFFFF,	256'h0000000044444444333333333333333322222222222222221111111111111111};
		end
		else	begin
			if(wr_en)	mem[wr_addr]	<=	din;
			if(rd_en)		dout	<=	mem[rd_addr];
		end
	end

endmodule
