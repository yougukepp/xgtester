#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"

#define DMA_DEV_ID        XPAR_AXIDMA_0_DEVICE_ID
#define DDR_BASE_ADDR     XPAR_V6DDR_0_S_AXI_BASEADDR
#define MEM_BASE_ADDR     (DDR_BASE_ADDR + 0x1000000)
#define TX_BUFFER_BASE    (MEM_BASE_ADDR + 0x01000000)
#define RX_BUFFER_BASE    (MEM_BASE_ADDR + 0x02000000)
#define RX_BUFFER_HIGH    (MEM_BASE_ADDR + 0x02FFFFFF)
#define MAX_PKT_LEN       (64)
//#define MAX_PKT_LEN       (128)

#define READ8(Addr)            (*(volatile u8 *)(Addr))
#define WRITE8(Addr, Value)    (*(volatile u8 *)((Addr)) = (Value))

int XAxiDma_SimplePollExample(u16 DeviceId);
static int CheckData(void);

XAxiDma AxiDma;

void logBuf(const u8 *pBuf, int length)
{
    int i = 0;
    /* xil_printf("buf(0x%08x,%02d) content:\r\n", pBuf, length); */
    for(i=0; i < length ; i++)
    {
        if(0 == i%10 && (0 != i))                 // 每10行 换行
        {
            xil_printf("\r\n");
        }

        xil_printf("0x%02x,", READ8(pBuf + i));
    }
    xil_printf("\r\n");
}

void show_recvbuffer()
{
    logBuf(RX_BUFFER_BASE, MAX_PKT_LEN);
}

void show_sendbuffer()
{ 
    logBuf(TX_BUFFER_BASE, MAX_PKT_LEN);
}

void init_sendbuffer()
{
    int i = 0;
    for(i=0; i < MAX_PKT_LEN; i++)
    {
        WRITE8(TX_BUFFER_BASE + i, i);
    }
}

void init_recvbuffer()
{
    int i = 0;
    for(i=0; i < MAX_PKT_LEN; i++)
    {
        WRITE8(RX_BUFFER_BASE + i, 0x80 + i);           // 接收缓冲 最高位置1  和发送缓冲相区别
    }
}

int hello_dma()
{
    int Status; 
    
    Xil_DCacheDisable();
    Xil_ICacheDisable();

    /*
    xil_printf("TX_BUFFER_BASE:0x%08x\r\n", TX_BUFFER_BASE);
    xil_printf("RX_BUFFER_BASE:0x%08x\r\n", RX_BUFFER_BASE);
    xil_printf("RX_BUFFER_HIGH:0x%08x\r\n", RX_BUFFER_HIGH);
    */

    init_sendbuffer();
    init_recvbuffer();
    /* xil_printf("Send buf:\r\n");
    show_sendbuffer();
    xil_printf("Recv buf:\r\n");
    show_recvbuffer(); */

    /* Run the poll example for simple transfer */
    Status = XAxiDma_SimplePollExample(DMA_DEV_ID);

    if (Status != XST_SUCCESS) {

        xil_printf("XAxiDma_SimplePollExample: Failed\r\n");
        return XST_FAILURE;
    }

    xil_printf("XAxiDma_SimplePollExample: Passed\r\n");

    return XST_SUCCESS;

}

int XAxiDma_SimplePollExample(u16 DeviceId)
{
    XAxiDma_Config *CfgPtr;
    int Status;

    u8 *TxBufferPtr;
    u8 *RxBufferPtr;

    TxBufferPtr = (u8 *)TX_BUFFER_BASE;
    RxBufferPtr = (u8 *)RX_BUFFER_BASE;

    CfgPtr = XAxiDma_LookupConfig(DeviceId);
    if (!CfgPtr) {
        xil_printf("No config found for %02d\r\n", DeviceId);
        return XST_FAILURE;
    }

    Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
    if (Status != XST_SUCCESS) {
        xil_printf("Initialization failed %02d\r\n", Status);
        return XST_FAILURE;
    }

    if(XAxiDma_HasSg(&AxiDma)){
        xil_printf("Device configured as SG mode \r\n");
        return XST_FAILURE;
    }

    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
            XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
            XAXIDMA_DMA_TO_DEVICE);
   
    Status = XAxiDma_SimpleTransfer(&AxiDma,(u32)RxBufferPtr,
            MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);
    if (Status != XST_SUCCESS) {
        xil_printf("DEVICE_TO_DMA FAILED.%d\r\n", Status);
        return XST_FAILURE;
    }

    Status = XAxiDma_SimpleTransfer(&AxiDma,(u32)TxBufferPtr,
            MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);
    if (Status != XST_SUCCESS) {
        xil_printf("DMA_TO_DEVICE FAILED.%d\r\n", Status);
        return XST_FAILURE;
    } 
    
    while ((XAxiDma_Busy(&AxiDma,XAXIDMA_DEVICE_TO_DMA)) ||
            (XAxiDma_Busy(&AxiDma,XAXIDMA_DMA_TO_DEVICE))) {
    }

    Status = CheckData();
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

static int CheckData(void)
{
    u8 *RxPacket;
    u32 Index = 0;

    RxPacket = (u8 *) RX_BUFFER_BASE;

    for(Index = 0; Index < MAX_PKT_LEN; Index++) {
        u8 txV = READ8(TX_BUFFER_BASE + Index);
        u8 rxV = READ8(RX_BUFFER_BASE + Index);
        if(txV != rxV)
        {
            xil_printf("%02d Byte TX:0x%02x,RX:0x%02x\r\n", Index, txV, rxV);
            return XST_FAILURE;
        }
    }

    return XST_SUCCESS;
}

