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
#include "xintegrated_gcn_approx.h"

extern XIntegrated_gcn_approx_Config XIntegrated_gcn_approx_ConfigTable[];

#ifdef SDT
XIntegrated_gcn_approx_Config *XIntegrated_gcn_approx_LookupConfig(UINTPTR BaseAddress) {
	XIntegrated_gcn_approx_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XIntegrated_gcn_approx_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XIntegrated_gcn_approx_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XIntegrated_gcn_approx_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XIntegrated_gcn_approx_Initialize(XIntegrated_gcn_approx *InstancePtr, UINTPTR BaseAddress) {
	XIntegrated_gcn_approx_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XIntegrated_gcn_approx_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XIntegrated_gcn_approx_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XIntegrated_gcn_approx_Config *XIntegrated_gcn_approx_LookupConfig(u16 DeviceId) {
	XIntegrated_gcn_approx_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XINTEGRATED_GCN_APPROX_NUM_INSTANCES; Index++) {
		if (XIntegrated_gcn_approx_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XIntegrated_gcn_approx_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XIntegrated_gcn_approx_Initialize(XIntegrated_gcn_approx *InstancePtr, u16 DeviceId) {
	XIntegrated_gcn_approx_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XIntegrated_gcn_approx_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XIntegrated_gcn_approx_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

