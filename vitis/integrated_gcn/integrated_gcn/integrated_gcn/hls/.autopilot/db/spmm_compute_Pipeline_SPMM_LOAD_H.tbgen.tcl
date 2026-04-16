set moduleName spmm_compute_Pipeline_SPMM_LOAD_H
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
set C_modelName {spmm_compute_Pipeline_SPMM_LOAD_H}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict h_buf_31 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_30 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_29 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_28 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_27 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_26 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_25 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_24 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_23 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_22 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_21 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_20 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_19 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_18 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_17 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_16 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_15 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_14 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_13 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_12 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_11 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_10 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_9 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_8 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_7 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_6 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_5 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_4 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_3 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_2 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf_1 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict h_buf { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ gmem2 int 512 regular {axi_master 0 stable }  }
	{ sext_ln255_1 int 58 regular  }
	{ h_buf_31 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_30 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_29 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_28 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_27 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_26 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_25 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_24 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_23 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_22 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_21 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_20 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_19 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_18 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_17 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_16 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_15 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_14 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_13 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_12 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_11 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_10 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_9 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_8 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_7 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_6 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_5 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_4 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_3 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_2 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf_1 int 16 regular {array 2 { 0 3 } 0 1 }  }
	{ h_buf int 16 regular {array 2 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "H_temp","offset": { "type": "dynamic","port_name": "H_temp","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "sext_ln255_1", "interface" : "wire", "bitwidth" : 58, "direction" : "READONLY"} , 
 	{ "Name" : "h_buf_31", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_30", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_29", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_28", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_27", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_26", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_25", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_24", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_23", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_22", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_21", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_20", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_19", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_18", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_17", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_16", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_15", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_14", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_13", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_12", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_11", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_10", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_9", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_8", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_buf", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 181
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem2_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem2_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem2_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem2_0_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem2_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem2_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem2_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem2_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem2_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem2_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem2_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln255_1 sc_in sc_lv 58 signal 1 } 
	{ h_buf_31_address0 sc_out sc_lv 1 signal 2 } 
	{ h_buf_31_ce0 sc_out sc_logic 1 signal 2 } 
	{ h_buf_31_we0 sc_out sc_logic 1 signal 2 } 
	{ h_buf_31_d0 sc_out sc_lv 16 signal 2 } 
	{ h_buf_30_address0 sc_out sc_lv 1 signal 3 } 
	{ h_buf_30_ce0 sc_out sc_logic 1 signal 3 } 
	{ h_buf_30_we0 sc_out sc_logic 1 signal 3 } 
	{ h_buf_30_d0 sc_out sc_lv 16 signal 3 } 
	{ h_buf_29_address0 sc_out sc_lv 1 signal 4 } 
	{ h_buf_29_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_buf_29_we0 sc_out sc_logic 1 signal 4 } 
	{ h_buf_29_d0 sc_out sc_lv 16 signal 4 } 
	{ h_buf_28_address0 sc_out sc_lv 1 signal 5 } 
	{ h_buf_28_ce0 sc_out sc_logic 1 signal 5 } 
	{ h_buf_28_we0 sc_out sc_logic 1 signal 5 } 
	{ h_buf_28_d0 sc_out sc_lv 16 signal 5 } 
	{ h_buf_27_address0 sc_out sc_lv 1 signal 6 } 
	{ h_buf_27_ce0 sc_out sc_logic 1 signal 6 } 
	{ h_buf_27_we0 sc_out sc_logic 1 signal 6 } 
	{ h_buf_27_d0 sc_out sc_lv 16 signal 6 } 
	{ h_buf_26_address0 sc_out sc_lv 1 signal 7 } 
	{ h_buf_26_ce0 sc_out sc_logic 1 signal 7 } 
	{ h_buf_26_we0 sc_out sc_logic 1 signal 7 } 
	{ h_buf_26_d0 sc_out sc_lv 16 signal 7 } 
	{ h_buf_25_address0 sc_out sc_lv 1 signal 8 } 
	{ h_buf_25_ce0 sc_out sc_logic 1 signal 8 } 
	{ h_buf_25_we0 sc_out sc_logic 1 signal 8 } 
	{ h_buf_25_d0 sc_out sc_lv 16 signal 8 } 
	{ h_buf_24_address0 sc_out sc_lv 1 signal 9 } 
	{ h_buf_24_ce0 sc_out sc_logic 1 signal 9 } 
	{ h_buf_24_we0 sc_out sc_logic 1 signal 9 } 
	{ h_buf_24_d0 sc_out sc_lv 16 signal 9 } 
	{ h_buf_23_address0 sc_out sc_lv 1 signal 10 } 
	{ h_buf_23_ce0 sc_out sc_logic 1 signal 10 } 
	{ h_buf_23_we0 sc_out sc_logic 1 signal 10 } 
	{ h_buf_23_d0 sc_out sc_lv 16 signal 10 } 
	{ h_buf_22_address0 sc_out sc_lv 1 signal 11 } 
	{ h_buf_22_ce0 sc_out sc_logic 1 signal 11 } 
	{ h_buf_22_we0 sc_out sc_logic 1 signal 11 } 
	{ h_buf_22_d0 sc_out sc_lv 16 signal 11 } 
	{ h_buf_21_address0 sc_out sc_lv 1 signal 12 } 
	{ h_buf_21_ce0 sc_out sc_logic 1 signal 12 } 
	{ h_buf_21_we0 sc_out sc_logic 1 signal 12 } 
	{ h_buf_21_d0 sc_out sc_lv 16 signal 12 } 
	{ h_buf_20_address0 sc_out sc_lv 1 signal 13 } 
	{ h_buf_20_ce0 sc_out sc_logic 1 signal 13 } 
	{ h_buf_20_we0 sc_out sc_logic 1 signal 13 } 
	{ h_buf_20_d0 sc_out sc_lv 16 signal 13 } 
	{ h_buf_19_address0 sc_out sc_lv 1 signal 14 } 
	{ h_buf_19_ce0 sc_out sc_logic 1 signal 14 } 
	{ h_buf_19_we0 sc_out sc_logic 1 signal 14 } 
	{ h_buf_19_d0 sc_out sc_lv 16 signal 14 } 
	{ h_buf_18_address0 sc_out sc_lv 1 signal 15 } 
	{ h_buf_18_ce0 sc_out sc_logic 1 signal 15 } 
	{ h_buf_18_we0 sc_out sc_logic 1 signal 15 } 
	{ h_buf_18_d0 sc_out sc_lv 16 signal 15 } 
	{ h_buf_17_address0 sc_out sc_lv 1 signal 16 } 
	{ h_buf_17_ce0 sc_out sc_logic 1 signal 16 } 
	{ h_buf_17_we0 sc_out sc_logic 1 signal 16 } 
	{ h_buf_17_d0 sc_out sc_lv 16 signal 16 } 
	{ h_buf_16_address0 sc_out sc_lv 1 signal 17 } 
	{ h_buf_16_ce0 sc_out sc_logic 1 signal 17 } 
	{ h_buf_16_we0 sc_out sc_logic 1 signal 17 } 
	{ h_buf_16_d0 sc_out sc_lv 16 signal 17 } 
	{ h_buf_15_address0 sc_out sc_lv 1 signal 18 } 
	{ h_buf_15_ce0 sc_out sc_logic 1 signal 18 } 
	{ h_buf_15_we0 sc_out sc_logic 1 signal 18 } 
	{ h_buf_15_d0 sc_out sc_lv 16 signal 18 } 
	{ h_buf_14_address0 sc_out sc_lv 1 signal 19 } 
	{ h_buf_14_ce0 sc_out sc_logic 1 signal 19 } 
	{ h_buf_14_we0 sc_out sc_logic 1 signal 19 } 
	{ h_buf_14_d0 sc_out sc_lv 16 signal 19 } 
	{ h_buf_13_address0 sc_out sc_lv 1 signal 20 } 
	{ h_buf_13_ce0 sc_out sc_logic 1 signal 20 } 
	{ h_buf_13_we0 sc_out sc_logic 1 signal 20 } 
	{ h_buf_13_d0 sc_out sc_lv 16 signal 20 } 
	{ h_buf_12_address0 sc_out sc_lv 1 signal 21 } 
	{ h_buf_12_ce0 sc_out sc_logic 1 signal 21 } 
	{ h_buf_12_we0 sc_out sc_logic 1 signal 21 } 
	{ h_buf_12_d0 sc_out sc_lv 16 signal 21 } 
	{ h_buf_11_address0 sc_out sc_lv 1 signal 22 } 
	{ h_buf_11_ce0 sc_out sc_logic 1 signal 22 } 
	{ h_buf_11_we0 sc_out sc_logic 1 signal 22 } 
	{ h_buf_11_d0 sc_out sc_lv 16 signal 22 } 
	{ h_buf_10_address0 sc_out sc_lv 1 signal 23 } 
	{ h_buf_10_ce0 sc_out sc_logic 1 signal 23 } 
	{ h_buf_10_we0 sc_out sc_logic 1 signal 23 } 
	{ h_buf_10_d0 sc_out sc_lv 16 signal 23 } 
	{ h_buf_9_address0 sc_out sc_lv 1 signal 24 } 
	{ h_buf_9_ce0 sc_out sc_logic 1 signal 24 } 
	{ h_buf_9_we0 sc_out sc_logic 1 signal 24 } 
	{ h_buf_9_d0 sc_out sc_lv 16 signal 24 } 
	{ h_buf_8_address0 sc_out sc_lv 1 signal 25 } 
	{ h_buf_8_ce0 sc_out sc_logic 1 signal 25 } 
	{ h_buf_8_we0 sc_out sc_logic 1 signal 25 } 
	{ h_buf_8_d0 sc_out sc_lv 16 signal 25 } 
	{ h_buf_7_address0 sc_out sc_lv 1 signal 26 } 
	{ h_buf_7_ce0 sc_out sc_logic 1 signal 26 } 
	{ h_buf_7_we0 sc_out sc_logic 1 signal 26 } 
	{ h_buf_7_d0 sc_out sc_lv 16 signal 26 } 
	{ h_buf_6_address0 sc_out sc_lv 1 signal 27 } 
	{ h_buf_6_ce0 sc_out sc_logic 1 signal 27 } 
	{ h_buf_6_we0 sc_out sc_logic 1 signal 27 } 
	{ h_buf_6_d0 sc_out sc_lv 16 signal 27 } 
	{ h_buf_5_address0 sc_out sc_lv 1 signal 28 } 
	{ h_buf_5_ce0 sc_out sc_logic 1 signal 28 } 
	{ h_buf_5_we0 sc_out sc_logic 1 signal 28 } 
	{ h_buf_5_d0 sc_out sc_lv 16 signal 28 } 
	{ h_buf_4_address0 sc_out sc_lv 1 signal 29 } 
	{ h_buf_4_ce0 sc_out sc_logic 1 signal 29 } 
	{ h_buf_4_we0 sc_out sc_logic 1 signal 29 } 
	{ h_buf_4_d0 sc_out sc_lv 16 signal 29 } 
	{ h_buf_3_address0 sc_out sc_lv 1 signal 30 } 
	{ h_buf_3_ce0 sc_out sc_logic 1 signal 30 } 
	{ h_buf_3_we0 sc_out sc_logic 1 signal 30 } 
	{ h_buf_3_d0 sc_out sc_lv 16 signal 30 } 
	{ h_buf_2_address0 sc_out sc_lv 1 signal 31 } 
	{ h_buf_2_ce0 sc_out sc_logic 1 signal 31 } 
	{ h_buf_2_we0 sc_out sc_logic 1 signal 31 } 
	{ h_buf_2_d0 sc_out sc_lv 16 signal 31 } 
	{ h_buf_1_address0 sc_out sc_lv 1 signal 32 } 
	{ h_buf_1_ce0 sc_out sc_logic 1 signal 32 } 
	{ h_buf_1_we0 sc_out sc_logic 1 signal 32 } 
	{ h_buf_1_d0 sc_out sc_lv 16 signal 32 } 
	{ h_buf_address0 sc_out sc_lv 1 signal 33 } 
	{ h_buf_ce0 sc_out sc_logic 1 signal 33 } 
	{ h_buf_we0 sc_out sc_logic 1 signal 33 } 
	{ h_buf_d0 sc_out sc_lv 16 signal 33 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem2_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem2_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem2_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem2_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem2_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem2_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem2_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem2_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem2_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem2_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem2_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem2_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem2_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem2_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem2_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem2_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem2_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem2_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem2_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem2_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem2_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem2_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem2_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem2_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem2_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem2_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem2_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem2_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem2_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem2_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem2_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem2_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem2_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem2_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem2_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem2_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem2_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem2_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem2_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem2_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BUSER" }} , 
 	{ "name": "sext_ln255_1", "direction": "in", "datatype": "sc_lv", "bitwidth":58, "type": "signal", "bundle":{"name": "sext_ln255_1", "role": "default" }} , 
 	{ "name": "h_buf_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_31", "role": "address0" }} , 
 	{ "name": "h_buf_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_31", "role": "ce0" }} , 
 	{ "name": "h_buf_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_31", "role": "we0" }} , 
 	{ "name": "h_buf_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_31", "role": "d0" }} , 
 	{ "name": "h_buf_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_30", "role": "address0" }} , 
 	{ "name": "h_buf_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_30", "role": "ce0" }} , 
 	{ "name": "h_buf_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_30", "role": "we0" }} , 
 	{ "name": "h_buf_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_30", "role": "d0" }} , 
 	{ "name": "h_buf_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_29", "role": "address0" }} , 
 	{ "name": "h_buf_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_29", "role": "ce0" }} , 
 	{ "name": "h_buf_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_29", "role": "we0" }} , 
 	{ "name": "h_buf_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_29", "role": "d0" }} , 
 	{ "name": "h_buf_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_28", "role": "address0" }} , 
 	{ "name": "h_buf_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_28", "role": "ce0" }} , 
 	{ "name": "h_buf_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_28", "role": "we0" }} , 
 	{ "name": "h_buf_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_28", "role": "d0" }} , 
 	{ "name": "h_buf_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_27", "role": "address0" }} , 
 	{ "name": "h_buf_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_27", "role": "ce0" }} , 
 	{ "name": "h_buf_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_27", "role": "we0" }} , 
 	{ "name": "h_buf_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_27", "role": "d0" }} , 
 	{ "name": "h_buf_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_26", "role": "address0" }} , 
 	{ "name": "h_buf_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_26", "role": "ce0" }} , 
 	{ "name": "h_buf_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_26", "role": "we0" }} , 
 	{ "name": "h_buf_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_26", "role": "d0" }} , 
 	{ "name": "h_buf_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_25", "role": "address0" }} , 
 	{ "name": "h_buf_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_25", "role": "ce0" }} , 
 	{ "name": "h_buf_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_25", "role": "we0" }} , 
 	{ "name": "h_buf_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_25", "role": "d0" }} , 
 	{ "name": "h_buf_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_24", "role": "address0" }} , 
 	{ "name": "h_buf_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_24", "role": "ce0" }} , 
 	{ "name": "h_buf_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_24", "role": "we0" }} , 
 	{ "name": "h_buf_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_24", "role": "d0" }} , 
 	{ "name": "h_buf_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_23", "role": "address0" }} , 
 	{ "name": "h_buf_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_23", "role": "ce0" }} , 
 	{ "name": "h_buf_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_23", "role": "we0" }} , 
 	{ "name": "h_buf_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_23", "role": "d0" }} , 
 	{ "name": "h_buf_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_22", "role": "address0" }} , 
 	{ "name": "h_buf_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_22", "role": "ce0" }} , 
 	{ "name": "h_buf_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_22", "role": "we0" }} , 
 	{ "name": "h_buf_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_22", "role": "d0" }} , 
 	{ "name": "h_buf_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_21", "role": "address0" }} , 
 	{ "name": "h_buf_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_21", "role": "ce0" }} , 
 	{ "name": "h_buf_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_21", "role": "we0" }} , 
 	{ "name": "h_buf_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_21", "role": "d0" }} , 
 	{ "name": "h_buf_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_20", "role": "address0" }} , 
 	{ "name": "h_buf_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_20", "role": "ce0" }} , 
 	{ "name": "h_buf_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_20", "role": "we0" }} , 
 	{ "name": "h_buf_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_20", "role": "d0" }} , 
 	{ "name": "h_buf_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_19", "role": "address0" }} , 
 	{ "name": "h_buf_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_19", "role": "ce0" }} , 
 	{ "name": "h_buf_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_19", "role": "we0" }} , 
 	{ "name": "h_buf_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_19", "role": "d0" }} , 
 	{ "name": "h_buf_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_18", "role": "address0" }} , 
 	{ "name": "h_buf_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_18", "role": "ce0" }} , 
 	{ "name": "h_buf_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_18", "role": "we0" }} , 
 	{ "name": "h_buf_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_18", "role": "d0" }} , 
 	{ "name": "h_buf_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_17", "role": "address0" }} , 
 	{ "name": "h_buf_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_17", "role": "ce0" }} , 
 	{ "name": "h_buf_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_17", "role": "we0" }} , 
 	{ "name": "h_buf_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_17", "role": "d0" }} , 
 	{ "name": "h_buf_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_16", "role": "address0" }} , 
 	{ "name": "h_buf_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_16", "role": "ce0" }} , 
 	{ "name": "h_buf_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_16", "role": "we0" }} , 
 	{ "name": "h_buf_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_16", "role": "d0" }} , 
 	{ "name": "h_buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_15", "role": "address0" }} , 
 	{ "name": "h_buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_15", "role": "ce0" }} , 
 	{ "name": "h_buf_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_15", "role": "we0" }} , 
 	{ "name": "h_buf_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_15", "role": "d0" }} , 
 	{ "name": "h_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_14", "role": "address0" }} , 
 	{ "name": "h_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_14", "role": "ce0" }} , 
 	{ "name": "h_buf_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_14", "role": "we0" }} , 
 	{ "name": "h_buf_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_14", "role": "d0" }} , 
 	{ "name": "h_buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_13", "role": "address0" }} , 
 	{ "name": "h_buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_13", "role": "ce0" }} , 
 	{ "name": "h_buf_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_13", "role": "we0" }} , 
 	{ "name": "h_buf_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_13", "role": "d0" }} , 
 	{ "name": "h_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_12", "role": "address0" }} , 
 	{ "name": "h_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_12", "role": "ce0" }} , 
 	{ "name": "h_buf_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_12", "role": "we0" }} , 
 	{ "name": "h_buf_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_12", "role": "d0" }} , 
 	{ "name": "h_buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_11", "role": "address0" }} , 
 	{ "name": "h_buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_11", "role": "ce0" }} , 
 	{ "name": "h_buf_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_11", "role": "we0" }} , 
 	{ "name": "h_buf_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_11", "role": "d0" }} , 
 	{ "name": "h_buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_10", "role": "address0" }} , 
 	{ "name": "h_buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_10", "role": "ce0" }} , 
 	{ "name": "h_buf_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_10", "role": "we0" }} , 
 	{ "name": "h_buf_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_10", "role": "d0" }} , 
 	{ "name": "h_buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_9", "role": "address0" }} , 
 	{ "name": "h_buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_9", "role": "ce0" }} , 
 	{ "name": "h_buf_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_9", "role": "we0" }} , 
 	{ "name": "h_buf_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_9", "role": "d0" }} , 
 	{ "name": "h_buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_8", "role": "address0" }} , 
 	{ "name": "h_buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_8", "role": "ce0" }} , 
 	{ "name": "h_buf_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_8", "role": "we0" }} , 
 	{ "name": "h_buf_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_8", "role": "d0" }} , 
 	{ "name": "h_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_7", "role": "address0" }} , 
 	{ "name": "h_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_7", "role": "ce0" }} , 
 	{ "name": "h_buf_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_7", "role": "we0" }} , 
 	{ "name": "h_buf_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_7", "role": "d0" }} , 
 	{ "name": "h_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_6", "role": "address0" }} , 
 	{ "name": "h_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_6", "role": "ce0" }} , 
 	{ "name": "h_buf_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_6", "role": "we0" }} , 
 	{ "name": "h_buf_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_6", "role": "d0" }} , 
 	{ "name": "h_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_5", "role": "address0" }} , 
 	{ "name": "h_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_5", "role": "ce0" }} , 
 	{ "name": "h_buf_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_5", "role": "we0" }} , 
 	{ "name": "h_buf_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_5", "role": "d0" }} , 
 	{ "name": "h_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_4", "role": "address0" }} , 
 	{ "name": "h_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_4", "role": "ce0" }} , 
 	{ "name": "h_buf_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_4", "role": "we0" }} , 
 	{ "name": "h_buf_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_4", "role": "d0" }} , 
 	{ "name": "h_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_3", "role": "address0" }} , 
 	{ "name": "h_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_3", "role": "ce0" }} , 
 	{ "name": "h_buf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_3", "role": "we0" }} , 
 	{ "name": "h_buf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_3", "role": "d0" }} , 
 	{ "name": "h_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_2", "role": "address0" }} , 
 	{ "name": "h_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_2", "role": "ce0" }} , 
 	{ "name": "h_buf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_2", "role": "we0" }} , 
 	{ "name": "h_buf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_2", "role": "d0" }} , 
 	{ "name": "h_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_1", "role": "address0" }} , 
 	{ "name": "h_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_1", "role": "ce0" }} , 
 	{ "name": "h_buf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf_1", "role": "we0" }} , 
 	{ "name": "h_buf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf_1", "role": "d0" }} , 
 	{ "name": "h_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf", "role": "address0" }} , 
 	{ "name": "h_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf", "role": "ce0" }} , 
 	{ "name": "h_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_buf", "role": "we0" }} , 
 	{ "name": "h_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_buf", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	spmm_compute_Pipeline_SPMM_LOAD_H {
		gmem2 {Type I LastRead 1 FirstWrite -1}
		sext_ln255_1 {Type I LastRead 0 FirstWrite -1}
		h_buf_31 {Type O LastRead -1 FirstWrite 2}
		h_buf_30 {Type O LastRead -1 FirstWrite 2}
		h_buf_29 {Type O LastRead -1 FirstWrite 2}
		h_buf_28 {Type O LastRead -1 FirstWrite 2}
		h_buf_27 {Type O LastRead -1 FirstWrite 2}
		h_buf_26 {Type O LastRead -1 FirstWrite 2}
		h_buf_25 {Type O LastRead -1 FirstWrite 2}
		h_buf_24 {Type O LastRead -1 FirstWrite 2}
		h_buf_23 {Type O LastRead -1 FirstWrite 2}
		h_buf_22 {Type O LastRead -1 FirstWrite 2}
		h_buf_21 {Type O LastRead -1 FirstWrite 2}
		h_buf_20 {Type O LastRead -1 FirstWrite 2}
		h_buf_19 {Type O LastRead -1 FirstWrite 2}
		h_buf_18 {Type O LastRead -1 FirstWrite 2}
		h_buf_17 {Type O LastRead -1 FirstWrite 2}
		h_buf_16 {Type O LastRead -1 FirstWrite 2}
		h_buf_15 {Type O LastRead -1 FirstWrite 2}
		h_buf_14 {Type O LastRead -1 FirstWrite 2}
		h_buf_13 {Type O LastRead -1 FirstWrite 2}
		h_buf_12 {Type O LastRead -1 FirstWrite 2}
		h_buf_11 {Type O LastRead -1 FirstWrite 2}
		h_buf_10 {Type O LastRead -1 FirstWrite 2}
		h_buf_9 {Type O LastRead -1 FirstWrite 2}
		h_buf_8 {Type O LastRead -1 FirstWrite 2}
		h_buf_7 {Type O LastRead -1 FirstWrite 2}
		h_buf_6 {Type O LastRead -1 FirstWrite 2}
		h_buf_5 {Type O LastRead -1 FirstWrite 2}
		h_buf_4 {Type O LastRead -1 FirstWrite 2}
		h_buf_3 {Type O LastRead -1 FirstWrite 2}
		h_buf_2 {Type O LastRead -1 FirstWrite 2}
		h_buf_1 {Type O LastRead -1 FirstWrite 2}
		h_buf {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem2_0_AWVALID VALID 1 1 }  { m_axi_gmem2_0_AWREADY READY 0 1 }  { m_axi_gmem2_0_AWADDR ADDR 1 64 }  { m_axi_gmem2_0_AWID ID 1 1 }  { m_axi_gmem2_0_AWLEN SIZE 1 32 }  { m_axi_gmem2_0_AWSIZE BURST 1 3 }  { m_axi_gmem2_0_AWBURST LOCK 1 2 }  { m_axi_gmem2_0_AWLOCK CACHE 1 2 }  { m_axi_gmem2_0_AWCACHE PROT 1 4 }  { m_axi_gmem2_0_AWPROT QOS 1 3 }  { m_axi_gmem2_0_AWQOS REGION 1 4 }  { m_axi_gmem2_0_AWREGION USER 1 4 }  { m_axi_gmem2_0_AWUSER DATA 1 1 }  { m_axi_gmem2_0_WVALID VALID 1 1 }  { m_axi_gmem2_0_WREADY READY 0 1 }  { m_axi_gmem2_0_WDATA FIFONUM 1 512 }  { m_axi_gmem2_0_WSTRB STRB 1 64 }  { m_axi_gmem2_0_WLAST LAST 1 1 }  { m_axi_gmem2_0_WID ID 1 1 }  { m_axi_gmem2_0_WUSER DATA 1 1 }  { m_axi_gmem2_0_ARVALID VALID 1 1 }  { m_axi_gmem2_0_ARREADY READY 0 1 }  { m_axi_gmem2_0_ARADDR ADDR 1 64 }  { m_axi_gmem2_0_ARID ID 1 1 }  { m_axi_gmem2_0_ARLEN SIZE 1 32 }  { m_axi_gmem2_0_ARSIZE BURST 1 3 }  { m_axi_gmem2_0_ARBURST LOCK 1 2 }  { m_axi_gmem2_0_ARLOCK CACHE 1 2 }  { m_axi_gmem2_0_ARCACHE PROT 1 4 }  { m_axi_gmem2_0_ARPROT QOS 1 3 }  { m_axi_gmem2_0_ARQOS REGION 1 4 }  { m_axi_gmem2_0_ARREGION USER 1 4 }  { m_axi_gmem2_0_ARUSER DATA 1 1 }  { m_axi_gmem2_0_RVALID VALID 0 1 }  { m_axi_gmem2_0_RREADY READY 1 1 }  { m_axi_gmem2_0_RDATA FIFONUM 0 512 }  { m_axi_gmem2_0_RLAST LAST 0 1 }  { m_axi_gmem2_0_RID ID 0 1 }  { m_axi_gmem2_0_RFIFONUM LEN 0 9 }  { m_axi_gmem2_0_RUSER DATA 0 1 }  { m_axi_gmem2_0_RRESP RESP 0 2 }  { m_axi_gmem2_0_BVALID VALID 0 1 }  { m_axi_gmem2_0_BREADY READY 1 1 }  { m_axi_gmem2_0_BRESP RESP 0 2 }  { m_axi_gmem2_0_BID ID 0 1 }  { m_axi_gmem2_0_BUSER DATA 0 1 } } }
	sext_ln255_1 { ap_none {  { sext_ln255_1 in_data 0 58 } } }
	h_buf_31 { ap_memory {  { h_buf_31_address0 mem_address 1 1 }  { h_buf_31_ce0 mem_ce 1 1 }  { h_buf_31_we0 mem_we 1 1 }  { h_buf_31_d0 mem_din 1 16 } } }
	h_buf_30 { ap_memory {  { h_buf_30_address0 mem_address 1 1 }  { h_buf_30_ce0 mem_ce 1 1 }  { h_buf_30_we0 mem_we 1 1 }  { h_buf_30_d0 mem_din 1 16 } } }
	h_buf_29 { ap_memory {  { h_buf_29_address0 mem_address 1 1 }  { h_buf_29_ce0 mem_ce 1 1 }  { h_buf_29_we0 mem_we 1 1 }  { h_buf_29_d0 mem_din 1 16 } } }
	h_buf_28 { ap_memory {  { h_buf_28_address0 mem_address 1 1 }  { h_buf_28_ce0 mem_ce 1 1 }  { h_buf_28_we0 mem_we 1 1 }  { h_buf_28_d0 mem_din 1 16 } } }
	h_buf_27 { ap_memory {  { h_buf_27_address0 mem_address 1 1 }  { h_buf_27_ce0 mem_ce 1 1 }  { h_buf_27_we0 mem_we 1 1 }  { h_buf_27_d0 mem_din 1 16 } } }
	h_buf_26 { ap_memory {  { h_buf_26_address0 mem_address 1 1 }  { h_buf_26_ce0 mem_ce 1 1 }  { h_buf_26_we0 mem_we 1 1 }  { h_buf_26_d0 mem_din 1 16 } } }
	h_buf_25 { ap_memory {  { h_buf_25_address0 mem_address 1 1 }  { h_buf_25_ce0 mem_ce 1 1 }  { h_buf_25_we0 mem_we 1 1 }  { h_buf_25_d0 mem_din 1 16 } } }
	h_buf_24 { ap_memory {  { h_buf_24_address0 mem_address 1 1 }  { h_buf_24_ce0 mem_ce 1 1 }  { h_buf_24_we0 mem_we 1 1 }  { h_buf_24_d0 mem_din 1 16 } } }
	h_buf_23 { ap_memory {  { h_buf_23_address0 mem_address 1 1 }  { h_buf_23_ce0 mem_ce 1 1 }  { h_buf_23_we0 mem_we 1 1 }  { h_buf_23_d0 mem_din 1 16 } } }
	h_buf_22 { ap_memory {  { h_buf_22_address0 mem_address 1 1 }  { h_buf_22_ce0 mem_ce 1 1 }  { h_buf_22_we0 mem_we 1 1 }  { h_buf_22_d0 mem_din 1 16 } } }
	h_buf_21 { ap_memory {  { h_buf_21_address0 mem_address 1 1 }  { h_buf_21_ce0 mem_ce 1 1 }  { h_buf_21_we0 mem_we 1 1 }  { h_buf_21_d0 mem_din 1 16 } } }
	h_buf_20 { ap_memory {  { h_buf_20_address0 mem_address 1 1 }  { h_buf_20_ce0 mem_ce 1 1 }  { h_buf_20_we0 mem_we 1 1 }  { h_buf_20_d0 mem_din 1 16 } } }
	h_buf_19 { ap_memory {  { h_buf_19_address0 mem_address 1 1 }  { h_buf_19_ce0 mem_ce 1 1 }  { h_buf_19_we0 mem_we 1 1 }  { h_buf_19_d0 mem_din 1 16 } } }
	h_buf_18 { ap_memory {  { h_buf_18_address0 mem_address 1 1 }  { h_buf_18_ce0 mem_ce 1 1 }  { h_buf_18_we0 mem_we 1 1 }  { h_buf_18_d0 mem_din 1 16 } } }
	h_buf_17 { ap_memory {  { h_buf_17_address0 mem_address 1 1 }  { h_buf_17_ce0 mem_ce 1 1 }  { h_buf_17_we0 mem_we 1 1 }  { h_buf_17_d0 mem_din 1 16 } } }
	h_buf_16 { ap_memory {  { h_buf_16_address0 mem_address 1 1 }  { h_buf_16_ce0 mem_ce 1 1 }  { h_buf_16_we0 mem_we 1 1 }  { h_buf_16_d0 mem_din 1 16 } } }
	h_buf_15 { ap_memory {  { h_buf_15_address0 mem_address 1 1 }  { h_buf_15_ce0 mem_ce 1 1 }  { h_buf_15_we0 mem_we 1 1 }  { h_buf_15_d0 mem_din 1 16 } } }
	h_buf_14 { ap_memory {  { h_buf_14_address0 mem_address 1 1 }  { h_buf_14_ce0 mem_ce 1 1 }  { h_buf_14_we0 mem_we 1 1 }  { h_buf_14_d0 mem_din 1 16 } } }
	h_buf_13 { ap_memory {  { h_buf_13_address0 mem_address 1 1 }  { h_buf_13_ce0 mem_ce 1 1 }  { h_buf_13_we0 mem_we 1 1 }  { h_buf_13_d0 mem_din 1 16 } } }
	h_buf_12 { ap_memory {  { h_buf_12_address0 mem_address 1 1 }  { h_buf_12_ce0 mem_ce 1 1 }  { h_buf_12_we0 mem_we 1 1 }  { h_buf_12_d0 mem_din 1 16 } } }
	h_buf_11 { ap_memory {  { h_buf_11_address0 mem_address 1 1 }  { h_buf_11_ce0 mem_ce 1 1 }  { h_buf_11_we0 mem_we 1 1 }  { h_buf_11_d0 mem_din 1 16 } } }
	h_buf_10 { ap_memory {  { h_buf_10_address0 mem_address 1 1 }  { h_buf_10_ce0 mem_ce 1 1 }  { h_buf_10_we0 mem_we 1 1 }  { h_buf_10_d0 mem_din 1 16 } } }
	h_buf_9 { ap_memory {  { h_buf_9_address0 mem_address 1 1 }  { h_buf_9_ce0 mem_ce 1 1 }  { h_buf_9_we0 mem_we 1 1 }  { h_buf_9_d0 mem_din 1 16 } } }
	h_buf_8 { ap_memory {  { h_buf_8_address0 mem_address 1 1 }  { h_buf_8_ce0 mem_ce 1 1 }  { h_buf_8_we0 mem_we 1 1 }  { h_buf_8_d0 mem_din 1 16 } } }
	h_buf_7 { ap_memory {  { h_buf_7_address0 mem_address 1 1 }  { h_buf_7_ce0 mem_ce 1 1 }  { h_buf_7_we0 mem_we 1 1 }  { h_buf_7_d0 mem_din 1 16 } } }
	h_buf_6 { ap_memory {  { h_buf_6_address0 mem_address 1 1 }  { h_buf_6_ce0 mem_ce 1 1 }  { h_buf_6_we0 mem_we 1 1 }  { h_buf_6_d0 mem_din 1 16 } } }
	h_buf_5 { ap_memory {  { h_buf_5_address0 mem_address 1 1 }  { h_buf_5_ce0 mem_ce 1 1 }  { h_buf_5_we0 mem_we 1 1 }  { h_buf_5_d0 mem_din 1 16 } } }
	h_buf_4 { ap_memory {  { h_buf_4_address0 mem_address 1 1 }  { h_buf_4_ce0 mem_ce 1 1 }  { h_buf_4_we0 mem_we 1 1 }  { h_buf_4_d0 mem_din 1 16 } } }
	h_buf_3 { ap_memory {  { h_buf_3_address0 mem_address 1 1 }  { h_buf_3_ce0 mem_ce 1 1 }  { h_buf_3_we0 mem_we 1 1 }  { h_buf_3_d0 mem_din 1 16 } } }
	h_buf_2 { ap_memory {  { h_buf_2_address0 mem_address 1 1 }  { h_buf_2_ce0 mem_ce 1 1 }  { h_buf_2_we0 mem_we 1 1 }  { h_buf_2_d0 mem_din 1 16 } } }
	h_buf_1 { ap_memory {  { h_buf_1_address0 mem_address 1 1 }  { h_buf_1_ce0 mem_ce 1 1 }  { h_buf_1_we0 mem_we 1 1 }  { h_buf_1_d0 mem_din 1 16 } } }
	h_buf { ap_memory {  { h_buf_address0 mem_address 1 1 }  { h_buf_ce0 mem_ce 1 1 }  { h_buf_we0 mem_we 1 1 }  { h_buf_d0 mem_din 1 16 } } }
}
