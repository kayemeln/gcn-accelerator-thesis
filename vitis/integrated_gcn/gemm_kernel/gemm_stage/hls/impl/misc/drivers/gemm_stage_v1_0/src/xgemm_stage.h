// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XGEMM_STAGE_H
#define XGEMM_STAGE_H

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
#include "xgemm_stage_hw.h"

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
} XGemm_stage_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XGemm_stage;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGemm_stage_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGemm_stage_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGemm_stage_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGemm_stage_ReadReg(BaseAddress, RegOffset) \
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
int XGemm_stage_Initialize(XGemm_stage *InstancePtr, UINTPTR BaseAddress);
XGemm_stage_Config* XGemm_stage_LookupConfig(UINTPTR BaseAddress);
#else
int XGemm_stage_Initialize(XGemm_stage *InstancePtr, u16 DeviceId);
XGemm_stage_Config* XGemm_stage_LookupConfig(u16 DeviceId);
#endif
int XGemm_stage_CfgInitialize(XGemm_stage *InstancePtr, XGemm_stage_Config *ConfigPtr);
#else
int XGemm_stage_Initialize(XGemm_stage *InstancePtr, const char* InstanceName);
int XGemm_stage_Release(XGemm_stage *InstancePtr);
#endif


void XGemm_stage_Set_X(XGemm_stage *InstancePtr, u64 Data);
u64 XGemm_stage_Get_X(XGemm_stage *InstancePtr);
void XGemm_stage_Set_W(XGemm_stage *InstancePtr, u64 Data);
u64 XGemm_stage_Get_W(XGemm_stage *InstancePtr);
void XGemm_stage_Set_H_temp(XGemm_stage *InstancePtr, u64 Data);
u64 XGemm_stage_Get_H_temp(XGemm_stage *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
