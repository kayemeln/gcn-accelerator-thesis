set moduleName spmm_load_csr
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set cdfgNum 21
set C_modelName {spmm_load_csr}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem3 int 32 regular {axi_master 0 stable }  }
	{ row_length int 64 regular {ap_stable 0} }
	{ gmem4 int 32 regular {axi_master 0 stable }  }
	{ colind int 64 regular {ap_stable 0} }
	{ gmem5 int 8 regular {axi_master 0 stable }  }
	{ values int 64 regular {ap_stable 0} }
	{ nnz_total int 32 regular {ap_stable 0} }
	{ row_fifo int 32 regular {fifo 1 volatile }  }
	{ col_fifo int 32 regular {fifo 1 volatile }  }
	{ val_fifo int 8 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "row_length","offset": { "type": "dynamic","port_name": "row_length","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "row_length", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem4", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "colind","offset": { "type": "dynamic","port_name": "colind","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "colind", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem5", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "values","offset": { "type": "dynamic","port_name": "values","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "values", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "nnz_total", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_fifo", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "col_fifo", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "val_fifo", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 167
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem3_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem3_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem3_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem3_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem3_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem3_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem3_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem3_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem3_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem3_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem3_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem3_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem3_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem3_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem3_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem3_0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem3_0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem3_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem3_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem3_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem3_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem3_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem3_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem3_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem3_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem3_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem3_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem3_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem3_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem3_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem3_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem3_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem3_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem3_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem3_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem3_0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem3_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem3_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem3_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem3_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem3_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem3_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem3_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem3_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem3_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem3_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ row_length sc_in sc_lv 64 signal 1 } 
	{ m_axi_gmem4_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem4_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem4_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem4_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem4_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem4_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem4_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem4_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem4_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem4_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem4_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem4_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem4_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem4_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem4_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem4_0_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem4_0_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem4_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem4_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem4_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem4_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem4_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem4_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem4_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem4_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem4_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem4_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem4_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem4_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem4_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem4_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem4_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem4_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem4_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem4_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem4_0_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem4_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem4_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem4_0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_gmem4_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem4_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem4_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem4_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem4_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem4_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem4_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ colind sc_in sc_lv 64 signal 3 } 
	{ m_axi_gmem5_0_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem5_0_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem5_0_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem5_0_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem5_0_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem5_0_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem5_0_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem5_0_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem5_0_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem5_0_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem5_0_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem5_0_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem5_0_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem5_0_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem5_0_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem5_0_WDATA sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem5_0_WSTRB sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem5_0_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem5_0_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem5_0_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem5_0_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem5_0_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem5_0_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem5_0_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem5_0_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem5_0_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem5_0_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem5_0_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem5_0_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem5_0_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem5_0_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem5_0_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem5_0_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem5_0_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem5_0_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem5_0_RDATA sc_in sc_lv 8 signal 4 } 
	{ m_axi_gmem5_0_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem5_0_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem5_0_RFIFONUM sc_in sc_lv 11 signal 4 } 
	{ m_axi_gmem5_0_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem5_0_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem5_0_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem5_0_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem5_0_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem5_0_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem5_0_BUSER sc_in sc_lv 1 signal 4 } 
	{ values sc_in sc_lv 64 signal 5 } 
	{ nnz_total sc_in sc_lv 32 signal 6 } 
	{ row_fifo_din sc_out sc_lv 32 signal 7 } 
	{ row_fifo_full_n sc_in sc_logic 1 signal 7 } 
	{ row_fifo_write sc_out sc_logic 1 signal 7 } 
	{ row_fifo_num_data_valid sc_in sc_lv 5 signal 7 } 
	{ row_fifo_fifo_cap sc_in sc_lv 5 signal 7 } 
	{ col_fifo_din sc_out sc_lv 32 signal 8 } 
	{ col_fifo_full_n sc_in sc_logic 1 signal 8 } 
	{ col_fifo_write sc_out sc_logic 1 signal 8 } 
	{ col_fifo_num_data_valid sc_in sc_lv 9 signal 8 } 
	{ col_fifo_fifo_cap sc_in sc_lv 9 signal 8 } 
	{ val_fifo_din sc_out sc_lv 8 signal 9 } 
	{ val_fifo_full_n sc_in sc_logic 1 signal 9 } 
	{ val_fifo_write sc_out sc_logic 1 signal 9 } 
	{ val_fifo_num_data_valid sc_in sc_lv 9 signal 9 } 
	{ val_fifo_fifo_cap sc_in sc_lv 9 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "m_axi_gmem3_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem3_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem3_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem3_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem3_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem3_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem3_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem3_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem3_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem3_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem3_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem3_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem3_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem3_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem3_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem3_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem3_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem3_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem3_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem3_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem3_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem3_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem3_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem3_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem3_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem3_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem3_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem3_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem3_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem3_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem3_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem3_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem3_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem3_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem3_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem3_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem3_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem3_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem3_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem3_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem3_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem3_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem3_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem3_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem3_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem3_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BUSER" }} , 
 	{ "name": "row_length", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "row_length", "role": "default" }} , 
 	{ "name": "m_axi_gmem4_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem4_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem4_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem4_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem4_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem4_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem4_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem4_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem4_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem4_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem4_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem4_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem4_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem4_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem4_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem4_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem4_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem4_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem4_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem4_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem4_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem4_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem4_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem4_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem4_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem4_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem4_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem4_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem4_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem4_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem4_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem4_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem4_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem4_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem4_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem4_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem4_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem4_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem4_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem4_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem4_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem4_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem4_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem4_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem4_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem4_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "0_BUSER" }} , 
 	{ "name": "colind", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "colind", "role": "default" }} , 
 	{ "name": "m_axi_gmem5_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem5_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem5_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem5_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem5_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem5_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem5_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem5_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem5_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem5_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem5_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem5_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem5_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem5_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem5_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem5_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem5_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem5_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem5_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem5_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem5_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem5_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem5_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem5_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem5_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem5_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem5_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem5_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem5_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem5_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem5_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem5_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem5_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem5_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem5_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem5_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem5_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem5_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem5_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem5_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem5_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem5_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem5_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem5_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem5_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem5_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "0_BUSER" }} , 
 	{ "name": "values", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "values", "role": "default" }} , 
 	{ "name": "nnz_total", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnz_total", "role": "default" }} , 
 	{ "name": "row_fifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_fifo", "role": "din" }} , 
 	{ "name": "row_fifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_fifo", "role": "full_n" }} , 
 	{ "name": "row_fifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_fifo", "role": "write" }} , 
 	{ "name": "row_fifo_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row_fifo", "role": "num_data_valid" }} , 
 	{ "name": "row_fifo_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row_fifo", "role": "fifo_cap" }} , 
 	{ "name": "col_fifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_fifo", "role": "din" }} , 
 	{ "name": "col_fifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_fifo", "role": "full_n" }} , 
 	{ "name": "col_fifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_fifo", "role": "write" }} , 
 	{ "name": "col_fifo_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "col_fifo", "role": "num_data_valid" }} , 
 	{ "name": "col_fifo_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "col_fifo", "role": "fifo_cap" }} , 
 	{ "name": "val_fifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_fifo", "role": "din" }} , 
 	{ "name": "val_fifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_fifo", "role": "full_n" }} , 
 	{ "name": "val_fifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_fifo", "role": "write" }} , 
 	{ "name": "val_fifo_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "val_fifo", "role": "num_data_valid" }} , 
 	{ "name": "val_fifo_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "val_fifo", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	spmm_load_csr {
		gmem3 {Type I LastRead 1 FirstWrite -1}
		row_length {Type I LastRead 1 FirstWrite -1}
		gmem4 {Type I LastRead 1 FirstWrite -1}
		colind {Type I LastRead 1 FirstWrite -1}
		gmem5 {Type I LastRead 1 FirstWrite -1}
		values {Type I LastRead 1 FirstWrite -1}
		nnz_total {Type I LastRead 0 FirstWrite -1}
		row_fifo {Type O LastRead -1 FirstWrite 2}
		col_fifo {Type O LastRead -1 FirstWrite 2}
		val_fifo {Type O LastRead -1 FirstWrite 2}}
	spmm_load_csr_Pipeline_LOAD_ROWS {
		gmem3 {Type I LastRead 1 FirstWrite -1}
		sext_ln202 {Type I LastRead 0 FirstWrite -1}
		row_fifo {Type O LastRead -1 FirstWrite 2}}
	spmm_load_csr_Pipeline_LOAD_NNZ {
		nnz_total {Type I LastRead 0 FirstWrite -1}
		gmem4 {Type I LastRead 1 FirstWrite -1}
		sext_ln208 {Type I LastRead 0 FirstWrite -1}
		gmem5 {Type I LastRead 1 FirstWrite -1}
		values {Type I LastRead 0 FirstWrite -1}
		col_fifo {Type O LastRead -1 FirstWrite 2}
		val_fifo {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem3_0_AWVALID VALID 1 1 }  { m_axi_gmem3_0_AWREADY READY 0 1 }  { m_axi_gmem3_0_AWADDR ADDR 1 64 }  { m_axi_gmem3_0_AWID ID 1 1 }  { m_axi_gmem3_0_AWLEN SIZE 1 32 }  { m_axi_gmem3_0_AWSIZE BURST 1 3 }  { m_axi_gmem3_0_AWBURST LOCK 1 2 }  { m_axi_gmem3_0_AWLOCK CACHE 1 2 }  { m_axi_gmem3_0_AWCACHE PROT 1 4 }  { m_axi_gmem3_0_AWPROT QOS 1 3 }  { m_axi_gmem3_0_AWQOS REGION 1 4 }  { m_axi_gmem3_0_AWREGION USER 1 4 }  { m_axi_gmem3_0_AWUSER DATA 1 1 }  { m_axi_gmem3_0_WVALID VALID 1 1 }  { m_axi_gmem3_0_WREADY READY 0 1 }  { m_axi_gmem3_0_WDATA FIFONUM 1 32 }  { m_axi_gmem3_0_WSTRB STRB 1 4 }  { m_axi_gmem3_0_WLAST LAST 1 1 }  { m_axi_gmem3_0_WID ID 1 1 }  { m_axi_gmem3_0_WUSER DATA 1 1 }  { m_axi_gmem3_0_ARVALID VALID 1 1 }  { m_axi_gmem3_0_ARREADY READY 0 1 }  { m_axi_gmem3_0_ARADDR ADDR 1 64 }  { m_axi_gmem3_0_ARID ID 1 1 }  { m_axi_gmem3_0_ARLEN SIZE 1 32 }  { m_axi_gmem3_0_ARSIZE BURST 1 3 }  { m_axi_gmem3_0_ARBURST LOCK 1 2 }  { m_axi_gmem3_0_ARLOCK CACHE 1 2 }  { m_axi_gmem3_0_ARCACHE PROT 1 4 }  { m_axi_gmem3_0_ARPROT QOS 1 3 }  { m_axi_gmem3_0_ARQOS REGION 1 4 }  { m_axi_gmem3_0_ARREGION USER 1 4 }  { m_axi_gmem3_0_ARUSER DATA 1 1 }  { m_axi_gmem3_0_RVALID VALID 0 1 }  { m_axi_gmem3_0_RREADY READY 1 1 }  { m_axi_gmem3_0_RDATA FIFONUM 0 32 }  { m_axi_gmem3_0_RLAST LAST 0 1 }  { m_axi_gmem3_0_RID ID 0 1 }  { m_axi_gmem3_0_RFIFONUM LEN 0 9 }  { m_axi_gmem3_0_RUSER DATA 0 1 }  { m_axi_gmem3_0_RRESP RESP 0 2 }  { m_axi_gmem3_0_BVALID VALID 0 1 }  { m_axi_gmem3_0_BREADY READY 1 1 }  { m_axi_gmem3_0_BRESP RESP 0 2 }  { m_axi_gmem3_0_BID ID 0 1 }  { m_axi_gmem3_0_BUSER DATA 0 1 } } }
	row_length { ap_stable {  { row_length in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem4_0_AWVALID VALID 1 1 }  { m_axi_gmem4_0_AWREADY READY 0 1 }  { m_axi_gmem4_0_AWADDR ADDR 1 64 }  { m_axi_gmem4_0_AWID ID 1 1 }  { m_axi_gmem4_0_AWLEN SIZE 1 32 }  { m_axi_gmem4_0_AWSIZE BURST 1 3 }  { m_axi_gmem4_0_AWBURST LOCK 1 2 }  { m_axi_gmem4_0_AWLOCK CACHE 1 2 }  { m_axi_gmem4_0_AWCACHE PROT 1 4 }  { m_axi_gmem4_0_AWPROT QOS 1 3 }  { m_axi_gmem4_0_AWQOS REGION 1 4 }  { m_axi_gmem4_0_AWREGION USER 1 4 }  { m_axi_gmem4_0_AWUSER DATA 1 1 }  { m_axi_gmem4_0_WVALID VALID 1 1 }  { m_axi_gmem4_0_WREADY READY 0 1 }  { m_axi_gmem4_0_WDATA FIFONUM 1 32 }  { m_axi_gmem4_0_WSTRB STRB 1 4 }  { m_axi_gmem4_0_WLAST LAST 1 1 }  { m_axi_gmem4_0_WID ID 1 1 }  { m_axi_gmem4_0_WUSER DATA 1 1 }  { m_axi_gmem4_0_ARVALID VALID 1 1 }  { m_axi_gmem4_0_ARREADY READY 0 1 }  { m_axi_gmem4_0_ARADDR ADDR 1 64 }  { m_axi_gmem4_0_ARID ID 1 1 }  { m_axi_gmem4_0_ARLEN SIZE 1 32 }  { m_axi_gmem4_0_ARSIZE BURST 1 3 }  { m_axi_gmem4_0_ARBURST LOCK 1 2 }  { m_axi_gmem4_0_ARLOCK CACHE 1 2 }  { m_axi_gmem4_0_ARCACHE PROT 1 4 }  { m_axi_gmem4_0_ARPROT QOS 1 3 }  { m_axi_gmem4_0_ARQOS REGION 1 4 }  { m_axi_gmem4_0_ARREGION USER 1 4 }  { m_axi_gmem4_0_ARUSER DATA 1 1 }  { m_axi_gmem4_0_RVALID VALID 0 1 }  { m_axi_gmem4_0_RREADY READY 1 1 }  { m_axi_gmem4_0_RDATA FIFONUM 0 32 }  { m_axi_gmem4_0_RLAST LAST 0 1 }  { m_axi_gmem4_0_RID ID 0 1 }  { m_axi_gmem4_0_RFIFONUM LEN 0 9 }  { m_axi_gmem4_0_RUSER DATA 0 1 }  { m_axi_gmem4_0_RRESP RESP 0 2 }  { m_axi_gmem4_0_BVALID VALID 0 1 }  { m_axi_gmem4_0_BREADY READY 1 1 }  { m_axi_gmem4_0_BRESP RESP 0 2 }  { m_axi_gmem4_0_BID ID 0 1 }  { m_axi_gmem4_0_BUSER DATA 0 1 } } }
	colind { ap_stable {  { colind in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem5_0_AWVALID VALID 1 1 }  { m_axi_gmem5_0_AWREADY READY 0 1 }  { m_axi_gmem5_0_AWADDR ADDR 1 64 }  { m_axi_gmem5_0_AWID ID 1 1 }  { m_axi_gmem5_0_AWLEN SIZE 1 32 }  { m_axi_gmem5_0_AWSIZE BURST 1 3 }  { m_axi_gmem5_0_AWBURST LOCK 1 2 }  { m_axi_gmem5_0_AWLOCK CACHE 1 2 }  { m_axi_gmem5_0_AWCACHE PROT 1 4 }  { m_axi_gmem5_0_AWPROT QOS 1 3 }  { m_axi_gmem5_0_AWQOS REGION 1 4 }  { m_axi_gmem5_0_AWREGION USER 1 4 }  { m_axi_gmem5_0_AWUSER DATA 1 1 }  { m_axi_gmem5_0_WVALID VALID 1 1 }  { m_axi_gmem5_0_WREADY READY 0 1 }  { m_axi_gmem5_0_WDATA FIFONUM 1 8 }  { m_axi_gmem5_0_WSTRB STRB 1 1 }  { m_axi_gmem5_0_WLAST LAST 1 1 }  { m_axi_gmem5_0_WID ID 1 1 }  { m_axi_gmem5_0_WUSER DATA 1 1 }  { m_axi_gmem5_0_ARVALID VALID 1 1 }  { m_axi_gmem5_0_ARREADY READY 0 1 }  { m_axi_gmem5_0_ARADDR ADDR 1 64 }  { m_axi_gmem5_0_ARID ID 1 1 }  { m_axi_gmem5_0_ARLEN SIZE 1 32 }  { m_axi_gmem5_0_ARSIZE BURST 1 3 }  { m_axi_gmem5_0_ARBURST LOCK 1 2 }  { m_axi_gmem5_0_ARLOCK CACHE 1 2 }  { m_axi_gmem5_0_ARCACHE PROT 1 4 }  { m_axi_gmem5_0_ARPROT QOS 1 3 }  { m_axi_gmem5_0_ARQOS REGION 1 4 }  { m_axi_gmem5_0_ARREGION USER 1 4 }  { m_axi_gmem5_0_ARUSER DATA 1 1 }  { m_axi_gmem5_0_RVALID VALID 0 1 }  { m_axi_gmem5_0_RREADY READY 1 1 }  { m_axi_gmem5_0_RDATA FIFONUM 0 8 }  { m_axi_gmem5_0_RLAST LAST 0 1 }  { m_axi_gmem5_0_RID ID 0 1 }  { m_axi_gmem5_0_RFIFONUM LEN 0 11 }  { m_axi_gmem5_0_RUSER DATA 0 1 }  { m_axi_gmem5_0_RRESP RESP 0 2 }  { m_axi_gmem5_0_BVALID VALID 0 1 }  { m_axi_gmem5_0_BREADY READY 1 1 }  { m_axi_gmem5_0_BRESP RESP 0 2 }  { m_axi_gmem5_0_BID ID 0 1 }  { m_axi_gmem5_0_BUSER DATA 0 1 } } }
	values { ap_stable {  { values in_data 0 64 } } }
	nnz_total { ap_stable {  { nnz_total in_data 0 32 } } }
	row_fifo { ap_fifo {  { row_fifo_din fifo_data_out 1 32 }  { row_fifo_full_n fifo_status_empty 0 1 }  { row_fifo_write fifo_data_in 1 1 }  { row_fifo_num_data_valid fifo_update 0 5 }  { row_fifo_fifo_cap fifo_data 0 5 } } }
	col_fifo { ap_fifo {  { col_fifo_din fifo_data_out 1 32 }  { col_fifo_full_n fifo_status_empty 0 1 }  { col_fifo_write fifo_data_in 1 1 }  { col_fifo_num_data_valid fifo_update 0 9 }  { col_fifo_fifo_cap fifo_data 0 9 } } }
	val_fifo { ap_fifo {  { val_fifo_din fifo_data_out 1 8 }  { val_fifo_full_n fifo_status_empty 0 1 }  { val_fifo_write fifo_data_in 1 1 }  { val_fifo_num_data_valid fifo_update 0 9 }  { val_fifo_fifo_cap fifo_data 0 9 } } }
}
