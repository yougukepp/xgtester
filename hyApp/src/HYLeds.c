#include "HYLeds.h"

static XGpio gLeds;;

HYRst LedsInit(void)
{
    HYU32 rst;
    rst = XGpio_Initialize(&gLeds, LEDS_DEVICE_ID);
    if(HY_SUCCESS != rst)
    {
        xil_printf("%s,%d: XGpio_Initialize Ê§°Ü.\r\n", __FILE__, __LINE__);
        return HY_FAILURE;
    }

    XGpio_SetDataDirection(&gLeds, LEDS_CHANNEL, LEDS_DIRECTION);

    return HY_SUCCESS;
}

void LedsShow(HYU8 value)
{
    XGpio_DiscreteWrite(&gLeds, LEDS_CHANNEL, value);
}
