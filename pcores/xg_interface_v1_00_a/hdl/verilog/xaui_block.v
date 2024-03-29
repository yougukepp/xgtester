module xaui_block #
  (
    parameter   WRAPPER_SIM_GTXRESET_SPEEDUP = 0
  )
  (
   // Port declarations
   input           dclk,
   input           clk156,
   input           refclk,
   input           reset,
   input           reset156,
   output          txoutclk,
   input[63:0]     xgmii_txd,
   input[7:0]      xgmii_txc,
   output[63:0]    xgmii_rxd,
   output[7:0]     xgmii_rxc,
   output          xaui_tx_l0_p,
   output          xaui_tx_l0_n,
   output          xaui_tx_l1_p,
   output          xaui_tx_l1_n,
   output          xaui_tx_l2_p,
   output          xaui_tx_l2_n,
   output          xaui_tx_l3_p,
   output          xaui_tx_l3_n,
   input           xaui_rx_l0_p,
   input           xaui_rx_l0_n,
   input           xaui_rx_l1_p,
   input           xaui_rx_l1_n,
   input           xaui_rx_l2_p,
   input           xaui_rx_l2_n,
   input           xaui_rx_l3_p,
   input           xaui_rx_l3_n,
   output          txlock,
   input[3:0]      signal_detect,
   output          align_status,
   output[3:0]     sync_status,
   output          mgt_tx_ready,
   input   [7:0]   drp_addr,
   input   [3:0]   drp_en,
   input   [15:0]  drp_i,
   output  [63:0]  drp_o,
   output  [3:0]   drp_rdy,
   input   [3:0]   drp_we,
      
   input  [6 : 0]  configuration_vector,
   output [7 : 0]  status_vector);

   // Signal declarations
   wire          lock;
   wire          cbm_rx_reset;
   wire [2 : 0]  loopback_int;
   wire [7 : 0]  mgt_rxchariscomma;
   wire [7 : 0]  mgt_codevalid;
   wire [3 : 0]  mgt_enable_align;
   wire          mgt_enchansync;
   wire          mgt_loopback;
   wire          mgt_powerdown;
   wire          mgt_reset_terms;
   wire [3 : 0]  mgt_rxresetdone;
   wire [3 : 0]  mgt_txresetdone;
   wire          mgt_rx_reset;
   wire [11:0]   mgt_rxbufstatus;
   wire [7 : 0]  mgt_rxcharisk;
   wire [63: 0]  mgt_rxdata;
   wire [7 : 0]  mgt_rxdisperr;
   wire [7 : 0]  mgt_rxlossofsync;
   wire [7 : 0]  mgt_rxnotintable;
   wire [3 : 0]  mgt_syncok;
   wire [3 : 0]  mgt_tx_fault;
   wire [7 : 0]  mgt_txcharisk;
   wire [63: 0]  mgt_txdata;
   wire [3 : 0]  mgt_plllocked;
   reg  [3 : 0]  mgt_rxbuferr;
   wire          GT_TXOUTCLK;
   wire          reset_txsync;

    //------------------------ Channel Bonding Wires ---------------------------
    wire    [3:0]   gtx0_rxchbondo_i;
    wire    [3:0]   gtx1_rxchbondo_i;
    wire    [3:0]   gtx2_rxchbondo_i;
    wire    [3:0]   gtx3_rxchbondo_i;

  // Register Declarations
   reg           clk_156_reset_txsync_r1;
   reg           clk_156_reset_txsync_r2;
   reg           clk_156_reset_txsync_r3;
   reg  [3:0]    mgt_rxcdr_reset = 4'b0000;
   reg           mgt_codecomma_reg0;
   reg           mgt_codecomma_reg1;
   reg           mgt_codecomma_reg2;
   reg           mgt_codecomma_reg3;
   reg           mgt_codecomma_reg4;
   reg           mgt_codecomma_reg5;
   reg           mgt_codecomma_reg6;
   reg           mgt_codecomma_reg7;
   reg           mgt_rxcharisk_reg0;
   reg           mgt_rxcharisk_reg1;
   reg           mgt_rxcharisk_reg2;
   reg           mgt_rxcharisk_reg3;
   reg           mgt_rxcharisk_reg4;
   reg           mgt_rxcharisk_reg5;
   reg           mgt_rxcharisk_reg6;
   reg           mgt_rxcharisk_reg7;
   reg  [63:0]   mgt_rxdata_reg;
   reg           mgt_rxdisperr_reg0;
   reg           mgt_rxdisperr_reg1;
   reg           mgt_rxdisperr_reg2;
   reg           mgt_rxdisperr_reg3;
   reg           mgt_rxdisperr_reg4;
   reg           mgt_rxdisperr_reg5;
   reg           mgt_rxdisperr_reg6;
   reg           mgt_rxdisperr_reg7;
   reg  [3 : 0]  mgt_rxlock_reg;
   reg  [3 : 0]  mgt_rxlock_r1;
   reg           mgt_rxnotintable_reg0;
   reg           mgt_rxnotintable_reg1;
   reg           mgt_rxnotintable_reg2;
   reg           mgt_rxnotintable_reg3;
   reg           mgt_rxnotintable_reg4;
   reg           mgt_rxnotintable_reg5;
   reg           mgt_rxnotintable_reg6;
   reg           mgt_rxnotintable_reg7;
   reg           mgt_powerdown_r;
   reg           mgt_powerdown_falling;


   // --------------------------CHANBOND_MONITOR signals -----------------------
  wire  [3:0]    mgt_rxchanisaligned;
  wire           comma_align_done;
  wire           chanbond_done;
  wire  [3:0]    sync_status_i;
  wire           align_status_i;

  wire           mgt_txenpmaphasealign;
  wire           mgt_txpmasetphase;
  wire           mgt_txdlyaligndisable;
  wire           mgt_txdlyalignreset;  
  wire           mgt_txreset;
  wire           resetdone;
  wire           tx_sync_done;
  // synthesis attribute ASYNC_REG of clk_156_reset_txsync_r1 is "TRUE";
  // synthesis attribute ASYNC_REG of mgt_rxlock_r1 is "TRUE";


  // Function Declarations
  function IsBufError;
    input [2:0] bufStatus;
    begin
    if ((bufStatus == 3'b101) || (bufStatus == 3'b110))
      IsBufError = 1'b1;
    else
      IsBufError = 1'b0;
    end
  endfunction

    // Instantiate the XAUI netlist

   xaui xaui_core
     (
       .reset(reset156),
       .xgmii_txd(xgmii_txd),
       .xgmii_txc(xgmii_txc),
       .xgmii_rxd(xgmii_rxd),
       .xgmii_rxc(xgmii_rxc),
       .usrclk(clk156),
       .mgt_txdata(mgt_txdata),
       .mgt_txcharisk(mgt_txcharisk),
       .mgt_rxdata(mgt_rxdata_reg),
       .mgt_rxcharisk({mgt_rxcharisk_reg7, mgt_rxcharisk_reg6, mgt_rxcharisk_reg5, mgt_rxcharisk_reg4, mgt_rxcharisk_reg3, mgt_rxcharisk_reg2, mgt_rxcharisk_reg1, mgt_rxcharisk_reg0}),
       .mgt_codevalid(mgt_codevalid),
       .mgt_codecomma({mgt_codecomma_reg7, mgt_codecomma_reg6, mgt_codecomma_reg5, mgt_codecomma_reg4, mgt_codecomma_reg3, mgt_codecomma_reg2, mgt_codecomma_reg1, mgt_codecomma_reg0}),
       .mgt_enable_align(mgt_enable_align),
       .mgt_enchansync(mgt_enchansync),
       .mgt_syncok(mgt_syncok),
       .mgt_rxlock(mgt_rxlock_reg),
       .mgt_loopback(mgt_loopback),
       .mgt_powerdown(mgt_powerdown),
       .mgt_tx_reset(mgt_tx_fault),
       .mgt_rx_reset(mgt_rxcdr_reset),
       .signal_detect(signal_detect),
       .align_status(align_status_i),
       .sync_status(sync_status_i),
       .configuration_vector(configuration_vector),
       .status_vector(status_vector));

GTX_WRAPPER #
(
    // Simulation attributes
    .WRAPPER_SIM_GTXRESET_SPEEDUP    (WRAPPER_SIM_GTXRESET_SPEEDUP)
)
gtx_wrapper_i
(

    //_________________________________________________________________________
    //_________________________________________________________________________
    //GTX0  (X0Y0)

    //---------------------- Loopback and Powerdown Ports ----------------------
    .GTX0_LOOPBACK_IN(loopback_int),
    .GTX0_RXPOWERDOWN_IN({ 2{mgt_powerdown} }),
    .GTX0_TXPOWERDOWN_IN({ 2{mgt_powerdown} }),
    //--------------------- Receive Ports - 8b10b Decoder ----------------------
    .GTX0_RXCHARISCOMMA_OUT(mgt_rxchariscomma[1:0]),
    .GTX0_RXCHARISK_OUT(mgt_rxcharisk[1:0]),
    .GTX0_RXDISPERR_OUT(mgt_rxdisperr[1:0]),
    .GTX0_RXNOTINTABLE_OUT(mgt_rxnotintable[1:0]),
    //----------------- Receive Ports - Channel Bonding Ports ------------------
    .GTX0_RXCHANBONDSEQ_OUT(),
    .GTX0_RXCHBONDI_IN(gtx1_rxchbondo_i),
    .GTX0_RXCHBONDLEVEL_IN(3'b000),
    .GTX0_RXCHBONDMASTER_IN(1'b0),
    .GTX0_RXCHBONDO_OUT(gtx0_rxchbondo_i),
    .GTX0_RXCHBONDSLAVE_IN(1'b1),
    .GTX0_RXENCHANSYNC_IN(mgt_enchansync),
    //----------------- Receive Ports - Clock Correction Ports -----------------
    .GTX0_RXCLKCORCNT_OUT(),
    //------------- Receive Ports - Comma Detection and Alignment --------------
    .GTX0_RXBYTEISALIGNED_OUT(),
    .GTX0_RXBYTEREALIGN_OUT(),
    .GTX0_RXCOMMADET_OUT(),
    .GTX0_RXENMCOMMAALIGN_IN(mgt_enable_align[0]),
    .GTX0_RXENPCOMMAALIGN_IN(mgt_enable_align[0]),
    //--------------------- Receive Ports - PRBS Detection ---------------------
    .GTX0_PRBSCNTRESET_IN(1'b0),
    .GTX0_RXENPRBSTST_IN(3'b000),
    .GTX0_RXPRBSERR_OUT(),
    //----------------- Receive Ports - RX Data Path interface -----------------
    .GTX0_RXDATA_OUT(mgt_rxdata[15:0]),
    .GTX0_RXRESET_IN(mgt_rx_reset),
    .GTX0_RXUSRCLK2_IN(clk156),
    //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    .GTX0_RXCDRRESET_IN(mgt_rxcdr_reset[0]),
    .GTX0_RXELECIDLE_OUT(),
    .GTX0_RXEQMIX_IN(3'b111),    
    .GTX0_RXN_IN(xaui_rx_l0_n),
    .GTX0_RXP_IN(xaui_rx_l0_p),
    //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
    .GTX0_RXBUFRESET_IN(1'b0),
    .GTX0_RXBUFSTATUS_OUT(mgt_rxbufstatus[2:0]),
    .GTX0_RXCHANISALIGNED_OUT(mgt_rxchanisaligned[0]),
    .GTX0_RXCHANREALIGN_OUT(),
    //------------- Receive Ports - RX Loss-of-sync State Machine --------------
    .GTX0_RXLOSSOFSYNC_OUT(mgt_rxlossofsync[1:0]),
    //---------------------- Receive Ports - RX PLL Ports ----------------------
    .GTX0_GTXRXRESET_IN(mgt_reset_terms),
    .GTX0_MGTREFCLKRX_IN(refclk),
    .GTX0_PLLRXRESET_IN(1'b0),
    .GTX0_RXPLLLKDET_OUT(mgt_plllocked[0]),
    .GTX0_RXRESETDONE_OUT(mgt_rxresetdone[0]),
    //----------- Shared Ports - Dynamic Reconfiguration Port (DRP) ------------
    .GTX0_DADDR_IN(drp_addr),
    .GTX0_DCLK_IN(dclk),
    .GTX0_DEN_IN(drp_en[0]),
    .GTX0_DI_IN(drp_i),
    .GTX0_DRDY_OUT(drp_rdy[0]),
    .GTX0_DRPDO_OUT(drp_o[15:0]),
    .GTX0_DWE_IN(drp_we[0]),
    //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    .GTX0_TXCHARISK_IN(mgt_txcharisk[1:0]),
    //---------------- Transmit Ports - TX Data Path interface -----------------
    .GTX0_TXDATA_IN(mgt_txdata[15:0]),
    .GTX0_TXOUTCLK_OUT(GT_TXOUTCLK),    
    .GTX0_TXRESET_IN(mgt_txreset),
    .GTX0_TXUSRCLK2_IN(clk156),
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    .GTX0_TXDIFFCTRL_IN(4'b1010),    
    .GTX0_TXN_OUT(xaui_tx_l0_n),
    .GTX0_TXP_OUT(xaui_tx_l0_p),
    .GTX0_TXPOSTEMPHASIS_IN(5'b00000),
    //------------- Transmit Ports - TX Driver and OOB signalling --------------
    .GTX0_TXPREEMPHASIS_IN(4'b0000),
    //------ Transmit Ports - TX Elastic Buffer and Phase Alignment Ports ------
    .GTX0_TXDLYALIGNDISABLE_IN(mgt_txdlyaligndisable),
    .GTX0_TXDLYALIGNMONENB_IN(1'b0),
    .GTX0_TXDLYALIGNMONITOR_OUT(),
    .GTX0_TXDLYALIGNRESET_IN(mgt_txdlyalignreset),
    .GTX0_TXENPMAPHASEALIGN_IN(mgt_txenpmaphasealign),
    .GTX0_TXPMASETPHASE_IN(mgt_txpmasetphase),
    //--------------------- Transmit Ports - TX PLL Ports ----------------------
    .GTX0_GTXTXRESET_IN(mgt_reset_terms),
    .GTX0_TXRESETDONE_OUT(mgt_txresetdone[0]),
    //------------------- Transmit Ports - TX PRBS Generator -------------------
    .GTX0_TXENPRBSTST_IN(3'b000),
    .GTX0_TXPRBSFORCEERR_IN(1'b0),    
    //--------------- Transmit Ports - TX Ports for PCI Express ----------------
    .GTX0_TXELECIDLE_IN(mgt_powerdown),


    //_________________________________________________________________________
    //_________________________________________________________________________
    //GTX1  (X0Y1)

    //---------------------- Loopback and Powerdown Ports ----------------------
    .GTX1_LOOPBACK_IN(loopback_int),
    .GTX1_RXPOWERDOWN_IN({ 2{mgt_powerdown} }),
    .GTX1_TXPOWERDOWN_IN({ 2{mgt_powerdown} }),
    //--------------------- Receive Ports - 8b10b Decoder ----------------------
    .GTX1_RXCHARISCOMMA_OUT(mgt_rxchariscomma[3:2]),
    .GTX1_RXCHARISK_OUT(mgt_rxcharisk[3:2]),
    .GTX1_RXDISPERR_OUT(mgt_rxdisperr[3:2]),
    .GTX1_RXNOTINTABLE_OUT(mgt_rxnotintable[3:2]),
    //----------------- Receive Ports - Channel Bonding Ports ------------------
    .GTX1_RXCHANBONDSEQ_OUT(),
    .GTX1_RXCHBONDI_IN(gtx2_rxchbondo_i),
    .GTX1_RXCHBONDLEVEL_IN(3'b001),
    .GTX1_RXCHBONDMASTER_IN(1'b0),
    .GTX1_RXCHBONDO_OUT(gtx1_rxchbondo_i),
    .GTX1_RXCHBONDSLAVE_IN(1'b1),
    .GTX1_RXENCHANSYNC_IN(mgt_enchansync),
    //----------------- Receive Ports - Clock Correction Ports -----------------
    .GTX1_RXCLKCORCNT_OUT(),
    //------------- Receive Ports - Comma Detection and Alignment --------------
    .GTX1_RXBYTEISALIGNED_OUT(),
    .GTX1_RXBYTEREALIGN_OUT(),
    .GTX1_RXCOMMADET_OUT(),
    .GTX1_RXENMCOMMAALIGN_IN(mgt_enable_align[1]),
    .GTX1_RXENPCOMMAALIGN_IN(mgt_enable_align[1]),
    //--------------------- Receive Ports - PRBS Detection ---------------------
    .GTX1_PRBSCNTRESET_IN(1'b0),
    .GTX1_RXENPRBSTST_IN(3'b000),
    .GTX1_RXPRBSERR_OUT(),    
    //----------------- Receive Ports - RX Data Path interface -----------------
    .GTX1_RXDATA_OUT(mgt_rxdata[31:16]),
    .GTX1_RXRESET_IN(mgt_rx_reset),
    .GTX1_RXUSRCLK2_IN(clk156),
    //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    .GTX1_RXCDRRESET_IN(mgt_rxcdr_reset[1]),
    .GTX1_RXELECIDLE_OUT(),
    .GTX1_RXEQMIX_IN(3'b111),    
    .GTX1_RXN_IN(xaui_rx_l1_n),
    .GTX1_RXP_IN(xaui_rx_l1_p),
    //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
    .GTX1_RXBUFRESET_IN(1'b0),
    .GTX1_RXBUFSTATUS_OUT(mgt_rxbufstatus[5:3]),
    .GTX1_RXCHANISALIGNED_OUT(mgt_rxchanisaligned[1]),
    .GTX1_RXCHANREALIGN_OUT(),
    //------------- Receive Ports - RX Loss-of-sync State Machine --------------
    .GTX1_RXLOSSOFSYNC_OUT(mgt_rxlossofsync[3:2]),
    //---------------------- Receive Ports - RX PLL Ports ----------------------
    .GTX1_GTXRXRESET_IN(mgt_reset_terms),
    .GTX1_MGTREFCLKRX_IN(refclk),
    .GTX1_PLLRXRESET_IN(1'b0),
    .GTX1_RXPLLLKDET_OUT(mgt_plllocked[1]),
    .GTX1_RXRESETDONE_OUT(mgt_rxresetdone[1]),
    //----------- Shared Ports - Dynamic Reconfiguration Port (DRP) ------------
    .GTX1_DADDR_IN(drp_addr),
    .GTX1_DCLK_IN(dclk),
    .GTX1_DEN_IN(drp_en[1]),
    .GTX1_DI_IN(drp_i),
    .GTX1_DRDY_OUT(drp_rdy[1]),
    .GTX1_DRPDO_OUT(drp_o[31:16]),
    .GTX1_DWE_IN(drp_we[1]),
    //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    .GTX1_TXCHARISK_IN(mgt_txcharisk[3:2]),
    //---------------- Transmit Ports - TX Data Path interface -----------------
    .GTX1_TXDATA_IN(mgt_txdata[31:16]),
    .GTX1_TXOUTCLK_OUT(),    
    .GTX1_TXRESET_IN(mgt_txreset),
    .GTX1_TXUSRCLK2_IN(clk156),
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    .GTX1_TXDIFFCTRL_IN(4'b1010),        
    .GTX1_TXN_OUT(xaui_tx_l1_n),
    .GTX1_TXP_OUT(xaui_tx_l1_p),
    .GTX1_TXPOSTEMPHASIS_IN(5'b00000),
    //------------- Transmit Ports - TX Driver and OOB signalling --------------
    .GTX1_TXPREEMPHASIS_IN(4'b0000),    
    //------ Transmit Ports - TX Elastic Buffer and Phase Alignment Ports ------
    .GTX1_TXDLYALIGNDISABLE_IN(mgt_txdlyaligndisable),
    .GTX1_TXDLYALIGNMONENB_IN(1'b0),
    .GTX1_TXDLYALIGNMONITOR_OUT(),
    .GTX1_TXDLYALIGNRESET_IN(mgt_txdlyalignreset),
    .GTX1_TXENPMAPHASEALIGN_IN(mgt_txenpmaphasealign),
    .GTX1_TXPMASETPHASE_IN(mgt_txpmasetphase),
    //--------------------- Transmit Ports - TX PLL Ports ----------------------
    .GTX1_GTXTXRESET_IN(mgt_reset_terms),
    .GTX1_TXRESETDONE_OUT(mgt_txresetdone[1]),
    //------------------- Transmit Ports - TX PRBS Generator -------------------
    .GTX1_TXENPRBSTST_IN(3'b000),
    .GTX1_TXPRBSFORCEERR_IN(1'b0),        
    //--------------- Transmit Ports - TX Ports for PCI Express ----------------
    .GTX1_TXELECIDLE_IN(mgt_powerdown),
    //_________________________________________________________________________
    //_________________________________________________________________________
    //GTX2  (X0Y2)
    //---------------------- Loopback and Powerdown Ports ----------------------
    .GTX2_LOOPBACK_IN(loopback_int),
    .GTX2_RXPOWERDOWN_IN({ 2{mgt_powerdown} }),
    .GTX2_TXPOWERDOWN_IN({ 2{mgt_powerdown} }),
    //--------------------- Receive Ports - 8b10b Decoder ----------------------
    .GTX2_RXCHARISCOMMA_OUT(mgt_rxchariscomma[5:4]),
    .GTX2_RXCHARISK_OUT(mgt_rxcharisk[5:4]),
    .GTX2_RXDISPERR_OUT(mgt_rxdisperr[5:4]),
    .GTX2_RXNOTINTABLE_OUT(mgt_rxnotintable[5:4]),
    //----------------- Receive Ports - Channel Bonding Ports ------------------
    .GTX2_RXCHANBONDSEQ_OUT(),
    .GTX2_RXCHBONDI_IN(4'b0000),
    .GTX2_RXCHBONDLEVEL_IN(3'b010),
    .GTX2_RXCHBONDMASTER_IN(1'b1),
    .GTX2_RXCHBONDO_OUT(gtx2_rxchbondo_i),
    .GTX2_RXCHBONDSLAVE_IN(1'b0),
    .GTX2_RXENCHANSYNC_IN(mgt_enchansync),
    //----------------- Receive Ports - Clock Correction Ports -----------------
    .GTX2_RXCLKCORCNT_OUT(),
    //------------- Receive Ports - Comma Detection and Alignment --------------
    .GTX2_RXBYTEISALIGNED_OUT(),
    .GTX2_RXBYTEREALIGN_OUT(),
    .GTX2_RXCOMMADET_OUT(),
    .GTX2_RXENMCOMMAALIGN_IN(mgt_enable_align[2]),
    .GTX2_RXENPCOMMAALIGN_IN(mgt_enable_align[2]),
    //--------------------- Receive Ports - PRBS Detection ---------------------
    .GTX2_PRBSCNTRESET_IN(1'b0),
    .GTX2_RXENPRBSTST_IN(3'b000),
    .GTX2_RXPRBSERR_OUT(),    
    //----------------- Receive Ports - RX Data Path interface -----------------
    .GTX2_RXDATA_OUT(mgt_rxdata[47:32]),
    .GTX2_RXRESET_IN(mgt_rx_reset),
    .GTX2_RXUSRCLK2_IN(clk156),
    //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    .GTX2_RXCDRRESET_IN(mgt_rxcdr_reset[2]),
    .GTX2_RXELECIDLE_OUT(),
    .GTX2_RXEQMIX_IN(3'b111),    
    .GTX2_RXN_IN(xaui_rx_l2_n),
    .GTX2_RXP_IN(xaui_rx_l2_p),
    //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
    .GTX2_RXBUFRESET_IN(1'b0),
    .GTX2_RXBUFSTATUS_OUT(mgt_rxbufstatus[8:6]),
    .GTX2_RXCHANISALIGNED_OUT(mgt_rxchanisaligned[2]),
    .GTX2_RXCHANREALIGN_OUT(),
    //------------- Receive Ports - RX Loss-of-sync State Machine --------------
    .GTX2_RXLOSSOFSYNC_OUT(mgt_rxlossofsync[5:4]),
    //---------------------- Receive Ports - RX PLL Ports ----------------------
    .GTX2_GTXRXRESET_IN(mgt_reset_terms),
    .GTX2_MGTREFCLKRX_IN(refclk),
    .GTX2_PLLRXRESET_IN(1'b0),
    .GTX2_RXPLLLKDET_OUT(mgt_plllocked[2]),
    .GTX2_RXRESETDONE_OUT(mgt_rxresetdone[2]),
    //----------- Shared Ports - Dynamic Reconfiguration Port (DRP) ------------
    .GTX2_DADDR_IN(drp_addr),
    .GTX2_DCLK_IN(dclk),
    .GTX2_DEN_IN(drp_en[2]),
    .GTX2_DI_IN(drp_i),
    .GTX2_DRDY_OUT(drp_rdy[2]),
    .GTX2_DRPDO_OUT(drp_o[47:32]),
    .GTX2_DWE_IN(drp_we[2]),
    //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    .GTX2_TXCHARISK_IN(mgt_txcharisk[5:4]),
    //---------------- Transmit Ports - TX Data Path interface -----------------
    .GTX2_TXDATA_IN(mgt_txdata[47:32]),
    .GTX2_TXOUTCLK_OUT(),    
    .GTX2_TXRESET_IN(mgt_txreset),
    .GTX2_TXUSRCLK2_IN(clk156),
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    .GTX2_TXDIFFCTRL_IN(4'b1010),        
    .GTX2_TXN_OUT(xaui_tx_l2_n),
    .GTX2_TXP_OUT(xaui_tx_l2_p),
    .GTX2_TXPOSTEMPHASIS_IN(5'b00000),
    //------------- Transmit Ports - TX Driver and OOB signalling --------------
    .GTX2_TXPREEMPHASIS_IN(4'b0000),    
    //------ Transmit Ports - TX Elastic Buffer and Phase Alignment Ports ------
    .GTX2_TXDLYALIGNDISABLE_IN(mgt_txdlyaligndisable),
    .GTX2_TXDLYALIGNMONENB_IN(1'b0),
    .GTX2_TXDLYALIGNMONITOR_OUT(),
    .GTX2_TXDLYALIGNRESET_IN(mgt_txdlyalignreset),
    .GTX2_TXENPMAPHASEALIGN_IN(mgt_txenpmaphasealign),
    .GTX2_TXPMASETPHASE_IN(mgt_txpmasetphase),
    //--------------------- Transmit Ports - TX PLL Ports ----------------------
    .GTX2_GTXTXRESET_IN(mgt_reset_terms),
    .GTX2_TXRESETDONE_OUT(mgt_txresetdone[2]),
    //------------------- Transmit Ports - TX PRBS Generator -------------------
    .GTX2_TXENPRBSTST_IN(3'b000),
    .GTX2_TXPRBSFORCEERR_IN(1'b0),        
    //--------------- Transmit Ports - TX Ports for PCI Express ----------------
    .GTX2_TXELECIDLE_IN(mgt_powerdown),
    //_________________________________________________________________________
    //_________________________________________________________________________
    //GTX3  (X0Y3)
    //---------------------- Loopback and Powerdown Ports ----------------------
    .GTX3_LOOPBACK_IN(loopback_int),
    .GTX3_RXPOWERDOWN_IN({ 2{mgt_powerdown} }),
    .GTX3_TXPOWERDOWN_IN({ 2{mgt_powerdown} }),
    //--------------------- Receive Ports - 8b10b Decoder ----------------------
    .GTX3_RXCHARISCOMMA_OUT(mgt_rxchariscomma[7:6]),
    .GTX3_RXCHARISK_OUT(mgt_rxcharisk[7:6]),
    .GTX3_RXDISPERR_OUT(mgt_rxdisperr[7:6]),
    .GTX3_RXNOTINTABLE_OUT(mgt_rxnotintable[7:6]),
    //----------------- Receive Ports - Channel Bonding Ports ------------------
    .GTX3_RXCHANBONDSEQ_OUT(),
    .GTX3_RXCHBONDI_IN(gtx2_rxchbondo_i),
    .GTX3_RXCHBONDLEVEL_IN(3'b001),
    .GTX3_RXCHBONDMASTER_IN(1'b0),
    .GTX3_RXCHBONDO_OUT(gtx3_rxchbondo_i),
    .GTX3_RXCHBONDSLAVE_IN(1'b1),
    .GTX3_RXENCHANSYNC_IN(mgt_enchansync),
    //----------------- Receive Ports - Clock Correction Ports -----------------
    .GTX3_RXCLKCORCNT_OUT(),
    //------------- Receive Ports - Comma Detection and Alignment --------------
    .GTX3_RXBYTEISALIGNED_OUT(),
    .GTX3_RXBYTEREALIGN_OUT(),
    .GTX3_RXCOMMADET_OUT(),
    .GTX3_RXENMCOMMAALIGN_IN(mgt_enable_align[3]),
    .GTX3_RXENPCOMMAALIGN_IN(mgt_enable_align[3]),
    //--------------------- Receive Ports - PRBS Detection ---------------------
    .GTX3_PRBSCNTRESET_IN(1'b0),
    .GTX3_RXENPRBSTST_IN(3'b000),
    .GTX3_RXPRBSERR_OUT(),    
    //----------------- Receive Ports - RX Data Path interface -----------------
    .GTX3_RXDATA_OUT(mgt_rxdata[63:48]),
    .GTX3_RXRESET_IN(mgt_rx_reset),
    .GTX3_RXUSRCLK2_IN(clk156),
    //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    .GTX3_RXCDRRESET_IN(mgt_rxcdr_reset[3]),
    .GTX3_RXELECIDLE_OUT(),
    .GTX3_RXEQMIX_IN(3'b111),    
    .GTX3_RXN_IN(xaui_rx_l3_n),
    .GTX3_RXP_IN(xaui_rx_l3_p),
    //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
    .GTX3_RXBUFRESET_IN(1'b0),
    .GTX3_RXBUFSTATUS_OUT(mgt_rxbufstatus[11:9]),
    .GTX3_RXCHANISALIGNED_OUT(mgt_rxchanisaligned[3]),
    .GTX3_RXCHANREALIGN_OUT(),
    //------------- Receive Ports - RX Loss-of-sync State Machine --------------
    .GTX3_RXLOSSOFSYNC_OUT(mgt_rxlossofsync[7:6]),
    //---------------------- Receive Ports - RX PLL Ports ----------------------
    .GTX3_GTXRXRESET_IN(mgt_reset_terms),
    .GTX3_MGTREFCLKRX_IN(refclk),
    .GTX3_PLLRXRESET_IN(1'b0),
    .GTX3_RXPLLLKDET_OUT(mgt_plllocked[3]),
    .GTX3_RXRESETDONE_OUT(mgt_rxresetdone[3]),
    //----------- Shared Ports - Dynamic Reconfiguration Port (DRP) ------------
    .GTX3_DADDR_IN(drp_addr),
    .GTX3_DCLK_IN(dclk),
    .GTX3_DEN_IN(drp_en[3]),
    .GTX3_DI_IN(drp_i),
    .GTX3_DRDY_OUT(drp_rdy[3]),
    .GTX3_DRPDO_OUT(drp_o[63:48]),
    .GTX3_DWE_IN(drp_we[3]),
    //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    .GTX3_TXCHARISK_IN(mgt_txcharisk[7:6]),
    //---------------- Transmit Ports - TX Data Path interface -----------------
    .GTX3_TXDATA_IN(mgt_txdata[63:48]),
    .GTX3_TXOUTCLK_OUT(),    
    .GTX3_TXRESET_IN(mgt_txreset),
    .GTX3_TXUSRCLK2_IN(clk156),
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    .GTX3_TXDIFFCTRL_IN(4'b1010),    
    .GTX3_TXN_OUT(xaui_tx_l3_n),
    .GTX3_TXP_OUT(xaui_tx_l3_p),
    .GTX3_TXPOSTEMPHASIS_IN(5'b00000),
    //------------- Transmit Ports - TX Driver and OOB signalling --------------
    .GTX3_TXPREEMPHASIS_IN(4'b0000),    
    //------ Transmit Ports - TX Elastic Buffer and Phase Alignment Ports ------
    .GTX3_TXDLYALIGNDISABLE_IN(mgt_txdlyaligndisable),
    .GTX3_TXDLYALIGNMONENB_IN(1'b0),
    .GTX3_TXDLYALIGNMONITOR_OUT(),
    .GTX3_TXDLYALIGNRESET_IN(mgt_txdlyalignreset),
    .GTX3_TXENPMAPHASEALIGN_IN(mgt_txenpmaphasealign),
    .GTX3_TXPMASETPHASE_IN(mgt_txpmasetphase),
    //--------------------- Transmit Ports - TX PLL Ports ----------------------
    .GTX3_GTXTXRESET_IN(mgt_reset_terms),
    .GTX3_TXRESETDONE_OUT(mgt_txresetdone[3]),
    //------------------- Transmit Ports - TX PRBS Generator -------------------
    .GTX3_TXENPRBSTST_IN(3'b000),
    .GTX3_TXPRBSFORCEERR_IN(1'b0),        
    //--------------- Transmit Ports - TX Ports for PCI Express ----------------
    .GTX3_TXELECIDLE_IN(mgt_powerdown)
);
  assign sync_status   = sync_status_i;
  assign align_status  = align_status_i;
  assign mgt_codevalid = ~({mgt_rxnotintable_reg7, mgt_rxnotintable_reg6, mgt_rxnotintable_reg5, mgt_rxnotintable_reg4, mgt_rxnotintable_reg3, mgt_rxnotintable_reg2, mgt_rxnotintable_reg1, mgt_rxnotintable_reg0} | {mgt_rxdisperr_reg7, mgt_rxdisperr_reg6, mgt_rxdisperr_reg5, mgt_rxdisperr_reg4, mgt_rxdisperr_reg3, mgt_rxdisperr_reg2, mgt_rxdisperr_reg1, mgt_rxdisperr_reg0});
  assign loopback_int  = mgt_loopback ? 3'b010 : 3'b000;
  assign mgt_syncok    = ~{mgt_rxlossofsync[7],mgt_rxlossofsync[5],mgt_rxlossofsync[3],mgt_rxlossofsync[1]};

  // Detect falling edge of mgt_powerdown
  always @(posedge clk156)
  begin
    mgt_powerdown_r <= mgt_powerdown;
  end

  always @(posedge clk156)
  begin
    if ( mgt_powerdown_r && ~mgt_powerdown )
    begin
      mgt_powerdown_falling <= 1'b1;
    end
    else begin
      mgt_powerdown_falling <= 1'b0;
    end
  end

  always @(posedge clk156)
    begin
      // We're locked when there is lock from the GT,
      // and not in electrical idle - unless in loopback
      mgt_rxlock_reg       <= mgt_rxlock_r1;
      mgt_rxlock_r1        <= mgt_plllocked;
      mgt_rxdata_reg       <= mgt_rxdata;
      mgt_rxcharisk_reg0    <= mgt_rxcharisk[0];
      mgt_rxcharisk_reg1    <= mgt_rxcharisk[1];
      mgt_rxcharisk_reg2    <= mgt_rxcharisk[2];
      mgt_rxcharisk_reg3    <= mgt_rxcharisk[3];
      mgt_rxcharisk_reg4    <= mgt_rxcharisk[4];
      mgt_rxcharisk_reg5    <= mgt_rxcharisk[5];
      mgt_rxcharisk_reg6    <= mgt_rxcharisk[6];
      mgt_rxcharisk_reg7    <= mgt_rxcharisk[7];
      mgt_rxnotintable_reg0 <= mgt_rxnotintable[0];
      mgt_rxnotintable_reg1 <= mgt_rxnotintable[1];
      mgt_rxnotintable_reg2 <= mgt_rxnotintable[2];
      mgt_rxnotintable_reg3 <= mgt_rxnotintable[3];
      mgt_rxnotintable_reg4 <= mgt_rxnotintable[4];
      mgt_rxnotintable_reg5 <= mgt_rxnotintable[5];
      mgt_rxnotintable_reg6 <= mgt_rxnotintable[6];
      mgt_rxnotintable_reg7 <= mgt_rxnotintable[7];
      mgt_rxdisperr_reg0    <= mgt_rxdisperr[0];
      mgt_rxdisperr_reg1    <= mgt_rxdisperr[1];
      mgt_rxdisperr_reg2    <= mgt_rxdisperr[2];
      mgt_rxdisperr_reg3    <= mgt_rxdisperr[3];
      mgt_rxdisperr_reg4    <= mgt_rxdisperr[4];
      mgt_rxdisperr_reg5    <= mgt_rxdisperr[5];
      mgt_rxdisperr_reg6    <= mgt_rxdisperr[6];
      mgt_rxdisperr_reg7    <= mgt_rxdisperr[7];
      mgt_codecomma_reg0    <= mgt_rxchariscomma[0];
      mgt_codecomma_reg1    <= mgt_rxchariscomma[1];
      mgt_codecomma_reg2    <= mgt_rxchariscomma[2];
      mgt_codecomma_reg3    <= mgt_rxchariscomma[3];
      mgt_codecomma_reg4    <= mgt_rxchariscomma[4];
      mgt_codecomma_reg5    <= mgt_rxchariscomma[5];
      mgt_codecomma_reg6    <= mgt_rxchariscomma[6];
      mgt_codecomma_reg7    <= mgt_rxchariscomma[7];
    end

  always @(mgt_rxbufstatus)
  begin
    mgt_rxbuferr[0] = IsBufError(mgt_rxbufstatus[2:0]);
    mgt_rxbuferr[1] = IsBufError(mgt_rxbufstatus[5:3]);
    mgt_rxbuferr[2] = IsBufError(mgt_rxbufstatus[8:6]);
    mgt_rxbuferr[3] = IsBufError(mgt_rxbufstatus[11:9]);
  end

  assign txoutclk = GT_TXOUTCLK;

  assign reset_txsync = mgt_reset_terms || ~lock;

  always @(posedge clk156 or posedge reset_txsync)
  begin
    if ( reset_txsync )
      begin
        clk_156_reset_txsync_r1 <= 1'b1;
        clk_156_reset_txsync_r2 <= 1'b1;
        clk_156_reset_txsync_r3 <= 1'b1;
      end
    else
      begin
        if ( &mgt_txresetdone ) begin
          clk_156_reset_txsync_r1 <= 1'b0;
          clk_156_reset_txsync_r2 <= clk_156_reset_txsync_r1;
          clk_156_reset_txsync_r3 <= clk_156_reset_txsync_r2;
        end
      end
  end

   // reset logic
  assign mgt_txreset = reset156;
  assign mgt_rx_reset = cbm_rx_reset | reset156;
  assign resetdone = &mgt_txresetdone && &mgt_rxresetdone;
  assign lock = &mgt_plllocked;
  assign txlock = lock;

  TX_SYNC #(
    .SIM_TXPMASETPHASE_SPEEDUP(0)
  )
  tx_sync_i(
    .USER_CLK(clk156),
    .RESET(clk_156_reset_txsync_r3),
    .SYNC_DONE(tx_sync_done),
    .TXENPMAPHASEALIGN(mgt_txenpmaphasealign),
    .TXPMASETPHASE(mgt_txpmasetphase),
    .TXDLYALIGNDISABLE(mgt_txdlyaligndisable),
    .TXDLYALIGNRESET(mgt_txdlyalignreset) );

    assign mgt_tx_ready = tx_sync_done;
    assign mgt_tx_fault[3:0] = {4{~tx_sync_done}};

///////////////////////////////////////////////////////////////////
// Local Reset Logic
///////////////////////////////////////////////////////////////////
  assign mgt_reset_terms = reset || mgt_powerdown_falling;

   // reset the rx side when the buffer overflows / underflows
   always @(posedge clk156)
   begin
    if ( |mgt_rxbuferr  )
      mgt_rxcdr_reset <= 4'b1111;
    else
      mgt_rxcdr_reset <= 4'b0000;
   end

///////////////////////////////////////////////////////////////////
// Channel bonding monitor
///////////////////////////////////////////////////////////////////
  assign comma_align_done = &sync_status_i;
  assign chanbond_done    = &mgt_rxchanisaligned;

    chanbond_monitor chanbond_monitor_i (
    .CLK(clk156),
    .RST(reset156),
    .COMMA_ALIGN_DONE(comma_align_done),
    .CORE_ENCHANSYNC(mgt_enchansync),
    .CHANBOND_DONE(chanbond_done),
    .RXRESET(cbm_rx_reset)
    );
    
  
endmodule
