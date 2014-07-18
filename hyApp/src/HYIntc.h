#ifndef __HY_INTC_H__
#define __HY_INTC_H__

#include <stdio.h>
#include "xparameters.h"
#include "xintc.h"
#include "xil_exception.h"
#include "HYConfig.h"
#include "HYDataType.h"

HYRst IntcAddIsr(HYIsr isr, void *ptrIsrPara, HYU8 id);
HYRst IntcInit(void);

#endif
