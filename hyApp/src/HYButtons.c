#include "HYButtons.h"

static void buttonIsr(void *InstancePtr);
static HYU32 getKeyNum(void);

volatile u32 gButtonKey = 0;
static XGpio gButtons;
HYBool gButtonIsrHappen;

static KEY_TABLE gKeyTable[]=
{
  {0x01, "��"},  //��
  {0x02, "��"},  //��
  {0x04, "��"},  //��
  {0x08, "��"},  //��
  {0x10, "��"}   //��
};

HYRst ButtonsInit(void)
{
    HYU32 rst;
    rst = XGpio_Initialize(&gButtons, BUTTON_DEVICE_ID);
    if(HY_SUCCESS != rst)
    {
        xil_printf("%s,%d: XGpio_Initialize ʧ��.\r\n", __FILE__, __LINE__);
        return HY_FAILURE;
    }
    xil_printf("%s,%d: XGpio_Initialize �ɹ�.\r\n", __FILE__, __LINE__);

    XGpio_SetDataDirection(&gButtons, BUTTON_CHANNEL, GPIO_ALL_BUTTONS);

    xil_printf("%s,%d: XGpio_SetDataDirection �ɹ�.\r\n", __FILE__, __LINE__);

    gButtonIsrHappen = false;
    rst = IntcAddIsr(buttonIsr, &gButtons, BUTTON_INTERRUPT_ID);
    if(HY_SUCCESS != rst)
    {
        return HY_FAILURE;
    }

    XGpio_InterruptEnable(&gButtons, BUTTON_INTERRUPT);
    XGpio_InterruptGlobalEnable(&gButtons);

    /*
    while(1)
    {
	HYU32 v = XGpio_DiscreteRead(&gButtons, BUTTON_CHANNEL);
        xil_printf("%s,%d: %d.\r\n", __FILE__, __LINE__, v);
    }
    */

    return HY_SUCCESS;
}

/*
 * TODO:
 *      ���ǰѴ󲿷��߼��Ƴ��ж�
 * */
void buttonIsr(void *InstancePtr)
{
    xil_printf("%s,%d: �����ж�.\r\n", __FILE__, __LINE__);
    XGpio *GpioPtr = (XGpio *)InstancePtr;
    XGpio_InterruptDisable(GpioPtr, BUTTON_INTERRUPT);
    gButtonIsrHappen = true;
    XGpio_InterruptClear(GpioPtr, BUTTON_INTERRUPT);
    XGpio_InterruptEnable(GpioPtr, BUTTON_INTERRUPT);
}

HYBool IsButtonInterruptTrigged(void)
{
	return gButtonIsrHappen;
}

HYBool ClearButtonInterruptTrigged(void)
{
	return gButtonIsrHappen;
}

static HYU32 getKeyNum(void)
{
	HYU32 keyNum = 0;
	keyNum = XGpio_DiscreteRead(&gButtons, BUTTON_CHANNEL);
	return keyNum;
}

HY8 *getKeyName(void)
{
  int i = 0;
  int iMax = 0;
  HYU32 key = 0;

  key = getKeyNum();

  iMax = sizeof(gKeyTable) / sizeof(gKeyTable[0]);

  for(i=0;i<iMax;i++)
  {
    if(key == gKeyTable[i].key)
    {
      return gKeyTable[i].name;
    }
  }

  return NULL;
}
