#ifndef __HY_TIMER_H__
#define __HY_TIMER_H__

#include <stdio.h>
#include "xparameters.h"
#include "xtmrctr.h"
#include "xintc.h"
#include "xil_exception.h"
#include "HYConfig.h"
#include "HYDataType.h"
#include "HYIntc.h"
#include "HYCore.h"

#define TIMER_CNTR_0            (0)

void TmrCtrStart(void);
HYRst TimerInit(void);

#endif
