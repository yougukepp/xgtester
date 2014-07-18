`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:15 06/05/2013 
// Design Name: 
// Module Name:    time_stamp_counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module time_stamp_counter
#(
               parameter TIME_STAMP_DWIDTH  =  64        //Timestamp count bits wide
   )
    (
                input                                                                    clk,
                input                                                                    reset,
                
                output  [TIME_STAMP_DWIDTH-1:0]        counter_val    //Timestamp count value
    );
    
        reg [TIME_STAMP_DWIDTH-1:0]                        temp;
    
       always @(posedge clk) begin
      if(reset) 
        temp <= 0;
      else 
        temp <= temp + 64'h1;
        end

        assign counter_val = temp[TIME_STAMP_DWIDTH-1:0];

endmodule
