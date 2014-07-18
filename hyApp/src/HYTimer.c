#include "HYTimer.h"

static XTmrCtr gTmrCtr;
static void TmrCtrIsr(void *CallBackRef, u8 TmrCtrNumber);

HYRst TimerInit(void)
{
    HYRst rst;

    rst = XTmrCtr_Initialize(&gTmrCtr, XPAR_TMRCTR_0_DEVICE_ID);
    if(HY_SUCCESS != rst)
    {
        xil_printf("%s,%d: XTmrCtr_Initialize Ê§°Ü 0x%08x.\r\n", __FILE__, __LINE__, rst);
        return HY_FAILURE;
    }

    rst = XTmrCtr_SelfTest(&gTmrCtr, TIMER_CNTR_0);
    if(HY_SUCCESS != rst)
    {
        xil_printf("%s,%d: XTmrCtr_SelfTest failed.\r\n", __FILE__, __LINE__);
        return HY_FAILURE;
    }

    XTmrCtr_SetOptions(&gTmrCtr, TIMER_CNTR_0,
            XTC_DOWN_COUNT_OPTION | XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);


    XTmrCtr_SetResetValue(&gTmrCtr, TIMER_CNTR_0, HY_TICKS_VALUE);
    rst = IntcAddIsr(XTmrCtr_InterruptHandler, &gTmrCtr, XPAR_INTC_0_TMRCTR_0_VEC_ID);
    if(HY_SUCCESS != rst)
    {
        return HY_FAILURE;
    }
    XTmrCtr_SetHandler(&gTmrCtr, TmrCtrIsr, &gTmrCtr);
    return HY_SUCCESS;
}

void TmrCtrStart(void)
{
	XTmrCtr_Start(&gTmrCtr, TIMER_CNTR_0);
}

extern volatile HYU32 gTicks = 0;

void TmrCtrIsr(void *CallBackRef, u8 TmrCtrNumber)
{
	UpdateTicks();
}


