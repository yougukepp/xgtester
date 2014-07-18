#ifndef __HY_CONFIG_H__
#define __HY_CONFIG_H__

#include "xparameters.h"

/* ���ú� */
//#define HY_TRACE_TIME_SLICE

#define MS                      (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000)
#define HY_TICKS_VALUE          (20 * MS)                             /* �δ���  */

/* ״̬���� ���ں�������ֵ */
#define HY_SUCCESS				(XST_SUCCESS)   		/* �ɹ� */
#define HY_FAILURE				(XST_FAILURE)   		/* ʧ�� */
#define HY_INVALID_PARAM        (XST_INVALID_PARAM)		/* �Ƿ����� */

#define HY_ISR_ARRAY_SIZE		(2)             /* ��Ҫע�ᵽIntc��ISR���� */
#define HY_TASK_ARRAY_SIZE		(3)	        /* ��Ҫע�ᵽIntc��ISR���� */

#endif
