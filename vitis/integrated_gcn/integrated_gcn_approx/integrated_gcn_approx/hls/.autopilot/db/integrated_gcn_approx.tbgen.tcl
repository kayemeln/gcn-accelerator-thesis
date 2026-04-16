set moduleName integrated_gcn_approx
set isTopModule 1
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
set C_modelName {integrated_gcn_approx}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem0 int 512 regular {axi_master 0}  }
	{ gmem1 int 512 regular {axi_master 0}  }
	{ gmem2 int 512 regular {axi_master 2}  }
	{ gmem3 int 32 regular {axi_master 0}  }
	{ gmem4 int 32 regular {axi_master 0}  }
	{ gmem5 int 8 regular {axi_master 0}  }
	{ gmem6 int 512 regular {axi_master 1}  }
	{ X int 64 regular {axi_slave 0}  }
	{ W int 64 regular {axi_slave 0}  }
	{ H_temp int 64 regular {axi_slave 0}  }
	{ row_length int 64 regular {axi_slave 0}  }
	{ colind int 64 regular {axi_slave 0}  }
	{ values int 64 regular {axi_slave 0}  }
	{ nnz_total int 32 regular  }
	{ H_out int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "X","offset": { "type": "dynamic","port_name": "X","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "W","offset": { "type": "dynamic","port_name": "W","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READWRITE", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "H_temp","offset": { "type": "dynamic","port_name": "H_temp","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "row_length","offset": { "type": "dynamic","port_name": "row_length","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem4", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "colind","offset": { "type": "dynamic","port_name": "colind","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem5", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "values","offset": { "type": "dynamic","port_name": "values","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem6", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "H_out","offset": { "type": "dynamic","port_name": "H_out","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "X", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "W", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "H_temp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "row_length", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "colind", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "values", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "nnz_total", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} ]}
# RTL Port declarations: 
set portNum 339
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 512 signal 2 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 512 signal 2 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem3_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem4_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem4_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem4_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem4_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem4_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem4_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem4_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem4_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem4_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem4_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem4_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem4_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem4_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem4_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_gmem4_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem4_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem4_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem4_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem4_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem4_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem5_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem5_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem5_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem5_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem5_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem5_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem5_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem5_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem5_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem5_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem5_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem5_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem5_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_gmem5_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem5_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem5_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem5_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem5_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem5_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem5_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem5_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem5_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem5_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem5_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem5_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem5_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem5_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem5_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem5_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_gmem5_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem5_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem5_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem5_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem5_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem5_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem5_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem5_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem5_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem6_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem6_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem6_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem6_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem6_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_gmem6_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem6_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem6_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem6_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem6_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem6_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem6_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem6_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem6_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem6_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem6_WDATA sc_out sc_lv 512 signal 6 } 
	{ m_axi_gmem6_WSTRB sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem6_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem6_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem6_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem6_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem6_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem6_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem6_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem6_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_gmem6_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem6_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem6_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem6_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem6_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem6_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem6_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem6_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem6_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem6_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem6_RDATA sc_in sc_lv 512 signal 6 } 
	{ m_axi_gmem6_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem6_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem6_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem6_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem6_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem6_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem6_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem6_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem6_BUSER sc_in sc_lv 1 signal 6 } 
	{ nnz_total sc_in sc_lv 32 signal 13 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"X","role":"data","value":"16"},{"name":"W","role":"data","value":"28"},{"name":"H_temp","role":"data","value":"40"},{"name":"row_length","role":"data","value":"52"},{"name":"colind","role":"data","value":"64"},{"name":"values","role":"data","value":"76"},{"name":"H_out","role":"data","value":"88"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WID" }} , 
 	{ "name": "m_axi_gmem3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RID" }} , 
 	{ "name": "m_axi_gmem3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WID" }} , 
 	{ "name": "m_axi_gmem4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RID" }} , 
 	{ "name": "m_axi_gmem4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BID" }} , 
 	{ "name": "m_axi_gmem4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem5_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem5_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem5_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem5_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem5_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem5", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem5_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem5_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem5_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem5_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem5_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem5_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem5_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem5_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem5_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem5_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem5_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem5", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem5_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem5_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem5_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WID" }} , 
 	{ "name": "m_axi_gmem5_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem5_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem5_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem5_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem5_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem5_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem5", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem5_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem5_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem5_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem5_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem5_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem5_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem5_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem5_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem5_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem5_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem5_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem5", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem5_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem5_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RID" }} , 
 	{ "name": "m_axi_gmem5_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem5_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem5_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem5_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem5_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem5_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BID" }} , 
 	{ "name": "m_axi_gmem5_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem6_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem6_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem6_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem6", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem6_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem6_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem6", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem6_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem6_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem6_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem6_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem6_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem6_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem6_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem6_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem6_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem6_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem6_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem6", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem6_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem6", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem6_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem6_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WID" }} , 
 	{ "name": "m_axi_gmem6_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem6_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem6_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem6_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem6", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem6_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem6_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem6", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem6_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem6_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem6_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem6_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem6_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem6", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem6_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem6_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem6", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem6_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem6_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem6_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem6_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem6", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem6_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem6_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RID" }} , 
 	{ "name": "m_axi_gmem6_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem6_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem6_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem6_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem6_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem6", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem6_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "BID" }} , 
 	{ "name": "m_axi_gmem6_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem6", "role": "BUSER" }} , 
 	{ "name": "nnz_total", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnz_total", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	integrated_gcn_approx {
		gmem0 {Type I LastRead 12 FirstWrite -1}
		gmem1 {Type I LastRead 9 FirstWrite -1}
		gmem2 {Type IO LastRead 12 FirstWrite -1}
		gmem3 {Type I LastRead 1 FirstWrite -1}
		gmem4 {Type I LastRead 1 FirstWrite -1}
		gmem5 {Type I LastRead 1 FirstWrite -1}
		gmem6 {Type O LastRead 3 FirstWrite 2}
		X {Type I LastRead 0 FirstWrite -1}
		W {Type I LastRead 0 FirstWrite -1}
		H_temp {Type I LastRead 0 FirstWrite -1}
		row_length {Type I LastRead 0 FirstWrite -1}
		colind {Type I LastRead 0 FirstWrite -1}
		values {Type I LastRead 0 FirstWrite -1}
		nnz_total {Type I LastRead 2 FirstWrite -1}
		H_out {Type I LastRead 0 FirstWrite -1}}
	gemm_stage {
		gmem0 {Type I LastRead 12 FirstWrite -1}
		X {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 9 FirstWrite -1}
		W {Type I LastRead 0 FirstWrite -1}
		gmem2 {Type O LastRead 3 FirstWrite 2}
		H_temp {Type I LastRead 4 FirstWrite -1}}
	gemm_read_X {
		gmem0 {Type I LastRead 12 FirstWrite -1}
		X {Type I LastRead 0 FirstWrite -1}
		X_stream {Type O LastRead -1 FirstWrite 13}}
	gemm_read_W {
		gmem1 {Type I LastRead 9 FirstWrite -1}
		W {Type I LastRead 0 FirstWrite -1}
		W_stream {Type O LastRead -1 FirstWrite 10}}
	gemm_compute {
		X_stream {Type I LastRead 2 FirstWrite -1}
		W_stream {Type I LastRead 2 FirstWrite -1}
		XW_stream {Type O LastRead -1 FirstWrite 1}}
	gemm_compute_Pipeline_COMP_INIT {
		XW_block_255 {Type O LastRead -1 FirstWrite 0}
		XW_block_254 {Type O LastRead -1 FirstWrite 0}
		XW_block_253 {Type O LastRead -1 FirstWrite 0}
		XW_block_252 {Type O LastRead -1 FirstWrite 0}
		XW_block_251 {Type O LastRead -1 FirstWrite 0}
		XW_block_250 {Type O LastRead -1 FirstWrite 0}
		XW_block_249 {Type O LastRead -1 FirstWrite 0}
		XW_block_248 {Type O LastRead -1 FirstWrite 0}
		XW_block_247 {Type O LastRead -1 FirstWrite 0}
		XW_block_246 {Type O LastRead -1 FirstWrite 0}
		XW_block_245 {Type O LastRead -1 FirstWrite 0}
		XW_block_244 {Type O LastRead -1 FirstWrite 0}
		XW_block_243 {Type O LastRead -1 FirstWrite 0}
		XW_block_242 {Type O LastRead -1 FirstWrite 0}
		XW_block_241 {Type O LastRead -1 FirstWrite 0}
		XW_block_240 {Type O LastRead -1 FirstWrite 0}
		XW_block_239 {Type O LastRead -1 FirstWrite 0}
		XW_block_238 {Type O LastRead -1 FirstWrite 0}
		XW_block_237 {Type O LastRead -1 FirstWrite 0}
		XW_block_236 {Type O LastRead -1 FirstWrite 0}
		XW_block_235 {Type O LastRead -1 FirstWrite 0}
		XW_block_234 {Type O LastRead -1 FirstWrite 0}
		XW_block_233 {Type O LastRead -1 FirstWrite 0}
		XW_block_232 {Type O LastRead -1 FirstWrite 0}
		XW_block_231 {Type O LastRead -1 FirstWrite 0}
		XW_block_230 {Type O LastRead -1 FirstWrite 0}
		XW_block_229 {Type O LastRead -1 FirstWrite 0}
		XW_block_228 {Type O LastRead -1 FirstWrite 0}
		XW_block_227 {Type O LastRead -1 FirstWrite 0}
		XW_block_226 {Type O LastRead -1 FirstWrite 0}
		XW_block_225 {Type O LastRead -1 FirstWrite 0}
		XW_block_224 {Type O LastRead -1 FirstWrite 0}
		XW_block_223 {Type O LastRead -1 FirstWrite 0}
		XW_block_222 {Type O LastRead -1 FirstWrite 0}
		XW_block_221 {Type O LastRead -1 FirstWrite 0}
		XW_block_220 {Type O LastRead -1 FirstWrite 0}
		XW_block_219 {Type O LastRead -1 FirstWrite 0}
		XW_block_218 {Type O LastRead -1 FirstWrite 0}
		XW_block_217 {Type O LastRead -1 FirstWrite 0}
		XW_block_216 {Type O LastRead -1 FirstWrite 0}
		XW_block_215 {Type O LastRead -1 FirstWrite 0}
		XW_block_214 {Type O LastRead -1 FirstWrite 0}
		XW_block_213 {Type O LastRead -1 FirstWrite 0}
		XW_block_212 {Type O LastRead -1 FirstWrite 0}
		XW_block_211 {Type O LastRead -1 FirstWrite 0}
		XW_block_210 {Type O LastRead -1 FirstWrite 0}
		XW_block_209 {Type O LastRead -1 FirstWrite 0}
		XW_block_208 {Type O LastRead -1 FirstWrite 0}
		XW_block_207 {Type O LastRead -1 FirstWrite 0}
		XW_block_206 {Type O LastRead -1 FirstWrite 0}
		XW_block_205 {Type O LastRead -1 FirstWrite 0}
		XW_block_204 {Type O LastRead -1 FirstWrite 0}
		XW_block_203 {Type O LastRead -1 FirstWrite 0}
		XW_block_202 {Type O LastRead -1 FirstWrite 0}
		XW_block_201 {Type O LastRead -1 FirstWrite 0}
		XW_block_200 {Type O LastRead -1 FirstWrite 0}
		XW_block_199 {Type O LastRead -1 FirstWrite 0}
		XW_block_198 {Type O LastRead -1 FirstWrite 0}
		XW_block_197 {Type O LastRead -1 FirstWrite 0}
		XW_block_196 {Type O LastRead -1 FirstWrite 0}
		XW_block_195 {Type O LastRead -1 FirstWrite 0}
		XW_block_194 {Type O LastRead -1 FirstWrite 0}
		XW_block_193 {Type O LastRead -1 FirstWrite 0}
		XW_block_192 {Type O LastRead -1 FirstWrite 0}
		XW_block_191 {Type O LastRead -1 FirstWrite 0}
		XW_block_190 {Type O LastRead -1 FirstWrite 0}
		XW_block_189 {Type O LastRead -1 FirstWrite 0}
		XW_block_188 {Type O LastRead -1 FirstWrite 0}
		XW_block_187 {Type O LastRead -1 FirstWrite 0}
		XW_block_186 {Type O LastRead -1 FirstWrite 0}
		XW_block_185 {Type O LastRead -1 FirstWrite 0}
		XW_block_184 {Type O LastRead -1 FirstWrite 0}
		XW_block_183 {Type O LastRead -1 FirstWrite 0}
		XW_block_182 {Type O LastRead -1 FirstWrite 0}
		XW_block_181 {Type O LastRead -1 FirstWrite 0}
		XW_block_180 {Type O LastRead -1 FirstWrite 0}
		XW_block_179 {Type O LastRead -1 FirstWrite 0}
		XW_block_178 {Type O LastRead -1 FirstWrite 0}
		XW_block_177 {Type O LastRead -1 FirstWrite 0}
		XW_block_176 {Type O LastRead -1 FirstWrite 0}
		XW_block_175 {Type O LastRead -1 FirstWrite 0}
		XW_block_174 {Type O LastRead -1 FirstWrite 0}
		XW_block_173 {Type O LastRead -1 FirstWrite 0}
		XW_block_172 {Type O LastRead -1 FirstWrite 0}
		XW_block_171 {Type O LastRead -1 FirstWrite 0}
		XW_block_170 {Type O LastRead -1 FirstWrite 0}
		XW_block_169 {Type O LastRead -1 FirstWrite 0}
		XW_block_168 {Type O LastRead -1 FirstWrite 0}
		XW_block_167 {Type O LastRead -1 FirstWrite 0}
		XW_block_166 {Type O LastRead -1 FirstWrite 0}
		XW_block_165 {Type O LastRead -1 FirstWrite 0}
		XW_block_164 {Type O LastRead -1 FirstWrite 0}
		XW_block_163 {Type O LastRead -1 FirstWrite 0}
		XW_block_162 {Type O LastRead -1 FirstWrite 0}
		XW_block_161 {Type O LastRead -1 FirstWrite 0}
		XW_block_160 {Type O LastRead -1 FirstWrite 0}
		XW_block_159 {Type O LastRead -1 FirstWrite 0}
		XW_block_158 {Type O LastRead -1 FirstWrite 0}
		XW_block_157 {Type O LastRead -1 FirstWrite 0}
		XW_block_156 {Type O LastRead -1 FirstWrite 0}
		XW_block_155 {Type O LastRead -1 FirstWrite 0}
		XW_block_154 {Type O LastRead -1 FirstWrite 0}
		XW_block_153 {Type O LastRead -1 FirstWrite 0}
		XW_block_152 {Type O LastRead -1 FirstWrite 0}
		XW_block_151 {Type O LastRead -1 FirstWrite 0}
		XW_block_150 {Type O LastRead -1 FirstWrite 0}
		XW_block_149 {Type O LastRead -1 FirstWrite 0}
		XW_block_148 {Type O LastRead -1 FirstWrite 0}
		XW_block_147 {Type O LastRead -1 FirstWrite 0}
		XW_block_146 {Type O LastRead -1 FirstWrite 0}
		XW_block_145 {Type O LastRead -1 FirstWrite 0}
		XW_block_144 {Type O LastRead -1 FirstWrite 0}
		XW_block_143 {Type O LastRead -1 FirstWrite 0}
		XW_block_142 {Type O LastRead -1 FirstWrite 0}
		XW_block_141 {Type O LastRead -1 FirstWrite 0}
		XW_block_140 {Type O LastRead -1 FirstWrite 0}
		XW_block_139 {Type O LastRead -1 FirstWrite 0}
		XW_block_138 {Type O LastRead -1 FirstWrite 0}
		XW_block_137 {Type O LastRead -1 FirstWrite 0}
		XW_block_136 {Type O LastRead -1 FirstWrite 0}
		XW_block_135 {Type O LastRead -1 FirstWrite 0}
		XW_block_134 {Type O LastRead -1 FirstWrite 0}
		XW_block_133 {Type O LastRead -1 FirstWrite 0}
		XW_block_132 {Type O LastRead -1 FirstWrite 0}
		XW_block_131 {Type O LastRead -1 FirstWrite 0}
		XW_block_130 {Type O LastRead -1 FirstWrite 0}
		XW_block_129 {Type O LastRead -1 FirstWrite 0}
		XW_block_128 {Type O LastRead -1 FirstWrite 0}
		XW_block_127 {Type O LastRead -1 FirstWrite 0}
		XW_block_126 {Type O LastRead -1 FirstWrite 0}
		XW_block_125 {Type O LastRead -1 FirstWrite 0}
		XW_block_124 {Type O LastRead -1 FirstWrite 0}
		XW_block_123 {Type O LastRead -1 FirstWrite 0}
		XW_block_122 {Type O LastRead -1 FirstWrite 0}
		XW_block_121 {Type O LastRead -1 FirstWrite 0}
		XW_block_120 {Type O LastRead -1 FirstWrite 0}
		XW_block_119 {Type O LastRead -1 FirstWrite 0}
		XW_block_118 {Type O LastRead -1 FirstWrite 0}
		XW_block_117 {Type O LastRead -1 FirstWrite 0}
		XW_block_116 {Type O LastRead -1 FirstWrite 0}
		XW_block_115 {Type O LastRead -1 FirstWrite 0}
		XW_block_114 {Type O LastRead -1 FirstWrite 0}
		XW_block_113 {Type O LastRead -1 FirstWrite 0}
		XW_block_112 {Type O LastRead -1 FirstWrite 0}
		XW_block_111 {Type O LastRead -1 FirstWrite 0}
		XW_block_110 {Type O LastRead -1 FirstWrite 0}
		XW_block_109 {Type O LastRead -1 FirstWrite 0}
		XW_block_108 {Type O LastRead -1 FirstWrite 0}
		XW_block_107 {Type O LastRead -1 FirstWrite 0}
		XW_block_106 {Type O LastRead -1 FirstWrite 0}
		XW_block_105 {Type O LastRead -1 FirstWrite 0}
		XW_block_104 {Type O LastRead -1 FirstWrite 0}
		XW_block_103 {Type O LastRead -1 FirstWrite 0}
		XW_block_102 {Type O LastRead -1 FirstWrite 0}
		XW_block_101 {Type O LastRead -1 FirstWrite 0}
		XW_block_100 {Type O LastRead -1 FirstWrite 0}
		XW_block_99 {Type O LastRead -1 FirstWrite 0}
		XW_block_98 {Type O LastRead -1 FirstWrite 0}
		XW_block_97 {Type O LastRead -1 FirstWrite 0}
		XW_block_96 {Type O LastRead -1 FirstWrite 0}
		XW_block_95 {Type O LastRead -1 FirstWrite 0}
		XW_block_94 {Type O LastRead -1 FirstWrite 0}
		XW_block_93 {Type O LastRead -1 FirstWrite 0}
		XW_block_92 {Type O LastRead -1 FirstWrite 0}
		XW_block_91 {Type O LastRead -1 FirstWrite 0}
		XW_block_90 {Type O LastRead -1 FirstWrite 0}
		XW_block_89 {Type O LastRead -1 FirstWrite 0}
		XW_block_88 {Type O LastRead -1 FirstWrite 0}
		XW_block_87 {Type O LastRead -1 FirstWrite 0}
		XW_block_86 {Type O LastRead -1 FirstWrite 0}
		XW_block_85 {Type O LastRead -1 FirstWrite 0}
		XW_block_84 {Type O LastRead -1 FirstWrite 0}
		XW_block_83 {Type O LastRead -1 FirstWrite 0}
		XW_block_82 {Type O LastRead -1 FirstWrite 0}
		XW_block_81 {Type O LastRead -1 FirstWrite 0}
		XW_block_80 {Type O LastRead -1 FirstWrite 0}
		XW_block_79 {Type O LastRead -1 FirstWrite 0}
		XW_block_78 {Type O LastRead -1 FirstWrite 0}
		XW_block_77 {Type O LastRead -1 FirstWrite 0}
		XW_block_76 {Type O LastRead -1 FirstWrite 0}
		XW_block_75 {Type O LastRead -1 FirstWrite 0}
		XW_block_74 {Type O LastRead -1 FirstWrite 0}
		XW_block_73 {Type O LastRead -1 FirstWrite 0}
		XW_block_72 {Type O LastRead -1 FirstWrite 0}
		XW_block_71 {Type O LastRead -1 FirstWrite 0}
		XW_block_70 {Type O LastRead -1 FirstWrite 0}
		XW_block_69 {Type O LastRead -1 FirstWrite 0}
		XW_block_68 {Type O LastRead -1 FirstWrite 0}
		XW_block_67 {Type O LastRead -1 FirstWrite 0}
		XW_block_66 {Type O LastRead -1 FirstWrite 0}
		XW_block_65 {Type O LastRead -1 FirstWrite 0}
		XW_block_64 {Type O LastRead -1 FirstWrite 0}
		XW_block_63 {Type O LastRead -1 FirstWrite 0}
		XW_block_62 {Type O LastRead -1 FirstWrite 0}
		XW_block_61 {Type O LastRead -1 FirstWrite 0}
		XW_block_60 {Type O LastRead -1 FirstWrite 0}
		XW_block_59 {Type O LastRead -1 FirstWrite 0}
		XW_block_58 {Type O LastRead -1 FirstWrite 0}
		XW_block_57 {Type O LastRead -1 FirstWrite 0}
		XW_block_56 {Type O LastRead -1 FirstWrite 0}
		XW_block_55 {Type O LastRead -1 FirstWrite 0}
		XW_block_54 {Type O LastRead -1 FirstWrite 0}
		XW_block_53 {Type O LastRead -1 FirstWrite 0}
		XW_block_52 {Type O LastRead -1 FirstWrite 0}
		XW_block_51 {Type O LastRead -1 FirstWrite 0}
		XW_block_50 {Type O LastRead -1 FirstWrite 0}
		XW_block_49 {Type O LastRead -1 FirstWrite 0}
		XW_block_48 {Type O LastRead -1 FirstWrite 0}
		XW_block_47 {Type O LastRead -1 FirstWrite 0}
		XW_block_46 {Type O LastRead -1 FirstWrite 0}
		XW_block_45 {Type O LastRead -1 FirstWrite 0}
		XW_block_44 {Type O LastRead -1 FirstWrite 0}
		XW_block_43 {Type O LastRead -1 FirstWrite 0}
		XW_block_42 {Type O LastRead -1 FirstWrite 0}
		XW_block_41 {Type O LastRead -1 FirstWrite 0}
		XW_block_40 {Type O LastRead -1 FirstWrite 0}
		XW_block_39 {Type O LastRead -1 FirstWrite 0}
		XW_block_38 {Type O LastRead -1 FirstWrite 0}
		XW_block_37 {Type O LastRead -1 FirstWrite 0}
		XW_block_36 {Type O LastRead -1 FirstWrite 0}
		XW_block_35 {Type O LastRead -1 FirstWrite 0}
		XW_block_34 {Type O LastRead -1 FirstWrite 0}
		XW_block_33 {Type O LastRead -1 FirstWrite 0}
		XW_block_32 {Type O LastRead -1 FirstWrite 0}
		XW_block_31 {Type O LastRead -1 FirstWrite 0}
		XW_block_30 {Type O LastRead -1 FirstWrite 0}
		XW_block_29 {Type O LastRead -1 FirstWrite 0}
		XW_block_28 {Type O LastRead -1 FirstWrite 0}
		XW_block_27 {Type O LastRead -1 FirstWrite 0}
		XW_block_26 {Type O LastRead -1 FirstWrite 0}
		XW_block_25 {Type O LastRead -1 FirstWrite 0}
		XW_block_24 {Type O LastRead -1 FirstWrite 0}
		XW_block_23 {Type O LastRead -1 FirstWrite 0}
		XW_block_22 {Type O LastRead -1 FirstWrite 0}
		XW_block_21 {Type O LastRead -1 FirstWrite 0}
		XW_block_20 {Type O LastRead -1 FirstWrite 0}
		XW_block_19 {Type O LastRead -1 FirstWrite 0}
		XW_block_18 {Type O LastRead -1 FirstWrite 0}
		XW_block_17 {Type O LastRead -1 FirstWrite 0}
		XW_block_16 {Type O LastRead -1 FirstWrite 0}
		XW_block_15 {Type O LastRead -1 FirstWrite 0}
		XW_block_14 {Type O LastRead -1 FirstWrite 0}
		XW_block_13 {Type O LastRead -1 FirstWrite 0}
		XW_block_12 {Type O LastRead -1 FirstWrite 0}
		XW_block_11 {Type O LastRead -1 FirstWrite 0}
		XW_block_10 {Type O LastRead -1 FirstWrite 0}
		XW_block_9 {Type O LastRead -1 FirstWrite 0}
		XW_block_8 {Type O LastRead -1 FirstWrite 0}
		XW_block_7 {Type O LastRead -1 FirstWrite 0}
		XW_block_6 {Type O LastRead -1 FirstWrite 0}
		XW_block_5 {Type O LastRead -1 FirstWrite 0}
		XW_block_4 {Type O LastRead -1 FirstWrite 0}
		XW_block_3 {Type O LastRead -1 FirstWrite 0}
		XW_block_2 {Type O LastRead -1 FirstWrite 0}
		XW_block_1 {Type O LastRead -1 FirstWrite 0}
		XW_block {Type O LastRead -1 FirstWrite 0}}
	gemm_compute_Pipeline_COMP_KB_COMP_K_COMP_I {
		XW_block {Type IO LastRead 4 FirstWrite 5}
		XW_block_1 {Type IO LastRead 4 FirstWrite 5}
		XW_block_2 {Type IO LastRead 4 FirstWrite 5}
		XW_block_3 {Type IO LastRead 4 FirstWrite 5}
		XW_block_4 {Type IO LastRead 4 FirstWrite 5}
		XW_block_5 {Type IO LastRead 4 FirstWrite 5}
		XW_block_6 {Type IO LastRead 4 FirstWrite 5}
		XW_block_7 {Type IO LastRead 4 FirstWrite 5}
		XW_block_8 {Type IO LastRead 4 FirstWrite 5}
		XW_block_9 {Type IO LastRead 4 FirstWrite 5}
		XW_block_10 {Type IO LastRead 4 FirstWrite 5}
		XW_block_11 {Type IO LastRead 4 FirstWrite 5}
		XW_block_12 {Type IO LastRead 4 FirstWrite 5}
		XW_block_13 {Type IO LastRead 4 FirstWrite 5}
		XW_block_14 {Type IO LastRead 4 FirstWrite 5}
		XW_block_15 {Type IO LastRead 4 FirstWrite 5}
		XW_block_16 {Type IO LastRead 4 FirstWrite 5}
		XW_block_17 {Type IO LastRead 4 FirstWrite 5}
		XW_block_18 {Type IO LastRead 4 FirstWrite 5}
		XW_block_19 {Type IO LastRead 4 FirstWrite 5}
		XW_block_20 {Type IO LastRead 4 FirstWrite 5}
		XW_block_21 {Type IO LastRead 4 FirstWrite 5}
		XW_block_22 {Type IO LastRead 4 FirstWrite 5}
		XW_block_23 {Type IO LastRead 4 FirstWrite 5}
		XW_block_24 {Type IO LastRead 4 FirstWrite 5}
		XW_block_25 {Type IO LastRead 4 FirstWrite 5}
		XW_block_26 {Type IO LastRead 4 FirstWrite 5}
		XW_block_27 {Type IO LastRead 4 FirstWrite 5}
		XW_block_28 {Type IO LastRead 4 FirstWrite 5}
		XW_block_29 {Type IO LastRead 4 FirstWrite 5}
		XW_block_30 {Type IO LastRead 4 FirstWrite 5}
		XW_block_31 {Type IO LastRead 4 FirstWrite 5}
		XW_block_32 {Type IO LastRead 4 FirstWrite 5}
		XW_block_33 {Type IO LastRead 4 FirstWrite 5}
		XW_block_34 {Type IO LastRead 4 FirstWrite 5}
		XW_block_35 {Type IO LastRead 4 FirstWrite 5}
		XW_block_36 {Type IO LastRead 4 FirstWrite 5}
		XW_block_37 {Type IO LastRead 4 FirstWrite 5}
		XW_block_38 {Type IO LastRead 4 FirstWrite 5}
		XW_block_39 {Type IO LastRead 4 FirstWrite 5}
		XW_block_40 {Type IO LastRead 4 FirstWrite 5}
		XW_block_41 {Type IO LastRead 4 FirstWrite 5}
		XW_block_42 {Type IO LastRead 4 FirstWrite 5}
		XW_block_43 {Type IO LastRead 4 FirstWrite 5}
		XW_block_44 {Type IO LastRead 4 FirstWrite 5}
		XW_block_45 {Type IO LastRead 4 FirstWrite 5}
		XW_block_46 {Type IO LastRead 4 FirstWrite 5}
		XW_block_47 {Type IO LastRead 4 FirstWrite 5}
		XW_block_48 {Type IO LastRead 4 FirstWrite 5}
		XW_block_49 {Type IO LastRead 4 FirstWrite 5}
		XW_block_50 {Type IO LastRead 4 FirstWrite 5}
		XW_block_51 {Type IO LastRead 4 FirstWrite 5}
		XW_block_52 {Type IO LastRead 4 FirstWrite 5}
		XW_block_53 {Type IO LastRead 4 FirstWrite 5}
		XW_block_54 {Type IO LastRead 4 FirstWrite 5}
		XW_block_55 {Type IO LastRead 4 FirstWrite 5}
		XW_block_56 {Type IO LastRead 4 FirstWrite 5}
		XW_block_57 {Type IO LastRead 4 FirstWrite 5}
		XW_block_58 {Type IO LastRead 4 FirstWrite 5}
		XW_block_59 {Type IO LastRead 4 FirstWrite 5}
		XW_block_60 {Type IO LastRead 4 FirstWrite 5}
		XW_block_61 {Type IO LastRead 4 FirstWrite 5}
		XW_block_62 {Type IO LastRead 4 FirstWrite 5}
		XW_block_63 {Type IO LastRead 4 FirstWrite 5}
		XW_block_64 {Type IO LastRead 4 FirstWrite 5}
		XW_block_65 {Type IO LastRead 4 FirstWrite 5}
		XW_block_66 {Type IO LastRead 4 FirstWrite 5}
		XW_block_67 {Type IO LastRead 4 FirstWrite 5}
		XW_block_68 {Type IO LastRead 4 FirstWrite 5}
		XW_block_69 {Type IO LastRead 4 FirstWrite 5}
		XW_block_70 {Type IO LastRead 4 FirstWrite 5}
		XW_block_71 {Type IO LastRead 4 FirstWrite 5}
		XW_block_72 {Type IO LastRead 4 FirstWrite 5}
		XW_block_73 {Type IO LastRead 4 FirstWrite 5}
		XW_block_74 {Type IO LastRead 4 FirstWrite 5}
		XW_block_75 {Type IO LastRead 4 FirstWrite 5}
		XW_block_76 {Type IO LastRead 4 FirstWrite 5}
		XW_block_77 {Type IO LastRead 4 FirstWrite 5}
		XW_block_78 {Type IO LastRead 4 FirstWrite 5}
		XW_block_79 {Type IO LastRead 4 FirstWrite 5}
		XW_block_80 {Type IO LastRead 4 FirstWrite 5}
		XW_block_81 {Type IO LastRead 4 FirstWrite 5}
		XW_block_82 {Type IO LastRead 4 FirstWrite 5}
		XW_block_83 {Type IO LastRead 4 FirstWrite 5}
		XW_block_84 {Type IO LastRead 4 FirstWrite 5}
		XW_block_85 {Type IO LastRead 4 FirstWrite 5}
		XW_block_86 {Type IO LastRead 4 FirstWrite 5}
		XW_block_87 {Type IO LastRead 4 FirstWrite 5}
		XW_block_88 {Type IO LastRead 4 FirstWrite 5}
		XW_block_89 {Type IO LastRead 4 FirstWrite 5}
		XW_block_90 {Type IO LastRead 4 FirstWrite 5}
		XW_block_91 {Type IO LastRead 4 FirstWrite 5}
		XW_block_92 {Type IO LastRead 4 FirstWrite 5}
		XW_block_93 {Type IO LastRead 4 FirstWrite 5}
		XW_block_94 {Type IO LastRead 4 FirstWrite 5}
		XW_block_95 {Type IO LastRead 4 FirstWrite 5}
		XW_block_96 {Type IO LastRead 4 FirstWrite 5}
		XW_block_97 {Type IO LastRead 4 FirstWrite 5}
		XW_block_98 {Type IO LastRead 4 FirstWrite 5}
		XW_block_99 {Type IO LastRead 4 FirstWrite 5}
		XW_block_100 {Type IO LastRead 4 FirstWrite 5}
		XW_block_101 {Type IO LastRead 4 FirstWrite 5}
		XW_block_102 {Type IO LastRead 4 FirstWrite 5}
		XW_block_103 {Type IO LastRead 4 FirstWrite 5}
		XW_block_104 {Type IO LastRead 4 FirstWrite 5}
		XW_block_105 {Type IO LastRead 4 FirstWrite 5}
		XW_block_106 {Type IO LastRead 4 FirstWrite 5}
		XW_block_107 {Type IO LastRead 4 FirstWrite 5}
		XW_block_108 {Type IO LastRead 4 FirstWrite 5}
		XW_block_109 {Type IO LastRead 4 FirstWrite 5}
		XW_block_110 {Type IO LastRead 4 FirstWrite 5}
		XW_block_111 {Type IO LastRead 4 FirstWrite 5}
		XW_block_112 {Type IO LastRead 4 FirstWrite 5}
		XW_block_113 {Type IO LastRead 4 FirstWrite 5}
		XW_block_114 {Type IO LastRead 4 FirstWrite 5}
		XW_block_115 {Type IO LastRead 4 FirstWrite 5}
		XW_block_116 {Type IO LastRead 4 FirstWrite 5}
		XW_block_117 {Type IO LastRead 4 FirstWrite 5}
		XW_block_118 {Type IO LastRead 4 FirstWrite 5}
		XW_block_119 {Type IO LastRead 4 FirstWrite 5}
		XW_block_120 {Type IO LastRead 4 FirstWrite 5}
		XW_block_121 {Type IO LastRead 4 FirstWrite 5}
		XW_block_122 {Type IO LastRead 4 FirstWrite 5}
		XW_block_123 {Type IO LastRead 4 FirstWrite 5}
		XW_block_124 {Type IO LastRead 4 FirstWrite 5}
		XW_block_125 {Type IO LastRead 4 FirstWrite 5}
		XW_block_126 {Type IO LastRead 4 FirstWrite 5}
		XW_block_127 {Type IO LastRead 4 FirstWrite 5}
		XW_block_128 {Type IO LastRead 4 FirstWrite 5}
		XW_block_129 {Type IO LastRead 4 FirstWrite 5}
		XW_block_130 {Type IO LastRead 4 FirstWrite 5}
		XW_block_131 {Type IO LastRead 4 FirstWrite 5}
		XW_block_132 {Type IO LastRead 4 FirstWrite 5}
		XW_block_133 {Type IO LastRead 4 FirstWrite 5}
		XW_block_134 {Type IO LastRead 4 FirstWrite 5}
		XW_block_135 {Type IO LastRead 4 FirstWrite 5}
		XW_block_136 {Type IO LastRead 4 FirstWrite 5}
		XW_block_137 {Type IO LastRead 4 FirstWrite 5}
		XW_block_138 {Type IO LastRead 4 FirstWrite 5}
		XW_block_139 {Type IO LastRead 4 FirstWrite 5}
		XW_block_140 {Type IO LastRead 4 FirstWrite 5}
		XW_block_141 {Type IO LastRead 4 FirstWrite 5}
		XW_block_142 {Type IO LastRead 4 FirstWrite 5}
		XW_block_143 {Type IO LastRead 4 FirstWrite 5}
		XW_block_144 {Type IO LastRead 4 FirstWrite 5}
		XW_block_145 {Type IO LastRead 4 FirstWrite 5}
		XW_block_146 {Type IO LastRead 4 FirstWrite 5}
		XW_block_147 {Type IO LastRead 4 FirstWrite 5}
		XW_block_148 {Type IO LastRead 4 FirstWrite 5}
		XW_block_149 {Type IO LastRead 4 FirstWrite 5}
		XW_block_150 {Type IO LastRead 4 FirstWrite 5}
		XW_block_151 {Type IO LastRead 4 FirstWrite 5}
		XW_block_152 {Type IO LastRead 4 FirstWrite 5}
		XW_block_153 {Type IO LastRead 4 FirstWrite 5}
		XW_block_154 {Type IO LastRead 4 FirstWrite 5}
		XW_block_155 {Type IO LastRead 4 FirstWrite 5}
		XW_block_156 {Type IO LastRead 4 FirstWrite 5}
		XW_block_157 {Type IO LastRead 4 FirstWrite 5}
		XW_block_158 {Type IO LastRead 4 FirstWrite 5}
		XW_block_159 {Type IO LastRead 4 FirstWrite 5}
		XW_block_160 {Type IO LastRead 4 FirstWrite 5}
		XW_block_161 {Type IO LastRead 4 FirstWrite 5}
		XW_block_162 {Type IO LastRead 4 FirstWrite 5}
		XW_block_163 {Type IO LastRead 4 FirstWrite 5}
		XW_block_164 {Type IO LastRead 4 FirstWrite 5}
		XW_block_165 {Type IO LastRead 4 FirstWrite 5}
		XW_block_166 {Type IO LastRead 4 FirstWrite 5}
		XW_block_167 {Type IO LastRead 4 FirstWrite 5}
		XW_block_168 {Type IO LastRead 4 FirstWrite 5}
		XW_block_169 {Type IO LastRead 4 FirstWrite 5}
		XW_block_170 {Type IO LastRead 4 FirstWrite 5}
		XW_block_171 {Type IO LastRead 4 FirstWrite 5}
		XW_block_172 {Type IO LastRead 4 FirstWrite 5}
		XW_block_173 {Type IO LastRead 4 FirstWrite 5}
		XW_block_174 {Type IO LastRead 4 FirstWrite 5}
		XW_block_175 {Type IO LastRead 4 FirstWrite 5}
		XW_block_176 {Type IO LastRead 4 FirstWrite 5}
		XW_block_177 {Type IO LastRead 4 FirstWrite 5}
		XW_block_178 {Type IO LastRead 4 FirstWrite 5}
		XW_block_179 {Type IO LastRead 4 FirstWrite 5}
		XW_block_180 {Type IO LastRead 4 FirstWrite 5}
		XW_block_181 {Type IO LastRead 4 FirstWrite 5}
		XW_block_182 {Type IO LastRead 4 FirstWrite 5}
		XW_block_183 {Type IO LastRead 4 FirstWrite 5}
		XW_block_184 {Type IO LastRead 4 FirstWrite 5}
		XW_block_185 {Type IO LastRead 4 FirstWrite 5}
		XW_block_186 {Type IO LastRead 4 FirstWrite 5}
		XW_block_187 {Type IO LastRead 4 FirstWrite 5}
		XW_block_188 {Type IO LastRead 4 FirstWrite 5}
		XW_block_189 {Type IO LastRead 4 FirstWrite 5}
		XW_block_190 {Type IO LastRead 4 FirstWrite 5}
		XW_block_191 {Type IO LastRead 4 FirstWrite 5}
		XW_block_192 {Type IO LastRead 4 FirstWrite 5}
		XW_block_193 {Type IO LastRead 4 FirstWrite 5}
		XW_block_194 {Type IO LastRead 4 FirstWrite 5}
		XW_block_195 {Type IO LastRead 4 FirstWrite 5}
		XW_block_196 {Type IO LastRead 4 FirstWrite 5}
		XW_block_197 {Type IO LastRead 4 FirstWrite 5}
		XW_block_198 {Type IO LastRead 4 FirstWrite 5}
		XW_block_199 {Type IO LastRead 4 FirstWrite 5}
		XW_block_200 {Type IO LastRead 4 FirstWrite 5}
		XW_block_201 {Type IO LastRead 4 FirstWrite 5}
		XW_block_202 {Type IO LastRead 4 FirstWrite 5}
		XW_block_203 {Type IO LastRead 4 FirstWrite 5}
		XW_block_204 {Type IO LastRead 4 FirstWrite 5}
		XW_block_205 {Type IO LastRead 4 FirstWrite 5}
		XW_block_206 {Type IO LastRead 4 FirstWrite 5}
		XW_block_207 {Type IO LastRead 4 FirstWrite 5}
		XW_block_208 {Type IO LastRead 4 FirstWrite 5}
		XW_block_209 {Type IO LastRead 4 FirstWrite 5}
		XW_block_210 {Type IO LastRead 4 FirstWrite 5}
		XW_block_211 {Type IO LastRead 4 FirstWrite 5}
		XW_block_212 {Type IO LastRead 4 FirstWrite 5}
		XW_block_213 {Type IO LastRead 4 FirstWrite 5}
		XW_block_214 {Type IO LastRead 4 FirstWrite 5}
		XW_block_215 {Type IO LastRead 4 FirstWrite 5}
		XW_block_216 {Type IO LastRead 4 FirstWrite 5}
		XW_block_217 {Type IO LastRead 4 FirstWrite 5}
		XW_block_218 {Type IO LastRead 4 FirstWrite 5}
		XW_block_219 {Type IO LastRead 4 FirstWrite 5}
		XW_block_220 {Type IO LastRead 4 FirstWrite 5}
		XW_block_221 {Type IO LastRead 4 FirstWrite 5}
		XW_block_222 {Type IO LastRead 4 FirstWrite 5}
		XW_block_223 {Type IO LastRead 4 FirstWrite 5}
		XW_block_224 {Type IO LastRead 4 FirstWrite 5}
		XW_block_225 {Type IO LastRead 4 FirstWrite 5}
		XW_block_226 {Type IO LastRead 4 FirstWrite 5}
		XW_block_227 {Type IO LastRead 4 FirstWrite 5}
		XW_block_228 {Type IO LastRead 4 FirstWrite 5}
		XW_block_229 {Type IO LastRead 4 FirstWrite 5}
		XW_block_230 {Type IO LastRead 4 FirstWrite 5}
		XW_block_231 {Type IO LastRead 4 FirstWrite 5}
		XW_block_232 {Type IO LastRead 4 FirstWrite 5}
		XW_block_233 {Type IO LastRead 4 FirstWrite 5}
		XW_block_234 {Type IO LastRead 4 FirstWrite 5}
		XW_block_235 {Type IO LastRead 4 FirstWrite 5}
		XW_block_236 {Type IO LastRead 4 FirstWrite 5}
		XW_block_237 {Type IO LastRead 4 FirstWrite 5}
		XW_block_238 {Type IO LastRead 4 FirstWrite 5}
		XW_block_239 {Type IO LastRead 4 FirstWrite 5}
		XW_block_240 {Type IO LastRead 4 FirstWrite 5}
		XW_block_241 {Type IO LastRead 4 FirstWrite 5}
		XW_block_242 {Type IO LastRead 4 FirstWrite 5}
		XW_block_243 {Type IO LastRead 4 FirstWrite 5}
		XW_block_244 {Type IO LastRead 4 FirstWrite 5}
		XW_block_245 {Type IO LastRead 4 FirstWrite 5}
		XW_block_246 {Type IO LastRead 4 FirstWrite 5}
		XW_block_247 {Type IO LastRead 4 FirstWrite 5}
		XW_block_248 {Type IO LastRead 4 FirstWrite 5}
		XW_block_249 {Type IO LastRead 4 FirstWrite 5}
		XW_block_250 {Type IO LastRead 4 FirstWrite 5}
		XW_block_251 {Type IO LastRead 4 FirstWrite 5}
		XW_block_252 {Type IO LastRead 4 FirstWrite 5}
		XW_block_253 {Type IO LastRead 4 FirstWrite 5}
		XW_block_254 {Type IO LastRead 4 FirstWrite 5}
		XW_block_255 {Type IO LastRead 4 FirstWrite 5}
		X_stream {Type I LastRead 2 FirstWrite -1}
		W_stream {Type I LastRead 2 FirstWrite -1}}
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
	gemm_compute_Pipeline_COMP_EMIT {
		XW_block {Type I LastRead 0 FirstWrite -1}
		XW_block_64 {Type I LastRead 0 FirstWrite -1}
		XW_block_128 {Type I LastRead 0 FirstWrite -1}
		XW_block_192 {Type I LastRead 0 FirstWrite -1}
		XW_block_1 {Type I LastRead 0 FirstWrite -1}
		XW_block_65 {Type I LastRead 0 FirstWrite -1}
		XW_block_129 {Type I LastRead 0 FirstWrite -1}
		XW_block_193 {Type I LastRead 0 FirstWrite -1}
		XW_block_2 {Type I LastRead 0 FirstWrite -1}
		XW_block_66 {Type I LastRead 0 FirstWrite -1}
		XW_block_130 {Type I LastRead 0 FirstWrite -1}
		XW_block_194 {Type I LastRead 0 FirstWrite -1}
		XW_block_3 {Type I LastRead 0 FirstWrite -1}
		XW_block_67 {Type I LastRead 0 FirstWrite -1}
		XW_block_131 {Type I LastRead 0 FirstWrite -1}
		XW_block_195 {Type I LastRead 0 FirstWrite -1}
		XW_block_4 {Type I LastRead 0 FirstWrite -1}
		XW_block_68 {Type I LastRead 0 FirstWrite -1}
		XW_block_132 {Type I LastRead 0 FirstWrite -1}
		XW_block_196 {Type I LastRead 0 FirstWrite -1}
		XW_block_5 {Type I LastRead 0 FirstWrite -1}
		XW_block_69 {Type I LastRead 0 FirstWrite -1}
		XW_block_133 {Type I LastRead 0 FirstWrite -1}
		XW_block_197 {Type I LastRead 0 FirstWrite -1}
		XW_block_6 {Type I LastRead 0 FirstWrite -1}
		XW_block_70 {Type I LastRead 0 FirstWrite -1}
		XW_block_134 {Type I LastRead 0 FirstWrite -1}
		XW_block_198 {Type I LastRead 0 FirstWrite -1}
		XW_block_7 {Type I LastRead 0 FirstWrite -1}
		XW_block_71 {Type I LastRead 0 FirstWrite -1}
		XW_block_135 {Type I LastRead 0 FirstWrite -1}
		XW_block_199 {Type I LastRead 0 FirstWrite -1}
		XW_block_8 {Type I LastRead 0 FirstWrite -1}
		XW_block_72 {Type I LastRead 0 FirstWrite -1}
		XW_block_136 {Type I LastRead 0 FirstWrite -1}
		XW_block_200 {Type I LastRead 0 FirstWrite -1}
		XW_block_9 {Type I LastRead 0 FirstWrite -1}
		XW_block_73 {Type I LastRead 0 FirstWrite -1}
		XW_block_137 {Type I LastRead 0 FirstWrite -1}
		XW_block_201 {Type I LastRead 0 FirstWrite -1}
		XW_block_10 {Type I LastRead 0 FirstWrite -1}
		XW_block_74 {Type I LastRead 0 FirstWrite -1}
		XW_block_138 {Type I LastRead 0 FirstWrite -1}
		XW_block_202 {Type I LastRead 0 FirstWrite -1}
		XW_block_11 {Type I LastRead 0 FirstWrite -1}
		XW_block_75 {Type I LastRead 0 FirstWrite -1}
		XW_block_139 {Type I LastRead 0 FirstWrite -1}
		XW_block_203 {Type I LastRead 0 FirstWrite -1}
		XW_block_12 {Type I LastRead 0 FirstWrite -1}
		XW_block_76 {Type I LastRead 0 FirstWrite -1}
		XW_block_140 {Type I LastRead 0 FirstWrite -1}
		XW_block_204 {Type I LastRead 0 FirstWrite -1}
		XW_block_13 {Type I LastRead 0 FirstWrite -1}
		XW_block_77 {Type I LastRead 0 FirstWrite -1}
		XW_block_141 {Type I LastRead 0 FirstWrite -1}
		XW_block_205 {Type I LastRead 0 FirstWrite -1}
		XW_block_14 {Type I LastRead 0 FirstWrite -1}
		XW_block_78 {Type I LastRead 0 FirstWrite -1}
		XW_block_142 {Type I LastRead 0 FirstWrite -1}
		XW_block_206 {Type I LastRead 0 FirstWrite -1}
		XW_block_15 {Type I LastRead 0 FirstWrite -1}
		XW_block_79 {Type I LastRead 0 FirstWrite -1}
		XW_block_143 {Type I LastRead 0 FirstWrite -1}
		XW_block_207 {Type I LastRead 0 FirstWrite -1}
		XW_block_16 {Type I LastRead 0 FirstWrite -1}
		XW_block_80 {Type I LastRead 0 FirstWrite -1}
		XW_block_144 {Type I LastRead 0 FirstWrite -1}
		XW_block_208 {Type I LastRead 0 FirstWrite -1}
		XW_block_17 {Type I LastRead 0 FirstWrite -1}
		XW_block_81 {Type I LastRead 0 FirstWrite -1}
		XW_block_145 {Type I LastRead 0 FirstWrite -1}
		XW_block_209 {Type I LastRead 0 FirstWrite -1}
		XW_block_18 {Type I LastRead 0 FirstWrite -1}
		XW_block_82 {Type I LastRead 0 FirstWrite -1}
		XW_block_146 {Type I LastRead 0 FirstWrite -1}
		XW_block_210 {Type I LastRead 0 FirstWrite -1}
		XW_block_19 {Type I LastRead 0 FirstWrite -1}
		XW_block_83 {Type I LastRead 0 FirstWrite -1}
		XW_block_147 {Type I LastRead 0 FirstWrite -1}
		XW_block_211 {Type I LastRead 0 FirstWrite -1}
		XW_block_20 {Type I LastRead 0 FirstWrite -1}
		XW_block_84 {Type I LastRead 0 FirstWrite -1}
		XW_block_148 {Type I LastRead 0 FirstWrite -1}
		XW_block_212 {Type I LastRead 0 FirstWrite -1}
		XW_block_21 {Type I LastRead 0 FirstWrite -1}
		XW_block_85 {Type I LastRead 0 FirstWrite -1}
		XW_block_149 {Type I LastRead 0 FirstWrite -1}
		XW_block_213 {Type I LastRead 0 FirstWrite -1}
		XW_block_22 {Type I LastRead 0 FirstWrite -1}
		XW_block_86 {Type I LastRead 0 FirstWrite -1}
		XW_block_150 {Type I LastRead 0 FirstWrite -1}
		XW_block_214 {Type I LastRead 0 FirstWrite -1}
		XW_block_23 {Type I LastRead 0 FirstWrite -1}
		XW_block_87 {Type I LastRead 0 FirstWrite -1}
		XW_block_151 {Type I LastRead 0 FirstWrite -1}
		XW_block_215 {Type I LastRead 0 FirstWrite -1}
		XW_block_24 {Type I LastRead 0 FirstWrite -1}
		XW_block_88 {Type I LastRead 0 FirstWrite -1}
		XW_block_152 {Type I LastRead 0 FirstWrite -1}
		XW_block_216 {Type I LastRead 0 FirstWrite -1}
		XW_block_25 {Type I LastRead 0 FirstWrite -1}
		XW_block_89 {Type I LastRead 0 FirstWrite -1}
		XW_block_153 {Type I LastRead 0 FirstWrite -1}
		XW_block_217 {Type I LastRead 0 FirstWrite -1}
		XW_block_26 {Type I LastRead 0 FirstWrite -1}
		XW_block_90 {Type I LastRead 0 FirstWrite -1}
		XW_block_154 {Type I LastRead 0 FirstWrite -1}
		XW_block_218 {Type I LastRead 0 FirstWrite -1}
		XW_block_27 {Type I LastRead 0 FirstWrite -1}
		XW_block_91 {Type I LastRead 0 FirstWrite -1}
		XW_block_155 {Type I LastRead 0 FirstWrite -1}
		XW_block_219 {Type I LastRead 0 FirstWrite -1}
		XW_block_28 {Type I LastRead 0 FirstWrite -1}
		XW_block_92 {Type I LastRead 0 FirstWrite -1}
		XW_block_156 {Type I LastRead 0 FirstWrite -1}
		XW_block_220 {Type I LastRead 0 FirstWrite -1}
		XW_block_29 {Type I LastRead 0 FirstWrite -1}
		XW_block_93 {Type I LastRead 0 FirstWrite -1}
		XW_block_157 {Type I LastRead 0 FirstWrite -1}
		XW_block_221 {Type I LastRead 0 FirstWrite -1}
		XW_block_30 {Type I LastRead 0 FirstWrite -1}
		XW_block_94 {Type I LastRead 0 FirstWrite -1}
		XW_block_158 {Type I LastRead 0 FirstWrite -1}
		XW_block_222 {Type I LastRead 0 FirstWrite -1}
		XW_block_31 {Type I LastRead 0 FirstWrite -1}
		XW_block_95 {Type I LastRead 0 FirstWrite -1}
		XW_block_159 {Type I LastRead 0 FirstWrite -1}
		XW_block_223 {Type I LastRead 0 FirstWrite -1}
		XW_block_32 {Type I LastRead 0 FirstWrite -1}
		XW_block_96 {Type I LastRead 0 FirstWrite -1}
		XW_block_160 {Type I LastRead 0 FirstWrite -1}
		XW_block_224 {Type I LastRead 0 FirstWrite -1}
		XW_block_33 {Type I LastRead 0 FirstWrite -1}
		XW_block_97 {Type I LastRead 0 FirstWrite -1}
		XW_block_161 {Type I LastRead 0 FirstWrite -1}
		XW_block_225 {Type I LastRead 0 FirstWrite -1}
		XW_block_34 {Type I LastRead 0 FirstWrite -1}
		XW_block_98 {Type I LastRead 0 FirstWrite -1}
		XW_block_162 {Type I LastRead 0 FirstWrite -1}
		XW_block_226 {Type I LastRead 0 FirstWrite -1}
		XW_block_35 {Type I LastRead 0 FirstWrite -1}
		XW_block_99 {Type I LastRead 0 FirstWrite -1}
		XW_block_163 {Type I LastRead 0 FirstWrite -1}
		XW_block_227 {Type I LastRead 0 FirstWrite -1}
		XW_block_36 {Type I LastRead 0 FirstWrite -1}
		XW_block_100 {Type I LastRead 0 FirstWrite -1}
		XW_block_164 {Type I LastRead 0 FirstWrite -1}
		XW_block_228 {Type I LastRead 0 FirstWrite -1}
		XW_block_37 {Type I LastRead 0 FirstWrite -1}
		XW_block_101 {Type I LastRead 0 FirstWrite -1}
		XW_block_165 {Type I LastRead 0 FirstWrite -1}
		XW_block_229 {Type I LastRead 0 FirstWrite -1}
		XW_block_38 {Type I LastRead 0 FirstWrite -1}
		XW_block_102 {Type I LastRead 0 FirstWrite -1}
		XW_block_166 {Type I LastRead 0 FirstWrite -1}
		XW_block_230 {Type I LastRead 0 FirstWrite -1}
		XW_block_39 {Type I LastRead 0 FirstWrite -1}
		XW_block_103 {Type I LastRead 0 FirstWrite -1}
		XW_block_167 {Type I LastRead 0 FirstWrite -1}
		XW_block_231 {Type I LastRead 0 FirstWrite -1}
		XW_block_40 {Type I LastRead 0 FirstWrite -1}
		XW_block_104 {Type I LastRead 0 FirstWrite -1}
		XW_block_168 {Type I LastRead 0 FirstWrite -1}
		XW_block_232 {Type I LastRead 0 FirstWrite -1}
		XW_block_41 {Type I LastRead 0 FirstWrite -1}
		XW_block_105 {Type I LastRead 0 FirstWrite -1}
		XW_block_169 {Type I LastRead 0 FirstWrite -1}
		XW_block_233 {Type I LastRead 0 FirstWrite -1}
		XW_block_42 {Type I LastRead 0 FirstWrite -1}
		XW_block_106 {Type I LastRead 0 FirstWrite -1}
		XW_block_170 {Type I LastRead 0 FirstWrite -1}
		XW_block_234 {Type I LastRead 0 FirstWrite -1}
		XW_block_43 {Type I LastRead 0 FirstWrite -1}
		XW_block_107 {Type I LastRead 0 FirstWrite -1}
		XW_block_171 {Type I LastRead 0 FirstWrite -1}
		XW_block_235 {Type I LastRead 0 FirstWrite -1}
		XW_block_44 {Type I LastRead 0 FirstWrite -1}
		XW_block_108 {Type I LastRead 0 FirstWrite -1}
		XW_block_172 {Type I LastRead 0 FirstWrite -1}
		XW_block_236 {Type I LastRead 0 FirstWrite -1}
		XW_block_45 {Type I LastRead 0 FirstWrite -1}
		XW_block_109 {Type I LastRead 0 FirstWrite -1}
		XW_block_173 {Type I LastRead 0 FirstWrite -1}
		XW_block_237 {Type I LastRead 0 FirstWrite -1}
		XW_block_46 {Type I LastRead 0 FirstWrite -1}
		XW_block_110 {Type I LastRead 0 FirstWrite -1}
		XW_block_174 {Type I LastRead 0 FirstWrite -1}
		XW_block_238 {Type I LastRead 0 FirstWrite -1}
		XW_block_47 {Type I LastRead 0 FirstWrite -1}
		XW_block_111 {Type I LastRead 0 FirstWrite -1}
		XW_block_175 {Type I LastRead 0 FirstWrite -1}
		XW_block_239 {Type I LastRead 0 FirstWrite -1}
		XW_block_48 {Type I LastRead 0 FirstWrite -1}
		XW_block_112 {Type I LastRead 0 FirstWrite -1}
		XW_block_176 {Type I LastRead 0 FirstWrite -1}
		XW_block_240 {Type I LastRead 0 FirstWrite -1}
		XW_block_49 {Type I LastRead 0 FirstWrite -1}
		XW_block_113 {Type I LastRead 0 FirstWrite -1}
		XW_block_177 {Type I LastRead 0 FirstWrite -1}
		XW_block_241 {Type I LastRead 0 FirstWrite -1}
		XW_block_50 {Type I LastRead 0 FirstWrite -1}
		XW_block_114 {Type I LastRead 0 FirstWrite -1}
		XW_block_178 {Type I LastRead 0 FirstWrite -1}
		XW_block_242 {Type I LastRead 0 FirstWrite -1}
		XW_block_51 {Type I LastRead 0 FirstWrite -1}
		XW_block_115 {Type I LastRead 0 FirstWrite -1}
		XW_block_179 {Type I LastRead 0 FirstWrite -1}
		XW_block_243 {Type I LastRead 0 FirstWrite -1}
		XW_block_52 {Type I LastRead 0 FirstWrite -1}
		XW_block_116 {Type I LastRead 0 FirstWrite -1}
		XW_block_180 {Type I LastRead 0 FirstWrite -1}
		XW_block_244 {Type I LastRead 0 FirstWrite -1}
		XW_block_53 {Type I LastRead 0 FirstWrite -1}
		XW_block_117 {Type I LastRead 0 FirstWrite -1}
		XW_block_181 {Type I LastRead 0 FirstWrite -1}
		XW_block_245 {Type I LastRead 0 FirstWrite -1}
		XW_block_54 {Type I LastRead 0 FirstWrite -1}
		XW_block_118 {Type I LastRead 0 FirstWrite -1}
		XW_block_182 {Type I LastRead 0 FirstWrite -1}
		XW_block_246 {Type I LastRead 0 FirstWrite -1}
		XW_block_55 {Type I LastRead 0 FirstWrite -1}
		XW_block_119 {Type I LastRead 0 FirstWrite -1}
		XW_block_183 {Type I LastRead 0 FirstWrite -1}
		XW_block_247 {Type I LastRead 0 FirstWrite -1}
		XW_block_56 {Type I LastRead 0 FirstWrite -1}
		XW_block_120 {Type I LastRead 0 FirstWrite -1}
		XW_block_184 {Type I LastRead 0 FirstWrite -1}
		XW_block_248 {Type I LastRead 0 FirstWrite -1}
		XW_block_57 {Type I LastRead 0 FirstWrite -1}
		XW_block_121 {Type I LastRead 0 FirstWrite -1}
		XW_block_185 {Type I LastRead 0 FirstWrite -1}
		XW_block_249 {Type I LastRead 0 FirstWrite -1}
		XW_block_58 {Type I LastRead 0 FirstWrite -1}
		XW_block_122 {Type I LastRead 0 FirstWrite -1}
		XW_block_186 {Type I LastRead 0 FirstWrite -1}
		XW_block_250 {Type I LastRead 0 FirstWrite -1}
		XW_block_59 {Type I LastRead 0 FirstWrite -1}
		XW_block_123 {Type I LastRead 0 FirstWrite -1}
		XW_block_187 {Type I LastRead 0 FirstWrite -1}
		XW_block_251 {Type I LastRead 0 FirstWrite -1}
		XW_block_60 {Type I LastRead 0 FirstWrite -1}
		XW_block_124 {Type I LastRead 0 FirstWrite -1}
		XW_block_188 {Type I LastRead 0 FirstWrite -1}
		XW_block_252 {Type I LastRead 0 FirstWrite -1}
		XW_block_61 {Type I LastRead 0 FirstWrite -1}
		XW_block_125 {Type I LastRead 0 FirstWrite -1}
		XW_block_189 {Type I LastRead 0 FirstWrite -1}
		XW_block_253 {Type I LastRead 0 FirstWrite -1}
		XW_block_62 {Type I LastRead 0 FirstWrite -1}
		XW_block_126 {Type I LastRead 0 FirstWrite -1}
		XW_block_190 {Type I LastRead 0 FirstWrite -1}
		XW_block_254 {Type I LastRead 0 FirstWrite -1}
		XW_block_63 {Type I LastRead 0 FirstWrite -1}
		XW_block_127 {Type I LastRead 0 FirstWrite -1}
		XW_block_191 {Type I LastRead 0 FirstWrite -1}
		XW_block_255 {Type I LastRead 0 FirstWrite -1}
		XW_stream {Type O LastRead -1 FirstWrite 1}}
	gemm_write {
		XW_stream {Type I LastRead 1 FirstWrite -1}
		gmem2 {Type O LastRead 3 FirstWrite 2}
		H_temp {Type I LastRead 0 FirstWrite -1}}
	spmm_stage {
		gmem3 {Type I LastRead 1 FirstWrite -1}
		row_length {Type I LastRead 0 FirstWrite -1}
		gmem4 {Type I LastRead 1 FirstWrite -1}
		colind {Type I LastRead 0 FirstWrite -1}
		gmem5 {Type I LastRead 1 FirstWrite -1}
		values {Type I LastRead 0 FirstWrite -1}
		gmem2 {Type I LastRead 12 FirstWrite -1}
		H_temp {Type I LastRead 2 FirstWrite -1}
		nnz_total {Type I LastRead 0 FirstWrite -1}
		gmem6 {Type O LastRead 3 FirstWrite 2}
		H_out {Type I LastRead 4 FirstWrite -1}}
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
		val_fifo {Type O LastRead -1 FirstWrite 2}}
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
		B {Type I LastRead 0 FirstWrite -1}}
	spmm_store {
		gmem6 {Type O LastRead 3 FirstWrite 2}
		H_out {Type I LastRead 0 FirstWrite -1}
		result_fifo {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 512 }  { m_axi_gmem0_WSTRB STRB 1 64 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 512 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 512 }  { m_axi_gmem1_WSTRB STRB 1 64 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 512 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 8 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 512 }  { m_axi_gmem2_WSTRB STRB 1 64 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 8 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 512 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
	gmem3 { m_axi {  { m_axi_gmem3_AWVALID VALID 1 1 }  { m_axi_gmem3_AWREADY READY 0 1 }  { m_axi_gmem3_AWADDR ADDR 1 64 }  { m_axi_gmem3_AWID ID 1 1 }  { m_axi_gmem3_AWLEN SIZE 1 8 }  { m_axi_gmem3_AWSIZE BURST 1 3 }  { m_axi_gmem3_AWBURST LOCK 1 2 }  { m_axi_gmem3_AWLOCK CACHE 1 2 }  { m_axi_gmem3_AWCACHE PROT 1 4 }  { m_axi_gmem3_AWPROT QOS 1 3 }  { m_axi_gmem3_AWQOS REGION 1 4 }  { m_axi_gmem3_AWREGION USER 1 4 }  { m_axi_gmem3_AWUSER DATA 1 1 }  { m_axi_gmem3_WVALID VALID 1 1 }  { m_axi_gmem3_WREADY READY 0 1 }  { m_axi_gmem3_WDATA FIFONUM 1 32 }  { m_axi_gmem3_WSTRB STRB 1 4 }  { m_axi_gmem3_WLAST LAST 1 1 }  { m_axi_gmem3_WID ID 1 1 }  { m_axi_gmem3_WUSER DATA 1 1 }  { m_axi_gmem3_ARVALID VALID 1 1 }  { m_axi_gmem3_ARREADY READY 0 1 }  { m_axi_gmem3_ARADDR ADDR 1 64 }  { m_axi_gmem3_ARID ID 1 1 }  { m_axi_gmem3_ARLEN SIZE 1 8 }  { m_axi_gmem3_ARSIZE BURST 1 3 }  { m_axi_gmem3_ARBURST LOCK 1 2 }  { m_axi_gmem3_ARLOCK CACHE 1 2 }  { m_axi_gmem3_ARCACHE PROT 1 4 }  { m_axi_gmem3_ARPROT QOS 1 3 }  { m_axi_gmem3_ARQOS REGION 1 4 }  { m_axi_gmem3_ARREGION USER 1 4 }  { m_axi_gmem3_ARUSER DATA 1 1 }  { m_axi_gmem3_RVALID VALID 0 1 }  { m_axi_gmem3_RREADY READY 1 1 }  { m_axi_gmem3_RDATA FIFONUM 0 32 }  { m_axi_gmem3_RLAST LAST 0 1 }  { m_axi_gmem3_RID ID 0 1 }  { m_axi_gmem3_RUSER DATA 0 1 }  { m_axi_gmem3_RRESP RESP 0 2 }  { m_axi_gmem3_BVALID VALID 0 1 }  { m_axi_gmem3_BREADY READY 1 1 }  { m_axi_gmem3_BRESP RESP 0 2 }  { m_axi_gmem3_BID ID 0 1 }  { m_axi_gmem3_BUSER DATA 0 1 } } }
	gmem4 { m_axi {  { m_axi_gmem4_AWVALID VALID 1 1 }  { m_axi_gmem4_AWREADY READY 0 1 }  { m_axi_gmem4_AWADDR ADDR 1 64 }  { m_axi_gmem4_AWID ID 1 1 }  { m_axi_gmem4_AWLEN SIZE 1 8 }  { m_axi_gmem4_AWSIZE BURST 1 3 }  { m_axi_gmem4_AWBURST LOCK 1 2 }  { m_axi_gmem4_AWLOCK CACHE 1 2 }  { m_axi_gmem4_AWCACHE PROT 1 4 }  { m_axi_gmem4_AWPROT QOS 1 3 }  { m_axi_gmem4_AWQOS REGION 1 4 }  { m_axi_gmem4_AWREGION USER 1 4 }  { m_axi_gmem4_AWUSER DATA 1 1 }  { m_axi_gmem4_WVALID VALID 1 1 }  { m_axi_gmem4_WREADY READY 0 1 }  { m_axi_gmem4_WDATA FIFONUM 1 32 }  { m_axi_gmem4_WSTRB STRB 1 4 }  { m_axi_gmem4_WLAST LAST 1 1 }  { m_axi_gmem4_WID ID 1 1 }  { m_axi_gmem4_WUSER DATA 1 1 }  { m_axi_gmem4_ARVALID VALID 1 1 }  { m_axi_gmem4_ARREADY READY 0 1 }  { m_axi_gmem4_ARADDR ADDR 1 64 }  { m_axi_gmem4_ARID ID 1 1 }  { m_axi_gmem4_ARLEN SIZE 1 8 }  { m_axi_gmem4_ARSIZE BURST 1 3 }  { m_axi_gmem4_ARBURST LOCK 1 2 }  { m_axi_gmem4_ARLOCK CACHE 1 2 }  { m_axi_gmem4_ARCACHE PROT 1 4 }  { m_axi_gmem4_ARPROT QOS 1 3 }  { m_axi_gmem4_ARQOS REGION 1 4 }  { m_axi_gmem4_ARREGION USER 1 4 }  { m_axi_gmem4_ARUSER DATA 1 1 }  { m_axi_gmem4_RVALID VALID 0 1 }  { m_axi_gmem4_RREADY READY 1 1 }  { m_axi_gmem4_RDATA FIFONUM 0 32 }  { m_axi_gmem4_RLAST LAST 0 1 }  { m_axi_gmem4_RID ID 0 1 }  { m_axi_gmem4_RUSER DATA 0 1 }  { m_axi_gmem4_RRESP RESP 0 2 }  { m_axi_gmem4_BVALID VALID 0 1 }  { m_axi_gmem4_BREADY READY 1 1 }  { m_axi_gmem4_BRESP RESP 0 2 }  { m_axi_gmem4_BID ID 0 1 }  { m_axi_gmem4_BUSER DATA 0 1 } } }
	gmem5 { m_axi {  { m_axi_gmem5_AWVALID VALID 1 1 }  { m_axi_gmem5_AWREADY READY 0 1 }  { m_axi_gmem5_AWADDR ADDR 1 64 }  { m_axi_gmem5_AWID ID 1 1 }  { m_axi_gmem5_AWLEN SIZE 1 8 }  { m_axi_gmem5_AWSIZE BURST 1 3 }  { m_axi_gmem5_AWBURST LOCK 1 2 }  { m_axi_gmem5_AWLOCK CACHE 1 2 }  { m_axi_gmem5_AWCACHE PROT 1 4 }  { m_axi_gmem5_AWPROT QOS 1 3 }  { m_axi_gmem5_AWQOS REGION 1 4 }  { m_axi_gmem5_AWREGION USER 1 4 }  { m_axi_gmem5_AWUSER DATA 1 1 }  { m_axi_gmem5_WVALID VALID 1 1 }  { m_axi_gmem5_WREADY READY 0 1 }  { m_axi_gmem5_WDATA FIFONUM 1 32 }  { m_axi_gmem5_WSTRB STRB 1 4 }  { m_axi_gmem5_WLAST LAST 1 1 }  { m_axi_gmem5_WID ID 1 1 }  { m_axi_gmem5_WUSER DATA 1 1 }  { m_axi_gmem5_ARVALID VALID 1 1 }  { m_axi_gmem5_ARREADY READY 0 1 }  { m_axi_gmem5_ARADDR ADDR 1 64 }  { m_axi_gmem5_ARID ID 1 1 }  { m_axi_gmem5_ARLEN SIZE 1 8 }  { m_axi_gmem5_ARSIZE BURST 1 3 }  { m_axi_gmem5_ARBURST LOCK 1 2 }  { m_axi_gmem5_ARLOCK CACHE 1 2 }  { m_axi_gmem5_ARCACHE PROT 1 4 }  { m_axi_gmem5_ARPROT QOS 1 3 }  { m_axi_gmem5_ARQOS REGION 1 4 }  { m_axi_gmem5_ARREGION USER 1 4 }  { m_axi_gmem5_ARUSER DATA 1 1 }  { m_axi_gmem5_RVALID VALID 0 1 }  { m_axi_gmem5_RREADY READY 1 1 }  { m_axi_gmem5_RDATA FIFONUM 0 32 }  { m_axi_gmem5_RLAST LAST 0 1 }  { m_axi_gmem5_RID ID 0 1 }  { m_axi_gmem5_RUSER DATA 0 1 }  { m_axi_gmem5_RRESP RESP 0 2 }  { m_axi_gmem5_BVALID VALID 0 1 }  { m_axi_gmem5_BREADY READY 1 1 }  { m_axi_gmem5_BRESP RESP 0 2 }  { m_axi_gmem5_BID ID 0 1 }  { m_axi_gmem5_BUSER DATA 0 1 } } }
	gmem6 { m_axi {  { m_axi_gmem6_AWVALID VALID 1 1 }  { m_axi_gmem6_AWREADY READY 0 1 }  { m_axi_gmem6_AWADDR ADDR 1 64 }  { m_axi_gmem6_AWID ID 1 1 }  { m_axi_gmem6_AWLEN SIZE 1 8 }  { m_axi_gmem6_AWSIZE BURST 1 3 }  { m_axi_gmem6_AWBURST LOCK 1 2 }  { m_axi_gmem6_AWLOCK CACHE 1 2 }  { m_axi_gmem6_AWCACHE PROT 1 4 }  { m_axi_gmem6_AWPROT QOS 1 3 }  { m_axi_gmem6_AWQOS REGION 1 4 }  { m_axi_gmem6_AWREGION USER 1 4 }  { m_axi_gmem6_AWUSER DATA 1 1 }  { m_axi_gmem6_WVALID VALID 1 1 }  { m_axi_gmem6_WREADY READY 0 1 }  { m_axi_gmem6_WDATA FIFONUM 1 512 }  { m_axi_gmem6_WSTRB STRB 1 64 }  { m_axi_gmem6_WLAST LAST 1 1 }  { m_axi_gmem6_WID ID 1 1 }  { m_axi_gmem6_WUSER DATA 1 1 }  { m_axi_gmem6_ARVALID VALID 1 1 }  { m_axi_gmem6_ARREADY READY 0 1 }  { m_axi_gmem6_ARADDR ADDR 1 64 }  { m_axi_gmem6_ARID ID 1 1 }  { m_axi_gmem6_ARLEN SIZE 1 8 }  { m_axi_gmem6_ARSIZE BURST 1 3 }  { m_axi_gmem6_ARBURST LOCK 1 2 }  { m_axi_gmem6_ARLOCK CACHE 1 2 }  { m_axi_gmem6_ARCACHE PROT 1 4 }  { m_axi_gmem6_ARPROT QOS 1 3 }  { m_axi_gmem6_ARQOS REGION 1 4 }  { m_axi_gmem6_ARREGION USER 1 4 }  { m_axi_gmem6_ARUSER DATA 1 1 }  { m_axi_gmem6_RVALID VALID 0 1 }  { m_axi_gmem6_RREADY READY 1 1 }  { m_axi_gmem6_RDATA FIFONUM 0 512 }  { m_axi_gmem6_RLAST LAST 0 1 }  { m_axi_gmem6_RID ID 0 1 }  { m_axi_gmem6_RUSER DATA 0 1 }  { m_axi_gmem6_RRESP RESP 0 2 }  { m_axi_gmem6_BVALID VALID 0 1 }  { m_axi_gmem6_BREADY READY 1 1 }  { m_axi_gmem6_BRESP RESP 0 2 }  { m_axi_gmem6_BID ID 0 1 }  { m_axi_gmem6_BUSER DATA 0 1 } } }
	nnz_total { ap_none {  { nnz_total in_data 0 32 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 { CHANNEL_NUM 0 BUNDLE gmem0 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem1 { CHANNEL_NUM 0 BUNDLE gmem1 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem2 { CHANNEL_NUM 0 BUNDLE gmem2 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem3 { CHANNEL_NUM 0 BUNDLE gmem3 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem4 { CHANNEL_NUM 0 BUNDLE gmem4 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem5 { CHANNEL_NUM 0 BUNDLE gmem5 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem6 { CHANNEL_NUM 0 BUNDLE gmem6 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
	{ gmem2 1 }
	{ gmem3 1 }
	{ gmem4 1 }
	{ gmem5 1 }
	{ gmem6 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
	{ gmem2 1 }
	{ gmem3 1 }
	{ gmem4 1 }
	{ gmem5 1 }
	{ gmem6 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
