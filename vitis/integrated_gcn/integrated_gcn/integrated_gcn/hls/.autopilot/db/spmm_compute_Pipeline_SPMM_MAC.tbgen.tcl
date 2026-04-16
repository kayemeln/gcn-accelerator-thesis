set moduleName spmm_compute_Pipeline_SPMM_MAC
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 22
set C_modelName {spmm_compute_Pipeline_SPMM_MAC}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict acc_31 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_30 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_29 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_28 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_27 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_26 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_25 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_24 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_23 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_22 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_21 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_20 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_19 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_18 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_17 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_16 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_15 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_14 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_13 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_12 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_11 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_10 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_9 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_8 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_7 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_6 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_5 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_4 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_3 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_2 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc_1 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict acc { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_1 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_2 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_3 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_4 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_5 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_6 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_7 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_8 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_9 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_10 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_11 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_12 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_13 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_14 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_15 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_16 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_17 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_18 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_19 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_20 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_21 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_22 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_23 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_24 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_25 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_26 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_27 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_28 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_29 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_30 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict h_buf_31 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ acc_31 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_30 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_29 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_28 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_27 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_26 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_25 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_24 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_23 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_22 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_21 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_20 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_19 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_18 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_17 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_16 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_15 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_14 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_13 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_12 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_11 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_10 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_9 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_8 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_7 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_6 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_5 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_4 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_3 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_2 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc_1 int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ acc int 32 regular {array 2 { 0 1 } 1 1 }  }
	{ h_buf int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ sext_ln265 int 26 regular  }
	{ h_buf_1 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_2 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_3 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_4 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_5 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_6 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_7 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_8 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_9 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_10 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_11 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_12 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_13 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_14 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_15 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_16 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_17 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_18 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_19 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_20 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_21 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_22 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_23 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_24 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_25 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_26 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_27 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_28 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_29 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_30 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ h_buf_31 int 16 regular {array 2 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "acc_31", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_30", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_29", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_28", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_27", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_26", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_25", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_24", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_23", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_22", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_21", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_20", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "h_buf", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln265", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_16", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_17", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_18", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_19", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_20", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_21", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_22", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_23", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_24", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_25", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_26", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_27", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_28", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_29", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_30", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_31", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 327
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ acc_31_address0 sc_out sc_lv 1 signal 0 } 
	{ acc_31_ce0 sc_out sc_logic 1 signal 0 } 
	{ acc_31_we0 sc_out sc_logic 1 signal 0 } 
	{ acc_31_d0 sc_out sc_lv 32 signal 0 } 
	{ acc_31_address1 sc_out sc_lv 1 signal 0 } 
	{ acc_31_ce1 sc_out sc_logic 1 signal 0 } 
	{ acc_31_q1 sc_in sc_lv 32 signal 0 } 
	{ acc_30_address0 sc_out sc_lv 1 signal 1 } 
	{ acc_30_ce0 sc_out sc_logic 1 signal 1 } 
	{ acc_30_we0 sc_out sc_logic 1 signal 1 } 
	{ acc_30_d0 sc_out sc_lv 32 signal 1 } 
	{ acc_30_address1 sc_out sc_lv 1 signal 1 } 
	{ acc_30_ce1 sc_out sc_logic 1 signal 1 } 
	{ acc_30_q1 sc_in sc_lv 32 signal 1 } 
	{ acc_29_address0 sc_out sc_lv 1 signal 2 } 
	{ acc_29_ce0 sc_out sc_logic 1 signal 2 } 
	{ acc_29_we0 sc_out sc_logic 1 signal 2 } 
	{ acc_29_d0 sc_out sc_lv 32 signal 2 } 
	{ acc_29_address1 sc_out sc_lv 1 signal 2 } 
	{ acc_29_ce1 sc_out sc_logic 1 signal 2 } 
	{ acc_29_q1 sc_in sc_lv 32 signal 2 } 
	{ acc_28_address0 sc_out sc_lv 1 signal 3 } 
	{ acc_28_ce0 sc_out sc_logic 1 signal 3 } 
	{ acc_28_we0 sc_out sc_logic 1 signal 3 } 
	{ acc_28_d0 sc_out sc_lv 32 signal 3 } 
	{ acc_28_address1 sc_out sc_lv 1 signal 3 } 
	{ acc_28_ce1 sc_out sc_logic 1 signal 3 } 
	{ acc_28_q1 sc_in sc_lv 32 signal 3 } 
	{ acc_27_address0 sc_out sc_lv 1 signal 4 } 
	{ acc_27_ce0 sc_out sc_logic 1 signal 4 } 
	{ acc_27_we0 sc_out sc_logic 1 signal 4 } 
	{ acc_27_d0 sc_out sc_lv 32 signal 4 } 
	{ acc_27_address1 sc_out sc_lv 1 signal 4 } 
	{ acc_27_ce1 sc_out sc_logic 1 signal 4 } 
	{ acc_27_q1 sc_in sc_lv 32 signal 4 } 
	{ acc_26_address0 sc_out sc_lv 1 signal 5 } 
	{ acc_26_ce0 sc_out sc_logic 1 signal 5 } 
	{ acc_26_we0 sc_out sc_logic 1 signal 5 } 
	{ acc_26_d0 sc_out sc_lv 32 signal 5 } 
	{ acc_26_address1 sc_out sc_lv 1 signal 5 } 
	{ acc_26_ce1 sc_out sc_logic 1 signal 5 } 
	{ acc_26_q1 sc_in sc_lv 32 signal 5 } 
	{ acc_25_address0 sc_out sc_lv 1 signal 6 } 
	{ acc_25_ce0 sc_out sc_logic 1 signal 6 } 
	{ acc_25_we0 sc_out sc_logic 1 signal 6 } 
	{ acc_25_d0 sc_out sc_lv 32 signal 6 } 
	{ acc_25_address1 sc_out sc_lv 1 signal 6 } 
	{ acc_25_ce1 sc_out sc_logic 1 signal 6 } 
	{ acc_25_q1 sc_in sc_lv 32 signal 6 } 
	{ acc_24_address0 sc_out sc_lv 1 signal 7 } 
	{ acc_24_ce0 sc_out sc_logic 1 signal 7 } 
	{ acc_24_we0 sc_out sc_logic 1 signal 7 } 
	{ acc_24_d0 sc_out sc_lv 32 signal 7 } 
	{ acc_24_address1 sc_out sc_lv 1 signal 7 } 
	{ acc_24_ce1 sc_out sc_logic 1 signal 7 } 
	{ acc_24_q1 sc_in sc_lv 32 signal 7 } 
	{ acc_23_address0 sc_out sc_lv 1 signal 8 } 
	{ acc_23_ce0 sc_out sc_logic 1 signal 8 } 
	{ acc_23_we0 sc_out sc_logic 1 signal 8 } 
	{ acc_23_d0 sc_out sc_lv 32 signal 8 } 
	{ acc_23_address1 sc_out sc_lv 1 signal 8 } 
	{ acc_23_ce1 sc_out sc_logic 1 signal 8 } 
	{ acc_23_q1 sc_in sc_lv 32 signal 8 } 
	{ acc_22_address0 sc_out sc_lv 1 signal 9 } 
	{ acc_22_ce0 sc_out sc_logic 1 signal 9 } 
	{ acc_22_we0 sc_out sc_logic 1 signal 9 } 
	{ acc_22_d0 sc_out sc_lv 32 signal 9 } 
	{ acc_22_address1 sc_out sc_lv 1 signal 9 } 
	{ acc_22_ce1 sc_out sc_logic 1 signal 9 } 
	{ acc_22_q1 sc_in sc_lv 32 signal 9 } 
	{ acc_21_address0 sc_out sc_lv 1 signal 10 } 
	{ acc_21_ce0 sc_out sc_logic 1 signal 10 } 
	{ acc_21_we0 sc_out sc_logic 1 signal 10 } 
	{ acc_21_d0 sc_out sc_lv 32 signal 10 } 
	{ acc_21_address1 sc_out sc_lv 1 signal 10 } 
	{ acc_21_ce1 sc_out sc_logic 1 signal 10 } 
	{ acc_21_q1 sc_in sc_lv 32 signal 10 } 
	{ acc_20_address0 sc_out sc_lv 1 signal 11 } 
	{ acc_20_ce0 sc_out sc_logic 1 signal 11 } 
	{ acc_20_we0 sc_out sc_logic 1 signal 11 } 
	{ acc_20_d0 sc_out sc_lv 32 signal 11 } 
	{ acc_20_address1 sc_out sc_lv 1 signal 11 } 
	{ acc_20_ce1 sc_out sc_logic 1 signal 11 } 
	{ acc_20_q1 sc_in sc_lv 32 signal 11 } 
	{ acc_19_address0 sc_out sc_lv 1 signal 12 } 
	{ acc_19_ce0 sc_out sc_logic 1 signal 12 } 
	{ acc_19_we0 sc_out sc_logic 1 signal 12 } 
	{ acc_19_d0 sc_out sc_lv 32 signal 12 } 
	{ acc_19_address1 sc_out sc_lv 1 signal 12 } 
	{ acc_19_ce1 sc_out sc_logic 1 signal 12 } 
	{ acc_19_q1 sc_in sc_lv 32 signal 12 } 
	{ acc_18_address0 sc_out sc_lv 1 signal 13 } 
	{ acc_18_ce0 sc_out sc_logic 1 signal 13 } 
	{ acc_18_we0 sc_out sc_logic 1 signal 13 } 
	{ acc_18_d0 sc_out sc_lv 32 signal 13 } 
	{ acc_18_address1 sc_out sc_lv 1 signal 13 } 
	{ acc_18_ce1 sc_out sc_logic 1 signal 13 } 
	{ acc_18_q1 sc_in sc_lv 32 signal 13 } 
	{ acc_17_address0 sc_out sc_lv 1 signal 14 } 
	{ acc_17_ce0 sc_out sc_logic 1 signal 14 } 
	{ acc_17_we0 sc_out sc_logic 1 signal 14 } 
	{ acc_17_d0 sc_out sc_lv 32 signal 14 } 
	{ acc_17_address1 sc_out sc_lv 1 signal 14 } 
	{ acc_17_ce1 sc_out sc_logic 1 signal 14 } 
	{ acc_17_q1 sc_in sc_lv 32 signal 14 } 
	{ acc_16_address0 sc_out sc_lv 1 signal 15 } 
	{ acc_16_ce0 sc_out sc_logic 1 signal 15 } 
	{ acc_16_we0 sc_out sc_logic 1 signal 15 } 
	{ acc_16_d0 sc_out sc_lv 32 signal 15 } 
	{ acc_16_address1 sc_out sc_lv 1 signal 15 } 
	{ acc_16_ce1 sc_out sc_logic 1 signal 15 } 
	{ acc_16_q1 sc_in sc_lv 32 signal 15 } 
	{ acc_15_address0 sc_out sc_lv 1 signal 16 } 
	{ acc_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ acc_15_we0 sc_out sc_logic 1 signal 16 } 
	{ acc_15_d0 sc_out sc_lv 32 signal 16 } 
	{ acc_15_address1 sc_out sc_lv 1 signal 16 } 
	{ acc_15_ce1 sc_out sc_logic 1 signal 16 } 
	{ acc_15_q1 sc_in sc_lv 32 signal 16 } 
	{ acc_14_address0 sc_out sc_lv 1 signal 17 } 
	{ acc_14_ce0 sc_out sc_logic 1 signal 17 } 
	{ acc_14_we0 sc_out sc_logic 1 signal 17 } 
	{ acc_14_d0 sc_out sc_lv 32 signal 17 } 
	{ acc_14_address1 sc_out sc_lv 1 signal 17 } 
	{ acc_14_ce1 sc_out sc_logic 1 signal 17 } 
	{ acc_14_q1 sc_in sc_lv 32 signal 17 } 
	{ acc_13_address0 sc_out sc_lv 1 signal 18 } 
	{ acc_13_ce0 sc_out sc_logic 1 signal 18 } 
	{ acc_13_we0 sc_out sc_logic 1 signal 18 } 
	{ acc_13_d0 sc_out sc_lv 32 signal 18 } 
	{ acc_13_address1 sc_out sc_lv 1 signal 18 } 
	{ acc_13_ce1 sc_out sc_logic 1 signal 18 } 
	{ acc_13_q1 sc_in sc_lv 32 signal 18 } 
	{ acc_12_address0 sc_out sc_lv 1 signal 19 } 
	{ acc_12_ce0 sc_out sc_logic 1 signal 19 } 
	{ acc_12_we0 sc_out sc_logic 1 signal 19 } 
	{ acc_12_d0 sc_out sc_lv 32 signal 19 } 
	{ acc_12_address1 sc_out sc_lv 1 signal 19 } 
	{ acc_12_ce1 sc_out sc_logic 1 signal 19 } 
	{ acc_12_q1 sc_in sc_lv 32 signal 19 } 
	{ acc_11_address0 sc_out sc_lv 1 signal 20 } 
	{ acc_11_ce0 sc_out sc_logic 1 signal 20 } 
	{ acc_11_we0 sc_out sc_logic 1 signal 20 } 
	{ acc_11_d0 sc_out sc_lv 32 signal 20 } 
	{ acc_11_address1 sc_out sc_lv 1 signal 20 } 
	{ acc_11_ce1 sc_out sc_logic 1 signal 20 } 
	{ acc_11_q1 sc_in sc_lv 32 signal 20 } 
	{ acc_10_address0 sc_out sc_lv 1 signal 21 } 
	{ acc_10_ce0 sc_out sc_logic 1 signal 21 } 
	{ acc_10_we0 sc_out sc_logic 1 signal 21 } 
	{ acc_10_d0 sc_out sc_lv 32 signal 21 } 
	{ acc_10_address1 sc_out sc_lv 1 signal 21 } 
	{ acc_10_ce1 sc_out sc_logic 1 signal 21 } 
	{ acc_10_q1 sc_in sc_lv 32 signal 21 } 
	{ acc_9_address0 sc_out sc_lv 1 signal 22 } 
	{ acc_9_ce0 sc_out sc_logic 1 signal 22 } 
	{ acc_9_we0 sc_out sc_logic 1 signal 22 } 
	{ acc_9_d0 sc_out sc_lv 32 signal 22 } 
	{ acc_9_address1 sc_out sc_lv 1 signal 22 } 
	{ acc_9_ce1 sc_out sc_logic 1 signal 22 } 
	{ acc_9_q1 sc_in sc_lv 32 signal 22 } 
	{ acc_8_address0 sc_out sc_lv 1 signal 23 } 
	{ acc_8_ce0 sc_out sc_logic 1 signal 23 } 
	{ acc_8_we0 sc_out sc_logic 1 signal 23 } 
	{ acc_8_d0 sc_out sc_lv 32 signal 23 } 
	{ acc_8_address1 sc_out sc_lv 1 signal 23 } 
	{ acc_8_ce1 sc_out sc_logic 1 signal 23 } 
	{ acc_8_q1 sc_in sc_lv 32 signal 23 } 
	{ acc_7_address0 sc_out sc_lv 1 signal 24 } 
	{ acc_7_ce0 sc_out sc_logic 1 signal 24 } 
	{ acc_7_we0 sc_out sc_logic 1 signal 24 } 
	{ acc_7_d0 sc_out sc_lv 32 signal 24 } 
	{ acc_7_address1 sc_out sc_lv 1 signal 24 } 
	{ acc_7_ce1 sc_out sc_logic 1 signal 24 } 
	{ acc_7_q1 sc_in sc_lv 32 signal 24 } 
	{ acc_6_address0 sc_out sc_lv 1 signal 25 } 
	{ acc_6_ce0 sc_out sc_logic 1 signal 25 } 
	{ acc_6_we0 sc_out sc_logic 1 signal 25 } 
	{ acc_6_d0 sc_out sc_lv 32 signal 25 } 
	{ acc_6_address1 sc_out sc_lv 1 signal 25 } 
	{ acc_6_ce1 sc_out sc_logic 1 signal 25 } 
	{ acc_6_q1 sc_in sc_lv 32 signal 25 } 
	{ acc_5_address0 sc_out sc_lv 1 signal 26 } 
	{ acc_5_ce0 sc_out sc_logic 1 signal 26 } 
	{ acc_5_we0 sc_out sc_logic 1 signal 26 } 
	{ acc_5_d0 sc_out sc_lv 32 signal 26 } 
	{ acc_5_address1 sc_out sc_lv 1 signal 26 } 
	{ acc_5_ce1 sc_out sc_logic 1 signal 26 } 
	{ acc_5_q1 sc_in sc_lv 32 signal 26 } 
	{ acc_4_address0 sc_out sc_lv 1 signal 27 } 
	{ acc_4_ce0 sc_out sc_logic 1 signal 27 } 
	{ acc_4_we0 sc_out sc_logic 1 signal 27 } 
	{ acc_4_d0 sc_out sc_lv 32 signal 27 } 
	{ acc_4_address1 sc_out sc_lv 1 signal 27 } 
	{ acc_4_ce1 sc_out sc_logic 1 signal 27 } 
	{ acc_4_q1 sc_in sc_lv 32 signal 27 } 
	{ acc_3_address0 sc_out sc_lv 1 signal 28 } 
	{ acc_3_ce0 sc_out sc_logic 1 signal 28 } 
	{ acc_3_we0 sc_out sc_logic 1 signal 28 } 
	{ acc_3_d0 sc_out sc_lv 32 signal 28 } 
	{ acc_3_address1 sc_out sc_lv 1 signal 28 } 
	{ acc_3_ce1 sc_out sc_logic 1 signal 28 } 
	{ acc_3_q1 sc_in sc_lv 32 signal 28 } 
	{ acc_2_address0 sc_out sc_lv 1 signal 29 } 
	{ acc_2_ce0 sc_out sc_logic 1 signal 29 } 
	{ acc_2_we0 sc_out sc_logic 1 signal 29 } 
	{ acc_2_d0 sc_out sc_lv 32 signal 29 } 
	{ acc_2_address1 sc_out sc_lv 1 signal 29 } 
	{ acc_2_ce1 sc_out sc_logic 1 signal 29 } 
	{ acc_2_q1 sc_in sc_lv 32 signal 29 } 
	{ acc_1_address0 sc_out sc_lv 1 signal 30 } 
	{ acc_1_ce0 sc_out sc_logic 1 signal 30 } 
	{ acc_1_we0 sc_out sc_logic 1 signal 30 } 
	{ acc_1_d0 sc_out sc_lv 32 signal 30 } 
	{ acc_1_address1 sc_out sc_lv 1 signal 30 } 
	{ acc_1_ce1 sc_out sc_logic 1 signal 30 } 
	{ acc_1_q1 sc_in sc_lv 32 signal 30 } 
	{ acc_address0 sc_out sc_lv 1 signal 31 } 
	{ acc_ce0 sc_out sc_logic 1 signal 31 } 
	{ acc_we0 sc_out sc_logic 1 signal 31 } 
	{ acc_d0 sc_out sc_lv 32 signal 31 } 
	{ acc_address1 sc_out sc_lv 1 signal 31 } 
	{ acc_ce1 sc_out sc_logic 1 signal 31 } 
	{ acc_q1 sc_in sc_lv 32 signal 31 } 
	{ h_buf_address0 sc_out sc_lv 1 signal 32 } 
	{ h_buf_ce0 sc_out sc_logic 1 signal 32 } 
	{ h_buf_q0 sc_in sc_lv 16 signal 32 } 
	{ sext_ln265 sc_in sc_lv 26 signal 33 } 
	{ h_buf_1_address0 sc_out sc_lv 1 signal 34 } 
	{ h_buf_1_ce0 sc_out sc_logic 1 signal 34 } 
	{ h_buf_1_q0 sc_in sc_lv 16 signal 34 } 
	{ h_buf_2_address0 sc_out sc_lv 1 signal 35 } 
	{ h_buf_2_ce0 sc_out sc_logic 1 signal 35 } 
	{ h_buf_2_q0 sc_in sc_lv 16 signal 35 } 
	{ h_buf_3_address0 sc_out sc_lv 1 signal 36 } 
	{ h_buf_3_ce0 sc_out sc_logic 1 signal 36 } 
	{ h_buf_3_q0 sc_in sc_lv 16 signal 36 } 
	{ h_buf_4_address0 sc_out sc_lv 1 signal 37 } 
	{ h_buf_4_ce0 sc_out sc_logic 1 signal 37 } 
	{ h_buf_4_q0 sc_in sc_lv 16 signal 37 } 
	{ h_buf_5_address0 sc_out sc_lv 1 signal 38 } 
	{ h_buf_5_ce0 sc_out sc_logic 1 signal 38 } 
	{ h_buf_5_q0 sc_in sc_lv 16 signal 38 } 
	{ h_buf_6_address0 sc_out sc_lv 1 signal 39 } 
	{ h_buf_6_ce0 sc_out sc_logic 1 signal 39 } 
	{ h_buf_6_q0 sc_in sc_lv 16 signal 39 } 
	{ h_buf_7_address0 sc_out sc_lv 1 signal 40 } 
	{ h_buf_7_ce0 sc_out sc_logic 1 signal 40 } 
	{ h_buf_7_q0 sc_in sc_lv 16 signal 40 } 
	{ h_buf_8_address0 sc_out sc_lv 1 signal 41 } 
	{ h_buf_8_ce0 sc_out sc_logic 1 signal 41 } 
	{ h_buf_8_q0 sc_in sc_lv 16 signal 41 } 
	{ h_buf_9_address0 sc_out sc_lv 1 signal 42 } 
	{ h_buf_9_ce0 sc_out sc_logic 1 signal 42 } 
	{ h_buf_9_q0 sc_in sc_lv 16 signal 42 } 
	{ h_buf_10_address0 sc_out sc_lv 1 signal 43 } 
	{ h_buf_10_ce0 sc_out sc_logic 1 signal 43 } 
	{ h_buf_10_q0 sc_in sc_lv 16 signal 43 } 
	{ h_buf_11_address0 sc_out sc_lv 1 signal 44 } 
	{ h_buf_11_ce0 sc_out sc_logic 1 signal 44 } 
	{ h_buf_11_q0 sc_in sc_lv 16 signal 44 } 
	{ h_buf_12_address0 sc_out sc_lv 1 signal 45 } 
	{ h_buf_12_ce0 sc_out sc_logic 1 signal 45 } 
	{ h_buf_12_q0 sc_in sc_lv 16 signal 45 } 
	{ h_buf_13_address0 sc_out sc_lv 1 signal 46 } 
	{ h_buf_13_ce0 sc_out sc_logic 1 signal 46 } 
	{ h_buf_13_q0 sc_in sc_lv 16 signal 46 } 
	{ h_buf_14_address0 sc_out sc_lv 1 signal 47 } 
	{ h_buf_14_ce0 sc_out sc_logic 1 signal 47 } 
	{ h_buf_14_q0 sc_in sc_lv 16 signal 47 } 
	{ h_buf_15_address0 sc_out sc_lv 1 signal 48 } 
	{ h_buf_15_ce0 sc_out sc_logic 1 signal 48 } 
	{ h_buf_15_q0 sc_in sc_lv 16 signal 48 } 
	{ h_buf_16_address0 sc_out sc_lv 1 signal 49 } 
	{ h_buf_16_ce0 sc_out sc_logic 1 signal 49 } 
	{ h_buf_16_q0 sc_in sc_lv 16 signal 49 } 
	{ h_buf_17_address0 sc_out sc_lv 1 signal 50 } 
	{ h_buf_17_ce0 sc_out sc_logic 1 signal 50 } 
	{ h_buf_17_q0 sc_in sc_lv 16 signal 50 } 
	{ h_buf_18_address0 sc_out sc_lv 1 signal 51 } 
	{ h_buf_18_ce0 sc_out sc_logic 1 signal 51 } 
	{ h_buf_18_q0 sc_in sc_lv 16 signal 51 } 
	{ h_buf_19_address0 sc_out sc_lv 1 signal 52 } 
	{ h_buf_19_ce0 sc_out sc_logic 1 signal 52 } 
	{ h_buf_19_q0 sc_in sc_lv 16 signal 52 } 
	{ h_buf_20_address0 sc_out sc_lv 1 signal 53 } 
	{ h_buf_20_ce0 sc_out sc_logic 1 signal 53 } 
	{ h_buf_20_q0 sc_in sc_lv 16 signal 53 } 
	{ h_buf_21_address0 sc_out sc_lv 1 signal 54 } 
	{ h_buf_21_ce0 sc_out sc_logic 1 signal 54 } 
	{ h_buf_21_q0 sc_in sc_lv 16 signal 54 } 
	{ h_buf_22_address0 sc_out sc_lv 1 signal 55 } 
	{ h_buf_22_ce0 sc_out sc_logic 1 signal 55 } 
	{ h_buf_22_q0 sc_in sc_lv 16 signal 55 } 
	{ h_buf_23_address0 sc_out sc_lv 1 signal 56 } 
	{ h_buf_23_ce0 sc_out sc_logic 1 signal 56 } 
	{ h_buf_23_q0 sc_in sc_lv 16 signal 56 } 
	{ h_buf_24_address0 sc_out sc_lv 1 signal 57 } 
	{ h_buf_24_ce0 sc_out sc_logic 1 signal 57 } 
	{ h_buf_24_q0 sc_in sc_lv 16 signal 57 } 
	{ h_buf_25_address0 sc_out sc_lv 1 signal 58 } 
	{ h_buf_25_ce0 sc_out sc_logic 1 signal 58 } 
	{ h_buf_25_q0 sc_in sc_lv 16 signal 58 } 
	{ h_buf_26_address0 sc_out sc_lv 1 signal 59 } 
	{ h_buf_26_ce0 sc_out sc_logic 1 signal 59 } 
	{ h_buf_26_q0 sc_in sc_lv 16 signal 59 } 
	{ h_buf_27_address0 sc_out sc_lv 1 signal 60 } 
	{ h_buf_27_ce0 sc_out sc_logic 1 signal 60 } 
	{ h_buf_27_q0 sc_in sc_lv 16 signal 60 } 
	{ h_buf_28_address0 sc_out sc_lv 1 signal 61 } 
	{ h_buf_28_ce0 sc_out sc_logic 1 signal 61 } 
	{ h_buf_28_q0 sc_in sc_lv 16 signal 61 } 
	{ h_buf_29_address0 sc_out sc_lv 1 signal 62 } 
	{ h_buf_29_ce0 sc_out sc_logic 1 signal 62 } 
	{ h_buf_29_q0 sc_in sc_lv 16 signal 62 } 
	{ h_buf_30_address0 sc_out sc_lv 1 signal 63 } 
	{ h_buf_30_ce0 sc_out sc_logic 1 signal 63 } 
	{ h_buf_30_q0 sc_in sc_lv 16 signal 63 } 
	{ h_buf_31_address0 sc_out sc_lv 1 signal 64 } 
	{ h_buf_31_ce0 sc_out sc_logic 1 signal 64 } 
	{ h_buf_31_q0 sc_in sc_lv 16 signal 64 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "acc_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_31", "role": "address0" }} , 
 	{ "name": "acc_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_31", "role": "ce0" }} , 
 	{ "name": "acc_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_31", "role": "we0" }} , 
 	{ "name": "acc_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_31", "role": "d0" }} , 
 	{ "name": "acc_31_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_31", "role": "address1" }} , 
 	{ "name": "acc_31_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_31", "role": "ce1" }} , 
 	{ "name": "acc_31_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_31", "role": "q1" }} , 
 	{ "name": "acc_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_30", "role": "address0" }} , 
 	{ "name": "acc_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_30", "role": "ce0" }} , 
 	{ "name": "acc_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_30", "role": "we0" }} , 
 	{ "name": "acc_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_30", "role": "d0" }} , 
 	{ "name": "acc_30_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_30", "role": "address1" }} , 
 	{ "name": "acc_30_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_30", "role": "ce1" }} , 
 	{ "name": "acc_30_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_30", "role": "q1" }} , 
 	{ "name": "acc_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_29", "role": "address0" }} , 
 	{ "name": "acc_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_29", "role": "ce0" }} , 
 	{ "name": "acc_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_29", "role": "we0" }} , 
 	{ "name": "acc_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_29", "role": "d0" }} , 
 	{ "name": "acc_29_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_29", "role": "address1" }} , 
 	{ "name": "acc_29_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_29", "role": "ce1" }} , 
 	{ "name": "acc_29_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_29", "role": "q1" }} , 
 	{ "name": "acc_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_28", "role": "address0" }} , 
 	{ "name": "acc_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_28", "role": "ce0" }} , 
 	{ "name": "acc_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_28", "role": "we0" }} , 
 	{ "name": "acc_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_28", "role": "d0" }} , 
 	{ "name": "acc_28_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_28", "role": "address1" }} , 
 	{ "name": "acc_28_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_28", "role": "ce1" }} , 
 	{ "name": "acc_28_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_28", "role": "q1" }} , 
 	{ "name": "acc_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_27", "role": "address0" }} , 
 	{ "name": "acc_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_27", "role": "ce0" }} , 
 	{ "name": "acc_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_27", "role": "we0" }} , 
 	{ "name": "acc_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_27", "role": "d0" }} , 
 	{ "name": "acc_27_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_27", "role": "address1" }} , 
 	{ "name": "acc_27_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_27", "role": "ce1" }} , 
 	{ "name": "acc_27_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_27", "role": "q1" }} , 
 	{ "name": "acc_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_26", "role": "address0" }} , 
 	{ "name": "acc_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_26", "role": "ce0" }} , 
 	{ "name": "acc_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_26", "role": "we0" }} , 
 	{ "name": "acc_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_26", "role": "d0" }} , 
 	{ "name": "acc_26_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_26", "role": "address1" }} , 
 	{ "name": "acc_26_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_26", "role": "ce1" }} , 
 	{ "name": "acc_26_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_26", "role": "q1" }} , 
 	{ "name": "acc_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_25", "role": "address0" }} , 
 	{ "name": "acc_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_25", "role": "ce0" }} , 
 	{ "name": "acc_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_25", "role": "we0" }} , 
 	{ "name": "acc_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_25", "role": "d0" }} , 
 	{ "name": "acc_25_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_25", "role": "address1" }} , 
 	{ "name": "acc_25_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_25", "role": "ce1" }} , 
 	{ "name": "acc_25_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_25", "role": "q1" }} , 
 	{ "name": "acc_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_24", "role": "address0" }} , 
 	{ "name": "acc_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_24", "role": "ce0" }} , 
 	{ "name": "acc_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_24", "role": "we0" }} , 
 	{ "name": "acc_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_24", "role": "d0" }} , 
 	{ "name": "acc_24_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_24", "role": "address1" }} , 
 	{ "name": "acc_24_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_24", "role": "ce1" }} , 
 	{ "name": "acc_24_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_24", "role": "q1" }} , 
 	{ "name": "acc_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_23", "role": "address0" }} , 
 	{ "name": "acc_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_23", "role": "ce0" }} , 
 	{ "name": "acc_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_23", "role": "we0" }} , 
 	{ "name": "acc_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_23", "role": "d0" }} , 
 	{ "name": "acc_23_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_23", "role": "address1" }} , 
 	{ "name": "acc_23_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_23", "role": "ce1" }} , 
 	{ "name": "acc_23_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_23", "role": "q1" }} , 
 	{ "name": "acc_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_22", "role": "address0" }} , 
 	{ "name": "acc_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_22", "role": "ce0" }} , 
 	{ "name": "acc_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_22", "role": "we0" }} , 
 	{ "name": "acc_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_22", "role": "d0" }} , 
 	{ "name": "acc_22_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_22", "role": "address1" }} , 
 	{ "name": "acc_22_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_22", "role": "ce1" }} , 
 	{ "name": "acc_22_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_22", "role": "q1" }} , 
 	{ "name": "acc_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_21", "role": "address0" }} , 
 	{ "name": "acc_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_21", "role": "ce0" }} , 
 	{ "name": "acc_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_21", "role": "we0" }} , 
 	{ "name": "acc_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_21", "role": "d0" }} , 
 	{ "name": "acc_21_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_21", "role": "address1" }} , 
 	{ "name": "acc_21_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_21", "role": "ce1" }} , 
 	{ "name": "acc_21_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_21", "role": "q1" }} , 
 	{ "name": "acc_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_20", "role": "address0" }} , 
 	{ "name": "acc_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_20", "role": "ce0" }} , 
 	{ "name": "acc_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_20", "role": "we0" }} , 
 	{ "name": "acc_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_20", "role": "d0" }} , 
 	{ "name": "acc_20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_20", "role": "address1" }} , 
 	{ "name": "acc_20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_20", "role": "ce1" }} , 
 	{ "name": "acc_20_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_20", "role": "q1" }} , 
 	{ "name": "acc_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_19", "role": "address0" }} , 
 	{ "name": "acc_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_19", "role": "ce0" }} , 
 	{ "name": "acc_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_19", "role": "we0" }} , 
 	{ "name": "acc_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_19", "role": "d0" }} , 
 	{ "name": "acc_19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_19", "role": "address1" }} , 
 	{ "name": "acc_19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_19", "role": "ce1" }} , 
 	{ "name": "acc_19_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_19", "role": "q1" }} , 
 	{ "name": "acc_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_18", "role": "address0" }} , 
 	{ "name": "acc_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_18", "role": "ce0" }} , 
 	{ "name": "acc_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_18", "role": "we0" }} , 
 	{ "name": "acc_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_18", "role": "d0" }} , 
 	{ "name": "acc_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_18", "role": "address1" }} , 
 	{ "name": "acc_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_18", "role": "ce1" }} , 
 	{ "name": "acc_18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_18", "role": "q1" }} , 
 	{ "name": "acc_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_17", "role": "address0" }} , 
 	{ "name": "acc_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_17", "role": "ce0" }} , 
 	{ "name": "acc_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_17", "role": "we0" }} , 
 	{ "name": "acc_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_17", "role": "d0" }} , 
 	{ "name": "acc_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_17", "role": "address1" }} , 
 	{ "name": "acc_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_17", "role": "ce1" }} , 
 	{ "name": "acc_17_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_17", "role": "q1" }} , 
 	{ "name": "acc_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_16", "role": "address0" }} , 
 	{ "name": "acc_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_16", "role": "ce0" }} , 
 	{ "name": "acc_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_16", "role": "we0" }} , 
 	{ "name": "acc_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_16", "role": "d0" }} , 
 	{ "name": "acc_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_16", "role": "address1" }} , 
 	{ "name": "acc_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_16", "role": "ce1" }} , 
 	{ "name": "acc_16_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_16", "role": "q1" }} , 
 	{ "name": "acc_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_15", "role": "address0" }} , 
 	{ "name": "acc_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_15", "role": "ce0" }} , 
 	{ "name": "acc_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_15", "role": "we0" }} , 
 	{ "name": "acc_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_15", "role": "d0" }} , 
 	{ "name": "acc_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_15", "role": "address1" }} , 
 	{ "name": "acc_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_15", "role": "ce1" }} , 
 	{ "name": "acc_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_15", "role": "q1" }} , 
 	{ "name": "acc_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_14", "role": "address0" }} , 
 	{ "name": "acc_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_14", "role": "ce0" }} , 
 	{ "name": "acc_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_14", "role": "we0" }} , 
 	{ "name": "acc_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_14", "role": "d0" }} , 
 	{ "name": "acc_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_14", "role": "address1" }} , 
 	{ "name": "acc_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_14", "role": "ce1" }} , 
 	{ "name": "acc_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_14", "role": "q1" }} , 
 	{ "name": "acc_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_13", "role": "address0" }} , 
 	{ "name": "acc_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_13", "role": "ce0" }} , 
 	{ "name": "acc_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_13", "role": "we0" }} , 
 	{ "name": "acc_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_13", "role": "d0" }} , 
 	{ "name": "acc_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_13", "role": "address1" }} , 
 	{ "name": "acc_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_13", "role": "ce1" }} , 
 	{ "name": "acc_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_13", "role": "q1" }} , 
 	{ "name": "acc_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_12", "role": "address0" }} , 
 	{ "name": "acc_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_12", "role": "ce0" }} , 
 	{ "name": "acc_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_12", "role": "we0" }} , 
 	{ "name": "acc_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_12", "role": "d0" }} , 
 	{ "name": "acc_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_12", "role": "address1" }} , 
 	{ "name": "acc_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_12", "role": "ce1" }} , 
 	{ "name": "acc_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_12", "role": "q1" }} , 
 	{ "name": "acc_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_11", "role": "address0" }} , 
 	{ "name": "acc_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_11", "role": "ce0" }} , 
 	{ "name": "acc_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_11", "role": "we0" }} , 
 	{ "name": "acc_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_11", "role": "d0" }} , 
 	{ "name": "acc_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_11", "role": "address1" }} , 
 	{ "name": "acc_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_11", "role": "ce1" }} , 
 	{ "name": "acc_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_11", "role": "q1" }} , 
 	{ "name": "acc_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_10", "role": "address0" }} , 
 	{ "name": "acc_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_10", "role": "ce0" }} , 
 	{ "name": "acc_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_10", "role": "we0" }} , 
 	{ "name": "acc_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_10", "role": "d0" }} , 
 	{ "name": "acc_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_10", "role": "address1" }} , 
 	{ "name": "acc_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_10", "role": "ce1" }} , 
 	{ "name": "acc_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_10", "role": "q1" }} , 
 	{ "name": "acc_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_9", "role": "address0" }} , 
 	{ "name": "acc_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_9", "role": "ce0" }} , 
 	{ "name": "acc_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_9", "role": "we0" }} , 
 	{ "name": "acc_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_9", "role": "d0" }} , 
 	{ "name": "acc_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_9", "role": "address1" }} , 
 	{ "name": "acc_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_9", "role": "ce1" }} , 
 	{ "name": "acc_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_9", "role": "q1" }} , 
 	{ "name": "acc_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_8", "role": "address0" }} , 
 	{ "name": "acc_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_8", "role": "ce0" }} , 
 	{ "name": "acc_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_8", "role": "we0" }} , 
 	{ "name": "acc_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_8", "role": "d0" }} , 
 	{ "name": "acc_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_8", "role": "address1" }} , 
 	{ "name": "acc_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_8", "role": "ce1" }} , 
 	{ "name": "acc_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_8", "role": "q1" }} , 
 	{ "name": "acc_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_7", "role": "address0" }} , 
 	{ "name": "acc_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_7", "role": "ce0" }} , 
 	{ "name": "acc_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_7", "role": "we0" }} , 
 	{ "name": "acc_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_7", "role": "d0" }} , 
 	{ "name": "acc_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_7", "role": "address1" }} , 
 	{ "name": "acc_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_7", "role": "ce1" }} , 
 	{ "name": "acc_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_7", "role": "q1" }} , 
 	{ "name": "acc_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_6", "role": "address0" }} , 
 	{ "name": "acc_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_6", "role": "ce0" }} , 
 	{ "name": "acc_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_6", "role": "we0" }} , 
 	{ "name": "acc_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_6", "role": "d0" }} , 
 	{ "name": "acc_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_6", "role": "address1" }} , 
 	{ "name": "acc_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_6", "role": "ce1" }} , 
 	{ "name": "acc_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_6", "role": "q1" }} , 
 	{ "name": "acc_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_5", "role": "address0" }} , 
 	{ "name": "acc_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_5", "role": "ce0" }} , 
 	{ "name": "acc_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_5", "role": "we0" }} , 
 	{ "name": "acc_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_5", "role": "d0" }} , 
 	{ "name": "acc_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_5", "role": "address1" }} , 
 	{ "name": "acc_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_5", "role": "ce1" }} , 
 	{ "name": "acc_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_5", "role": "q1" }} , 
 	{ "name": "acc_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_4", "role": "address0" }} , 
 	{ "name": "acc_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_4", "role": "ce0" }} , 
 	{ "name": "acc_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_4", "role": "we0" }} , 
 	{ "name": "acc_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_4", "role": "d0" }} , 
 	{ "name": "acc_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_4", "role": "address1" }} , 
 	{ "name": "acc_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_4", "role": "ce1" }} , 
 	{ "name": "acc_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_4", "role": "q1" }} , 
 	{ "name": "acc_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_3", "role": "address0" }} , 
 	{ "name": "acc_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_3", "role": "ce0" }} , 
 	{ "name": "acc_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_3", "role": "we0" }} , 
 	{ "name": "acc_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_3", "role": "d0" }} , 
 	{ "name": "acc_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_3", "role": "address1" }} , 
 	{ "name": "acc_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_3", "role": "ce1" }} , 
 	{ "name": "acc_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_3", "role": "q1" }} , 
 	{ "name": "acc_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_2", "role": "address0" }} , 
 	{ "name": "acc_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_2", "role": "ce0" }} , 
 	{ "name": "acc_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_2", "role": "we0" }} , 
 	{ "name": "acc_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_2", "role": "d0" }} , 
 	{ "name": "acc_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_2", "role": "address1" }} , 
 	{ "name": "acc_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_2", "role": "ce1" }} , 
 	{ "name": "acc_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_2", "role": "q1" }} , 
 	{ "name": "acc_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_1", "role": "address0" }} , 
 	{ "name": "acc_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_1", "role": "ce0" }} , 
 	{ "name": "acc_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_1", "role": "we0" }} , 
 	{ "name": "acc_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_1", "role": "d0" }} , 
 	{ "name": "acc_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_1", "role": "address1" }} , 
 	{ "name": "acc_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_1", "role": "ce1" }} , 
 	{ "name": "acc_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_1", "role": "q1" }} , 
 	{ "name": "acc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc", "role": "address0" }} , 
 	{ "name": "acc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc", "role": "ce0" }} , 
 	{ "name": "acc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc", "role": "we0" }} , 
 	{ "name": "acc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc", "role": "d0" }} , 
 	{ "name": "acc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc", "role": "address1" }} , 
 	{ "name": "acc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc", "role": "ce1" }} , 
 	{ "name": "acc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc", "role": "q1" }} , 
 	{ "name": "h_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf", "role": "address0" }} , 
 	{ "name": "h_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf", "role": "ce0" }} , 
 	{ "name": "h_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf", "role": "q0" }} , 
 	{ "name": "sext_ln265", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "sext_ln265", "role": "default" }} , 
 	{ "name": "h_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_1", "role": "address0" }} , 
 	{ "name": "h_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_1", "role": "ce0" }} , 
 	{ "name": "h_buf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_1", "role": "q0" }} , 
 	{ "name": "h_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_2", "role": "address0" }} , 
 	{ "name": "h_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_2", "role": "ce0" }} , 
 	{ "name": "h_buf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_2", "role": "q0" }} , 
 	{ "name": "h_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_3", "role": "address0" }} , 
 	{ "name": "h_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_3", "role": "ce0" }} , 
 	{ "name": "h_buf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_3", "role": "q0" }} , 
 	{ "name": "h_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_4", "role": "address0" }} , 
 	{ "name": "h_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_4", "role": "ce0" }} , 
 	{ "name": "h_buf_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_4", "role": "q0" }} , 
 	{ "name": "h_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_5", "role": "address0" }} , 
 	{ "name": "h_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_5", "role": "ce0" }} , 
 	{ "name": "h_buf_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_5", "role": "q0" }} , 
 	{ "name": "h_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_6", "role": "address0" }} , 
 	{ "name": "h_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_6", "role": "ce0" }} , 
 	{ "name": "h_buf_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_6", "role": "q0" }} , 
 	{ "name": "h_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_7", "role": "address0" }} , 
 	{ "name": "h_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_7", "role": "ce0" }} , 
 	{ "name": "h_buf_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_7", "role": "q0" }} , 
 	{ "name": "h_buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_8", "role": "address0" }} , 
 	{ "name": "h_buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_8", "role": "ce0" }} , 
 	{ "name": "h_buf_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_8", "role": "q0" }} , 
 	{ "name": "h_buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_9", "role": "address0" }} , 
 	{ "name": "h_buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_9", "role": "ce0" }} , 
 	{ "name": "h_buf_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_9", "role": "q0" }} , 
 	{ "name": "h_buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_10", "role": "address0" }} , 
 	{ "name": "h_buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_10", "role": "ce0" }} , 
 	{ "name": "h_buf_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_10", "role": "q0" }} , 
 	{ "name": "h_buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_11", "role": "address0" }} , 
 	{ "name": "h_buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_11", "role": "ce0" }} , 
 	{ "name": "h_buf_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_11", "role": "q0" }} , 
 	{ "name": "h_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_12", "role": "address0" }} , 
 	{ "name": "h_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_12", "role": "ce0" }} , 
 	{ "name": "h_buf_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_12", "role": "q0" }} , 
 	{ "name": "h_buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_13", "role": "address0" }} , 
 	{ "name": "h_buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_13", "role": "ce0" }} , 
 	{ "name": "h_buf_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_13", "role": "q0" }} , 
 	{ "name": "h_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_14", "role": "address0" }} , 
 	{ "name": "h_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_14", "role": "ce0" }} , 
 	{ "name": "h_buf_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_14", "role": "q0" }} , 
 	{ "name": "h_buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_15", "role": "address0" }} , 
 	{ "name": "h_buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_15", "role": "ce0" }} , 
 	{ "name": "h_buf_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_15", "role": "q0" }} , 
 	{ "name": "h_buf_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_16", "role": "address0" }} , 
 	{ "name": "h_buf_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_16", "role": "ce0" }} , 
 	{ "name": "h_buf_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_16", "role": "q0" }} , 
 	{ "name": "h_buf_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_17", "role": "address0" }} , 
 	{ "name": "h_buf_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_17", "role": "ce0" }} , 
 	{ "name": "h_buf_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_17", "role": "q0" }} , 
 	{ "name": "h_buf_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_18", "role": "address0" }} , 
 	{ "name": "h_buf_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_18", "role": "ce0" }} , 
 	{ "name": "h_buf_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_18", "role": "q0" }} , 
 	{ "name": "h_buf_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_19", "role": "address0" }} , 
 	{ "name": "h_buf_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_19", "role": "ce0" }} , 
 	{ "name": "h_buf_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_19", "role": "q0" }} , 
 	{ "name": "h_buf_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_20", "role": "address0" }} , 
 	{ "name": "h_buf_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_20", "role": "ce0" }} , 
 	{ "name": "h_buf_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_20", "role": "q0" }} , 
 	{ "name": "h_buf_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_21", "role": "address0" }} , 
 	{ "name": "h_buf_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_21", "role": "ce0" }} , 
 	{ "name": "h_buf_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_21", "role": "q0" }} , 
 	{ "name": "h_buf_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_22", "role": "address0" }} , 
 	{ "name": "h_buf_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_22", "role": "ce0" }} , 
 	{ "name": "h_buf_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_22", "role": "q0" }} , 
 	{ "name": "h_buf_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_23", "role": "address0" }} , 
 	{ "name": "h_buf_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_23", "role": "ce0" }} , 
 	{ "name": "h_buf_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_23", "role": "q0" }} , 
 	{ "name": "h_buf_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_24", "role": "address0" }} , 
 	{ "name": "h_buf_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_24", "role": "ce0" }} , 
 	{ "name": "h_buf_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_24", "role": "q0" }} , 
 	{ "name": "h_buf_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_25", "role": "address0" }} , 
 	{ "name": "h_buf_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_25", "role": "ce0" }} , 
 	{ "name": "h_buf_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_25", "role": "q0" }} , 
 	{ "name": "h_buf_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_26", "role": "address0" }} , 
 	{ "name": "h_buf_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_26", "role": "ce0" }} , 
 	{ "name": "h_buf_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_26", "role": "q0" }} , 
 	{ "name": "h_buf_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_27", "role": "address0" }} , 
 	{ "name": "h_buf_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_27", "role": "ce0" }} , 
 	{ "name": "h_buf_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_27", "role": "q0" }} , 
 	{ "name": "h_buf_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_28", "role": "address0" }} , 
 	{ "name": "h_buf_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_28", "role": "ce0" }} , 
 	{ "name": "h_buf_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_28", "role": "q0" }} , 
 	{ "name": "h_buf_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_29", "role": "address0" }} , 
 	{ "name": "h_buf_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_29", "role": "ce0" }} , 
 	{ "name": "h_buf_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_29", "role": "q0" }} , 
 	{ "name": "h_buf_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_30", "role": "address0" }} , 
 	{ "name": "h_buf_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_30", "role": "ce0" }} , 
 	{ "name": "h_buf_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_30", "role": "q0" }} , 
 	{ "name": "h_buf_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_31", "role": "address0" }} , 
 	{ "name": "h_buf_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_31", "role": "ce0" }} , 
 	{ "name": "h_buf_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_31", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	spmm_compute_Pipeline_SPMM_MAC {
		acc_31 {Type IO LastRead 0 FirstWrite 1}
		acc_30 {Type IO LastRead 0 FirstWrite 1}
		acc_29 {Type IO LastRead 0 FirstWrite 1}
		acc_28 {Type IO LastRead 0 FirstWrite 1}
		acc_27 {Type IO LastRead 0 FirstWrite 1}
		acc_26 {Type IO LastRead 0 FirstWrite 1}
		acc_25 {Type IO LastRead 0 FirstWrite 1}
		acc_24 {Type IO LastRead 0 FirstWrite 1}
		acc_23 {Type IO LastRead 0 FirstWrite 1}
		acc_22 {Type IO LastRead 0 FirstWrite 1}
		acc_21 {Type IO LastRead 0 FirstWrite 1}
		acc_20 {Type IO LastRead 0 FirstWrite 1}
		acc_19 {Type IO LastRead 0 FirstWrite 1}
		acc_18 {Type IO LastRead 0 FirstWrite 1}
		acc_17 {Type IO LastRead 0 FirstWrite 1}
		acc_16 {Type IO LastRead 0 FirstWrite 1}
		acc_15 {Type IO LastRead 0 FirstWrite 1}
		acc_14 {Type IO LastRead 0 FirstWrite 1}
		acc_13 {Type IO LastRead 0 FirstWrite 1}
		acc_12 {Type IO LastRead 0 FirstWrite 1}
		acc_11 {Type IO LastRead 0 FirstWrite 1}
		acc_10 {Type IO LastRead 0 FirstWrite 1}
		acc_9 {Type IO LastRead 0 FirstWrite 1}
		acc_8 {Type IO LastRead 0 FirstWrite 1}
		acc_7 {Type IO LastRead 0 FirstWrite 1}
		acc_6 {Type IO LastRead 0 FirstWrite 1}
		acc_5 {Type IO LastRead 0 FirstWrite 1}
		acc_4 {Type IO LastRead 0 FirstWrite 1}
		acc_3 {Type IO LastRead 0 FirstWrite 1}
		acc_2 {Type IO LastRead 0 FirstWrite 1}
		acc_1 {Type IO LastRead 0 FirstWrite 1}
		acc {Type IO LastRead 0 FirstWrite 1}
		h_buf {Type I LastRead 0 FirstWrite -1}
		sext_ln265 {Type I LastRead 0 FirstWrite -1}
		h_buf_1 {Type I LastRead 0 FirstWrite -1}
		h_buf_2 {Type I LastRead 0 FirstWrite -1}
		h_buf_3 {Type I LastRead 0 FirstWrite -1}
		h_buf_4 {Type I LastRead 0 FirstWrite -1}
		h_buf_5 {Type I LastRead 0 FirstWrite -1}
		h_buf_6 {Type I LastRead 0 FirstWrite -1}
		h_buf_7 {Type I LastRead 0 FirstWrite -1}
		h_buf_8 {Type I LastRead 0 FirstWrite -1}
		h_buf_9 {Type I LastRead 0 FirstWrite -1}
		h_buf_10 {Type I LastRead 0 FirstWrite -1}
		h_buf_11 {Type I LastRead 0 FirstWrite -1}
		h_buf_12 {Type I LastRead 0 FirstWrite -1}
		h_buf_13 {Type I LastRead 0 FirstWrite -1}
		h_buf_14 {Type I LastRead 0 FirstWrite -1}
		h_buf_15 {Type I LastRead 0 FirstWrite -1}
		h_buf_16 {Type I LastRead 0 FirstWrite -1}
		h_buf_17 {Type I LastRead 0 FirstWrite -1}
		h_buf_18 {Type I LastRead 0 FirstWrite -1}
		h_buf_19 {Type I LastRead 0 FirstWrite -1}
		h_buf_20 {Type I LastRead 0 FirstWrite -1}
		h_buf_21 {Type I LastRead 0 FirstWrite -1}
		h_buf_22 {Type I LastRead 0 FirstWrite -1}
		h_buf_23 {Type I LastRead 0 FirstWrite -1}
		h_buf_24 {Type I LastRead 0 FirstWrite -1}
		h_buf_25 {Type I LastRead 0 FirstWrite -1}
		h_buf_26 {Type I LastRead 0 FirstWrite -1}
		h_buf_27 {Type I LastRead 0 FirstWrite -1}
		h_buf_28 {Type I LastRead 0 FirstWrite -1}
		h_buf_29 {Type I LastRead 0 FirstWrite -1}
		h_buf_30 {Type I LastRead 0 FirstWrite -1}
		h_buf_31 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	acc_31 { ap_memory {  { acc_31_address0 mem_address 1 1 }  { acc_31_ce0 mem_ce 1 1 }  { acc_31_we0 mem_we 1 1 }  { acc_31_d0 mem_din 1 32 }  { acc_31_address1 MemPortADDR2 1 1 }  { acc_31_ce1 MemPortCE2 1 1 }  { acc_31_q1 MemPortDOUT2 0 32 } } }
	acc_30 { ap_memory {  { acc_30_address0 mem_address 1 1 }  { acc_30_ce0 mem_ce 1 1 }  { acc_30_we0 mem_we 1 1 }  { acc_30_d0 mem_din 1 32 }  { acc_30_address1 MemPortADDR2 1 1 }  { acc_30_ce1 MemPortCE2 1 1 }  { acc_30_q1 MemPortDOUT2 0 32 } } }
	acc_29 { ap_memory {  { acc_29_address0 mem_address 1 1 }  { acc_29_ce0 mem_ce 1 1 }  { acc_29_we0 mem_we 1 1 }  { acc_29_d0 mem_din 1 32 }  { acc_29_address1 MemPortADDR2 1 1 }  { acc_29_ce1 MemPortCE2 1 1 }  { acc_29_q1 MemPortDOUT2 0 32 } } }
	acc_28 { ap_memory {  { acc_28_address0 mem_address 1 1 }  { acc_28_ce0 mem_ce 1 1 }  { acc_28_we0 mem_we 1 1 }  { acc_28_d0 mem_din 1 32 }  { acc_28_address1 MemPortADDR2 1 1 }  { acc_28_ce1 MemPortCE2 1 1 }  { acc_28_q1 MemPortDOUT2 0 32 } } }
	acc_27 { ap_memory {  { acc_27_address0 mem_address 1 1 }  { acc_27_ce0 mem_ce 1 1 }  { acc_27_we0 mem_we 1 1 }  { acc_27_d0 mem_din 1 32 }  { acc_27_address1 MemPortADDR2 1 1 }  { acc_27_ce1 MemPortCE2 1 1 }  { acc_27_q1 MemPortDOUT2 0 32 } } }
	acc_26 { ap_memory {  { acc_26_address0 mem_address 1 1 }  { acc_26_ce0 mem_ce 1 1 }  { acc_26_we0 mem_we 1 1 }  { acc_26_d0 mem_din 1 32 }  { acc_26_address1 MemPortADDR2 1 1 }  { acc_26_ce1 MemPortCE2 1 1 }  { acc_26_q1 MemPortDOUT2 0 32 } } }
	acc_25 { ap_memory {  { acc_25_address0 mem_address 1 1 }  { acc_25_ce0 mem_ce 1 1 }  { acc_25_we0 mem_we 1 1 }  { acc_25_d0 mem_din 1 32 }  { acc_25_address1 MemPortADDR2 1 1 }  { acc_25_ce1 MemPortCE2 1 1 }  { acc_25_q1 MemPortDOUT2 0 32 } } }
	acc_24 { ap_memory {  { acc_24_address0 mem_address 1 1 }  { acc_24_ce0 mem_ce 1 1 }  { acc_24_we0 mem_we 1 1 }  { acc_24_d0 mem_din 1 32 }  { acc_24_address1 MemPortADDR2 1 1 }  { acc_24_ce1 MemPortCE2 1 1 }  { acc_24_q1 MemPortDOUT2 0 32 } } }
	acc_23 { ap_memory {  { acc_23_address0 mem_address 1 1 }  { acc_23_ce0 mem_ce 1 1 }  { acc_23_we0 mem_we 1 1 }  { acc_23_d0 mem_din 1 32 }  { acc_23_address1 MemPortADDR2 1 1 }  { acc_23_ce1 MemPortCE2 1 1 }  { acc_23_q1 MemPortDOUT2 0 32 } } }
	acc_22 { ap_memory {  { acc_22_address0 mem_address 1 1 }  { acc_22_ce0 mem_ce 1 1 }  { acc_22_we0 mem_we 1 1 }  { acc_22_d0 mem_din 1 32 }  { acc_22_address1 MemPortADDR2 1 1 }  { acc_22_ce1 MemPortCE2 1 1 }  { acc_22_q1 MemPortDOUT2 0 32 } } }
	acc_21 { ap_memory {  { acc_21_address0 mem_address 1 1 }  { acc_21_ce0 mem_ce 1 1 }  { acc_21_we0 mem_we 1 1 }  { acc_21_d0 mem_din 1 32 }  { acc_21_address1 MemPortADDR2 1 1 }  { acc_21_ce1 MemPortCE2 1 1 }  { acc_21_q1 MemPortDOUT2 0 32 } } }
	acc_20 { ap_memory {  { acc_20_address0 mem_address 1 1 }  { acc_20_ce0 mem_ce 1 1 }  { acc_20_we0 mem_we 1 1 }  { acc_20_d0 mem_din 1 32 }  { acc_20_address1 MemPortADDR2 1 1 }  { acc_20_ce1 MemPortCE2 1 1 }  { acc_20_q1 MemPortDOUT2 0 32 } } }
	acc_19 { ap_memory {  { acc_19_address0 mem_address 1 1 }  { acc_19_ce0 mem_ce 1 1 }  { acc_19_we0 mem_we 1 1 }  { acc_19_d0 mem_din 1 32 }  { acc_19_address1 MemPortADDR2 1 1 }  { acc_19_ce1 MemPortCE2 1 1 }  { acc_19_q1 MemPortDOUT2 0 32 } } }
	acc_18 { ap_memory {  { acc_18_address0 mem_address 1 1 }  { acc_18_ce0 mem_ce 1 1 }  { acc_18_we0 mem_we 1 1 }  { acc_18_d0 mem_din 1 32 }  { acc_18_address1 MemPortADDR2 1 1 }  { acc_18_ce1 MemPortCE2 1 1 }  { acc_18_q1 MemPortDOUT2 0 32 } } }
	acc_17 { ap_memory {  { acc_17_address0 mem_address 1 1 }  { acc_17_ce0 mem_ce 1 1 }  { acc_17_we0 mem_we 1 1 }  { acc_17_d0 mem_din 1 32 }  { acc_17_address1 MemPortADDR2 1 1 }  { acc_17_ce1 MemPortCE2 1 1 }  { acc_17_q1 MemPortDOUT2 0 32 } } }
	acc_16 { ap_memory {  { acc_16_address0 mem_address 1 1 }  { acc_16_ce0 mem_ce 1 1 }  { acc_16_we0 mem_we 1 1 }  { acc_16_d0 mem_din 1 32 }  { acc_16_address1 MemPortADDR2 1 1 }  { acc_16_ce1 MemPortCE2 1 1 }  { acc_16_q1 MemPortDOUT2 0 32 } } }
	acc_15 { ap_memory {  { acc_15_address0 mem_address 1 1 }  { acc_15_ce0 mem_ce 1 1 }  { acc_15_we0 mem_we 1 1 }  { acc_15_d0 mem_din 1 32 }  { acc_15_address1 MemPortADDR2 1 1 }  { acc_15_ce1 MemPortCE2 1 1 }  { acc_15_q1 MemPortDOUT2 0 32 } } }
	acc_14 { ap_memory {  { acc_14_address0 mem_address 1 1 }  { acc_14_ce0 mem_ce 1 1 }  { acc_14_we0 mem_we 1 1 }  { acc_14_d0 mem_din 1 32 }  { acc_14_address1 MemPortADDR2 1 1 }  { acc_14_ce1 MemPortCE2 1 1 }  { acc_14_q1 MemPortDOUT2 0 32 } } }
	acc_13 { ap_memory {  { acc_13_address0 mem_address 1 1 }  { acc_13_ce0 mem_ce 1 1 }  { acc_13_we0 mem_we 1 1 }  { acc_13_d0 mem_din 1 32 }  { acc_13_address1 MemPortADDR2 1 1 }  { acc_13_ce1 MemPortCE2 1 1 }  { acc_13_q1 MemPortDOUT2 0 32 } } }
	acc_12 { ap_memory {  { acc_12_address0 mem_address 1 1 }  { acc_12_ce0 mem_ce 1 1 }  { acc_12_we0 mem_we 1 1 }  { acc_12_d0 mem_din 1 32 }  { acc_12_address1 MemPortADDR2 1 1 }  { acc_12_ce1 MemPortCE2 1 1 }  { acc_12_q1 MemPortDOUT2 0 32 } } }
	acc_11 { ap_memory {  { acc_11_address0 mem_address 1 1 }  { acc_11_ce0 mem_ce 1 1 }  { acc_11_we0 mem_we 1 1 }  { acc_11_d0 mem_din 1 32 }  { acc_11_address1 MemPortADDR2 1 1 }  { acc_11_ce1 MemPortCE2 1 1 }  { acc_11_q1 MemPortDOUT2 0 32 } } }
	acc_10 { ap_memory {  { acc_10_address0 mem_address 1 1 }  { acc_10_ce0 mem_ce 1 1 }  { acc_10_we0 mem_we 1 1 }  { acc_10_d0 mem_din 1 32 }  { acc_10_address1 MemPortADDR2 1 1 }  { acc_10_ce1 MemPortCE2 1 1 }  { acc_10_q1 MemPortDOUT2 0 32 } } }
	acc_9 { ap_memory {  { acc_9_address0 mem_address 1 1 }  { acc_9_ce0 mem_ce 1 1 }  { acc_9_we0 mem_we 1 1 }  { acc_9_d0 mem_din 1 32 }  { acc_9_address1 MemPortADDR2 1 1 }  { acc_9_ce1 MemPortCE2 1 1 }  { acc_9_q1 MemPortDOUT2 0 32 } } }
	acc_8 { ap_memory {  { acc_8_address0 mem_address 1 1 }  { acc_8_ce0 mem_ce 1 1 }  { acc_8_we0 mem_we 1 1 }  { acc_8_d0 mem_din 1 32 }  { acc_8_address1 MemPortADDR2 1 1 }  { acc_8_ce1 MemPortCE2 1 1 }  { acc_8_q1 MemPortDOUT2 0 32 } } }
	acc_7 { ap_memory {  { acc_7_address0 mem_address 1 1 }  { acc_7_ce0 mem_ce 1 1 }  { acc_7_we0 mem_we 1 1 }  { acc_7_d0 mem_din 1 32 }  { acc_7_address1 MemPortADDR2 1 1 }  { acc_7_ce1 MemPortCE2 1 1 }  { acc_7_q1 MemPortDOUT2 0 32 } } }
	acc_6 { ap_memory {  { acc_6_address0 mem_address 1 1 }  { acc_6_ce0 mem_ce 1 1 }  { acc_6_we0 mem_we 1 1 }  { acc_6_d0 mem_din 1 32 }  { acc_6_address1 MemPortADDR2 1 1 }  { acc_6_ce1 MemPortCE2 1 1 }  { acc_6_q1 MemPortDOUT2 0 32 } } }
	acc_5 { ap_memory {  { acc_5_address0 mem_address 1 1 }  { acc_5_ce0 mem_ce 1 1 }  { acc_5_we0 mem_we 1 1 }  { acc_5_d0 mem_din 1 32 }  { acc_5_address1 MemPortADDR2 1 1 }  { acc_5_ce1 MemPortCE2 1 1 }  { acc_5_q1 MemPortDOUT2 0 32 } } }
	acc_4 { ap_memory {  { acc_4_address0 mem_address 1 1 }  { acc_4_ce0 mem_ce 1 1 }  { acc_4_we0 mem_we 1 1 }  { acc_4_d0 mem_din 1 32 }  { acc_4_address1 MemPortADDR2 1 1 }  { acc_4_ce1 MemPortCE2 1 1 }  { acc_4_q1 MemPortDOUT2 0 32 } } }
	acc_3 { ap_memory {  { acc_3_address0 mem_address 1 1 }  { acc_3_ce0 mem_ce 1 1 }  { acc_3_we0 mem_we 1 1 }  { acc_3_d0 mem_din 1 32 }  { acc_3_address1 MemPortADDR2 1 1 }  { acc_3_ce1 MemPortCE2 1 1 }  { acc_3_q1 MemPortDOUT2 0 32 } } }
	acc_2 { ap_memory {  { acc_2_address0 mem_address 1 1 }  { acc_2_ce0 mem_ce 1 1 }  { acc_2_we0 mem_we 1 1 }  { acc_2_d0 mem_din 1 32 }  { acc_2_address1 MemPortADDR2 1 1 }  { acc_2_ce1 MemPortCE2 1 1 }  { acc_2_q1 MemPortDOUT2 0 32 } } }
	acc_1 { ap_memory {  { acc_1_address0 mem_address 1 1 }  { acc_1_ce0 mem_ce 1 1 }  { acc_1_we0 mem_we 1 1 }  { acc_1_d0 mem_din 1 32 }  { acc_1_address1 MemPortADDR2 1 1 }  { acc_1_ce1 MemPortCE2 1 1 }  { acc_1_q1 MemPortDOUT2 0 32 } } }
	acc { ap_memory {  { acc_address0 mem_address 1 1 }  { acc_ce0 mem_ce 1 1 }  { acc_we0 mem_we 1 1 }  { acc_d0 mem_din 1 32 }  { acc_address1 MemPortADDR2 1 1 }  { acc_ce1 MemPortCE2 1 1 }  { acc_q1 MemPortDOUT2 0 32 } } }
	h_buf { ap_memory {  { h_buf_address0 mem_address 1 1 }  { h_buf_ce0 mem_ce 1 1 }  { h_buf_q0 mem_dout 0 16 } } }
	sext_ln265 { ap_none {  { sext_ln265 in_data 0 26 } } }
	h_buf_1 { ap_memory {  { h_buf_1_address0 mem_address 1 1 }  { h_buf_1_ce0 mem_ce 1 1 }  { h_buf_1_q0 mem_dout 0 16 } } }
	h_buf_2 { ap_memory {  { h_buf_2_address0 mem_address 1 1 }  { h_buf_2_ce0 mem_ce 1 1 }  { h_buf_2_q0 mem_dout 0 16 } } }
	h_buf_3 { ap_memory {  { h_buf_3_address0 mem_address 1 1 }  { h_buf_3_ce0 mem_ce 1 1 }  { h_buf_3_q0 mem_dout 0 16 } } }
	h_buf_4 { ap_memory {  { h_buf_4_address0 mem_address 1 1 }  { h_buf_4_ce0 mem_ce 1 1 }  { h_buf_4_q0 mem_dout 0 16 } } }
	h_buf_5 { ap_memory {  { h_buf_5_address0 mem_address 1 1 }  { h_buf_5_ce0 mem_ce 1 1 }  { h_buf_5_q0 mem_dout 0 16 } } }
	h_buf_6 { ap_memory {  { h_buf_6_address0 mem_address 1 1 }  { h_buf_6_ce0 mem_ce 1 1 }  { h_buf_6_q0 mem_dout 0 16 } } }
	h_buf_7 { ap_memory {  { h_buf_7_address0 mem_address 1 1 }  { h_buf_7_ce0 mem_ce 1 1 }  { h_buf_7_q0 mem_dout 0 16 } } }
	h_buf_8 { ap_memory {  { h_buf_8_address0 mem_address 1 1 }  { h_buf_8_ce0 mem_ce 1 1 }  { h_buf_8_q0 mem_dout 0 16 } } }
	h_buf_9 { ap_memory {  { h_buf_9_address0 mem_address 1 1 }  { h_buf_9_ce0 mem_ce 1 1 }  { h_buf_9_q0 mem_dout 0 16 } } }
	h_buf_10 { ap_memory {  { h_buf_10_address0 mem_address 1 1 }  { h_buf_10_ce0 mem_ce 1 1 }  { h_buf_10_q0 mem_dout 0 16 } } }
	h_buf_11 { ap_memory {  { h_buf_11_address0 mem_address 1 1 }  { h_buf_11_ce0 mem_ce 1 1 }  { h_buf_11_q0 mem_dout 0 16 } } }
	h_buf_12 { ap_memory {  { h_buf_12_address0 mem_address 1 1 }  { h_buf_12_ce0 mem_ce 1 1 }  { h_buf_12_q0 mem_dout 0 16 } } }
	h_buf_13 { ap_memory {  { h_buf_13_address0 mem_address 1 1 }  { h_buf_13_ce0 mem_ce 1 1 }  { h_buf_13_q0 mem_dout 0 16 } } }
	h_buf_14 { ap_memory {  { h_buf_14_address0 mem_address 1 1 }  { h_buf_14_ce0 mem_ce 1 1 }  { h_buf_14_q0 mem_dout 0 16 } } }
	h_buf_15 { ap_memory {  { h_buf_15_address0 mem_address 1 1 }  { h_buf_15_ce0 mem_ce 1 1 }  { h_buf_15_q0 mem_dout 0 16 } } }
	h_buf_16 { ap_memory {  { h_buf_16_address0 mem_address 1 1 }  { h_buf_16_ce0 mem_ce 1 1 }  { h_buf_16_q0 mem_dout 0 16 } } }
	h_buf_17 { ap_memory {  { h_buf_17_address0 mem_address 1 1 }  { h_buf_17_ce0 mem_ce 1 1 }  { h_buf_17_q0 mem_dout 0 16 } } }
	h_buf_18 { ap_memory {  { h_buf_18_address0 mem_address 1 1 }  { h_buf_18_ce0 mem_ce 1 1 }  { h_buf_18_q0 mem_dout 0 16 } } }
	h_buf_19 { ap_memory {  { h_buf_19_address0 mem_address 1 1 }  { h_buf_19_ce0 mem_ce 1 1 }  { h_buf_19_q0 mem_dout 0 16 } } }
	h_buf_20 { ap_memory {  { h_buf_20_address0 mem_address 1 1 }  { h_buf_20_ce0 mem_ce 1 1 }  { h_buf_20_q0 mem_dout 0 16 } } }
	h_buf_21 { ap_memory {  { h_buf_21_address0 mem_address 1 1 }  { h_buf_21_ce0 mem_ce 1 1 }  { h_buf_21_q0 mem_dout 0 16 } } }
	h_buf_22 { ap_memory {  { h_buf_22_address0 mem_address 1 1 }  { h_buf_22_ce0 mem_ce 1 1 }  { h_buf_22_q0 mem_dout 0 16 } } }
	h_buf_23 { ap_memory {  { h_buf_23_address0 mem_address 1 1 }  { h_buf_23_ce0 mem_ce 1 1 }  { h_buf_23_q0 mem_dout 0 16 } } }
	h_buf_24 { ap_memory {  { h_buf_24_address0 mem_address 1 1 }  { h_buf_24_ce0 mem_ce 1 1 }  { h_buf_24_q0 mem_dout 0 16 } } }
	h_buf_25 { ap_memory {  { h_buf_25_address0 mem_address 1 1 }  { h_buf_25_ce0 mem_ce 1 1 }  { h_buf_25_q0 mem_dout 0 16 } } }
	h_buf_26 { ap_memory {  { h_buf_26_address0 mem_address 1 1 }  { h_buf_26_ce0 mem_ce 1 1 }  { h_buf_26_q0 mem_dout 0 16 } } }
	h_buf_27 { ap_memory {  { h_buf_27_address0 mem_address 1 1 }  { h_buf_27_ce0 mem_ce 1 1 }  { h_buf_27_q0 mem_dout 0 16 } } }
	h_buf_28 { ap_memory {  { h_buf_28_address0 mem_address 1 1 }  { h_buf_28_ce0 mem_ce 1 1 }  { h_buf_28_q0 mem_dout 0 16 } } }
	h_buf_29 { ap_memory {  { h_buf_29_address0 mem_address 1 1 }  { h_buf_29_ce0 mem_ce 1 1 }  { h_buf_29_q0 mem_dout 0 16 } } }
	h_buf_30 { ap_memory {  { h_buf_30_address0 mem_address 1 1 }  { h_buf_30_ce0 mem_ce 1 1 }  { h_buf_30_q0 mem_dout 0 16 } } }
	h_buf_31 { ap_memory {  { h_buf_31_address0 mem_address 1 1 }  { h_buf_31_ce0 mem_ce 1 1 }  { h_buf_31_q0 mem_dout 0 16 } } }
}
