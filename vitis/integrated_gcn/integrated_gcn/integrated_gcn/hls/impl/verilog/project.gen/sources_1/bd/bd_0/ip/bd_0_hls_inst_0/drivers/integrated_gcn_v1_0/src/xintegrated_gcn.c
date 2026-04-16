// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xintegrated_gcn.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XIntegrated_gcn_CfgInitialize(XIntegrated_gcn *InstancePtr, XIntegrated_gcn_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XIntegrated_gcn_Set_X(XIntegrated_gcn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_X_DATA, (u32)(Data));
    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_X_DATA + 4, (u32)(Data >> 32));
}

u64 XIntegrated_gcn_Get_X(XIntegrated_gcn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_X_DATA);
    Data += (u64)XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_X_DATA + 4) << 32;
    return Data;
}

void XIntegrated_gcn_Set_W(XIntegrated_gcn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_W_DATA, (u32)(Data));
    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_W_DATA + 4, (u32)(Data >> 32));
}

u64 XIntegrated_gcn_Get_W(XIntegrated_gcn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_W_DATA);
    Data += (u64)XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_W_DATA + 4) << 32;
    return Data;
}

void XIntegrated_gcn_Set_H_temp(XIntegrated_gcn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_H_TEMP_DATA, (u32)(Data));
    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_H_TEMP_DATA + 4, (u32)(Data >> 32));
}

u64 XIntegrated_gcn_Get_H_temp(XIntegrated_gcn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_H_TEMP_DATA);
    Data += (u64)XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_H_TEMP_DATA + 4) << 32;
    return Data;
}

void XIntegrated_gcn_Set_row_length(XIntegrated_gcn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_ROW_LENGTH_DATA, (u32)(Data));
    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_ROW_LENGTH_DATA + 4, (u32)(Data >> 32));
}

u64 XIntegrated_gcn_Get_row_length(XIntegrated_gcn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_ROW_LENGTH_DATA);
    Data += (u64)XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_ROW_LENGTH_DATA + 4) << 32;
    return Data;
}

void XIntegrated_gcn_Set_colind(XIntegrated_gcn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_COLIND_DATA, (u32)(Data));
    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_COLIND_DATA + 4, (u32)(Data >> 32));
}

u64 XIntegrated_gcn_Get_colind(XIntegrated_gcn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_COLIND_DATA);
    Data += (u64)XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_COLIND_DATA + 4) << 32;
    return Data;
}

void XIntegrated_gcn_Set_values(XIntegrated_gcn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_VALUES_DATA, (u32)(Data));
    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_VALUES_DATA + 4, (u32)(Data >> 32));
}

u64 XIntegrated_gcn_Get_values(XIntegrated_gcn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_VALUES_DATA);
    Data += (u64)XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_VALUES_DATA + 4) << 32;
    return Data;
}

void XIntegrated_gcn_Set_H_out(XIntegrated_gcn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_H_OUT_DATA, (u32)(Data));
    XIntegrated_gcn_WriteReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_H_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XIntegrated_gcn_Get_H_out(XIntegrated_gcn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_H_OUT_DATA);
    Data += (u64)XIntegrated_gcn_ReadReg(InstancePtr->Control_BaseAddress, XINTEGRATED_GCN_CONTROL_ADDR_H_OUT_DATA + 4) << 32;
    return Data;
}

