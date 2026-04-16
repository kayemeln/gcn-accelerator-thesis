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
#include "xgemm_stage.h"

extern XGemm_stage_Config XGemm_stage_ConfigTable[];

#ifdef SDT
XGemm_stage_Config *XGemm_stage_LookupConfig(UINTPTR BaseAddress) {
	XGemm_stage_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XGemm_stage_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XGemm_stage_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XGemm_stage_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGemm_stage_Initialize(XGemm_stage *InstancePtr, UINTPTR BaseAddress) {
	XGemm_stage_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGemm_stage_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGemm_stage_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XGemm_stage_Config *XGemm_stage_LookupConfig(u16 DeviceId) {
	XGemm_stage_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGEMM_STAGE_NUM_INSTANCES; Index++) {
		if (XGemm_stage_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGemm_stage_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGemm_stage_Initialize(XGemm_stage *InstancePtr, u16 DeviceId) {
	XGemm_stage_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGemm_stage_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGemm_stage_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

