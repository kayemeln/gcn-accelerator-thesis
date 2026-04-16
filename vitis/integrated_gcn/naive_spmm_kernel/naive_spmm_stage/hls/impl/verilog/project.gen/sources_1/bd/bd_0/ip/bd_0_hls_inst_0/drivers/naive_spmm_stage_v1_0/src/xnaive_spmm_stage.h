// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XNAIVE_SPMM_STAGE_H
#define XNAIVE_SPMM_STAGE_H

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
#include "xnaive_spmm_stage_hw.h"

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
} XNaive_spmm_stage_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XNaive_spmm_stage;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XNaive_spmm_stage_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XNaive_spmm_stage_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XNaive_spmm_stage_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XNaive_spmm_stage_ReadReg(BaseAddress, RegOffset) \
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
int XNaive_spmm_stage_Initialize(XNaive_spmm_stage *InstancePtr, UINTPTR BaseAddress);
XNaive_spmm_stage_Config* XNaive_spmm_stage_LookupConfig(UINTPTR BaseAddress);
#else
int XNaive_spmm_stage_Initialize(XNaive_spmm_stage *InstancePtr, u16 DeviceId);
XNaive_spmm_stage_Config* XNaive_spmm_stage_LookupConfig(u16 DeviceId);
#endif
int XNaive_spmm_stage_CfgInitialize(XNaive_spmm_stage *InstancePtr, XNaive_spmm_stage_Config *ConfigPtr);
#else
int XNaive_spmm_stage_Initialize(XNaive_spmm_stage *InstancePtr, const char* InstanceName);
int XNaive_spmm_stage_Release(XNaive_spmm_stage *InstancePtr);
#endif


void XNaive_spmm_stage_Set_rowptr(XNaive_spmm_stage *InstancePtr, u64 Data);
u64 XNaive_spmm_stage_Get_rowptr(XNaive_spmm_stage *InstancePtr);
void XNaive_spmm_stage_Set_colind(XNaive_spmm_stage *InstancePtr, u64 Data);
u64 XNaive_spmm_stage_Get_colind(XNaive_spmm_stage *InstancePtr);
void XNaive_spmm_stage_Set_values(XNaive_spmm_stage *InstancePtr, u64 Data);
u64 XNaive_spmm_stage_Get_values(XNaive_spmm_stage *InstancePtr);
void XNaive_spmm_stage_Set_H_temp(XNaive_spmm_stage *InstancePtr, u64 Data);
u64 XNaive_spmm_stage_Get_H_temp(XNaive_spmm_stage *InstancePtr);
void XNaive_spmm_stage_Set_H_out(XNaive_spmm_stage *InstancePtr, u64 Data);
u64 XNaive_spmm_stage_Get_H_out(XNaive_spmm_stage *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
