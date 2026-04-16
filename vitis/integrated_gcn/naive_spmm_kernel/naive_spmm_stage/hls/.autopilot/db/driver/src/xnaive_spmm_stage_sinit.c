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
#include "xnaive_spmm_stage.h"

extern XNaive_spmm_stage_Config XNaive_spmm_stage_ConfigTable[];

#ifdef SDT
XNaive_spmm_stage_Config *XNaive_spmm_stage_LookupConfig(UINTPTR BaseAddress) {
	XNaive_spmm_stage_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XNaive_spmm_stage_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XNaive_spmm_stage_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XNaive_spmm_stage_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNaive_spmm_stage_Initialize(XNaive_spmm_stage *InstancePtr, UINTPTR BaseAddress) {
	XNaive_spmm_stage_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNaive_spmm_stage_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNaive_spmm_stage_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XNaive_spmm_stage_Config *XNaive_spmm_stage_LookupConfig(u16 DeviceId) {
	XNaive_spmm_stage_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XNAIVE_SPMM_STAGE_NUM_INSTANCES; Index++) {
		if (XNaive_spmm_stage_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XNaive_spmm_stage_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNaive_spmm_stage_Initialize(XNaive_spmm_stage *InstancePtr, u16 DeviceId) {
	XNaive_spmm_stage_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNaive_spmm_stage_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNaive_spmm_stage_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

