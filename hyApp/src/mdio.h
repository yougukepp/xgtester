#ifndef __MDIO_H__
#define __MDIO_H__

#include "HYDataType.h"

#include "xemaclite.h"
#include "xemaclite_l.h"


int ael2005_read (XEmacLite *InstancePtr, u32 PhyAddress, u32 PhyDev, u16 address, u16 *data);
int ael2005_write(XEmacLite *InstancePtr, u32 PhyAddress, u32 PhyDev, u16 address, u16 data);
int hello_mdio (void);


#endif
