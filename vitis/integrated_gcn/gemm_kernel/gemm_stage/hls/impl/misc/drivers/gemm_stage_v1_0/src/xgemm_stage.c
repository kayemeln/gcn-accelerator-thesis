// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xgemm_stage.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGemm_stage_CfgInitialize(XGemm_stage *InstancePtr, XGemm_stage_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XGemm_stage_Set_X(XGemm_stage *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_stage_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_STAGE_CONTROL_ADDR_X_DATA, (u32)(Data));
    XGemm_stage_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_STAGE_CONTROL_ADDR_X_DATA + 4, (u32)(Data >> 32));
}

u64 XGemm_stage_Get_X(XGemm_stage *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_stage_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_STAGE_CONTROL_ADDR_X_DATA);
    Data += (u64)XGemm_stage_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_STAGE_CONTROL_ADDR_X_DATA + 4) << 32;
    return Data;
}

void XGemm_stage_Set_W(XGemm_stage *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_stage_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_STAGE_CONTROL_ADDR_W_DATA, (u32)(Data));
    XGemm_stage_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_STAGE_CONTROL_ADDR_W_DATA + 4, (u32)(Data >> 32));
}

u64 XGemm_stage_Get_W(XGemm_stage *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_stage_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_STAGE_CONTROL_ADDR_W_DATA);
    Data += (u64)XGemm_stage_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_STAGE_CONTROL_ADDR_W_DATA + 4) << 32;
    return Data;
}

void XGemm_stage_Set_H_temp(XGemm_stage *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_stage_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_STAGE_CONTROL_ADDR_H_TEMP_DATA, (u32)(Data));
    XGemm_stage_WriteReg(InstancePtr->Control_BaseAddress, XGEMM_STAGE_CONTROL_ADDR_H_TEMP_DATA + 4, (u32)(Data >> 32));
}

u64 XGemm_stage_Get_H_temp(XGemm_stage *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_stage_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_STAGE_CONTROL_ADDR_H_TEMP_DATA);
    Data += (u64)XGemm_stage_ReadReg(InstancePtr->Control_BaseAddress, XGEMM_STAGE_CONTROL_ADDR_H_TEMP_DATA + 4) << 32;
    return Data;
}

