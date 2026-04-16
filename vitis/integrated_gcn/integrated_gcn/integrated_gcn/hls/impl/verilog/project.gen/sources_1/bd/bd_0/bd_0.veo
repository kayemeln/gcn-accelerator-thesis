// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// DO NOT MODIFY THIS FILE.

// MODULE VLNV: amd.com:blockdesign:bd_0:1.0

// The following must be inserted into your Verilog file for this
// module to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

// INST_TAG     ------ Begin cut for INSTANTIATION Template ------
bd_0 your_instance_name (
  .ap_clk(ap_clk), // input wire ap_clk
  .ap_rst_n(ap_rst_n), // input wire ap_rst_n
  .nnz_total(nnz_total), // input wire [31:0] nnz_total
  .ap_ctrl_done(ap_ctrl_done), // output wire ap_ctrl_done
  .ap_ctrl_idle(ap_ctrl_idle), // output wire ap_ctrl_idle
  .ap_ctrl_ready(ap_ctrl_ready), // output wire ap_ctrl_ready
  .ap_ctrl_start(ap_ctrl_start), // input wire ap_ctrl_start
  .m_axi_gmem0_araddr(m_axi_gmem0_araddr), // output wire [63:0] m_axi_gmem0_araddr
  .m_axi_gmem0_arburst(m_axi_gmem0_arburst), // output wire [1:0] m_axi_gmem0_arburst
  .m_axi_gmem0_arcache(m_axi_gmem0_arcache), // output wire [3:0] m_axi_gmem0_arcache
  .m_axi_gmem0_arid(m_axi_gmem0_arid), // output wire [0:0] m_axi_gmem0_arid
  .m_axi_gmem0_arlen(m_axi_gmem0_arlen), // output wire [7:0] m_axi_gmem0_arlen
  .m_axi_gmem0_arlock(m_axi_gmem0_arlock), // output wire [1:0] m_axi_gmem0_arlock
  .m_axi_gmem0_arprot(m_axi_gmem0_arprot), // output wire [2:0] m_axi_gmem0_arprot
  .m_axi_gmem0_arqos(m_axi_gmem0_arqos), // output wire [3:0] m_axi_gmem0_arqos
  .m_axi_gmem0_arready(m_axi_gmem0_arready), // input wire m_axi_gmem0_arready
  .m_axi_gmem0_arregion(m_axi_gmem0_arregion), // output wire [3:0] m_axi_gmem0_arregion
  .m_axi_gmem0_arsize(m_axi_gmem0_arsize), // output wire [2:0] m_axi_gmem0_arsize
  .m_axi_gmem0_arvalid(m_axi_gmem0_arvalid), // output wire m_axi_gmem0_arvalid
  .m_axi_gmem0_awaddr(m_axi_gmem0_awaddr), // output wire [63:0] m_axi_gmem0_awaddr
  .m_axi_gmem0_awburst(m_axi_gmem0_awburst), // output wire [1:0] m_axi_gmem0_awburst
  .m_axi_gmem0_awcache(m_axi_gmem0_awcache), // output wire [3:0] m_axi_gmem0_awcache
  .m_axi_gmem0_awid(m_axi_gmem0_awid), // output wire [0:0] m_axi_gmem0_awid
  .m_axi_gmem0_awlen(m_axi_gmem0_awlen), // output wire [7:0] m_axi_gmem0_awlen
  .m_axi_gmem0_awlock(m_axi_gmem0_awlock), // output wire [1:0] m_axi_gmem0_awlock
  .m_axi_gmem0_awprot(m_axi_gmem0_awprot), // output wire [2:0] m_axi_gmem0_awprot
  .m_axi_gmem0_awqos(m_axi_gmem0_awqos), // output wire [3:0] m_axi_gmem0_awqos
  .m_axi_gmem0_awready(m_axi_gmem0_awready), // input wire m_axi_gmem0_awready
  .m_axi_gmem0_awregion(m_axi_gmem0_awregion), // output wire [3:0] m_axi_gmem0_awregion
  .m_axi_gmem0_awsize(m_axi_gmem0_awsize), // output wire [2:0] m_axi_gmem0_awsize
  .m_axi_gmem0_awvalid(m_axi_gmem0_awvalid), // output wire m_axi_gmem0_awvalid
  .m_axi_gmem0_bid(m_axi_gmem0_bid), // input wire [0:0] m_axi_gmem0_bid
  .m_axi_gmem0_bready(m_axi_gmem0_bready), // output wire m_axi_gmem0_bready
  .m_axi_gmem0_bresp(m_axi_gmem0_bresp), // input wire [1:0] m_axi_gmem0_bresp
  .m_axi_gmem0_bvalid(m_axi_gmem0_bvalid), // input wire m_axi_gmem0_bvalid
  .m_axi_gmem0_rdata(m_axi_gmem0_rdata), // input wire [511:0] m_axi_gmem0_rdata
  .m_axi_gmem0_rid(m_axi_gmem0_rid), // input wire [0:0] m_axi_gmem0_rid
  .m_axi_gmem0_rlast(m_axi_gmem0_rlast), // input wire m_axi_gmem0_rlast
  .m_axi_gmem0_rready(m_axi_gmem0_rready), // output wire m_axi_gmem0_rready
  .m_axi_gmem0_rresp(m_axi_gmem0_rresp), // input wire [1:0] m_axi_gmem0_rresp
  .m_axi_gmem0_rvalid(m_axi_gmem0_rvalid), // input wire m_axi_gmem0_rvalid
  .m_axi_gmem0_wdata(m_axi_gmem0_wdata), // output wire [511:0] m_axi_gmem0_wdata
  .m_axi_gmem0_wid(m_axi_gmem0_wid), // output wire [0:0] m_axi_gmem0_wid
  .m_axi_gmem0_wlast(m_axi_gmem0_wlast), // output wire m_axi_gmem0_wlast
  .m_axi_gmem0_wready(m_axi_gmem0_wready), // input wire m_axi_gmem0_wready
  .m_axi_gmem0_wstrb(m_axi_gmem0_wstrb), // output wire [63:0] m_axi_gmem0_wstrb
  .m_axi_gmem0_wvalid(m_axi_gmem0_wvalid), // output wire m_axi_gmem0_wvalid
  .m_axi_gmem1_araddr(m_axi_gmem1_araddr), // output wire [63:0] m_axi_gmem1_araddr
  .m_axi_gmem1_arburst(m_axi_gmem1_arburst), // output wire [1:0] m_axi_gmem1_arburst
  .m_axi_gmem1_arcache(m_axi_gmem1_arcache), // output wire [3:0] m_axi_gmem1_arcache
  .m_axi_gmem1_arid(m_axi_gmem1_arid), // output wire [0:0] m_axi_gmem1_arid
  .m_axi_gmem1_arlen(m_axi_gmem1_arlen), // output wire [7:0] m_axi_gmem1_arlen
  .m_axi_gmem1_arlock(m_axi_gmem1_arlock), // output wire [1:0] m_axi_gmem1_arlock
  .m_axi_gmem1_arprot(m_axi_gmem1_arprot), // output wire [2:0] m_axi_gmem1_arprot
  .m_axi_gmem1_arqos(m_axi_gmem1_arqos), // output wire [3:0] m_axi_gmem1_arqos
  .m_axi_gmem1_arready(m_axi_gmem1_arready), // input wire m_axi_gmem1_arready
  .m_axi_gmem1_arregion(m_axi_gmem1_arregion), // output wire [3:0] m_axi_gmem1_arregion
  .m_axi_gmem1_arsize(m_axi_gmem1_arsize), // output wire [2:0] m_axi_gmem1_arsize
  .m_axi_gmem1_arvalid(m_axi_gmem1_arvalid), // output wire m_axi_gmem1_arvalid
  .m_axi_gmem1_awaddr(m_axi_gmem1_awaddr), // output wire [63:0] m_axi_gmem1_awaddr
  .m_axi_gmem1_awburst(m_axi_gmem1_awburst), // output wire [1:0] m_axi_gmem1_awburst
  .m_axi_gmem1_awcache(m_axi_gmem1_awcache), // output wire [3:0] m_axi_gmem1_awcache
  .m_axi_gmem1_awid(m_axi_gmem1_awid), // output wire [0:0] m_axi_gmem1_awid
  .m_axi_gmem1_awlen(m_axi_gmem1_awlen), // output wire [7:0] m_axi_gmem1_awlen
  .m_axi_gmem1_awlock(m_axi_gmem1_awlock), // output wire [1:0] m_axi_gmem1_awlock
  .m_axi_gmem1_awprot(m_axi_gmem1_awprot), // output wire [2:0] m_axi_gmem1_awprot
  .m_axi_gmem1_awqos(m_axi_gmem1_awqos), // output wire [3:0] m_axi_gmem1_awqos
  .m_axi_gmem1_awready(m_axi_gmem1_awready), // input wire m_axi_gmem1_awready
  .m_axi_gmem1_awregion(m_axi_gmem1_awregion), // output wire [3:0] m_axi_gmem1_awregion
  .m_axi_gmem1_awsize(m_axi_gmem1_awsize), // output wire [2:0] m_axi_gmem1_awsize
  .m_axi_gmem1_awvalid(m_axi_gmem1_awvalid), // output wire m_axi_gmem1_awvalid
  .m_axi_gmem1_bid(m_axi_gmem1_bid), // input wire [0:0] m_axi_gmem1_bid
  .m_axi_gmem1_bready(m_axi_gmem1_bready), // output wire m_axi_gmem1_bready
  .m_axi_gmem1_bresp(m_axi_gmem1_bresp), // input wire [1:0] m_axi_gmem1_bresp
  .m_axi_gmem1_bvalid(m_axi_gmem1_bvalid), // input wire m_axi_gmem1_bvalid
  .m_axi_gmem1_rdata(m_axi_gmem1_rdata), // input wire [511:0] m_axi_gmem1_rdata
  .m_axi_gmem1_rid(m_axi_gmem1_rid), // input wire [0:0] m_axi_gmem1_rid
  .m_axi_gmem1_rlast(m_axi_gmem1_rlast), // input wire m_axi_gmem1_rlast
  .m_axi_gmem1_rready(m_axi_gmem1_rready), // output wire m_axi_gmem1_rready
  .m_axi_gmem1_rresp(m_axi_gmem1_rresp), // input wire [1:0] m_axi_gmem1_rresp
  .m_axi_gmem1_rvalid(m_axi_gmem1_rvalid), // input wire m_axi_gmem1_rvalid
  .m_axi_gmem1_wdata(m_axi_gmem1_wdata), // output wire [511:0] m_axi_gmem1_wdata
  .m_axi_gmem1_wid(m_axi_gmem1_wid), // output wire [0:0] m_axi_gmem1_wid
  .m_axi_gmem1_wlast(m_axi_gmem1_wlast), // output wire m_axi_gmem1_wlast
  .m_axi_gmem1_wready(m_axi_gmem1_wready), // input wire m_axi_gmem1_wready
  .m_axi_gmem1_wstrb(m_axi_gmem1_wstrb), // output wire [63:0] m_axi_gmem1_wstrb
  .m_axi_gmem1_wvalid(m_axi_gmem1_wvalid), // output wire m_axi_gmem1_wvalid
  .m_axi_gmem2_araddr(m_axi_gmem2_araddr), // output wire [63:0] m_axi_gmem2_araddr
  .m_axi_gmem2_arburst(m_axi_gmem2_arburst), // output wire [1:0] m_axi_gmem2_arburst
  .m_axi_gmem2_arcache(m_axi_gmem2_arcache), // output wire [3:0] m_axi_gmem2_arcache
  .m_axi_gmem2_arid(m_axi_gmem2_arid), // output wire [0:0] m_axi_gmem2_arid
  .m_axi_gmem2_arlen(m_axi_gmem2_arlen), // output wire [7:0] m_axi_gmem2_arlen
  .m_axi_gmem2_arlock(m_axi_gmem2_arlock), // output wire [1:0] m_axi_gmem2_arlock
  .m_axi_gmem2_arprot(m_axi_gmem2_arprot), // output wire [2:0] m_axi_gmem2_arprot
  .m_axi_gmem2_arqos(m_axi_gmem2_arqos), // output wire [3:0] m_axi_gmem2_arqos
  .m_axi_gmem2_arready(m_axi_gmem2_arready), // input wire m_axi_gmem2_arready
  .m_axi_gmem2_arregion(m_axi_gmem2_arregion), // output wire [3:0] m_axi_gmem2_arregion
  .m_axi_gmem2_arsize(m_axi_gmem2_arsize), // output wire [2:0] m_axi_gmem2_arsize
  .m_axi_gmem2_arvalid(m_axi_gmem2_arvalid), // output wire m_axi_gmem2_arvalid
  .m_axi_gmem2_awaddr(m_axi_gmem2_awaddr), // output wire [63:0] m_axi_gmem2_awaddr
  .m_axi_gmem2_awburst(m_axi_gmem2_awburst), // output wire [1:0] m_axi_gmem2_awburst
  .m_axi_gmem2_awcache(m_axi_gmem2_awcache), // output wire [3:0] m_axi_gmem2_awcache
  .m_axi_gmem2_awid(m_axi_gmem2_awid), // output wire [0:0] m_axi_gmem2_awid
  .m_axi_gmem2_awlen(m_axi_gmem2_awlen), // output wire [7:0] m_axi_gmem2_awlen
  .m_axi_gmem2_awlock(m_axi_gmem2_awlock), // output wire [1:0] m_axi_gmem2_awlock
  .m_axi_gmem2_awprot(m_axi_gmem2_awprot), // output wire [2:0] m_axi_gmem2_awprot
  .m_axi_gmem2_awqos(m_axi_gmem2_awqos), // output wire [3:0] m_axi_gmem2_awqos
  .m_axi_gmem2_awready(m_axi_gmem2_awready), // input wire m_axi_gmem2_awready
  .m_axi_gmem2_awregion(m_axi_gmem2_awregion), // output wire [3:0] m_axi_gmem2_awregion
  .m_axi_gmem2_awsize(m_axi_gmem2_awsize), // output wire [2:0] m_axi_gmem2_awsize
  .m_axi_gmem2_awvalid(m_axi_gmem2_awvalid), // output wire m_axi_gmem2_awvalid
  .m_axi_gmem2_bid(m_axi_gmem2_bid), // input wire [0:0] m_axi_gmem2_bid
  .m_axi_gmem2_bready(m_axi_gmem2_bready), // output wire m_axi_gmem2_bready
  .m_axi_gmem2_bresp(m_axi_gmem2_bresp), // input wire [1:0] m_axi_gmem2_bresp
  .m_axi_gmem2_bvalid(m_axi_gmem2_bvalid), // input wire m_axi_gmem2_bvalid
  .m_axi_gmem2_rdata(m_axi_gmem2_rdata), // input wire [511:0] m_axi_gmem2_rdata
  .m_axi_gmem2_rid(m_axi_gmem2_rid), // input wire [0:0] m_axi_gmem2_rid
  .m_axi_gmem2_rlast(m_axi_gmem2_rlast), // input wire m_axi_gmem2_rlast
  .m_axi_gmem2_rready(m_axi_gmem2_rready), // output wire m_axi_gmem2_rready
  .m_axi_gmem2_rresp(m_axi_gmem2_rresp), // input wire [1:0] m_axi_gmem2_rresp
  .m_axi_gmem2_rvalid(m_axi_gmem2_rvalid), // input wire m_axi_gmem2_rvalid
  .m_axi_gmem2_wdata(m_axi_gmem2_wdata), // output wire [511:0] m_axi_gmem2_wdata
  .m_axi_gmem2_wid(m_axi_gmem2_wid), // output wire [0:0] m_axi_gmem2_wid
  .m_axi_gmem2_wlast(m_axi_gmem2_wlast), // output wire m_axi_gmem2_wlast
  .m_axi_gmem2_wready(m_axi_gmem2_wready), // input wire m_axi_gmem2_wready
  .m_axi_gmem2_wstrb(m_axi_gmem2_wstrb), // output wire [63:0] m_axi_gmem2_wstrb
  .m_axi_gmem2_wvalid(m_axi_gmem2_wvalid), // output wire m_axi_gmem2_wvalid
  .m_axi_gmem3_araddr(m_axi_gmem3_araddr), // output wire [63:0] m_axi_gmem3_araddr
  .m_axi_gmem3_arburst(m_axi_gmem3_arburst), // output wire [1:0] m_axi_gmem3_arburst
  .m_axi_gmem3_arcache(m_axi_gmem3_arcache), // output wire [3:0] m_axi_gmem3_arcache
  .m_axi_gmem3_arid(m_axi_gmem3_arid), // output wire [0:0] m_axi_gmem3_arid
  .m_axi_gmem3_arlen(m_axi_gmem3_arlen), // output wire [7:0] m_axi_gmem3_arlen
  .m_axi_gmem3_arlock(m_axi_gmem3_arlock), // output wire [1:0] m_axi_gmem3_arlock
  .m_axi_gmem3_arprot(m_axi_gmem3_arprot), // output wire [2:0] m_axi_gmem3_arprot
  .m_axi_gmem3_arqos(m_axi_gmem3_arqos), // output wire [3:0] m_axi_gmem3_arqos
  .m_axi_gmem3_arready(m_axi_gmem3_arready), // input wire m_axi_gmem3_arready
  .m_axi_gmem3_arregion(m_axi_gmem3_arregion), // output wire [3:0] m_axi_gmem3_arregion
  .m_axi_gmem3_arsize(m_axi_gmem3_arsize), // output wire [2:0] m_axi_gmem3_arsize
  .m_axi_gmem3_arvalid(m_axi_gmem3_arvalid), // output wire m_axi_gmem3_arvalid
  .m_axi_gmem3_awaddr(m_axi_gmem3_awaddr), // output wire [63:0] m_axi_gmem3_awaddr
  .m_axi_gmem3_awburst(m_axi_gmem3_awburst), // output wire [1:0] m_axi_gmem3_awburst
  .m_axi_gmem3_awcache(m_axi_gmem3_awcache), // output wire [3:0] m_axi_gmem3_awcache
  .m_axi_gmem3_awid(m_axi_gmem3_awid), // output wire [0:0] m_axi_gmem3_awid
  .m_axi_gmem3_awlen(m_axi_gmem3_awlen), // output wire [7:0] m_axi_gmem3_awlen
  .m_axi_gmem3_awlock(m_axi_gmem3_awlock), // output wire [1:0] m_axi_gmem3_awlock
  .m_axi_gmem3_awprot(m_axi_gmem3_awprot), // output wire [2:0] m_axi_gmem3_awprot
  .m_axi_gmem3_awqos(m_axi_gmem3_awqos), // output wire [3:0] m_axi_gmem3_awqos
  .m_axi_gmem3_awready(m_axi_gmem3_awready), // input wire m_axi_gmem3_awready
  .m_axi_gmem3_awregion(m_axi_gmem3_awregion), // output wire [3:0] m_axi_gmem3_awregion
  .m_axi_gmem3_awsize(m_axi_gmem3_awsize), // output wire [2:0] m_axi_gmem3_awsize
  .m_axi_gmem3_awvalid(m_axi_gmem3_awvalid), // output wire m_axi_gmem3_awvalid
  .m_axi_gmem3_bid(m_axi_gmem3_bid), // input wire [0:0] m_axi_gmem3_bid
  .m_axi_gmem3_bready(m_axi_gmem3_bready), // output wire m_axi_gmem3_bready
  .m_axi_gmem3_bresp(m_axi_gmem3_bresp), // input wire [1:0] m_axi_gmem3_bresp
  .m_axi_gmem3_bvalid(m_axi_gmem3_bvalid), // input wire m_axi_gmem3_bvalid
  .m_axi_gmem3_rdata(m_axi_gmem3_rdata), // input wire [31:0] m_axi_gmem3_rdata
  .m_axi_gmem3_rid(m_axi_gmem3_rid), // input wire [0:0] m_axi_gmem3_rid
  .m_axi_gmem3_rlast(m_axi_gmem3_rlast), // input wire m_axi_gmem3_rlast
  .m_axi_gmem3_rready(m_axi_gmem3_rready), // output wire m_axi_gmem3_rready
  .m_axi_gmem3_rresp(m_axi_gmem3_rresp), // input wire [1:0] m_axi_gmem3_rresp
  .m_axi_gmem3_rvalid(m_axi_gmem3_rvalid), // input wire m_axi_gmem3_rvalid
  .m_axi_gmem3_wdata(m_axi_gmem3_wdata), // output wire [31:0] m_axi_gmem3_wdata
  .m_axi_gmem3_wid(m_axi_gmem3_wid), // output wire [0:0] m_axi_gmem3_wid
  .m_axi_gmem3_wlast(m_axi_gmem3_wlast), // output wire m_axi_gmem3_wlast
  .m_axi_gmem3_wready(m_axi_gmem3_wready), // input wire m_axi_gmem3_wready
  .m_axi_gmem3_wstrb(m_axi_gmem3_wstrb), // output wire [3:0] m_axi_gmem3_wstrb
  .m_axi_gmem3_wvalid(m_axi_gmem3_wvalid), // output wire m_axi_gmem3_wvalid
  .m_axi_gmem4_araddr(m_axi_gmem4_araddr), // output wire [63:0] m_axi_gmem4_araddr
  .m_axi_gmem4_arburst(m_axi_gmem4_arburst), // output wire [1:0] m_axi_gmem4_arburst
  .m_axi_gmem4_arcache(m_axi_gmem4_arcache), // output wire [3:0] m_axi_gmem4_arcache
  .m_axi_gmem4_arid(m_axi_gmem4_arid), // output wire [0:0] m_axi_gmem4_arid
  .m_axi_gmem4_arlen(m_axi_gmem4_arlen), // output wire [7:0] m_axi_gmem4_arlen
  .m_axi_gmem4_arlock(m_axi_gmem4_arlock), // output wire [1:0] m_axi_gmem4_arlock
  .m_axi_gmem4_arprot(m_axi_gmem4_arprot), // output wire [2:0] m_axi_gmem4_arprot
  .m_axi_gmem4_arqos(m_axi_gmem4_arqos), // output wire [3:0] m_axi_gmem4_arqos
  .m_axi_gmem4_arready(m_axi_gmem4_arready), // input wire m_axi_gmem4_arready
  .m_axi_gmem4_arregion(m_axi_gmem4_arregion), // output wire [3:0] m_axi_gmem4_arregion
  .m_axi_gmem4_arsize(m_axi_gmem4_arsize), // output wire [2:0] m_axi_gmem4_arsize
  .m_axi_gmem4_arvalid(m_axi_gmem4_arvalid), // output wire m_axi_gmem4_arvalid
  .m_axi_gmem4_awaddr(m_axi_gmem4_awaddr), // output wire [63:0] m_axi_gmem4_awaddr
  .m_axi_gmem4_awburst(m_axi_gmem4_awburst), // output wire [1:0] m_axi_gmem4_awburst
  .m_axi_gmem4_awcache(m_axi_gmem4_awcache), // output wire [3:0] m_axi_gmem4_awcache
  .m_axi_gmem4_awid(m_axi_gmem4_awid), // output wire [0:0] m_axi_gmem4_awid
  .m_axi_gmem4_awlen(m_axi_gmem4_awlen), // output wire [7:0] m_axi_gmem4_awlen
  .m_axi_gmem4_awlock(m_axi_gmem4_awlock), // output wire [1:0] m_axi_gmem4_awlock
  .m_axi_gmem4_awprot(m_axi_gmem4_awprot), // output wire [2:0] m_axi_gmem4_awprot
  .m_axi_gmem4_awqos(m_axi_gmem4_awqos), // output wire [3:0] m_axi_gmem4_awqos
  .m_axi_gmem4_awready(m_axi_gmem4_awready), // input wire m_axi_gmem4_awready
  .m_axi_gmem4_awregion(m_axi_gmem4_awregion), // output wire [3:0] m_axi_gmem4_awregion
  .m_axi_gmem4_awsize(m_axi_gmem4_awsize), // output wire [2:0] m_axi_gmem4_awsize
  .m_axi_gmem4_awvalid(m_axi_gmem4_awvalid), // output wire m_axi_gmem4_awvalid
  .m_axi_gmem4_bid(m_axi_gmem4_bid), // input wire [0:0] m_axi_gmem4_bid
  .m_axi_gmem4_bready(m_axi_gmem4_bready), // output wire m_axi_gmem4_bready
  .m_axi_gmem4_bresp(m_axi_gmem4_bresp), // input wire [1:0] m_axi_gmem4_bresp
  .m_axi_gmem4_bvalid(m_axi_gmem4_bvalid), // input wire m_axi_gmem4_bvalid
  .m_axi_gmem4_rdata(m_axi_gmem4_rdata), // input wire [31:0] m_axi_gmem4_rdata
  .m_axi_gmem4_rid(m_axi_gmem4_rid), // input wire [0:0] m_axi_gmem4_rid
  .m_axi_gmem4_rlast(m_axi_gmem4_rlast), // input wire m_axi_gmem4_rlast
  .m_axi_gmem4_rready(m_axi_gmem4_rready), // output wire m_axi_gmem4_rready
  .m_axi_gmem4_rresp(m_axi_gmem4_rresp), // input wire [1:0] m_axi_gmem4_rresp
  .m_axi_gmem4_rvalid(m_axi_gmem4_rvalid), // input wire m_axi_gmem4_rvalid
  .m_axi_gmem4_wdata(m_axi_gmem4_wdata), // output wire [31:0] m_axi_gmem4_wdata
  .m_axi_gmem4_wid(m_axi_gmem4_wid), // output wire [0:0] m_axi_gmem4_wid
  .m_axi_gmem4_wlast(m_axi_gmem4_wlast), // output wire m_axi_gmem4_wlast
  .m_axi_gmem4_wready(m_axi_gmem4_wready), // input wire m_axi_gmem4_wready
  .m_axi_gmem4_wstrb(m_axi_gmem4_wstrb), // output wire [3:0] m_axi_gmem4_wstrb
  .m_axi_gmem4_wvalid(m_axi_gmem4_wvalid), // output wire m_axi_gmem4_wvalid
  .m_axi_gmem5_araddr(m_axi_gmem5_araddr), // output wire [63:0] m_axi_gmem5_araddr
  .m_axi_gmem5_arburst(m_axi_gmem5_arburst), // output wire [1:0] m_axi_gmem5_arburst
  .m_axi_gmem5_arcache(m_axi_gmem5_arcache), // output wire [3:0] m_axi_gmem5_arcache
  .m_axi_gmem5_arid(m_axi_gmem5_arid), // output wire [0:0] m_axi_gmem5_arid
  .m_axi_gmem5_arlen(m_axi_gmem5_arlen), // output wire [7:0] m_axi_gmem5_arlen
  .m_axi_gmem5_arlock(m_axi_gmem5_arlock), // output wire [1:0] m_axi_gmem5_arlock
  .m_axi_gmem5_arprot(m_axi_gmem5_arprot), // output wire [2:0] m_axi_gmem5_arprot
  .m_axi_gmem5_arqos(m_axi_gmem5_arqos), // output wire [3:0] m_axi_gmem5_arqos
  .m_axi_gmem5_arready(m_axi_gmem5_arready), // input wire m_axi_gmem5_arready
  .m_axi_gmem5_arregion(m_axi_gmem5_arregion), // output wire [3:0] m_axi_gmem5_arregion
  .m_axi_gmem5_arsize(m_axi_gmem5_arsize), // output wire [2:0] m_axi_gmem5_arsize
  .m_axi_gmem5_arvalid(m_axi_gmem5_arvalid), // output wire m_axi_gmem5_arvalid
  .m_axi_gmem5_awaddr(m_axi_gmem5_awaddr), // output wire [63:0] m_axi_gmem5_awaddr
  .m_axi_gmem5_awburst(m_axi_gmem5_awburst), // output wire [1:0] m_axi_gmem5_awburst
  .m_axi_gmem5_awcache(m_axi_gmem5_awcache), // output wire [3:0] m_axi_gmem5_awcache
  .m_axi_gmem5_awid(m_axi_gmem5_awid), // output wire [0:0] m_axi_gmem5_awid
  .m_axi_gmem5_awlen(m_axi_gmem5_awlen), // output wire [7:0] m_axi_gmem5_awlen
  .m_axi_gmem5_awlock(m_axi_gmem5_awlock), // output wire [1:0] m_axi_gmem5_awlock
  .m_axi_gmem5_awprot(m_axi_gmem5_awprot), // output wire [2:0] m_axi_gmem5_awprot
  .m_axi_gmem5_awqos(m_axi_gmem5_awqos), // output wire [3:0] m_axi_gmem5_awqos
  .m_axi_gmem5_awready(m_axi_gmem5_awready), // input wire m_axi_gmem5_awready
  .m_axi_gmem5_awregion(m_axi_gmem5_awregion), // output wire [3:0] m_axi_gmem5_awregion
  .m_axi_gmem5_awsize(m_axi_gmem5_awsize), // output wire [2:0] m_axi_gmem5_awsize
  .m_axi_gmem5_awvalid(m_axi_gmem5_awvalid), // output wire m_axi_gmem5_awvalid
  .m_axi_gmem5_bid(m_axi_gmem5_bid), // input wire [0:0] m_axi_gmem5_bid
  .m_axi_gmem5_bready(m_axi_gmem5_bready), // output wire m_axi_gmem5_bready
  .m_axi_gmem5_bresp(m_axi_gmem5_bresp), // input wire [1:0] m_axi_gmem5_bresp
  .m_axi_gmem5_bvalid(m_axi_gmem5_bvalid), // input wire m_axi_gmem5_bvalid
  .m_axi_gmem5_rdata(m_axi_gmem5_rdata), // input wire [31:0] m_axi_gmem5_rdata
  .m_axi_gmem5_rid(m_axi_gmem5_rid), // input wire [0:0] m_axi_gmem5_rid
  .m_axi_gmem5_rlast(m_axi_gmem5_rlast), // input wire m_axi_gmem5_rlast
  .m_axi_gmem5_rready(m_axi_gmem5_rready), // output wire m_axi_gmem5_rready
  .m_axi_gmem5_rresp(m_axi_gmem5_rresp), // input wire [1:0] m_axi_gmem5_rresp
  .m_axi_gmem5_rvalid(m_axi_gmem5_rvalid), // input wire m_axi_gmem5_rvalid
  .m_axi_gmem5_wdata(m_axi_gmem5_wdata), // output wire [31:0] m_axi_gmem5_wdata
  .m_axi_gmem5_wid(m_axi_gmem5_wid), // output wire [0:0] m_axi_gmem5_wid
  .m_axi_gmem5_wlast(m_axi_gmem5_wlast), // output wire m_axi_gmem5_wlast
  .m_axi_gmem5_wready(m_axi_gmem5_wready), // input wire m_axi_gmem5_wready
  .m_axi_gmem5_wstrb(m_axi_gmem5_wstrb), // output wire [3:0] m_axi_gmem5_wstrb
  .m_axi_gmem5_wvalid(m_axi_gmem5_wvalid), // output wire m_axi_gmem5_wvalid
  .m_axi_gmem6_araddr(m_axi_gmem6_araddr), // output wire [63:0] m_axi_gmem6_araddr
  .m_axi_gmem6_arburst(m_axi_gmem6_arburst), // output wire [1:0] m_axi_gmem6_arburst
  .m_axi_gmem6_arcache(m_axi_gmem6_arcache), // output wire [3:0] m_axi_gmem6_arcache
  .m_axi_gmem6_arid(m_axi_gmem6_arid), // output wire [0:0] m_axi_gmem6_arid
  .m_axi_gmem6_arlen(m_axi_gmem6_arlen), // output wire [7:0] m_axi_gmem6_arlen
  .m_axi_gmem6_arlock(m_axi_gmem6_arlock), // output wire [1:0] m_axi_gmem6_arlock
  .m_axi_gmem6_arprot(m_axi_gmem6_arprot), // output wire [2:0] m_axi_gmem6_arprot
  .m_axi_gmem6_arqos(m_axi_gmem6_arqos), // output wire [3:0] m_axi_gmem6_arqos
  .m_axi_gmem6_arready(m_axi_gmem6_arready), // input wire m_axi_gmem6_arready
  .m_axi_gmem6_arregion(m_axi_gmem6_arregion), // output wire [3:0] m_axi_gmem6_arregion
  .m_axi_gmem6_arsize(m_axi_gmem6_arsize), // output wire [2:0] m_axi_gmem6_arsize
  .m_axi_gmem6_arvalid(m_axi_gmem6_arvalid), // output wire m_axi_gmem6_arvalid
  .m_axi_gmem6_awaddr(m_axi_gmem6_awaddr), // output wire [63:0] m_axi_gmem6_awaddr
  .m_axi_gmem6_awburst(m_axi_gmem6_awburst), // output wire [1:0] m_axi_gmem6_awburst
  .m_axi_gmem6_awcache(m_axi_gmem6_awcache), // output wire [3:0] m_axi_gmem6_awcache
  .m_axi_gmem6_awid(m_axi_gmem6_awid), // output wire [0:0] m_axi_gmem6_awid
  .m_axi_gmem6_awlen(m_axi_gmem6_awlen), // output wire [7:0] m_axi_gmem6_awlen
  .m_axi_gmem6_awlock(m_axi_gmem6_awlock), // output wire [1:0] m_axi_gmem6_awlock
  .m_axi_gmem6_awprot(m_axi_gmem6_awprot), // output wire [2:0] m_axi_gmem6_awprot
  .m_axi_gmem6_awqos(m_axi_gmem6_awqos), // output wire [3:0] m_axi_gmem6_awqos
  .m_axi_gmem6_awready(m_axi_gmem6_awready), // input wire m_axi_gmem6_awready
  .m_axi_gmem6_awregion(m_axi_gmem6_awregion), // output wire [3:0] m_axi_gmem6_awregion
  .m_axi_gmem6_awsize(m_axi_gmem6_awsize), // output wire [2:0] m_axi_gmem6_awsize
  .m_axi_gmem6_awvalid(m_axi_gmem6_awvalid), // output wire m_axi_gmem6_awvalid
  .m_axi_gmem6_bid(m_axi_gmem6_bid), // input wire [0:0] m_axi_gmem6_bid
  .m_axi_gmem6_bready(m_axi_gmem6_bready), // output wire m_axi_gmem6_bready
  .m_axi_gmem6_bresp(m_axi_gmem6_bresp), // input wire [1:0] m_axi_gmem6_bresp
  .m_axi_gmem6_bvalid(m_axi_gmem6_bvalid), // input wire m_axi_gmem6_bvalid
  .m_axi_gmem6_rdata(m_axi_gmem6_rdata), // input wire [511:0] m_axi_gmem6_rdata
  .m_axi_gmem6_rid(m_axi_gmem6_rid), // input wire [0:0] m_axi_gmem6_rid
  .m_axi_gmem6_rlast(m_axi_gmem6_rlast), // input wire m_axi_gmem6_rlast
  .m_axi_gmem6_rready(m_axi_gmem6_rready), // output wire m_axi_gmem6_rready
  .m_axi_gmem6_rresp(m_axi_gmem6_rresp), // input wire [1:0] m_axi_gmem6_rresp
  .m_axi_gmem6_rvalid(m_axi_gmem6_rvalid), // input wire m_axi_gmem6_rvalid
  .m_axi_gmem6_wdata(m_axi_gmem6_wdata), // output wire [511:0] m_axi_gmem6_wdata
  .m_axi_gmem6_wid(m_axi_gmem6_wid), // output wire [0:0] m_axi_gmem6_wid
  .m_axi_gmem6_wlast(m_axi_gmem6_wlast), // output wire m_axi_gmem6_wlast
  .m_axi_gmem6_wready(m_axi_gmem6_wready), // input wire m_axi_gmem6_wready
  .m_axi_gmem6_wstrb(m_axi_gmem6_wstrb), // output wire [63:0] m_axi_gmem6_wstrb
  .m_axi_gmem6_wvalid(m_axi_gmem6_wvalid), // output wire m_axi_gmem6_wvalid
  .s_axi_control_araddr(s_axi_control_araddr), // input wire [6:0] s_axi_control_araddr
  .s_axi_control_arready(s_axi_control_arready), // output wire s_axi_control_arready
  .s_axi_control_arvalid(s_axi_control_arvalid), // input wire s_axi_control_arvalid
  .s_axi_control_awaddr(s_axi_control_awaddr), // input wire [6:0] s_axi_control_awaddr
  .s_axi_control_awready(s_axi_control_awready), // output wire s_axi_control_awready
  .s_axi_control_awvalid(s_axi_control_awvalid), // input wire s_axi_control_awvalid
  .s_axi_control_bready(s_axi_control_bready), // input wire s_axi_control_bready
  .s_axi_control_bresp(s_axi_control_bresp), // output wire [1:0] s_axi_control_bresp
  .s_axi_control_bvalid(s_axi_control_bvalid), // output wire s_axi_control_bvalid
  .s_axi_control_rdata(s_axi_control_rdata), // output wire [31:0] s_axi_control_rdata
  .s_axi_control_rready(s_axi_control_rready), // input wire s_axi_control_rready
  .s_axi_control_rresp(s_axi_control_rresp), // output wire [1:0] s_axi_control_rresp
  .s_axi_control_rvalid(s_axi_control_rvalid), // output wire s_axi_control_rvalid
  .s_axi_control_wdata(s_axi_control_wdata), // input wire [31:0] s_axi_control_wdata
  .s_axi_control_wready(s_axi_control_wready), // output wire s_axi_control_wready
  .s_axi_control_wstrb(s_axi_control_wstrb), // input wire [3:0] s_axi_control_wstrb
  .s_axi_control_wvalid(s_axi_control_wvalid) // input wire s_axi_control_wvalid
);
// INST_TAG_END ------  End cut for INSTANTIATION Template  ------

// You must compile the wrapper file bd_0.v when simulating
// the module, bd_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.
