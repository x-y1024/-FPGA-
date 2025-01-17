// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xbpnn.h"

extern XBpnn_Config XBpnn_ConfigTable[];

XBpnn_Config *XBpnn_LookupConfig(u16 DeviceId) {
	XBpnn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XBPNN_NUM_INSTANCES; Index++) {
		if (XBpnn_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XBpnn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBpnn_Initialize(XBpnn *InstancePtr, u16 DeviceId) {
	XBpnn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBpnn_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBpnn_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

