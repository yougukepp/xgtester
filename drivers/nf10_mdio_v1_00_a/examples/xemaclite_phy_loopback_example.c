/* $Id: xemaclite_phy_loopback_example.c,v 1.1.2.2 2010/08/06 15:11:04 anirudh Exp $
*/
/******************************************************************************
*
* (c) Copyright 2009 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
******************************************************************************/
/*****************************************************************************/
/**
* @file xemaclite_phy_loopback_example.c
*
* This file contains a example for using EmacLite hardware and driver.
* This file contains an interrupt example outlining the use of interrupts and
* callbacks in the transmission/reception of Ethernet frames using MAC loop
* back in the PHY device with an incrementing payload from 1 byte to 1500 bytes
* (excluding Ethernet Header and FCS).
*
* This example assumes that there is an interrupt controller in the hardware
* system and the EmacLite device is connected to the interrupt controller.
*
* @note
*
* None
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -----------------------------------------------
* 2.00a ktn  02/25/09 First release
* 2.01a ktn  07/20/09 Updated the example to wait for either Transmit complete
*                     or Rx packet reception.
* 3.00a ktn  10/22/09 Updated the example to use the HAL APIs/macros.
*		      Updated example to use the macros that have been changed
*		      in the driver to remove _m from the name of the macro.
* 3.01a ktn  07/08/10 Updated example to support Little Endian MicroBlaze.
* </pre>
*
******************************************************************************/

/***************************** Include Files *********************************/

#include "xemaclite_example.h"
#include "xintc.h"
#include "xil_exception.h"
#include "xil_io.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define INTC_DEVICE_ID		XPAR_INTC_0_DEVICE_ID
#define INTC_EMACLITE_ID	XPAR_INTC_0_EMACLITE_0_VEC_ID

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

int EmacLitePhyLoopbackExample(u16 DeviceId);

static int SendFrame(XEmacLite *InstancePtr, u32 PayloadSize);
static int EmacLiteRecvFrame(u32 PayloadSize);
static void EmacLiteRecvHandler(void *CallBackRef);
static void EmacLiteSendHandler(void *CallBackRef);
static void EmacLiteDisableIntrSystem(XIntc *IntcInstancePtr,
							 u16 EmacLiteIntrId);
static int EmacLiteSetupIntrSystem(XIntc *IntcInstancePtr,
			 XEmacLite *EmacLiteInstPtr, u16 EmacLiteIntrId);

/************************** Variable Definitions *****************************/

XIntc IntcInstance;		/* Instance of the Interrupt Controller */

/*
 * Set up valid local MAC addresses. This loop back test uses the LocalAddress
 * both as a source and destination MAC address.
 */
static u8 LocalAddress[XEL_MAC_ADDR_SIZE] =
{
	0x00, 0x0A, 0x35, 0x01, 0x02, 0x03
};

/******************************************************************************/
/**
*
* This function is the main function of the EmacLite PHY loop back example in
* interrupt mode.
*
* @param	None.
*
* @return	XST_SUCCESS to indicate success, otherwise XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int main()
{
	int Status;

	/*
	 * Run the EmacLite PHY loop back example , specify the Device ID
	 * that is generated in xparameters.h.
	 */
	Status = EmacLitePhyLoopbackExample(EMAC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;

}

/*****************************************************************************/
/**
*
* The main entry point for the EmacLite driver PHY loop back example in
* interrupt mode. This function will transmit/receive the frame using MAC
* interface loop back (in the PHY device) and verify the data in the received
* frame.
*
* @param	DeviceId is device ID of the XEmacLite Device , typically
*		XPAR_<EMACLITE_instance>_DEVICE_ID value from xparameters.h.
*
* @return	XST_SUCCESS to indicate success, otherwise XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int EmacLitePhyLoopbackExample(u16 DeviceId)
{
	int Status;
	XIntc *IntcInstancePtr;
	XEmacLite *EmacLiteInstPtr;
	u32 PhyAddress = 0;
	u32 TxLength;
	XEmacLite_Config *ConfigPtr;

	RecvFrameLength = 0;
	IntcInstancePtr = &IntcInstance;
	EmacLiteInstPtr =&EmacLiteInstance;

	/*
	 * Initialize the EmacLite device.
	 */
	ConfigPtr = XEmacLite_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		return XST_FAILURE;
	}
	Status = XEmacLite_CfgInitialize(EmacLiteInstPtr, ConfigPtr,
						ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * If MDIO is not configured in the core then return XST_FAILURE.
	 */
	if (!XEmacLite_IsMdioConfigured(EmacLiteInstPtr)) {
		return XST_FAILURE;
	}
	/*
	 * Set the MAC address.
	 */
	XEmacLite_SetMacAddress(EmacLiteInstPtr, LocalAddress);

	/*
	 * Empty any existing receive frames.
	 */
	XEmacLite_FlushReceive(EmacLiteInstPtr);

	/*
	 * Check if there is a Tx buffer available.
	 */
	if (XEmacLite_TxBufferAvailable(EmacLiteInstPtr) != TRUE) {
		return XST_FAILURE;
	}

	/*
	 * Set up the interrupt infrastructure.
	 */
	Status =  EmacLiteSetupIntrSystem(IntcInstancePtr, EmacLiteInstPtr,
					  INTC_EMACLITE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Setup the EmacLite handlers.
	 */
	XEmacLite_SetRecvHandler((EmacLiteInstPtr), (void *)(EmacLiteInstPtr),
				 (XEmacLite_Handler)EmacLiteRecvHandler);
	XEmacLite_SetSendHandler((EmacLiteInstPtr), (void *)(EmacLiteInstPtr),
				 (XEmacLite_Handler)EmacLiteSendHandler);

	/*
	 * Enable the EmacLite interrupts.
	 */
	XEmacLite_EnableInterrupts(EmacLiteInstPtr);

	/*
	 * Detect the PHY device and enable the MAC Loop back
	 * in the PHY.
	 */
	PhyAddress = EmacLitePhyDetect(EmacLiteInstPtr);
	Status = EmacLiteEnablePhyLoopBack(EmacLiteInstPtr, PhyAddress);
	if (Status != XST_SUCCESS) {
		XEmacLite_DisableInterrupts(EmacLiteInstPtr);
		EmacLiteDisableIntrSystem(IntcInstancePtr, INTC_EMACLITE_ID);
		return XST_FAILURE;
	}

	/*
	 * Send/Receive frames of varying sizes and verify the data in the
	 * received frames.
	 */
	for (TxLength = 1; TxLength <= XEL_MTU_SIZE; ) {
		RecvFrameLength = 0;

		/*
		 * Send a frame.
		 */
		Status = SendFrame(EmacLiteInstPtr, TxLength);
		if (Status != XST_SUCCESS) {
			/*
			 * Disable the MAC Loop back in the PHY and
			 * disable/disconnect the EmacLite Interrupts.
			 */
			EmacLiteDisablePhyLoopBack(EmacLiteInstPtr, PhyAddress);
			XEmacLite_DisableInterrupts(EmacLiteInstPtr);
			EmacLiteDisableIntrSystem(IntcInstancePtr,
							 INTC_EMACLITE_ID);
			return XST_FAILURE;
		}

		/*
		 * Wait for the frame to be transmitted and received back.
		 * As the PHY is in loopback the transmit interrupt and the
		 * receive interrupt occur simulataneously.
		 */
		while ((TransmitComplete == FALSE) && (RecvFrameLength == 0));

		/*
		 * Check the receive frame.
		 */
		Status = EmacLiteRecvFrame(TxLength++);
		if ((Status != XST_SUCCESS) && (Status != XST_NO_DATA)) {
			/*
			 * Disable the MAC Loop back in the PHY and
			 * disable/disconnect the EmacLite Interrupts.
			 */
			EmacLiteDisablePhyLoopBack(EmacLiteInstPtr, PhyAddress);
			XEmacLite_DisableInterrupts(EmacLiteInstPtr);
			EmacLiteDisableIntrSystem(IntcInstancePtr,
							 INTC_EMACLITE_ID);
			return XST_FAILURE;
		}
	}

	/*
	 * Disable the MAC Loop back in the PHY and
	 * disable/disconnect the EmacLite Interrupts.
	 */
	EmacLiteDisablePhyLoopBack(EmacLiteInstPtr, PhyAddress);
	XEmacLite_DisableInterrupts(EmacLiteInstPtr);
	EmacLiteDisableIntrSystem(IntcInstancePtr, INTC_EMACLITE_ID);

	return XST_SUCCESS;
}

/******************************************************************************/
/**
*
* This function sends a frame of given size. This function assumes interrupt
* mode and sends the frame.
*
* @param	XEmacInstancePtr is a pointer to the XEmacLite instance to be
*		worked on.
* @param	PayloadSize is the size of the frame to create. The size only
*		reflects the payload size, it does not include the Ethernet
*		header size (14 bytes) nor the Ethernet CRC size (4 bytes).
* @param	DestAddress if the address of the remote hardware the frame is
*		to be sent to.
*
* @return	XST_SUCCESS if successful, a driver-specific return code if not.
*
* @note		None.
*
******************************************************************************/
static int SendFrame(XEmacLite *XEmacInstancePtr, u32 PayloadSize)
{
	u8 *FramePtr;
	int Index;
	int Status;

	/*
	 * Set the Complete flag to false.
	 */
	TransmitComplete = FALSE;

	/*
	 * Assemble the frame with a destination address and the source address.
	 */
	FramePtr = (u8 *)TxFrame;
	*FramePtr++ = LocalAddress[0];
	*FramePtr++ = LocalAddress[1];
	*FramePtr++ = LocalAddress[2];
	*FramePtr++ = LocalAddress[3];
	*FramePtr++ = LocalAddress[4];
	*FramePtr++ = LocalAddress[5];

	/*
	 * Fill in the source MAC address.
	 */
	*FramePtr++ = LocalAddress[0];
	*FramePtr++ = LocalAddress[1];
	*FramePtr++ = LocalAddress[2];
	*FramePtr++ = LocalAddress[3];
	*FramePtr++ = LocalAddress[4];
	*FramePtr++ = LocalAddress[5];

	/*
	 * Set up the type/length field - be sure its in network order.
	 */
    *((u16 *)FramePtr) = Xil_Htons(PayloadSize);
    FramePtr++;
	FramePtr++;

	/*
	 * Now fill in the data field with known values so we can verify them
	 * on receive.
	 */
	for (Index = 0; Index < PayloadSize; Index++) {
		*FramePtr++ = (u8)Index;
	}

	/*
	 * Now send the frame.
	 */
	Status = XEmacLite_Send(XEmacInstancePtr, (u8 *)TxFrame,
			    PayloadSize + XEL_HEADER_SIZE);

	return  Status;
}

/******************************************************************************/
/**
*
* This function receives a frame of given size. This function assumes interrupt
* mode, receives the frame and verifies its contents.
*
* @param	PayloadSize is the size of the frame to receive.
*		The size only reflects the payload size, it does not include the
*		Ethernet header size (14 bytes) nor the Ethernet CRC size (4
*		bytes).
*
* @return	XST_SUCCESS if successful, a driver-specific return code if not.
*
* @note		None.
*
******************************************************************************/
static int EmacLiteRecvFrame(u32 PayloadSize)
{
	u8 *FramePtr;

	/*
	 * This assumes MAC does not strip padding or CRC.
	 */
	if (RecvFrameLength != 0) {
		int Index;

		/*
		 * Verify length, which should be the payload size.
		 */
		if ((RecvFrameLength - (XEL_HEADER_SIZE + XEL_FCS_SIZE)) !=
				PayloadSize) {
			return XST_LOOPBACK_ERROR;
		}

		/*
		 * Verify the contents of the Received Frame.
		 */
		FramePtr = (u8 *)RxFrame;
		FramePtr += XEL_HEADER_SIZE;	/* Get past the header */

		for (Index = 0; Index < PayloadSize; Index++) {
			if (*FramePtr++ != (u8)Index) {
				return XST_LOOPBACK_ERROR;
			}
		}
	}

	return XST_SUCCESS;
}


/******************************************************************************/
/**
*
* This function handles the receive callback from the EmacLite driver.
*
* @param	CallBackRef is the call back reference provided to the Handler.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void EmacLiteRecvHandler(void *CallBackRef)
{
	XEmacLite *XEmacInstancePtr;

	/*
	 * Convert the argument to something useful.
	 */
	XEmacInstancePtr = (XEmacLite *)CallBackRef;

	/*
	 * Handle the Receive callback.
	 */
	RecvFrameLength = XEmacLite_Recv(XEmacInstancePtr, (u8 *)RxFrame);

}

/******************************************************************************/
/**
*
* This function handles the transmit callback from the EmacLite driver.
*
* @param	CallBackRef is the call back reference provided to the Handler.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void EmacLiteSendHandler(void *CallBackRef)
{
	XEmacLite *XEmacInstancePtr;

	/*
	 * Convert the argument to something useful.
	 */
	XEmacInstancePtr = (XEmacLite *)CallBackRef;

	/*
	 * Handle the Transmit callback.
	 */
	TransmitComplete = TRUE;

}


/*****************************************************************************/
/**
*
* This function setups the interrupt system such that interrupts can occur
* for the EmacLite device. This function is application specific since the
* actual system may or may not have an interrupt controller.  The EmacLite
* could be directly connected to a processor without an interrupt controller.
* The user should modify this function to fit the application.
*
* @param	IntcInstancePtr is a pointer to the instance of the Intc.
* @param	EmacLiteInstPtr is a pointer to the instance of the EmacLite.
* @param	EmacLiteIntrId is the interrupt ID and is typically
*		XPAR_<INTC_instance>_<EMACLITE_instance>_VEC_ID
*		value from xparameters.h
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
static int EmacLiteSetupIntrSystem(XIntc *IntcInstancePtr,
				 XEmacLite *EmacLiteInstPtr, u16 EmacLiteIntrId)
{
	int Status;

#ifndef TESTAPP_GEN
	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
#endif
	/*
	 * Connect a device driver handler that will be called when an interrupt
	 * for the device occurs, the device driver handler performs the
	 * specific interrupt processing for the device.
	 */
	Status = XIntc_Connect(IntcInstancePtr,
				EmacLiteIntrId,
				XEmacLite_InterruptHandler,
				(void *)(EmacLiteInstPtr));
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

#ifndef TESTAPP_GEN
	/*
	 * Start the interrupt controller such that interrupts are enabled for
	 * all devices that cause interrupts, specific real mode so that
	 * the EmacLite can cause interrupts thru the interrupt controller.
	 */
	Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
#endif

	/*
	 * Enable the interrupt for the EmacLite in the Interrupt controller.
	 */
	XIntc_Enable(IntcInstancePtr, EmacLiteIntrId);

#ifndef TESTAPP_GEN

	/*
	 * Initialize the exception table.
	 */
	Xil_ExceptionInit();

	/*
	 * Register the interrupt controller handler with the exception table.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				(Xil_ExceptionHandler) XIntc_InterruptHandler,
				IntcInstancePtr);

	/*
	 * Enable non-critical exceptions.
	 */
	Xil_ExceptionEnable();

#endif /* TESTAPP_GEN */

	return XST_SUCCESS;
}


/*****************************************************************************/
/**
*
* This function disables the interrupts that occur for the EmacLite device.
*
* @param	IntcInstancePtr is the pointer to the instance of the INTC
*		component.
* @param	EmacLiteIntrId is the interrupt ID and is typically
*		XPAR_<INTC_instance>_<EMACLITE_instance>_VEC_ID
*		value from xparameters.h.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void EmacLiteDisableIntrSystem(XIntc *IntcInstancePtr,
					 u16 EmacLiteIntrId)
{
	/*
	 * Disconnect and disable the interrupts for the EmacLite device.
	 */
	XIntc_Disconnect(IntcInstancePtr, EmacLiteIntrId);

}



