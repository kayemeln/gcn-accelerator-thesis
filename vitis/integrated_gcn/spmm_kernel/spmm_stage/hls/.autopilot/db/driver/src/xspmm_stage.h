// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSPMM_STAGE_H
#define XSPMM_STAGE_H

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
#include "xspmm_stage_hw.h"

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
} XSpmm_stage_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSpmm_stage;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSpmm_stage_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSpmm_stage_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSpmm_stage_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSpmm_stage_ReadReg(BaseAddress, RegOffset) \
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
int XSpmm_stage_Initialize(XSpmm_stage *InstancePtr, UINTPTR BaseAddress);
XSpmm_stage_Config* XSpmm_stage_LookupConfig(UINTPTR BaseAddress);
#else
int XSpmm_stage_Initialize(XSpmm_stage *InstancePtr, u16 DeviceId);
XSpmm_stage_Config* XSpmm_stage_LookupConfig(u16 DeviceId);
#endif
int XSpmm_stage_CfgInitialize(XSpmm_stage *InstancePtr, XSpmm_stage_Config *ConfigPtr);
#else
int XSpmm_stage_Initialize(XSpmm_stage *InstancePtr, const char* InstanceName);
int XSpmm_stage_Release(XSpmm_stage *InstancePtr);
#endif


void XSpmm_stage_Set_row_length(XSpmm_stage *InstancePtr, u64 Data);
u64 XSpmm_stage_Get_row_length(XSpmm_stage *InstancePtr);
void XSpmm_stage_Set_colind(XSpmm_stage *InstancePtr, u64 Data);
u64 XSpmm_stage_Get_colind(XSpmm_stage *InstancePtr);
void XSpmm_stage_Set_values(XSpmm_stage *InstancePtr, u64 Data);
u64 XSpmm_stage_Get_values(XSpmm_stage *InstancePtr);
void XSpmm_stage_Set_H_temp(XSpmm_stage *InstancePtr, u64 Data);
u64 XSpmm_stage_Get_H_temp(XSpmm_stage *InstancePtr);
void XSpmm_stage_Set_H_out(XSpmm_stage *InstancePtr, u64 Data);
u64 XSpmm_stage_Get_H_out(XSpmm_stage *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
