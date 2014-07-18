#include "HYLeds.h"
#include "HYButtons.h"
#include "HYTimer.h"
#include "HYIntc.h"
#include "HYCore.h"

#include "ddrAndDmaAndMdio.h"

static HYRst SysInit(void);
static HYRst AddAllTask(void);

static void ButtonTask(HYTaskPara p_para);
static void ShineLedsTask(HYTaskPara p_para);
static void Idle(HYTaskPara p_para);

int main(void)
{
    /* MDIO测试  */
#if 1
    xil_printf("开始测试mdio.\r\n");
    hello_mdio();
    xil_printf("结束测试mdio.\r\n");
#endif

    /* DMA测试  */
#if 1
    xil_printf("开始测试dma.\r\n");
    hello_dma();
    xil_printf("结束测试dma.\r\n");
#endif

    /* 内存测试  */
#if 0
    xil_printf("开始测试内存.\r\n");
    hello_mem();
    xil_printf("结束测试内存.\r\n");
#endif


#if 0
    xil_printf("开始跑程序.\r\n");
    HYU32 rst = 0;
    rst = SysInit();
    if(HY_SUCCESS != rst)
    {
    	return HY_FAILURE;
    }

    rst = AddAllTask();
    if(HY_SUCCESS != rst)
    {
    	return HY_FAILURE;
    }

    rst = StartScheduleLoop();
    if(HY_SUCCESS != rst)
    {
    	return HY_FAILURE;
    }
#endif

#if 0
    xil_printf("开始跑程序.\r\n");
#define READ32(Addr)            (*(volatile u32 *)(Addr))
#define WRITE32(Addr, Value)    (*(volatile u32 *)((Addr)) = (Value)) 
    
#define PKT_WR_CTRL_REG         (0x72600000)
#define PKT_WR_STATUS_REG       (0x72600000 + 4)

    u32 status = 0;
    status = READ32(PKT_WR_STATUS_REG);
    xil_printf("addr(0x%08x):0x%08x\r\n", PKT_WR_STATUS_REG, status);

    WRITE32(PKT_WR_CTRL_REG, 0x00000001);

    status = READ32(PKT_WR_STATUS_REG);
    xil_printf("addr(0x%08x):0x%08x\r\n", PKT_WR_STATUS_REG, status);

    xil_printf("结束跑程序.\r\n");

#endif
    return 0;
}

static HYRst SysInit(void)
{
	HYRst rst = HY_FAILURE;

	rst = TimerInit();
    if(HY_SUCCESS != rst)
    {
        return HY_FAILURE;
    }

	rst = LedsInit();
    if(HY_SUCCESS != rst)
    {
        return HY_FAILURE;
    }

	rst = ButtonsInit();
    if(HY_SUCCESS != rst)
    {
        return HY_FAILURE;
    }

    /* 必须最后初始化 */
	rst = IntcInit();
    if(HY_SUCCESS != rst)
    {
        return HY_FAILURE;
    }

    return HY_SUCCESS;
}

static HYRst AddAllTask(void)
{
	HYRst rst = HY_FAILURE;

	rst = AddTask(ButtonTask, NULL);
    if(HY_SUCCESS != rst)
    {
        return HY_FAILURE;
    }

	rst = AddTask(ShineLedsTask, NULL);
    if(HY_SUCCESS != rst)
    {
        return HY_FAILURE;
    }

	rst = AddTask(Idle, NULL);
    if(HY_SUCCESS != rst)
    {
        return HY_FAILURE;
    }

    return HY_SUCCESS;
}

static void ButtonTask(HYTaskPara p_para)
{
	HY8 *keyName = NULL;

	if(IsButtonInterruptTrigged())
	{
		keyName = getKeyName();
	}
    if(NULL != keyName)
    {
    	xil_printf("按下 %s 键.\r\n", keyName);
    }
    ClearButtonInterruptTrigged();

	sleep();
}

static void ShineLedsTask(HYTaskPara p_para)
{
	static HYU8 i = 0;
	LedsShow(i++);
	sleep();
}

static void Idle(HYTaskPara p_para)
{
	sleep();
}
