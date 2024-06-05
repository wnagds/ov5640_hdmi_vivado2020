// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcontrastadj.h"

extern XContrastadj_Config XContrastadj_ConfigTable[];

XContrastadj_Config *XContrastadj_LookupConfig(u16 DeviceId) {
	XContrastadj_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCONTRASTADJ_NUM_INSTANCES; Index++) {
		if (XContrastadj_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XContrastadj_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XContrastadj_Initialize(XContrastadj *InstancePtr, u16 DeviceId) {
	XContrastadj_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XContrastadj_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XContrastadj_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

