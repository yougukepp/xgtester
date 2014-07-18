`timescale 1ns / 1ps

module tb;
    parameter PERIOD = 6.25;                      /* 160M */

    /* Inputs */
    reg         ACLK;
    reg         ARESETN;
    reg [255:0] S_AXIS_TDATA;
    reg         S_AXIS_TVALID;
    reg         S_AXIS_TLAST;
    reg         M_AXIS_TREADY;
    reg [31:0]  S_AXIS_TKEEP;

    /* Outputs */
    wire        S_AXIS_TREADY;
    wire [255:0]M_AXIS_TDATA;
    wire        M_AXIS_TVALID;
    wire        M_AXIS_TLAST;
    wire [31:0] M_AXIS_TKEEP;

    /* Instantiate the Unit Under Test (UUT) */
    top uut (
      .ACLK(ACLK), 
      .ARESETN(ARESETN), 
      .S_AXIS_TDATA(S_AXIS_TDATA), 
      .S_AXIS_TVALID(S_AXIS_TVALID), 
      .S_AXIS_TREADY(S_AXIS_TREADY), 
      .S_AXIS_TLAST(S_AXIS_TLAST), 
      .S_AXIS_TKEEP(S_AXIS_TKEEP), 
      .M_AXIS_TDATA(M_AXIS_TDATA), 
      .M_AXIS_TVALID(M_AXIS_TVALID), 
      .M_AXIS_TREADY(M_AXIS_TREADY), 
      .M_AXIS_TLAST(M_AXIS_TLAST),
      .M_AXIS_TKEEP(M_AXIS_TKEEP)
    );

    always
    begin
      ACLK = 1'b0;
      #(PERIOD/2) ACLK = 1'b1;
      #(PERIOD/2);
    end

    always
    begin
      #PERIOD;
      S_AXIS_TDATA = $random();
      S_AXIS_TKEEP = $random();
      S_AXIS_TVALID= $random();
      S_AXIS_TLAST = $random();
    end

    initial
    begin
      /* Initialize Inputs */
      ACLK = 0;
      ARESETN = 0;
      S_AXIS_TDATA = 0;
      S_AXIS_TVALID = 0;
      S_AXIS_TLAST = 0;
      M_AXIS_TREADY = 0;
      S_AXIS_TKEEP = 0;

      #(10 * PERIOD);
      ARESETN = 1;
    end

endmodule

