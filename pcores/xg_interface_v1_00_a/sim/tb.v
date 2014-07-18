`timescale 1ns / 1ps

module tb;

    parameter SYS_CLK_PERIOD = 5;               /* 200M */
    parameter REFCLK156_PERIOD = 6.4;           /* 156.25M */

    /* Inputs */
    reg sys_clk_p;
    reg sys_clk_n;
    reg resetn;
    reg refclk156_p;
    reg refclk156_n;

    reg xaui_rx_l0_p;
    reg xaui_rx_l0_n;
    reg xaui_rx_l1_p;
    reg xaui_rx_l1_n;
    reg xaui_rx_l2_p;
    reg xaui_rx_l2_n;
    reg xaui_rx_l3_p;
    reg xaui_rx_l3_n;

    /* Outputs */
    wire xaui_tx_l0_p;
    wire xaui_tx_l0_n;
    wire xaui_tx_l1_p;
    wire xaui_tx_l1_n;
    wire xaui_tx_l2_p;
    wire xaui_tx_l2_n;
    wire xaui_tx_l3_p;
    wire xaui_tx_l3_n;

    /* Instantiate the Unit Under Test (UUT) */
    top uut (
        .sys_clk_p(sys_clk_p), 
        .sys_clk_n(sys_clk_n), 
        .resetn(resetn), 
        .refclk156_p(refclk156_p), 
        .refclk156_n(refclk156_n), 
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
        .xaui_rx_l3_n(xaui_rx_l3_n));

    /* clk 200M */
    always begin
        sys_clk_p = 1'b0;
        sys_clk_n = 1'b1;
        #(SYS_CLK_PERIOD/2)
        sys_clk_p = 1'b1;
        sys_clk_n = 1'b0;
        #(SYS_CLK_PERIOD/2);
    end


    /* clk 156.25M */
    always begin
        refclk156_p = 1'b0;
        refclk156_n = 1'b1;
        #(REFCLK156_PERIOD/2)
        refclk156_p = 1'b1;
        refclk156_n = 1'b0;
        #(REFCLK156_PERIOD/2);
    end 
    
    always @(*) begin
        xaui_rx_l0_p = xaui_tx_l0_p;
        xaui_rx_l0_n = xaui_tx_l0_n;
        xaui_rx_l1_p = xaui_tx_l1_p;
        xaui_rx_l1_n = xaui_tx_l1_n;
        xaui_rx_l2_p = xaui_tx_l2_p;
        xaui_rx_l2_n = xaui_tx_l2_n;
        xaui_rx_l3_p = xaui_tx_l3_p;
        xaui_rx_l3_n = xaui_tx_l3_n;
    end

    initial begin
        /* reset */
        resetn = 1'b0;

        /* Wait 100 ns for global reset to finish */
        #100;
        resetn = 1'b1;
    end

endmodule

