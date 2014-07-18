module top
(
    ACLK,
    ARESETN,

    S_AXIS_TDATA,
    S_AXIS_TVALID,
    S_AXIS_TREADY,
    S_AXIS_TLAST,
    S_AXIS_TKEEP,

    M_AXIS_TDATA,
    M_AXIS_TVALID,
    M_AXIS_TREADY,
    M_AXIS_TLAST,
    M_AXIS_TKEEP
);

input            ACLK;
input            ARESETN;

input[255:0]     S_AXIS_TDATA;
input[31:0]      S_AXIS_TKEEP;
input            S_AXIS_TVALID;
output           S_AXIS_TREADY;
input            S_AXIS_TLAST;

output[255:0]    M_AXIS_TDATA;
output           M_AXIS_TVALID;
output[31:0]     M_AXIS_TKEEP;
input            M_AXIS_TREADY;
output           M_AXIS_TLAST;

reg[255:0]       S_AXIS_TDATA_reg;
reg[31:0]        S_AXIS_TKEEP_reg;
reg              S_AXIS_TVALID_reg;
reg              M_AXIS_TREADY_reg;
reg              S_AXIS_TLAST_reg;

/* 
* 原样输出
*/
always @ (posedge ACLK)
    if(!(ARESETN && S_AXIS_TVALID))
    begin
        S_AXIS_TDATA_reg    <= 256'h0;
        S_AXIS_TKEEP_reg    <= 32'b0;
        S_AXIS_TVALID_reg   <= 1'h0;
        M_AXIS_TREADY_reg   <= 1'b0;
        S_AXIS_TLAST_reg    <= 1'b0;
    end
    else
    begin
        S_AXIS_TDATA_reg    <= S_AXIS_TDATA;
        S_AXIS_TKEEP_reg    <= S_AXIS_TKEEP;
        S_AXIS_TVALID_reg   <= S_AXIS_TVALID;
        M_AXIS_TREADY_reg   <= M_AXIS_TREADY;
        S_AXIS_TLAST_reg    <= S_AXIS_TLAST;
    end

assign  M_AXIS_TDATA  = S_AXIS_TDATA_reg;
assign  M_AXIS_TKEEP  = S_AXIS_TKEEP_reg;
assign  M_AXIS_TVALID = S_AXIS_TVALID_reg;
assign  S_AXIS_TREADY = M_AXIS_TREADY_reg;
assign  M_AXIS_TLAST  = S_AXIS_TLAST_reg;

endmodule

