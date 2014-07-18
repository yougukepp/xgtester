#ifndef __HY_CONFIG_H__
#define __HY_CONFIG_H__

#include "xparameters.h"

/* 配置宏 */
//#define HY_TRACE_TIME_SLICE

#define MS                      (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000)
#define HY_TICKS_VALUE          (20 * MS)                             /* 滴答间隔  */

/* 状态常量 用于函数返回值 */
#define HY_SUCCESS				(XST_SUCCESS)   		/* 成功 */
#define HY_FAILURE				(XST_FAILURE)   		/* 失败 */
#define HY_INVALID_PARAM        (XST_INVALID_PARAM)		/* 非法参数 */

#define HY_ISR_ARRAY_SIZE		(2)             /* 需要注册到Intc的ISR个数 */
#define HY_TASK_ARRAY_SIZE		(3)	        /* 需要注册到Intc的ISR个数 */

#endif
