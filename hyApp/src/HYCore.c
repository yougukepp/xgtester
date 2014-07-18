#include "HYCore.h"

static volatile HYU32 gTicks;

static HYTaskItem gTaskArray[HY_TASK_ARRAY_SIZE];
static HYU32 gTaskNums = 0;

static void StartSchedule(void);

HYRst AddTask(HYTaskEntry entry, HYTaskPara para)
{
    if(gTaskNums > HY_TASK_ARRAY_SIZE)
    {
        xil_printf("%s,%d: AddTask 失败.\r\n", __FILE__, __LINE__);
        return HY_FAILURE;
    }

    gTaskArray[gTaskNums].entry = entry;
    gTaskArray[gTaskNums].para = para;
    gTaskNums++;

    return HY_SUCCESS;
}

HYRst StartScheduleLoop(void)
{ 
    HYTaskEntry taskEntry = NULL;
    HYTaskPara  taskPara = NULL;
    HYTaskItem  *p_TaskItem = NULL;

    if(gTaskNums != HY_TASK_ARRAY_SIZE)
    {
        xil_printf("%s,%d: StartScheduleLoop 需要%d任务, 实际注册%d个任务.\r\n", __FILE__, __LINE__, HY_TASK_ARRAY_SIZE, gTaskNums);
        return HY_FAILURE;
    }

    StartSchedule();

    while(true)
    {
        p_TaskItem = &(gTaskArray[gTicks]);
        taskEntry = p_TaskItem->entry;
        taskPara = p_TaskItem->para;

        taskEntry(taskPara);
    }

    /* 不可达 */
    return HY_SUCCESS;
}

static void StartSchedule(void)
{
    gTicks = 0;
    TmrCtrStart();
}

void UpdateTicks(void)
{
    gTicks++;
    gTicks %= HY_TASK_ARRAY_SIZE;

#ifdef HY_TRACE_TIME_SLICE
    /* 正常运行时不打印,此函数在滴答ISR中运行 */
    xil_printf("进入时间片 %d.\r\n", gTicks);
#endif

}

/* 消耗完当前任务的时间片 */
void sleep(void)
{
	HYU32 now = 0;
	now = gTicks;

	while(now == gTicks);

#ifdef HY_TRACE_TIME_SLICE
    xil_printf("时间片切换  %d => %d.\r\n", now, gTicks);
#endif
}

/* 需要加入对外设的复位 */
void reset(void)
{
	mtmsr(XPAR_MICROBLAZE_0_RESET_MSR);
	__asm__ __volatile__ ("mts\trear,%0\n\tnop\n" :: "d" (0));
	__asm__ __volatile__ ("mts\tresr,%0\n\tnop\n" :: "d" (0));
	mtfsr(0);
	mtpid(0);
	mtzpr(0);
	mttlbx(0);
	__asm__ __volatile__("brai 0x00\n");
}
