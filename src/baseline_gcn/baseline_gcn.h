// baseline_gcn.h
#include "ap_fixed.h"
typedef ap_fixed<16, 6> DTYPE;

#define NODES    2708
// Layer 1
//#define F_IN     1433
//#define F_OUT    64

// Layer 2
#define F_IN     64
#define F_OUT    7

void baseline_gcn(
    DTYPE* A,       // [NODES x NODES]
    DTYPE* X,       // [NODES x F_IN]
    DTYPE* W,       // [F_IN  x F_OUT]
    DTYPE* H_temp,  // [NODES x F_IN]
    DTYPE* H_out    // [NODES x F_OUT]
);
