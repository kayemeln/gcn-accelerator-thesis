// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of X
//        bit 31~0 - X[31:0] (Read/Write)
// 0x14 : Data signal of X
//        bit 31~0 - X[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of W
//        bit 31~0 - W[31:0] (Read/Write)
// 0x20 : Data signal of W
//        bit 31~0 - W[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of H_temp
//        bit 31~0 - H_temp[31:0] (Read/Write)
// 0x2c : Data signal of H_temp
//        bit 31~0 - H_temp[63:32] (Read/Write)
// 0x30 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_X_DATA      0x10
#define CONTROL_BITS_X_DATA      64
#define CONTROL_ADDR_W_DATA      0x1c
#define CONTROL_BITS_W_DATA      64
#define CONTROL_ADDR_H_TEMP_DATA 0x28
#define CONTROL_BITS_H_TEMP_DATA 64
