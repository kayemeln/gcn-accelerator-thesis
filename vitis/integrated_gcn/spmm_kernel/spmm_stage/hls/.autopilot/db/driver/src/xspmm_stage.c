// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xspmm_stage.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSpmm_stage_CfgInitialize(XSpmm_stage *InstancePtr, XSpmm_stage_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSpmm_stage_Set_row_length(XSpmm_stage *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_stage_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_ROW_LENGTH_DATA, (u32)(Data));
    XSpmm_stage_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_ROW_LENGTH_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_stage_Get_row_length(XSpmm_stage *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_stage_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_ROW_LENGTH_DATA);
    Data += (u64)XSpmm_stage_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_ROW_LENGTH_DATA + 4) << 32;
    return Data;
}

void XSpmm_stage_Set_colind(XSpmm_stage *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_stage_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_COLIND_DATA, (u32)(Data));
    XSpmm_stage_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_COLIND_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_stage_Get_colind(XSpmm_stage *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_stage_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_COLIND_DATA);
    Data += (u64)XSpmm_stage_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_COLIND_DATA + 4) << 32;
    return Data;
}

void XSpmm_stage_Set_values(XSpmm_stage *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_stage_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_VALUES_DATA, (u32)(Data));
    XSpmm_stage_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_VALUES_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_stage_Get_values(XSpmm_stage *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_stage_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_VALUES_DATA);
    Data += (u64)XSpmm_stage_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_VALUES_DATA + 4) << 32;
    return Data;
}

void XSpmm_stage_Set_H_temp(XSpmm_stage *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_stage_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_H_TEMP_DATA, (u32)(Data));
    XSpmm_stage_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_H_TEMP_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_stage_Get_H_temp(XSpmm_stage *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_stage_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_H_TEMP_DATA);
    Data += (u64)XSpmm_stage_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_H_TEMP_DATA + 4) << 32;
    return Data;
}

void XSpmm_stage_Set_H_out(XSpmm_stage *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_stage_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_H_OUT_DATA, (u32)(Data));
    XSpmm_stage_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_H_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_stage_Get_H_out(XSpmm_stage *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_stage_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_H_OUT_DATA);
    Data += (u64)XSpmm_stage_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_STAGE_CONTROL_ADDR_H_OUT_DATA + 4) << 32;
    return Data;
}

