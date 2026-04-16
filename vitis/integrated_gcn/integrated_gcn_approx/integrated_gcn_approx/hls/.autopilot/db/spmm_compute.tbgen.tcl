set moduleName spmm_compute
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
set C_modelName {spmm_compute}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem2 int 512 regular {axi_master 0 stable }  }
	{ H_temp int 64 regular {ap_stable 0} }
	{ row_fifo int 32 regular {fifo 0 volatile }  }
	{ col_fifo int 32 regular {fifo 0 volatile }  }
	{ val_fifo int 8 regular {fifo 0 volatile }  }
	{ result_fifo int 8 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "H_temp","offset": { "type": "dynamic","port_name": "H_temp","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "H_temp", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "row_fifo", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_fifo", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "val_fifo", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "result_fifo", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 77
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
	{ H_temp sc_in sc_lv 64 signal 1 } 
	{ row_fifo_dout sc_in sc_lv 32 signal 2 } 
	{ row_fifo_empty_n sc_in sc_logic 1 signal 2 } 
	{ row_fifo_read sc_out sc_logic 1 signal 2 } 
	{ row_fifo_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ row_fifo_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ col_fifo_dout sc_in sc_lv 32 signal 3 } 
	{ col_fifo_empty_n sc_in sc_logic 1 signal 3 } 
	{ col_fifo_read sc_out sc_logic 1 signal 3 } 
	{ col_fifo_num_data_valid sc_in sc_lv 9 signal 3 } 
	{ col_fifo_fifo_cap sc_in sc_lv 9 signal 3 } 
	{ val_fifo_dout sc_in sc_lv 8 signal 4 } 
	{ val_fifo_empty_n sc_in sc_logic 1 signal 4 } 
	{ val_fifo_read sc_out sc_logic 1 signal 4 } 
	{ val_fifo_num_data_valid sc_in sc_lv 9 signal 4 } 
	{ val_fifo_fifo_cap sc_in sc_lv 9 signal 4 } 
	{ result_fifo_din sc_out sc_lv 8 signal 5 } 
	{ result_fifo_full_n sc_in sc_logic 1 signal 5 } 
	{ result_fifo_write sc_out sc_logic 1 signal 5 } 
	{ result_fifo_num_data_valid sc_in sc_lv 32 signal 5 } 
	{ result_fifo_fifo_cap sc_in sc_lv 32 signal 5 } 
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
 	{ "name": "H_temp", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "H_temp", "role": "default" }} , 
 	{ "name": "row_fifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_fifo", "role": "dout" }} , 
 	{ "name": "row_fifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_fifo", "role": "empty_n" }} , 
 	{ "name": "row_fifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_fifo", "role": "read" }} , 
 	{ "name": "row_fifo_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row_fifo", "role": "num_data_valid" }} , 
 	{ "name": "row_fifo_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "row_fifo", "role": "fifo_cap" }} , 
 	{ "name": "col_fifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_fifo", "role": "dout" }} , 
 	{ "name": "col_fifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_fifo", "role": "empty_n" }} , 
 	{ "name": "col_fifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_fifo", "role": "read" }} , 
 	{ "name": "col_fifo_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "col_fifo", "role": "num_data_valid" }} , 
 	{ "name": "col_fifo_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "col_fifo", "role": "fifo_cap" }} , 
 	{ "name": "val_fifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_fifo", "role": "dout" }} , 
 	{ "name": "val_fifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_fifo", "role": "empty_n" }} , 
 	{ "name": "val_fifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_fifo", "role": "read" }} , 
 	{ "name": "val_fifo_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "val_fifo", "role": "num_data_valid" }} , 
 	{ "name": "val_fifo_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "val_fifo", "role": "fifo_cap" }} , 
 	{ "name": "result_fifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result_fifo", "role": "din" }} , 
 	{ "name": "result_fifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_fifo", "role": "full_n" }} , 
 	{ "name": "result_fifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_fifo", "role": "write" }} , 
 	{ "name": "result_fifo_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_fifo", "role": "num_data_valid" }} , 
 	{ "name": "result_fifo_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_fifo", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	spmm_compute {
		gmem2 {Type I LastRead 12 FirstWrite -1}
		H_temp {Type I LastRead 0 FirstWrite -1}
		row_fifo {Type I LastRead 2 FirstWrite -1}
		col_fifo {Type I LastRead 3 FirstWrite -1}
		val_fifo {Type I LastRead 3 FirstWrite -1}
		result_fifo {Type O LastRead -1 FirstWrite 1}}
	spmm_compute_Pipeline_SPMM_INIT {
		acc_31 {Type O LastRead -1 FirstWrite 0}
		acc_30 {Type O LastRead -1 FirstWrite 0}
		acc_29 {Type O LastRead -1 FirstWrite 0}
		acc_28 {Type O LastRead -1 FirstWrite 0}
		acc_27 {Type O LastRead -1 FirstWrite 0}
		acc_26 {Type O LastRead -1 FirstWrite 0}
		acc_25 {Type O LastRead -1 FirstWrite 0}
		acc_24 {Type O LastRead -1 FirstWrite 0}
		acc_23 {Type O LastRead -1 FirstWrite 0}
		acc_22 {Type O LastRead -1 FirstWrite 0}
		acc_21 {Type O LastRead -1 FirstWrite 0}
		acc_20 {Type O LastRead -1 FirstWrite 0}
		acc_19 {Type O LastRead -1 FirstWrite 0}
		acc_18 {Type O LastRead -1 FirstWrite 0}
		acc_17 {Type O LastRead -1 FirstWrite 0}
		acc_16 {Type O LastRead -1 FirstWrite 0}
		acc_15 {Type O LastRead -1 FirstWrite 0}
		acc_14 {Type O LastRead -1 FirstWrite 0}
		acc_13 {Type O LastRead -1 FirstWrite 0}
		acc_12 {Type O LastRead -1 FirstWrite 0}
		acc_11 {Type O LastRead -1 FirstWrite 0}
		acc_10 {Type O LastRead -1 FirstWrite 0}
		acc_9 {Type O LastRead -1 FirstWrite 0}
		acc_8 {Type O LastRead -1 FirstWrite 0}
		acc_7 {Type O LastRead -1 FirstWrite 0}
		acc_6 {Type O LastRead -1 FirstWrite 0}
		acc_5 {Type O LastRead -1 FirstWrite 0}
		acc_4 {Type O LastRead -1 FirstWrite 0}
		acc_3 {Type O LastRead -1 FirstWrite 0}
		acc_2 {Type O LastRead -1 FirstWrite 0}
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
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
		result_fifo {Type O LastRead -1 FirstWrite 1}}
	spmm_compute_Pipeline_SPMM_MAC {
		acc_31 {Type IO LastRead 2 FirstWrite 3}
		acc_30 {Type IO LastRead 2 FirstWrite 3}
		acc_29 {Type IO LastRead 2 FirstWrite 3}
		acc_28 {Type IO LastRead 2 FirstWrite 3}
		acc_27 {Type IO LastRead 2 FirstWrite 3}
		acc_26 {Type IO LastRead 2 FirstWrite 3}
		acc_25 {Type IO LastRead 2 FirstWrite 3}
		acc_24 {Type IO LastRead 2 FirstWrite 3}
		acc_23 {Type IO LastRead 2 FirstWrite 3}
		acc_22 {Type IO LastRead 2 FirstWrite 3}
		acc_21 {Type IO LastRead 2 FirstWrite 3}
		acc_20 {Type IO LastRead 2 FirstWrite 3}
		acc_19 {Type IO LastRead 2 FirstWrite 3}
		acc_18 {Type IO LastRead 2 FirstWrite 3}
		acc_17 {Type IO LastRead 2 FirstWrite 3}
		acc_16 {Type IO LastRead 2 FirstWrite 3}
		acc_15 {Type IO LastRead 2 FirstWrite 3}
		acc_14 {Type IO LastRead 2 FirstWrite 3}
		acc_13 {Type IO LastRead 2 FirstWrite 3}
		acc_12 {Type IO LastRead 2 FirstWrite 3}
		acc_11 {Type IO LastRead 2 FirstWrite 3}
		acc_10 {Type IO LastRead 2 FirstWrite 3}
		acc_9 {Type IO LastRead 2 FirstWrite 3}
		acc_8 {Type IO LastRead 2 FirstWrite 3}
		acc_7 {Type IO LastRead 2 FirstWrite 3}
		acc_6 {Type IO LastRead 2 FirstWrite 3}
		acc_5 {Type IO LastRead 2 FirstWrite 3}
		acc_4 {Type IO LastRead 2 FirstWrite 3}
		acc_3 {Type IO LastRead 2 FirstWrite 3}
		acc_2 {Type IO LastRead 2 FirstWrite 3}
		acc_1 {Type IO LastRead 2 FirstWrite 3}
		acc {Type IO LastRead 2 FirstWrite 3}
		h_buf {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
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
		h_buf_31 {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "251845", "Max" : "8844329"}
	, {"Name" : "Interval", "Min" : "251845", "Max" : "8844329"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem2_0_AWVALID VALID 1 1 }  { m_axi_gmem2_0_AWREADY READY 0 1 }  { m_axi_gmem2_0_AWADDR ADDR 1 64 }  { m_axi_gmem2_0_AWID ID 1 1 }  { m_axi_gmem2_0_AWLEN SIZE 1 32 }  { m_axi_gmem2_0_AWSIZE BURST 1 3 }  { m_axi_gmem2_0_AWBURST LOCK 1 2 }  { m_axi_gmem2_0_AWLOCK CACHE 1 2 }  { m_axi_gmem2_0_AWCACHE PROT 1 4 }  { m_axi_gmem2_0_AWPROT QOS 1 3 }  { m_axi_gmem2_0_AWQOS REGION 1 4 }  { m_axi_gmem2_0_AWREGION USER 1 4 }  { m_axi_gmem2_0_AWUSER DATA 1 1 }  { m_axi_gmem2_0_WVALID VALID 1 1 }  { m_axi_gmem2_0_WREADY READY 0 1 }  { m_axi_gmem2_0_WDATA FIFONUM 1 512 }  { m_axi_gmem2_0_WSTRB STRB 1 64 }  { m_axi_gmem2_0_WLAST LAST 1 1 }  { m_axi_gmem2_0_WID ID 1 1 }  { m_axi_gmem2_0_WUSER DATA 1 1 }  { m_axi_gmem2_0_ARVALID VALID 1 1 }  { m_axi_gmem2_0_ARREADY READY 0 1 }  { m_axi_gmem2_0_ARADDR ADDR 1 64 }  { m_axi_gmem2_0_ARID ID 1 1 }  { m_axi_gmem2_0_ARLEN SIZE 1 32 }  { m_axi_gmem2_0_ARSIZE BURST 1 3 }  { m_axi_gmem2_0_ARBURST LOCK 1 2 }  { m_axi_gmem2_0_ARLOCK CACHE 1 2 }  { m_axi_gmem2_0_ARCACHE PROT 1 4 }  { m_axi_gmem2_0_ARPROT QOS 1 3 }  { m_axi_gmem2_0_ARQOS REGION 1 4 }  { m_axi_gmem2_0_ARREGION USER 1 4 }  { m_axi_gmem2_0_ARUSER DATA 1 1 }  { m_axi_gmem2_0_RVALID VALID 0 1 }  { m_axi_gmem2_0_RREADY READY 1 1 }  { m_axi_gmem2_0_RDATA FIFONUM 0 512 }  { m_axi_gmem2_0_RLAST LAST 0 1 }  { m_axi_gmem2_0_RID ID 0 1 }  { m_axi_gmem2_0_RFIFONUM LEN 0 9 }  { m_axi_gmem2_0_RUSER DATA 0 1 }  { m_axi_gmem2_0_RRESP RESP 0 2 }  { m_axi_gmem2_0_BVALID VALID 0 1 }  { m_axi_gmem2_0_BREADY READY 1 1 }  { m_axi_gmem2_0_BRESP RESP 0 2 }  { m_axi_gmem2_0_BID ID 0 1 }  { m_axi_gmem2_0_BUSER DATA 0 1 } } }
	H_temp { ap_stable {  { H_temp in_data 0 64 } } }
	row_fifo { ap_fifo {  { row_fifo_dout fifo_data_out 0 32 }  { row_fifo_empty_n fifo_status_empty 0 1 }  { row_fifo_read fifo_data_in 1 1 }  { row_fifo_num_data_valid fifo_update 0 5 }  { row_fifo_fifo_cap fifo_data 0 5 } } }
	col_fifo { ap_fifo {  { col_fifo_dout fifo_data_out 0 32 }  { col_fifo_empty_n fifo_status_empty 0 1 }  { col_fifo_read fifo_data_in 1 1 }  { col_fifo_num_data_valid fifo_update 0 9 }  { col_fifo_fifo_cap fifo_data 0 9 } } }
	val_fifo { ap_fifo {  { val_fifo_dout fifo_data_out 0 8 }  { val_fifo_empty_n fifo_status_empty 0 1 }  { val_fifo_read fifo_data_in 1 1 }  { val_fifo_num_data_valid fifo_update 0 9 }  { val_fifo_fifo_cap fifo_data 0 9 } } }
	result_fifo { ap_fifo {  { result_fifo_din fifo_data_out 1 8 }  { result_fifo_full_n fifo_status_empty 0 1 }  { result_fifo_write fifo_data_in 1 1 }  { result_fifo_num_data_valid fifo_update 0 32 }  { result_fifo_fifo_cap fifo_data 0 32 } } }
}
