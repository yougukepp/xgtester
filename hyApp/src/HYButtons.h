#ifndef __HY_BUTTON_H__
#define __HY_BUTTON_H__

#include <stdio.h>
#include "xparameters.h"
#include "xgpio.h"
#include "xil_exception.h"
#include "xintc.h"
#include "HYConfig.h"
#include "HYDataType.h"
#include "HYIntc.h"

#define GPIO_ALL_BUTTONS        (0x00FF)

#define BUTTON_CHANNEL          (1)
#define BUTTON_INTERRUPT        (XGPIO_IR_CH1_MASK)
#define BUTTON_DEVICE_ID        (XPAR_PUSH_BUTTONS_5BITS_DEVICE_ID)
#define BUTTON_INTERRUPT_ID     (XPAR_PUSH_BUTTONS_5BITS_INTERRUPT_PRESENT)


HYRst ButtonsInit(void);
char *getKeyName(void);
HYBool IsButtonInterruptTrigged(void);
HYBool ClearButtonInterruptTrigged(void);

#endif

