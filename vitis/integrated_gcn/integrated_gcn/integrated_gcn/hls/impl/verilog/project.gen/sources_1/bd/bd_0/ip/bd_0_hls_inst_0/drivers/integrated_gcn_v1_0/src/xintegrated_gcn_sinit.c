// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xintegrated_gcn.h"

extern XIntegrated_gcn_Config XIntegrated_gcn_ConfigTable[];

#ifdef SDT
XIntegrated_gcn_Config *XIntegrated_gcn_LookupConfig(UINTPTR BaseAddress) {
	XIntegrated_gcn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XIntegrated_gcn_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XIntegrated_gcn_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XIntegrated_gcn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XIntegrated_gcn_Initialize(XIntegrated_gcn *InstancePtr, UINTPTR BaseAddress) {
	XIntegrated_gcn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XIntegrated_gcn_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XIntegrated_gcn_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XIntegrated_gcn_Config *XIntegrated_gcn_LookupConfig(u16 DeviceId) {
	XIntegrated_gcn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XINTEGRATED_GCN_NUM_INSTANCES; Index++) {
		if (XIntegrated_gcn_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XIntegrated_gcn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XIntegrated_gcn_Initialize(XIntegrated_gcn *InstancePtr, u16 DeviceId) {
	XIntegrated_gcn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XIntegrated_gcn_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XIntegrated_gcn_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

