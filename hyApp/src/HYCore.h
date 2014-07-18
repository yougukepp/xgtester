#ifndef __HY_CORE_H__
#define __HY_CORE_H__

#include "HYTimer.h"

HYRst AddTask(HYTaskEntry entry, HYTaskPara para);
void sleep(void);
HYRst StartScheduleLoop(void);
void UpdateTicks(void);

#endif
