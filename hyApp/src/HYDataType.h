#ifndef __HY_DATA_TYPE_H__
#define __HY_DATA_TYPE_H__

#include "xparameters.h"
#include "HYConfig.h"

#ifndef false
#define false (0)
#endif

#ifndef true
#define true (!false)
#endif

typedef char HY8;
typedef unsigned char HYU8;
typedef unsigned int HYU32;
typedef int HY32;
typedef HY32 HYRst;
typedef HYU8 HYBool;

typedef void (*HYTaskEntry) (void *TaskPara);
typedef void *HYTaskPara;

typedef void *HYIsr;
//typedef XInterruptHandler HYIsr;

typedef struct TAG_TASK_ITEM{
	HYTaskEntry entry;
	HYTaskPara para;
}HYTaskItem;

typedef struct TAG_ISR_ARRAY{
	HYIsr isr;
	void *para;
	HYU8 id;
}IsrArray;

typedef struct TAG_KEY_TABLE{
  char key;
  char *name;
}KEY_TABLE;

#endif
