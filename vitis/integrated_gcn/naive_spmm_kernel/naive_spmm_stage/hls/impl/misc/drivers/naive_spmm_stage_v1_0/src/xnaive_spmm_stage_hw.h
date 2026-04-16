// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of rowptr
//        bit 31~0 - rowptr[31:0] (Read/Write)
// 0x14 : Data signal of rowptr
//        bit 31~0 - rowptr[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of colind
//        bit 31~0 - colind[31:0] (Read/Write)
// 0x20 : Data signal of colind
//        bit 31~0 - colind[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of values
//        bit 31~0 - values[31:0] (Read/Write)
// 0x2c : Data signal of values
//        bit 31~0 - values[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of H_temp
//        bit 31~0 - H_temp[31:0] (Read/Write)
// 0x38 : Data signal of H_temp
//        bit 31~0 - H_temp[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of H_out
//        bit 31~0 - H_out[31:0] (Read/Write)
// 0x44 : Data signal of H_out
//        bit 31~0 - H_out[63:32] (Read/Write)
// 0x48 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XNAIVE_SPMM_STAGE_CONTROL_ADDR_ROWPTR_DATA 0x10
#define XNAIVE_SPMM_STAGE_CONTROL_BITS_ROWPTR_DATA 64
#define XNAIVE_SPMM_STAGE_CONTROL_ADDR_COLIND_DATA 0x1c
#define XNAIVE_SPMM_STAGE_CONTROL_BITS_COLIND_DATA 64
#define XNAIVE_SPMM_STAGE_CONTROL_ADDR_VALUES_DATA 0x28
#define XNAIVE_SPMM_STAGE_CONTROL_BITS_VALUES_DATA 64
#define XNAIVE_SPMM_STAGE_CONTROL_ADDR_H_TEMP_DATA 0x34
#define XNAIVE_SPMM_STAGE_CONTROL_BITS_H_TEMP_DATA 64
#define XNAIVE_SPMM_STAGE_CONTROL_ADDR_H_OUT_DATA  0x40
#define XNAIVE_SPMM_STAGE_CONTROL_BITS_H_OUT_DATA  64

