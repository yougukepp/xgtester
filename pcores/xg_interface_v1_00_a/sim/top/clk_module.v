`timescale 1ps/1ps

(* CORE_GENERATION_INFO = "clk_module,clk_wiz_v3_3,{component_name=clk_module,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,feedback_source=FDBK_AUTO,primtype_sel=MMCM_ADV,num_out_clk=2,clkin1_period=5.000,clkin2_period=10.0,use_power_down=false,use_reset=false,use_locked=true,use_inclk_stopped=false,use_status=false,use_freeze=false,use_clk_valid=false,feedback_type=SINGLE,clock_mgr_type=MANUAL,manual_override=false}" *)

module clk_module
(
    input         sys_clk_P,
    input         sys_clk_N,
   
    output        clk160m,
    output        clk50m,
    output        locked
); 

    IBUFGDS clkin1_buf
    (
        .O  (clkin1),
        .I  (sys_clk_P),
        .IB (sys_clk_N)); 
    
    wire [15:0] do_unused;
    wire        drdy_unused;
    wire        psdone_unused;
    wire        clkfbout;
    wire        clkfbout_buf;
    wire        clkfboutb_unused;
    wire        clkout0b_unused;
    wire        clkout1b_unused;
    wire        clkout2_unused;
    wire        clkout2b_unused;
    wire        clkout3_unused;
    wire        clkout3b_unused;
    wire        clkout4_unused;
    wire        clkout5_unused;
    wire        clkout6_unused;
    wire        clkfbstopped_unused;
    wire        clkinstopped_unused;

    MMCM_ADV
    #(.BANDWIDTH            ("OPTIMIZED"),
        .CLKOUT4_CASCADE      ("FALSE"),
        .CLOCK_HOLD           ("FALSE"),
        .COMPENSATION         ("ZHOLD"),
        .STARTUP_WAIT         ("FALSE"),
        .DIVCLK_DIVIDE        (1),
        .CLKFBOUT_MULT_F      (5.000),
        .CLKFBOUT_PHASE       (0.000),
        .CLKFBOUT_USE_FINE_PS ("FALSE"),
        .CLKOUT0_DIVIDE_F     (6.250),
        .CLKOUT0_PHASE        (0.000),
        .CLKOUT0_DUTY_CYCLE   (0.500),
        .CLKOUT0_USE_FINE_PS  ("FALSE"),
        .CLKOUT1_DIVIDE       (20),
        .CLKOUT1_PHASE        (0.000),
        .CLKOUT1_DUTY_CYCLE   (0.500),
        .CLKOUT1_USE_FINE_PS  ("FALSE"),
        .CLKIN1_PERIOD        (5.000),
        .REF_JITTER1          (0.010)
    ) mmcm_adv_inst (
        .CLKFBOUT            (clkfbout),
        .CLKFBOUTB           (clkfboutb_unused),
        .CLKOUT0             (clkout0),
        .CLKOUT0B            (clkout0b_unused),
        .CLKOUT1             (clkout1),
        .CLKOUT1B            (clkout1b_unused),
        .CLKOUT2             (clkout2_unused),
        .CLKOUT2B            (clkout2b_unused),
        .CLKOUT3             (clkout3_unused),
        .CLKOUT3B            (clkout3b_unused),
        .CLKOUT4             (clkout4_unused),
        .CLKOUT5             (clkout5_unused),
        .CLKOUT6             (clkout6_unused),
        .CLKFBIN             (clkfbout_buf),
        .CLKIN1              (clkin1),
        .CLKIN2              (1'b0),
        .CLKINSEL            (1'b1),
        .DADDR               (7'h0),
        .DCLK                (1'b0),
        .DEN                 (1'b0),
        .DI                  (16'h0),
        .DO                  (do_unused),
        .DRDY                (drdy_unused),
        .DWE                 (1'b0),
        .PSCLK               (1'b0),
        .PSEN                (1'b0),
        .PSINCDEC            (1'b0),
        .PSDONE              (psdone_unused),
        .LOCKED              (locked),
        .CLKINSTOPPED        (clkinstopped_unused),
        .CLKFBSTOPPED        (clkfbstopped_unused),
        .PWRDWN              (1'b0),
        .RST                 (1'b0));

    BUFG clkf_buf
    (
        .O (clkfbout_buf),
        .I (clkfbout));

    BUFG clkout1_buf
    (
        .O   (clk160m),
        .I   (clkout0));


    BUFG clkout2_buf
    (
        .O   (clk50m),
        .I   (clkout1));

endmodule
