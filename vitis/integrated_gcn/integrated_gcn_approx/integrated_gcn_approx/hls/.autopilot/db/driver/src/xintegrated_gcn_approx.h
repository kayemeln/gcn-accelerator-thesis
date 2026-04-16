// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XINTEGRATED_GCN_APPROX_H
#define XINTEGRATED_GCN_APPROX_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xintegrated_gcn_approx_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XIntegrated_gcn_approx_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XIntegrated_gcn_approx;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XIntegrated_gcn_approx_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XIntegrated_gcn_approx_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XIntegrated_gcn_approx_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XIntegrated_gcn_approx_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XIntegrated_gcn_approx_Initialize(XIntegrated_gcn_approx *InstancePtr, UINTPTR BaseAddress);
XIntegrated_gcn_approx_Config* XIntegrated_gcn_approx_LookupConfig(UINTPTR BaseAddress);
#else
int XIntegrated_gcn_approx_Initialize(XIntegrated_gcn_approx *InstancePtr, u16 DeviceId);
XIntegrated_gcn_approx_Config* XIntegrated_gcn_approx_LookupConfig(u16 DeviceId);
#endif
int XIntegrated_gcn_approx_CfgInitialize(XIntegrated_gcn_approx *InstancePtr, XIntegrated_gcn_approx_Config *ConfigPtr);
#else
int XIntegrated_gcn_approx_Initialize(XIntegrated_gcn_approx *InstancePtr, const char* InstanceName);
int XIntegrated_gcn_approx_Release(XIntegrated_gcn_approx *InstancePtr);
#endif


void XIntegrated_gcn_approx_Set_X(XIntegrated_gcn_approx *InstancePtr, u64 Data);
u64 XIntegrated_gcn_approx_Get_X(XIntegrated_gcn_approx *InstancePtr);
void XIntegrated_gcn_approx_Set_W(XIntegrated_gcn_approx *InstancePtr, u64 Data);
u64 XIntegrated_gcn_approx_Get_W(XIntegrated_gcn_approx *InstancePtr);
void XIntegrated_gcn_approx_Set_H_temp(XIntegrated_gcn_approx *InstancePtr, u64 Data);
u64 XIntegrated_gcn_approx_Get_H_temp(XIntegrated_gcn_approx *InstancePtr);
void XIntegrated_gcn_approx_Set_row_length(XIntegrated_gcn_approx *InstancePtr, u64 Data);
u64 XIntegrated_gcn_approx_Get_row_length(XIntegrated_gcn_approx *InstancePtr);
void XIntegrated_gcn_approx_Set_colind(XIntegrated_gcn_approx *InstancePtr, u64 Data);
u64 XIntegrated_gcn_approx_Get_colind(XIntegrated_gcn_approx *InstancePtr);
void XIntegrated_gcn_approx_Set_values(XIntegrated_gcn_approx *InstancePtr, u64 Data);
u64 XIntegrated_gcn_approx_Get_values(XIntegrated_gcn_approx *InstancePtr);
void XIntegrated_gcn_approx_Set_H_out(XIntegrated_gcn_approx *InstancePtr, u64 Data);
u64 XIntegrated_gcn_approx_Get_H_out(XIntegrated_gcn_approx *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
