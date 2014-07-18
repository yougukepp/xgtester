#include <stdio.h>
#include "mdio.h"

#define EMAC_DEVICE_ID		XPAR_EMACLITE_0_DEVICE_ID
#define TIMER_DEVICE_ID     XPAR_WDTTB_0_DEVICE_ID

#if 0
static u16 gAel2005ConfigTable[] = {
    /* 扩展板 UG */
    1, 0xC07B, 0x5701,                    /* 解锁 1.0007 */
    1, 0x0007, 0x0007,                    /* 3:0 0111 10GBASE-SR */
    1, 0xC01F, 0x0020,                    /* HSRXDATA invert */
    1, 0xC214, 0x8009,                    /* 一下三个寄存器设置配置 TX RX信号灯功能 */
    1, 0xC217, 0xFF00,
    1, 0xC216, 0xCCCC,
    /* 自编 */
    1, 0xC017, 0xFEB1                     /* PMA回环 */
};
#else
static u16 gAel2005ConfigTable[] = { 
    1, 0xcc00, 0x20c5,
    1, 0xcc01, 0x3c05,
    1, 0xcc02, 0x6536,
    1, 0xcc03, 0x2fe4,
    1, 0xcc04, 0x3cd4,
    1, 0xcc05, 0x6624,
    1, 0xcc06, 0x2015,
    1, 0xcc07, 0x3145,
    1, 0xcc08, 0x6524,
    1, 0xcc09, 0x27ff,
    1, 0xcc0a, 0x300f,
    1, 0xcc0b, 0x2c8b,
    1, 0xcc0c, 0x300b,
    1, 0xcc0d, 0x4009,
    1, 0xcc0e, 0x400e,
    1, 0xcc0f, 0x2f52,
    1, 0xcc10, 0x3002,
    1, 0xcc11, 0x1002,
    1, 0xcc12, 0x2202,
    1, 0xcc13, 0x3012,
    1, 0xcc14, 0x1002,
    1, 0xcc15, 0x2662,
    1, 0xcc16, 0x3012,
    1, 0xcc17, 0x1002,
    1, 0xcc18, 0xd01e,
    1, 0xcc19, 0x2862,
    1, 0xcc1a, 0x3012,
    1, 0xcc1b, 0x1002,
    1, 0xcc1c, 0x2004,
    1, 0xcc1d, 0x3c84,
    1, 0xcc1e, 0x6436,
    1, 0xcc1f, 0x2007,
    1, 0xcc20, 0x3f87,
    1, 0xcc21, 0x8676,
    1, 0xcc22, 0x40b7,
    1, 0xcc23, 0xa746,
    1, 0xcc24, 0x4047,
    1, 0xcc25, 0x5673,
    1, 0xcc26, 0x29c2,
    1, 0xcc27, 0x3002,
    1, 0xcc28, 0x13d2,
    1, 0xcc29, 0x8bbd,
    1, 0xcc2a, 0x28f2,
    1, 0xcc2b, 0x3012,
    1, 0xcc2c, 0x1002,
    1, 0xcc2d, 0x2122,
    1, 0xcc2e, 0x3012,
    1, 0xcc2f, 0x1002,
    1, 0xcc30, 0x5cc3,
    1, 0xcc31, 0x314,
    1, 0xcc32, 0x2982,
    1, 0xcc33, 0x3002,
    1, 0xcc34, 0x1002,
    1, 0xcc35, 0xd019,
    1, 0xcc36, 0x20c2,
    1, 0xcc37, 0x3012,
    1, 0xcc38, 0x1002,
    1, 0xcc39, 0x2a04,
    1, 0xcc3a, 0x3c74,
    1, 0xcc3b, 0x6435,
    1, 0xcc3c, 0x2fa4,
    1, 0xcc3d, 0x3cd4,
    1, 0xcc3e, 0x6624,
    1, 0xcc3f, 0x5563,
    1, 0xcc40, 0x2d82,
    1, 0xcc41, 0x3002,
    1, 0xcc42, 0x13d2,
    1, 0xcc43, 0x464d,
    1, 0xcc44, 0x28f2,
    1, 0xcc45, 0x3012,
    1, 0xcc46, 0x1002,
    1, 0xcc47, 0x20c2,
    1, 0xcc48, 0x3012,
    1, 0xcc49, 0x1002,
    1, 0xcc4a, 0x2fb4,
    1, 0xcc4b, 0x3cd4,
    1, 0xcc4c, 0x6624,
    1, 0xcc4d, 0x5563,
    1, 0xcc4e, 0x2d82,
    1, 0xcc4f, 0x3002,
    1, 0xcc50, 0x13d2,
    1, 0xcc51, 0x2eb2,
    1, 0xcc52, 0x3002,
    1, 0xcc53, 0x1002,
    1, 0xcc54, 0x2002,
    1, 0xcc55, 0x3012,
    1, 0xcc56, 0x1002,
    1, 0xcc57, 0x004,
    1, 0xcc58, 0x2982,
    1, 0xcc59, 0x3002,
    1, 0xcc5a, 0x1002,
    1, 0xcc5b, 0x2122,
    1, 0xcc5c, 0x3012,
    1, 0xcc5d, 0x1002,
    1, 0xcc5e, 0x5cc3,
    1, 0xcc5f, 0x317,
    1, 0xcc60, 0x2f52,
    1, 0xcc61, 0x3002,
    1, 0xcc62, 0x1002,
    1, 0xcc63, 0x2982,
    1, 0xcc64, 0x3002,
    1, 0xcc65, 0x1002,
    1, 0xcc66, 0x22cd,
    1, 0xcc67, 0x301d,
    1, 0xcc68, 0x28f2,
    1, 0xcc69, 0x3012,
    1, 0xcc6a, 0x1002,
    1, 0xcc6b, 0x21a2,
    1, 0xcc6c, 0x3012,
    1, 0xcc6d, 0x1002,
    1, 0xcc6e, 0x5aa3,
    1, 0xcc6f, 0x2e02,
    1, 0xcc70, 0x3002,
    1, 0xcc71, 0x1312,
    1, 0xcc72, 0x2d42,
    1, 0xcc73, 0x3002,
    1, 0xcc74, 0x1002,
    1, 0xcc75, 0x2ff7,
    1, 0xcc76, 0x30f7,
    1, 0xcc77, 0x20c4,
    1, 0xcc78, 0x3c04,
    1, 0xcc79, 0x6724,
    1, 0xcc7a, 0x2807,
    1, 0xcc7b, 0x31a7,
    1, 0xcc7c, 0x20c4,
    1, 0xcc7d, 0x3c24,
    1, 0xcc7e, 0x6724,
    1, 0xcc7f, 0x1002,
    1, 0xcc80, 0x2807,
    1, 0xcc81, 0x3187,
    1, 0xcc82, 0x20c4,
    1, 0xcc83, 0x3c24,
    1, 0xcc84, 0x6724,
    1, 0xcc85, 0x2fe4,
    1, 0xcc86, 0x3cd4,
    1, 0xcc87, 0x6437,
    1, 0xcc88, 0x20c4,
    1, 0xcc89, 0x3c04,
    1, 0xcc8a, 0x6724,
    1, 0xcc8b, 0x1002,
    1, 0xcc8c, 0x2514,
    1, 0xcc8d, 0x3c64,
    1, 0xcc8e, 0x6436,
    1, 0xcc8f, 0xdff4,
    1, 0xcc90, 0x6436,
    1, 0xcc91, 0x1002,
    1, 0xcc92, 0x40a4,
    1, 0xcc93, 0x643c,
    1, 0xcc94, 0x4016,
    1, 0xcc95, 0x8c6c,
    1, 0xcc96, 0x2b24,
    1, 0xcc97, 0x3c24,
    1, 0xcc98, 0x6435,
    1, 0xcc99, 0x1002,
    1, 0xcc9a, 0x2b24,
    1, 0xcc9b, 0x3c24,
    1, 0xcc9c, 0x643a,
    1, 0xcc9d, 0x4025,
    1, 0xcc9e, 0x8a5a,
    1, 0xcc9f, 0x1002,
    1, 0xcca0, 0x27c1,
    1, 0xcca1, 0x3011,
    1, 0xcca2, 0x1001,
    1, 0xcca3, 0xc7a0,
    1, 0xcca4, 0x100,
    1, 0xcca5, 0xc502,
    1, 0xcca6, 0x53ac,
    1, 0xcca7, 0xc503,
    1, 0xcca8, 0xd5d5,
    1, 0xcca9, 0xc600,
    1, 0xccaa, 0x2a6d,
    1, 0xccab, 0xc601,
    1, 0xccac, 0x2a4c,
    1, 0xccad, 0xc602,
    1, 0xccae, 0x111,
    1, 0xccaf, 0xc60c,
    1, 0xccb0, 0x5900,
    1, 0xccb1, 0xc710,
    1, 0xccb2, 0x700,
    1, 0xccb3, 0xc718,
    1, 0xccb4, 0x700,
    1, 0xccb5, 0xc720,
    1, 0xccb6, 0x4700,
    1, 0xccb7, 0xc801,
    1, 0xccb8, 0x7f50,
    1, 0xccb9, 0xc802,
    1, 0xccba, 0x7760,
    1, 0xccbb, 0xc803,
    1, 0xccbc, 0x7fce,
    1, 0xccbd, 0xc804,
    1, 0xccbe, 0x5700,
    1, 0xccbf, 0xc805,
    1, 0xccc0, 0x5f11,
    1, 0xccc1, 0xc806,
    1, 0xccc2, 0x4751,
    1, 0xccc3, 0xc807,
    1, 0xccc4, 0x57e1,
    1, 0xccc5, 0xc808,
    1, 0xccc6, 0x2700,
    1, 0xccc7, 0xc809,
    1, 0xccc8, 0x000,
    1, 0xccc9, 0xc821,
    1, 0xccca, 0x002,
    1, 0xcccb, 0xc822,
    1, 0xcccc, 0x014,
    1, 0xcccd, 0xc832,
    1, 0xccce, 0x1186,
    1, 0xcccf, 0xc847,
    1, 0xccd0, 0x1e02,
    1, 0xccd1, 0xc013,
    1, 0xccd2, 0xf341,
    1, 0xccd3, 0xc01a,
    1, 0xccd4, 0x446,
    1, 0xccd5, 0xc024,
    1, 0xccd6, 0x1000,
    1, 0xccd7, 0xc025,
    1, 0xccd8, 0xa00,
    1, 0xccd9, 0xc026,
    1, 0xccda, 0xc0c,
    1, 0xccdb, 0xc027,
    1, 0xccdc, 0xc0c,
    1, 0xccdd, 0xc029,
    1, 0xccde, 0x0a0,
    1, 0xccdf, 0xc030,
    1, 0xcce0, 0xa00,
    1, 0xcce1, 0xc03c,
    1, 0xcce2, 0x01c,
    1, 0xcce3, 0xc005,
    1, 0xcce4, 0x7a06,
    1, 0xcce5, 0x000,
    1, 0xcce6, 0x27c1,
    1, 0xcce7, 0x3011,
    1, 0xcce8, 0x1001,
    1, 0xcce9, 0xc620,
    1, 0xccea, 0x000,
    1, 0xcceb, 0xc621,
    1, 0xccec, 0x03f,
    1, 0xcced, 0xc622,
    1, 0xccee, 0x000,
    1, 0xccef, 0xc623,
    1, 0xccf0, 0x000,
    1, 0xccf1, 0xc624,
    1, 0xccf2, 0x000,
    1, 0xccf3, 0xc625,
    1, 0xccf4, 0x000,
    1, 0xccf5, 0xc627,
    1, 0xccf6, 0x000,
    1, 0xccf7, 0xc628,
    1, 0xccf8, 0x000,
    1, 0xccf9, 0xc62c,
    1, 0xccfa, 0x000,
    1, 0xccfb, 0x000,
    1, 0xccfc, 0x2806,
    1, 0xccfd, 0x3cb6,
    1, 0xccfe, 0xc161,
    1, 0xccff, 0x6134,
    1, 0xcd00, 0x6135,
    1, 0xcd01, 0x5443,
    1, 0xcd02, 0x303,
    1, 0xcd03, 0x6524,
    1, 0xcd04, 0x00b,
    1, 0xcd05, 0x1002,
    1, 0xcd06, 0x2104,
    1, 0xcd07, 0x3c24,
    1, 0xcd08, 0x2105,
    1, 0xcd09, 0x3805,
    1, 0xcd0a, 0x6524,
    1, 0xcd0b, 0xdff4,
    1, 0xcd0c, 0x4005,
    1, 0xcd0d, 0x6524,
    1, 0xcd0e, 0x1002,
    1, 0xcd0f, 0x5dd3,
    1, 0xcd10, 0x306,
    1, 0xcd11, 0x2ff7,
    1, 0xcd12, 0x38f7,
    1, 0xcd13, 0x60b7,
    1, 0xcd14, 0xdffd,
    1, 0xcd15, 0x00a,
    1, 0xcd16, 0x1002,
    1, 0xcd17, 0x000,
    1, 0xca00, 0x0080,
    1, 0xca12, 0x0000,
};
#endif

XEmacLite EmacLiteInstance;	/* Instance of the EmacLite */

static int ael2005_log(int phyCount, int phyDev, u16 addrLow, u16 addrHigh);
static int ael2005_config(int phyCount);

int hello_mdio (void) { 
    XEmacLite *EmacLiteInstPtr = &EmacLiteInstance;
    XEmacLite_Config *ConfigPtr; 
    
    ConfigPtr = XEmacLite_LookupConfig(EMAC_DEVICE_ID);
    XEmacLite_CfgInitialize(EmacLiteInstPtr, ConfigPtr, ConfigPtr->BaseAddress); 
    
#define PHY_COUNT_MAX (2)
    u16 value = 0;
    int phyCount = 0;
    int phyDev = 0;
    u16 addr = 0;

    /* 配置 */
    for(phyCount=0;phyCount<PHY_COUNT_MAX;phyCount++)
    {
        ael2005_config(phyCount);
    }

    for(phyCount=0;phyCount<PHY_COUNT_MAX;phyCount++)
#undef PHY_COUNT_MAX
    {
#if 0
      /* log 寄存器 */
        ael2005_log(phyCount, 1, 0x0000, 0x0000);
        ael2005_log(phyCount, 1, 0xc003, 0xc003);
        ael2005_log(phyCount, 1, 0xc007, 0xc007);
        ael2005_log(phyCount, 1, 0xc013, 0xc013);
        ael2005_log(phyCount, 1, 0xc017, 0xc017);
        ael2005_log(phyCount, 1, 0xc01f, 0xc01f);
        ael2005_log(phyCount, 1, 0xc210, 0xc210);
        ael2005_log(phyCount, 1, 0xc214, 0xc214);
        ael2005_log(phyCount, 1, 0xc216, 0xc216);
        ael2005_log(phyCount, 1, 0xc217, 0xc217);
        ael2005_log(phyCount, 1, 0xc010, 0xc010);
        ael2005_log(phyCount, 1, 0xc04a, 0xc04a);
        ael2005_log(phyCount, 1, 0xc07b, 0xc07b);
#endif
    } 
    
    return 0;
}

/* TODO: 使用定时器 */
void delay(int ms)
{
    double pp = 0;
    int i = 0;
    int j = 0; 
    
    while(i<ms)
    {
        while(j<0x0008ffff)
        {
            pp /= (7.4 + j);
            j++;
        }
        i++;
    }
}

int ael2005_read (XEmacLite *EmacLiteInstPtr, u32 PhyAddr, u32 PhyDev, u16 address, u16 *data){
    XEmacLite_PhyWrite(EmacLiteInstPtr, PhyAddr, PhyDev, XEL_MDIO_OP_45_ADDRESS, XEL_MDIO_CLAUSE_45, address);
    XEmacLite_PhyRead(EmacLiteInstPtr, PhyAddr, PhyDev, XEL_MDIO_OP_45_READ, XEL_MDIO_CLAUSE_45, data);
    delay(1);
    return XST_SUCCESS;
}

int ael2005_write (XEmacLite *EmacLiteInstPtr, u32 PhyAddr, u32 PhyDev, u16 address, u16 data){
    XEmacLite_PhyWrite(EmacLiteInstPtr, PhyAddr, PhyDev, XEL_MDIO_OP_45_ADDRESS, XEL_MDIO_CLAUSE_45, address);
    XEmacLite_PhyWrite(EmacLiteInstPtr, PhyAddr, PhyDev, XEL_MDIO_OP_45_WRITE, XEL_MDIO_CLAUSE_45, data);
    delay(1);
    return XST_SUCCESS;
} 

int ael2005_log(int phyCount, int phyDev, u16 addrLow, u16 addrHigh)
{ 
    u16 addr = 0;
    u16 value = 0;

    for(addr=addrLow; addr<= addrHigh; addr++)
    {
        ael2005_read(&EmacLiteInstance, phyCount, phyDev, addr, &value);
        xil_printf("%1d.%04x: 0x%04x\r\n", phyDev, addr, value);
    }
    return XST_SUCCESS;
}

int ael2005_config(int phyCount)
{
    /* microInit_mdio_SR_AEL2005C_20.txt
     * Contains the MDIO writes necessary to bring up AEL2005C PHY for SR/LR (limiting interface). ////
     */

    int i = 0;
    int configCount = 0;

    int phyDev = 0;
    u16 addr = 0;
    u16 wValue = 0;
    u16 rValue = 0;

    /* 1. Hardware & Software Reset:
     * Always hardware reset the PHY upon powerup by holding RESET_N to GND for 100ms after power supplies stabilize.
     * Make sure TX_ON is asserted before starting any MDIO writes.
     */ 

    /* issues a software reset */
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0x0000, 0xa040); 
    delay(100); 
    
    /* 2. Platform-specific MDIO Patches:
     * (include patches for 10G RX polarity flip, 50Mhz Synth, etc)
     */ 
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0xC07B, 0x5701);/* 解锁 1.0007 */
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0x0007, 0x0007);/* 3:0 0111 10GBASE-SR */
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0xC01F, 0x0020);/* HSRXDATA invert */
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0xC214, 0x8009);/* 以下三个寄存器设置配置 TX RX信号灯功能 */
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0xC217, 0xFF00);
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0xC216, 0xCC00);
    /* PMA回环 */
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0xC017, 0xFEB0);// flip RX_LOS polarity (mandatory patch for SFP+ applications)
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0xC013, 0xF341);// flip RX_LOS polarity (mandatory patch for SFP+ applications)
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0xC210, 0x8100);// reset datapath (mandatory patch)
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0xC210, 0x8000);// reset datapath (mandatory patch)
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0xC210, 0x0000);// reset datapath (mandatory patch) 
    delay(50);                                         
    
    /* 3. Transceiver-specific MDIO Patches:
     *
     */
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0xC003, 0x0181);// flip RX_LOS polarity (mandatory patch for SFP+ applications)
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0xC010, 0x448A);// (bit 14) mask out high BER input from the LOS signal in 1.000A (mandatory patch for SR code) 
    
    /* 4. Transceiver-specific Microcontroller Initialization:
     */
    ael2005_write(&EmacLiteInstance, phyCount, 1, 0xC04A, 0x5200);// activate microcontroller and pause
    delay(50);                                         

    configCount = sizeof(gAel2005ConfigTable) / sizeof(u16);
    for(i = 0; i < configCount; i+=3)
    { 
        phyDev = gAel2005ConfigTable[i];
        addr = gAel2005ConfigTable[i+1];
        wValue = gAel2005ConfigTable[i+2];

        ael2005_write(&EmacLiteInstance, phyCount, phyDev, addr, wValue);
        ael2005_read(&EmacLiteInstance, phyCount, phyDev, addr, &rValue);

        if(wValue != rValue)
        {
            xil_printf("error:%1d.%1d.%04x 0x%04x(write) != 0x%04x(read).\r\n", phyCount, phyDev, addr, wValue, rValue);
        } 
    }
}

