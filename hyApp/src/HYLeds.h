#ifndef __HY_LEDS_H__
#define __HY_LEDS_H__

#include <stdio.h>
#include "xparameters.h"
#include "xgpio.h"
#include "HYConfig.h"
#include "HYDataType.h"

#define LEDS_CHANNEL     (1)
#define LEDS_DIRECTION   (0x00)
#define LEDS_DEVICE_ID   (XPAR_LEDS_8BITS_DEVICE_ID)

HYRst LedsInit(void);
void LedsShow(HYU8 value);

#endif
