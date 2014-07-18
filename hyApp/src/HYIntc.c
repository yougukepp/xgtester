#include "HYIntc.h"

static XIntc gIntc;
static IsrArray gIsrArray[HY_ISR_ARRAY_SIZE];
static HYU32 gIsrNums = 0;

HYRst IntcAddIsr(HYIsr isr, void *ptrIsrPara, HYU8 id)
{
    if((NULL == isr)
            ||(HY_ISR_ARRAY_SIZE < gIsrNums))
    {
        xil_printf("%s,%d: AddIsr 失败.\r\n", __FILE__, __LINE__);
        return HY_FAILURE;
    }
    gIsrArray[gIsrNums].isr = isr;
    gIsrArray[gIsrNums].para = ptrIsrPara;
    gIsrArray[gIsrNums].id = id;
    gIsrNums++;
    return HY_SUCCESS;
}

HYRst IntcInit(void)
{
	int i = 0;
    int rst = 0;

    if(HY_ISR_ARRAY_SIZE != gIsrNums)
    {
        xil_printf("%s,%d: 需要%d个ISR, 但实际注册%d个.\r\n",
                __FILE__, __LINE__, HY_ISR_ARRAY_SIZE, gIsrNums);
        return HY_FAILURE;
    }

    rst = XIntc_Initialize(&gIntc, XPAR_INTC_0_DEVICE_ID);
    if(HY_SUCCESS != rst)
    {
        xil_printf("%s,%d: XIntc_Initialize 失败.\r\n", __FILE__, __LINE__);
        return HY_FAILURE;
    }
    for(i=0;i<gIsrNums;i++)
    {
        rst = XIntc_Connect(&gIntc,
                gIsrArray[i].id,
                gIsrArray[i].isr,
                gIsrArray[i].para);
        if(XST_SUCCESS != rst)
        {
            xil_printf("%s,%d: XIntc_Connect 失败.\r\n", __FILE__, __LINE__);
            return HY_FAILURE;
        }
    }

    rst = XIntc_Start(&gIntc, XIN_REAL_MODE);
    if(HY_SUCCESS != rst)
    {
        xil_printf("%s,%d: XIntc_Start 失败.\r\n", __FILE__, __LINE__);
        return HY_FAILURE;
    }

    for(i=0;i<gIsrNums;i++)
    {
        XIntc_Enable(&gIntc, gIsrArray[i].id);
    }

    Xil_ExceptionInit();

    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
            (Xil_ExceptionHandler)XIntc_InterruptHandler,
            &gIntc);

    Xil_ExceptionEnable();

    return HY_SUCCESS;
}


