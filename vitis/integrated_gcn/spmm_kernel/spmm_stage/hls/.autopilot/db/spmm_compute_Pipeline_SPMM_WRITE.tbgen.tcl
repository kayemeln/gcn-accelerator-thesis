set moduleName spmm_compute_Pipeline_SPMM_WRITE
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
set cdfgNum 13
set C_modelName {spmm_compute_Pipeline_SPMM_WRITE}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict acc { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_1 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_2 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_3 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_4 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_5 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_6 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_7 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_8 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_9 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_10 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_11 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_12 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_13 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_14 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_15 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_16 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_17 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_18 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_19 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_20 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_21 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_22 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_23 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_24 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_25 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_26 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_27 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_28 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_29 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_30 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict acc_31 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ acc int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_1 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_2 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_3 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_4 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_5 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_6 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_7 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_8 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_9 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_10 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_11 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_12 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_13 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_14 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_15 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_16 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_17 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_18 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_19 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_20 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_21 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_22 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_23 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_24 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_25 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_26 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_27 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_28 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_29 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_30 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ acc_31 int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ result_fifo int 16 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "acc", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_20", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_21", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_22", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_23", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_24", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_25", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_26", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_27", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_28", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_29", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_30", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc_31", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "result_fifo", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 107
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ result_fifo_din sc_out sc_lv 16 signal 32 } 
	{ result_fifo_full_n sc_in sc_logic 1 signal 32 } 
	{ result_fifo_write sc_out sc_logic 1 signal 32 } 
	{ result_fifo_num_data_valid sc_in sc_lv 32 signal 32 } 
	{ result_fifo_fifo_cap sc_in sc_lv 32 signal 32 } 
	{ acc_address0 sc_out sc_lv 1 signal 0 } 
	{ acc_ce0 sc_out sc_logic 1 signal 0 } 
	{ acc_q0 sc_in sc_lv 32 signal 0 } 
	{ acc_1_address0 sc_out sc_lv 1 signal 1 } 
	{ acc_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ acc_1_q0 sc_in sc_lv 32 signal 1 } 
	{ acc_2_address0 sc_out sc_lv 1 signal 2 } 
	{ acc_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ acc_2_q0 sc_in sc_lv 32 signal 2 } 
	{ acc_3_address0 sc_out sc_lv 1 signal 3 } 
	{ acc_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ acc_3_q0 sc_in sc_lv 32 signal 3 } 
	{ acc_4_address0 sc_out sc_lv 1 signal 4 } 
	{ acc_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ acc_4_q0 sc_in sc_lv 32 signal 4 } 
	{ acc_5_address0 sc_out sc_lv 1 signal 5 } 
	{ acc_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ acc_5_q0 sc_in sc_lv 32 signal 5 } 
	{ acc_6_address0 sc_out sc_lv 1 signal 6 } 
	{ acc_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ acc_6_q0 sc_in sc_lv 32 signal 6 } 
	{ acc_7_address0 sc_out sc_lv 1 signal 7 } 
	{ acc_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ acc_7_q0 sc_in sc_lv 32 signal 7 } 
	{ acc_8_address0 sc_out sc_lv 1 signal 8 } 
	{ acc_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ acc_8_q0 sc_in sc_lv 32 signal 8 } 
	{ acc_9_address0 sc_out sc_lv 1 signal 9 } 
	{ acc_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ acc_9_q0 sc_in sc_lv 32 signal 9 } 
	{ acc_10_address0 sc_out sc_lv 1 signal 10 } 
	{ acc_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ acc_10_q0 sc_in sc_lv 32 signal 10 } 
	{ acc_11_address0 sc_out sc_lv 1 signal 11 } 
	{ acc_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ acc_11_q0 sc_in sc_lv 32 signal 11 } 
	{ acc_12_address0 sc_out sc_lv 1 signal 12 } 
	{ acc_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ acc_12_q0 sc_in sc_lv 32 signal 12 } 
	{ acc_13_address0 sc_out sc_lv 1 signal 13 } 
	{ acc_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ acc_13_q0 sc_in sc_lv 32 signal 13 } 
	{ acc_14_address0 sc_out sc_lv 1 signal 14 } 
	{ acc_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ acc_14_q0 sc_in sc_lv 32 signal 14 } 
	{ acc_15_address0 sc_out sc_lv 1 signal 15 } 
	{ acc_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ acc_15_q0 sc_in sc_lv 32 signal 15 } 
	{ acc_16_address0 sc_out sc_lv 1 signal 16 } 
	{ acc_16_ce0 sc_out sc_logic 1 signal 16 } 
	{ acc_16_q0 sc_in sc_lv 32 signal 16 } 
	{ acc_17_address0 sc_out sc_lv 1 signal 17 } 
	{ acc_17_ce0 sc_out sc_logic 1 signal 17 } 
	{ acc_17_q0 sc_in sc_lv 32 signal 17 } 
	{ acc_18_address0 sc_out sc_lv 1 signal 18 } 
	{ acc_18_ce0 sc_out sc_logic 1 signal 18 } 
	{ acc_18_q0 sc_in sc_lv 32 signal 18 } 
	{ acc_19_address0 sc_out sc_lv 1 signal 19 } 
	{ acc_19_ce0 sc_out sc_logic 1 signal 19 } 
	{ acc_19_q0 sc_in sc_lv 32 signal 19 } 
	{ acc_20_address0 sc_out sc_lv 1 signal 20 } 
	{ acc_20_ce0 sc_out sc_logic 1 signal 20 } 
	{ acc_20_q0 sc_in sc_lv 32 signal 20 } 
	{ acc_21_address0 sc_out sc_lv 1 signal 21 } 
	{ acc_21_ce0 sc_out sc_logic 1 signal 21 } 
	{ acc_21_q0 sc_in sc_lv 32 signal 21 } 
	{ acc_22_address0 sc_out sc_lv 1 signal 22 } 
	{ acc_22_ce0 sc_out sc_logic 1 signal 22 } 
	{ acc_22_q0 sc_in sc_lv 32 signal 22 } 
	{ acc_23_address0 sc_out sc_lv 1 signal 23 } 
	{ acc_23_ce0 sc_out sc_logic 1 signal 23 } 
	{ acc_23_q0 sc_in sc_lv 32 signal 23 } 
	{ acc_24_address0 sc_out sc_lv 1 signal 24 } 
	{ acc_24_ce0 sc_out sc_logic 1 signal 24 } 
	{ acc_24_q0 sc_in sc_lv 32 signal 24 } 
	{ acc_25_address0 sc_out sc_lv 1 signal 25 } 
	{ acc_25_ce0 sc_out sc_logic 1 signal 25 } 
	{ acc_25_q0 sc_in sc_lv 32 signal 25 } 
	{ acc_26_address0 sc_out sc_lv 1 signal 26 } 
	{ acc_26_ce0 sc_out sc_logic 1 signal 26 } 
	{ acc_26_q0 sc_in sc_lv 32 signal 26 } 
	{ acc_27_address0 sc_out sc_lv 1 signal 27 } 
	{ acc_27_ce0 sc_out sc_logic 1 signal 27 } 
	{ acc_27_q0 sc_in sc_lv 32 signal 27 } 
	{ acc_28_address0 sc_out sc_lv 1 signal 28 } 
	{ acc_28_ce0 sc_out sc_logic 1 signal 28 } 
	{ acc_28_q0 sc_in sc_lv 32 signal 28 } 
	{ acc_29_address0 sc_out sc_lv 1 signal 29 } 
	{ acc_29_ce0 sc_out sc_logic 1 signal 29 } 
	{ acc_29_q0 sc_in sc_lv 32 signal 29 } 
	{ acc_30_address0 sc_out sc_lv 1 signal 30 } 
	{ acc_30_ce0 sc_out sc_logic 1 signal 30 } 
	{ acc_30_q0 sc_in sc_lv 32 signal 30 } 
	{ acc_31_address0 sc_out sc_lv 1 signal 31 } 
	{ acc_31_ce0 sc_out sc_logic 1 signal 31 } 
	{ acc_31_q0 sc_in sc_lv 32 signal 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "result_fifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "result_fifo", "role": "din" }} , 
 	{ "name": "result_fifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_fifo", "role": "full_n" }} , 
 	{ "name": "result_fifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_fifo", "role": "write" }} , 
 	{ "name": "result_fifo_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_fifo", "role": "num_data_valid" }} , 
 	{ "name": "result_fifo_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_fifo", "role": "fifo_cap" }} , 
 	{ "name": "acc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc", "role": "address0" }} , 
 	{ "name": "acc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc", "role": "ce0" }} , 
 	{ "name": "acc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc", "role": "q0" }} , 
 	{ "name": "acc_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_1", "role": "address0" }} , 
 	{ "name": "acc_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_1", "role": "ce0" }} , 
 	{ "name": "acc_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_1", "role": "q0" }} , 
 	{ "name": "acc_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_2", "role": "address0" }} , 
 	{ "name": "acc_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_2", "role": "ce0" }} , 
 	{ "name": "acc_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_2", "role": "q0" }} , 
 	{ "name": "acc_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_3", "role": "address0" }} , 
 	{ "name": "acc_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_3", "role": "ce0" }} , 
 	{ "name": "acc_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_3", "role": "q0" }} , 
 	{ "name": "acc_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_4", "role": "address0" }} , 
 	{ "name": "acc_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_4", "role": "ce0" }} , 
 	{ "name": "acc_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_4", "role": "q0" }} , 
 	{ "name": "acc_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_5", "role": "address0" }} , 
 	{ "name": "acc_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_5", "role": "ce0" }} , 
 	{ "name": "acc_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_5", "role": "q0" }} , 
 	{ "name": "acc_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_6", "role": "address0" }} , 
 	{ "name": "acc_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_6", "role": "ce0" }} , 
 	{ "name": "acc_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_6", "role": "q0" }} , 
 	{ "name": "acc_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_7", "role": "address0" }} , 
 	{ "name": "acc_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_7", "role": "ce0" }} , 
 	{ "name": "acc_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_7", "role": "q0" }} , 
 	{ "name": "acc_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_8", "role": "address0" }} , 
 	{ "name": "acc_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_8", "role": "ce0" }} , 
 	{ "name": "acc_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_8", "role": "q0" }} , 
 	{ "name": "acc_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_9", "role": "address0" }} , 
 	{ "name": "acc_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_9", "role": "ce0" }} , 
 	{ "name": "acc_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_9", "role": "q0" }} , 
 	{ "name": "acc_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_10", "role": "address0" }} , 
 	{ "name": "acc_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_10", "role": "ce0" }} , 
 	{ "name": "acc_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_10", "role": "q0" }} , 
 	{ "name": "acc_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_11", "role": "address0" }} , 
 	{ "name": "acc_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_11", "role": "ce0" }} , 
 	{ "name": "acc_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_11", "role": "q0" }} , 
 	{ "name": "acc_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_12", "role": "address0" }} , 
 	{ "name": "acc_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_12", "role": "ce0" }} , 
 	{ "name": "acc_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_12", "role": "q0" }} , 
 	{ "name": "acc_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_13", "role": "address0" }} , 
 	{ "name": "acc_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_13", "role": "ce0" }} , 
 	{ "name": "acc_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_13", "role": "q0" }} , 
 	{ "name": "acc_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_14", "role": "address0" }} , 
 	{ "name": "acc_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_14", "role": "ce0" }} , 
 	{ "name": "acc_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_14", "role": "q0" }} , 
 	{ "name": "acc_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_15", "role": "address0" }} , 
 	{ "name": "acc_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_15", "role": "ce0" }} , 
 	{ "name": "acc_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_15", "role": "q0" }} , 
 	{ "name": "acc_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_16", "role": "address0" }} , 
 	{ "name": "acc_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_16", "role": "ce0" }} , 
 	{ "name": "acc_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_16", "role": "q0" }} , 
 	{ "name": "acc_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_17", "role": "address0" }} , 
 	{ "name": "acc_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_17", "role": "ce0" }} , 
 	{ "name": "acc_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_17", "role": "q0" }} , 
 	{ "name": "acc_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_18", "role": "address0" }} , 
 	{ "name": "acc_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_18", "role": "ce0" }} , 
 	{ "name": "acc_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_18", "role": "q0" }} , 
 	{ "name": "acc_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_19", "role": "address0" }} , 
 	{ "name": "acc_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_19", "role": "ce0" }} , 
 	{ "name": "acc_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_19", "role": "q0" }} , 
 	{ "name": "acc_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_20", "role": "address0" }} , 
 	{ "name": "acc_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_20", "role": "ce0" }} , 
 	{ "name": "acc_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_20", "role": "q0" }} , 
 	{ "name": "acc_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_21", "role": "address0" }} , 
 	{ "name": "acc_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_21", "role": "ce0" }} , 
 	{ "name": "acc_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_21", "role": "q0" }} , 
 	{ "name": "acc_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_22", "role": "address0" }} , 
 	{ "name": "acc_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_22", "role": "ce0" }} , 
 	{ "name": "acc_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_22", "role": "q0" }} , 
 	{ "name": "acc_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_23", "role": "address0" }} , 
 	{ "name": "acc_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_23", "role": "ce0" }} , 
 	{ "name": "acc_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_23", "role": "q0" }} , 
 	{ "name": "acc_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_24", "role": "address0" }} , 
 	{ "name": "acc_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_24", "role": "ce0" }} , 
 	{ "name": "acc_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_24", "role": "q0" }} , 
 	{ "name": "acc_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_25", "role": "address0" }} , 
 	{ "name": "acc_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_25", "role": "ce0" }} , 
 	{ "name": "acc_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_25", "role": "q0" }} , 
 	{ "name": "acc_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_26", "role": "address0" }} , 
 	{ "name": "acc_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_26", "role": "ce0" }} , 
 	{ "name": "acc_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_26", "role": "q0" }} , 
 	{ "name": "acc_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_27", "role": "address0" }} , 
 	{ "name": "acc_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_27", "role": "ce0" }} , 
 	{ "name": "acc_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_27", "role": "q0" }} , 
 	{ "name": "acc_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_28", "role": "address0" }} , 
 	{ "name": "acc_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_28", "role": "ce0" }} , 
 	{ "name": "acc_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_28", "role": "q0" }} , 
 	{ "name": "acc_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_29", "role": "address0" }} , 
 	{ "name": "acc_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_29", "role": "ce0" }} , 
 	{ "name": "acc_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_29", "role": "q0" }} , 
 	{ "name": "acc_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_30", "role": "address0" }} , 
 	{ "name": "acc_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_30", "role": "ce0" }} , 
 	{ "name": "acc_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_30", "role": "q0" }} , 
 	{ "name": "acc_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_31", "role": "address0" }} , 
 	{ "name": "acc_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_31", "role": "ce0" }} , 
 	{ "name": "acc_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_31", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	spmm_compute_Pipeline_SPMM_WRITE {
		acc {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		acc_2 {Type I LastRead 0 FirstWrite -1}
		acc_3 {Type I LastRead 0 FirstWrite -1}
		acc_4 {Type I LastRead 0 FirstWrite -1}
		acc_5 {Type I LastRead 0 FirstWrite -1}
		acc_6 {Type I LastRead 0 FirstWrite -1}
		acc_7 {Type I LastRead 0 FirstWrite -1}
		acc_8 {Type I LastRead 0 FirstWrite -1}
		acc_9 {Type I LastRead 0 FirstWrite -1}
		acc_10 {Type I LastRead 0 FirstWrite -1}
		acc_11 {Type I LastRead 0 FirstWrite -1}
		acc_12 {Type I LastRead 0 FirstWrite -1}
		acc_13 {Type I LastRead 0 FirstWrite -1}
		acc_14 {Type I LastRead 0 FirstWrite -1}
		acc_15 {Type I LastRead 0 FirstWrite -1}
		acc_16 {Type I LastRead 0 FirstWrite -1}
		acc_17 {Type I LastRead 0 FirstWrite -1}
		acc_18 {Type I LastRead 0 FirstWrite -1}
		acc_19 {Type I LastRead 0 FirstWrite -1}
		acc_20 {Type I LastRead 0 FirstWrite -1}
		acc_21 {Type I LastRead 0 FirstWrite -1}
		acc_22 {Type I LastRead 0 FirstWrite -1}
		acc_23 {Type I LastRead 0 FirstWrite -1}
		acc_24 {Type I LastRead 0 FirstWrite -1}
		acc_25 {Type I LastRead 0 FirstWrite -1}
		acc_26 {Type I LastRead 0 FirstWrite -1}
		acc_27 {Type I LastRead 0 FirstWrite -1}
		acc_28 {Type I LastRead 0 FirstWrite -1}
		acc_29 {Type I LastRead 0 FirstWrite -1}
		acc_30 {Type I LastRead 0 FirstWrite -1}
		acc_31 {Type I LastRead 0 FirstWrite -1}
		result_fifo {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	acc { ap_memory {  { acc_address0 mem_address 1 1 }  { acc_ce0 mem_ce 1 1 }  { acc_q0 mem_dout 0 32 } } }
	acc_1 { ap_memory {  { acc_1_address0 mem_address 1 1 }  { acc_1_ce0 mem_ce 1 1 }  { acc_1_q0 mem_dout 0 32 } } }
	acc_2 { ap_memory {  { acc_2_address0 mem_address 1 1 }  { acc_2_ce0 mem_ce 1 1 }  { acc_2_q0 mem_dout 0 32 } } }
	acc_3 { ap_memory {  { acc_3_address0 mem_address 1 1 }  { acc_3_ce0 mem_ce 1 1 }  { acc_3_q0 mem_dout 0 32 } } }
	acc_4 { ap_memory {  { acc_4_address0 mem_address 1 1 }  { acc_4_ce0 mem_ce 1 1 }  { acc_4_q0 mem_dout 0 32 } } }
	acc_5 { ap_memory {  { acc_5_address0 mem_address 1 1 }  { acc_5_ce0 mem_ce 1 1 }  { acc_5_q0 mem_dout 0 32 } } }
	acc_6 { ap_memory {  { acc_6_address0 mem_address 1 1 }  { acc_6_ce0 mem_ce 1 1 }  { acc_6_q0 mem_dout 0 32 } } }
	acc_7 { ap_memory {  { acc_7_address0 mem_address 1 1 }  { acc_7_ce0 mem_ce 1 1 }  { acc_7_q0 mem_dout 0 32 } } }
	acc_8 { ap_memory {  { acc_8_address0 mem_address 1 1 }  { acc_8_ce0 mem_ce 1 1 }  { acc_8_q0 mem_dout 0 32 } } }
	acc_9 { ap_memory {  { acc_9_address0 mem_address 1 1 }  { acc_9_ce0 mem_ce 1 1 }  { acc_9_q0 mem_dout 0 32 } } }
	acc_10 { ap_memory {  { acc_10_address0 mem_address 1 1 }  { acc_10_ce0 mem_ce 1 1 }  { acc_10_q0 mem_dout 0 32 } } }
	acc_11 { ap_memory {  { acc_11_address0 mem_address 1 1 }  { acc_11_ce0 mem_ce 1 1 }  { acc_11_q0 mem_dout 0 32 } } }
	acc_12 { ap_memory {  { acc_12_address0 mem_address 1 1 }  { acc_12_ce0 mem_ce 1 1 }  { acc_12_q0 mem_dout 0 32 } } }
	acc_13 { ap_memory {  { acc_13_address0 mem_address 1 1 }  { acc_13_ce0 mem_ce 1 1 }  { acc_13_q0 mem_dout 0 32 } } }
	acc_14 { ap_memory {  { acc_14_address0 mem_address 1 1 }  { acc_14_ce0 mem_ce 1 1 }  { acc_14_q0 mem_dout 0 32 } } }
	acc_15 { ap_memory {  { acc_15_address0 mem_address 1 1 }  { acc_15_ce0 mem_ce 1 1 }  { acc_15_q0 mem_dout 0 32 } } }
	acc_16 { ap_memory {  { acc_16_address0 mem_address 1 1 }  { acc_16_ce0 mem_ce 1 1 }  { acc_16_q0 mem_dout 0 32 } } }
	acc_17 { ap_memory {  { acc_17_address0 mem_address 1 1 }  { acc_17_ce0 mem_ce 1 1 }  { acc_17_q0 mem_dout 0 32 } } }
	acc_18 { ap_memory {  { acc_18_address0 mem_address 1 1 }  { acc_18_ce0 mem_ce 1 1 }  { acc_18_q0 mem_dout 0 32 } } }
	acc_19 { ap_memory {  { acc_19_address0 mem_address 1 1 }  { acc_19_ce0 mem_ce 1 1 }  { acc_19_q0 mem_dout 0 32 } } }
	acc_20 { ap_memory {  { acc_20_address0 mem_address 1 1 }  { acc_20_ce0 mem_ce 1 1 }  { acc_20_q0 mem_dout 0 32 } } }
	acc_21 { ap_memory {  { acc_21_address0 mem_address 1 1 }  { acc_21_ce0 mem_ce 1 1 }  { acc_21_q0 mem_dout 0 32 } } }
	acc_22 { ap_memory {  { acc_22_address0 mem_address 1 1 }  { acc_22_ce0 mem_ce 1 1 }  { acc_22_q0 mem_dout 0 32 } } }
	acc_23 { ap_memory {  { acc_23_address0 mem_address 1 1 }  { acc_23_ce0 mem_ce 1 1 }  { acc_23_q0 mem_dout 0 32 } } }
	acc_24 { ap_memory {  { acc_24_address0 mem_address 1 1 }  { acc_24_ce0 mem_ce 1 1 }  { acc_24_q0 mem_dout 0 32 } } }
	acc_25 { ap_memory {  { acc_25_address0 mem_address 1 1 }  { acc_25_ce0 mem_ce 1 1 }  { acc_25_q0 mem_dout 0 32 } } }
	acc_26 { ap_memory {  { acc_26_address0 mem_address 1 1 }  { acc_26_ce0 mem_ce 1 1 }  { acc_26_q0 mem_dout 0 32 } } }
	acc_27 { ap_memory {  { acc_27_address0 mem_address 1 1 }  { acc_27_ce0 mem_ce 1 1 }  { acc_27_q0 mem_dout 0 32 } } }
	acc_28 { ap_memory {  { acc_28_address0 mem_address 1 1 }  { acc_28_ce0 mem_ce 1 1 }  { acc_28_q0 mem_dout 0 32 } } }
	acc_29 { ap_memory {  { acc_29_address0 mem_address 1 1 }  { acc_29_ce0 mem_ce 1 1 }  { acc_29_q0 mem_dout 0 32 } } }
	acc_30 { ap_memory {  { acc_30_address0 mem_address 1 1 }  { acc_30_ce0 mem_ce 1 1 }  { acc_30_q0 mem_dout 0 32 } } }
	acc_31 { ap_memory {  { acc_31_address0 mem_address 1 1 }  { acc_31_ce0 mem_ce 1 1 }  { acc_31_q0 mem_dout 0 32 } } }
	result_fifo { ap_fifo {  { result_fifo_din fifo_data_out 1 16 }  { result_fifo_full_n fifo_status_empty 0 1 }  { result_fifo_write fifo_data_in 1 1 }  { result_fifo_num_data_valid fifo_update 0 32 }  { result_fifo_fifo_cap fifo_data 0 32 } } }
}
