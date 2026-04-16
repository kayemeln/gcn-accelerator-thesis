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

`timescale 1ps / 1ps

`include "vivado_interfaces.svh"

module bd_0_sv (
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0" *)
  (* X_INTERFACE_MODE = "master m_axi_gmem0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem0, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_aximm_v1_0.master m_axi_gmem0,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1" *)
  (* X_INTERFACE_MODE = "master m_axi_gmem1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem1, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_aximm_v1_0.master m_axi_gmem1,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem2" *)
  (* X_INTERFACE_MODE = "master m_axi_gmem2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem2, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_aximm_v1_0.master m_axi_gmem2,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem3" *)
  (* X_INTERFACE_MODE = "master m_axi_gmem3" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem3, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_aximm_v1_0.master m_axi_gmem3,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem4" *)
  (* X_INTERFACE_MODE = "master m_axi_gmem4" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem4, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_aximm_v1_0.master m_axi_gmem4,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem5" *)
  (* X_INTERFACE_MODE = "master m_axi_gmem5" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem5, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_aximm_v1_0.master m_axi_gmem5,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem6" *)
  (* X_INTERFACE_MODE = "master m_axi_gmem6" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem6, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_aximm_v1_0.master m_axi_gmem6,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control" *)
  (* X_INTERFACE_MODE = "slave s_axi_control" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000.0, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_axi4_lite_v1_0.slave s_axi_control,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire ap_clk,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire ap_rst_n,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [31:0] nnz_total,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire ap_ctrl_done,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire ap_ctrl_idle,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire ap_ctrl_ready,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire ap_ctrl_start
);

  // interface wire assignments
  assign m_axi_gmem0.ARUSER = 0;
  assign m_axi_gmem0.AWUSER = 0;
  assign m_axi_gmem0.WUSER = 0;
  assign m_axi_gmem1.ARUSER = 0;
  assign m_axi_gmem1.AWUSER = 0;
  assign m_axi_gmem1.WUSER = 0;
  assign m_axi_gmem2.ARUSER = 0;
  assign m_axi_gmem2.AWUSER = 0;
  assign m_axi_gmem2.WUSER = 0;
  assign m_axi_gmem3.ARUSER = 0;
  assign m_axi_gmem3.AWUSER = 0;
  assign m_axi_gmem3.WUSER = 0;
  assign m_axi_gmem4.ARUSER = 0;
  assign m_axi_gmem4.AWUSER = 0;
  assign m_axi_gmem4.WUSER = 0;
  assign m_axi_gmem5.ARUSER = 0;
  assign m_axi_gmem5.AWUSER = 0;
  assign m_axi_gmem5.WUSER = 0;
  assign m_axi_gmem6.ARUSER = 0;
  assign m_axi_gmem6.AWUSER = 0;
  assign m_axi_gmem6.WUSER = 0;

  bd_0 inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .nnz_total(nnz_total),
    .ap_ctrl_done(ap_ctrl_done),
    .ap_ctrl_idle(ap_ctrl_idle),
    .ap_ctrl_ready(ap_ctrl_ready),
    .ap_ctrl_start(ap_ctrl_start),
    .m_axi_gmem0_araddr(m_axi_gmem0.ARADDR),
    .m_axi_gmem0_arburst(m_axi_gmem0.ARBURST),
    .m_axi_gmem0_arcache(m_axi_gmem0.ARCACHE),
    .m_axi_gmem0_arid(m_axi_gmem0.ARID),
    .m_axi_gmem0_arlen(m_axi_gmem0.ARLEN),
    .m_axi_gmem0_arlock(m_axi_gmem0.ARLOCK),
    .m_axi_gmem0_arprot(m_axi_gmem0.ARPROT),
    .m_axi_gmem0_arqos(m_axi_gmem0.ARQOS),
    .m_axi_gmem0_arready(m_axi_gmem0.ARREADY),
    .m_axi_gmem0_arregion(m_axi_gmem0.ARREGION),
    .m_axi_gmem0_arsize(m_axi_gmem0.ARSIZE),
    .m_axi_gmem0_arvalid(m_axi_gmem0.ARVALID),
    .m_axi_gmem0_awaddr(m_axi_gmem0.AWADDR),
    .m_axi_gmem0_awburst(m_axi_gmem0.AWBURST),
    .m_axi_gmem0_awcache(m_axi_gmem0.AWCACHE),
    .m_axi_gmem0_awid(m_axi_gmem0.AWID),
    .m_axi_gmem0_awlen(m_axi_gmem0.AWLEN),
    .m_axi_gmem0_awlock(m_axi_gmem0.AWLOCK),
    .m_axi_gmem0_awprot(m_axi_gmem0.AWPROT),
    .m_axi_gmem0_awqos(m_axi_gmem0.AWQOS),
    .m_axi_gmem0_awready(m_axi_gmem0.AWREADY),
    .m_axi_gmem0_awregion(m_axi_gmem0.AWREGION),
    .m_axi_gmem0_awsize(m_axi_gmem0.AWSIZE),
    .m_axi_gmem0_awvalid(m_axi_gmem0.AWVALID),
    .m_axi_gmem0_bid(m_axi_gmem0.BID),
    .m_axi_gmem0_bready(m_axi_gmem0.BREADY),
    .m_axi_gmem0_bresp(m_axi_gmem0.BRESP),
    .m_axi_gmem0_bvalid(m_axi_gmem0.BVALID),
    .m_axi_gmem0_rdata(m_axi_gmem0.RDATA),
    .m_axi_gmem0_rid(m_axi_gmem0.RID),
    .m_axi_gmem0_rlast(m_axi_gmem0.RLAST),
    .m_axi_gmem0_rready(m_axi_gmem0.RREADY),
    .m_axi_gmem0_rresp(m_axi_gmem0.RRESP),
    .m_axi_gmem0_rvalid(m_axi_gmem0.RVALID),
    .m_axi_gmem0_wdata(m_axi_gmem0.WDATA),
    .m_axi_gmem0_wid(m_axi_gmem0.WID),
    .m_axi_gmem0_wlast(m_axi_gmem0.WLAST),
    .m_axi_gmem0_wready(m_axi_gmem0.WREADY),
    .m_axi_gmem0_wstrb(m_axi_gmem0.WSTRB),
    .m_axi_gmem0_wvalid(m_axi_gmem0.WVALID),
    .m_axi_gmem1_araddr(m_axi_gmem1.ARADDR),
    .m_axi_gmem1_arburst(m_axi_gmem1.ARBURST),
    .m_axi_gmem1_arcache(m_axi_gmem1.ARCACHE),
    .m_axi_gmem1_arid(m_axi_gmem1.ARID),
    .m_axi_gmem1_arlen(m_axi_gmem1.ARLEN),
    .m_axi_gmem1_arlock(m_axi_gmem1.ARLOCK),
    .m_axi_gmem1_arprot(m_axi_gmem1.ARPROT),
    .m_axi_gmem1_arqos(m_axi_gmem1.ARQOS),
    .m_axi_gmem1_arready(m_axi_gmem1.ARREADY),
    .m_axi_gmem1_arregion(m_axi_gmem1.ARREGION),
    .m_axi_gmem1_arsize(m_axi_gmem1.ARSIZE),
    .m_axi_gmem1_arvalid(m_axi_gmem1.ARVALID),
    .m_axi_gmem1_awaddr(m_axi_gmem1.AWADDR),
    .m_axi_gmem1_awburst(m_axi_gmem1.AWBURST),
    .m_axi_gmem1_awcache(m_axi_gmem1.AWCACHE),
    .m_axi_gmem1_awid(m_axi_gmem1.AWID),
    .m_axi_gmem1_awlen(m_axi_gmem1.AWLEN),
    .m_axi_gmem1_awlock(m_axi_gmem1.AWLOCK),
    .m_axi_gmem1_awprot(m_axi_gmem1.AWPROT),
    .m_axi_gmem1_awqos(m_axi_gmem1.AWQOS),
    .m_axi_gmem1_awready(m_axi_gmem1.AWREADY),
    .m_axi_gmem1_awregion(m_axi_gmem1.AWREGION),
    .m_axi_gmem1_awsize(m_axi_gmem1.AWSIZE),
    .m_axi_gmem1_awvalid(m_axi_gmem1.AWVALID),
    .m_axi_gmem1_bid(m_axi_gmem1.BID),
    .m_axi_gmem1_bready(m_axi_gmem1.BREADY),
    .m_axi_gmem1_bresp(m_axi_gmem1.BRESP),
    .m_axi_gmem1_bvalid(m_axi_gmem1.BVALID),
    .m_axi_gmem1_rdata(m_axi_gmem1.RDATA),
    .m_axi_gmem1_rid(m_axi_gmem1.RID),
    .m_axi_gmem1_rlast(m_axi_gmem1.RLAST),
    .m_axi_gmem1_rready(m_axi_gmem1.RREADY),
    .m_axi_gmem1_rresp(m_axi_gmem1.RRESP),
    .m_axi_gmem1_rvalid(m_axi_gmem1.RVALID),
    .m_axi_gmem1_wdata(m_axi_gmem1.WDATA),
    .m_axi_gmem1_wid(m_axi_gmem1.WID),
    .m_axi_gmem1_wlast(m_axi_gmem1.WLAST),
    .m_axi_gmem1_wready(m_axi_gmem1.WREADY),
    .m_axi_gmem1_wstrb(m_axi_gmem1.WSTRB),
    .m_axi_gmem1_wvalid(m_axi_gmem1.WVALID),
    .m_axi_gmem2_araddr(m_axi_gmem2.ARADDR),
    .m_axi_gmem2_arburst(m_axi_gmem2.ARBURST),
    .m_axi_gmem2_arcache(m_axi_gmem2.ARCACHE),
    .m_axi_gmem2_arid(m_axi_gmem2.ARID),
    .m_axi_gmem2_arlen(m_axi_gmem2.ARLEN),
    .m_axi_gmem2_arlock(m_axi_gmem2.ARLOCK),
    .m_axi_gmem2_arprot(m_axi_gmem2.ARPROT),
    .m_axi_gmem2_arqos(m_axi_gmem2.ARQOS),
    .m_axi_gmem2_arready(m_axi_gmem2.ARREADY),
    .m_axi_gmem2_arregion(m_axi_gmem2.ARREGION),
    .m_axi_gmem2_arsize(m_axi_gmem2.ARSIZE),
    .m_axi_gmem2_arvalid(m_axi_gmem2.ARVALID),
    .m_axi_gmem2_awaddr(m_axi_gmem2.AWADDR),
    .m_axi_gmem2_awburst(m_axi_gmem2.AWBURST),
    .m_axi_gmem2_awcache(m_axi_gmem2.AWCACHE),
    .m_axi_gmem2_awid(m_axi_gmem2.AWID),
    .m_axi_gmem2_awlen(m_axi_gmem2.AWLEN),
    .m_axi_gmem2_awlock(m_axi_gmem2.AWLOCK),
    .m_axi_gmem2_awprot(m_axi_gmem2.AWPROT),
    .m_axi_gmem2_awqos(m_axi_gmem2.AWQOS),
    .m_axi_gmem2_awready(m_axi_gmem2.AWREADY),
    .m_axi_gmem2_awregion(m_axi_gmem2.AWREGION),
    .m_axi_gmem2_awsize(m_axi_gmem2.AWSIZE),
    .m_axi_gmem2_awvalid(m_axi_gmem2.AWVALID),
    .m_axi_gmem2_bid(m_axi_gmem2.BID),
    .m_axi_gmem2_bready(m_axi_gmem2.BREADY),
    .m_axi_gmem2_bresp(m_axi_gmem2.BRESP),
    .m_axi_gmem2_bvalid(m_axi_gmem2.BVALID),
    .m_axi_gmem2_rdata(m_axi_gmem2.RDATA),
    .m_axi_gmem2_rid(m_axi_gmem2.RID),
    .m_axi_gmem2_rlast(m_axi_gmem2.RLAST),
    .m_axi_gmem2_rready(m_axi_gmem2.RREADY),
    .m_axi_gmem2_rresp(m_axi_gmem2.RRESP),
    .m_axi_gmem2_rvalid(m_axi_gmem2.RVALID),
    .m_axi_gmem2_wdata(m_axi_gmem2.WDATA),
    .m_axi_gmem2_wid(m_axi_gmem2.WID),
    .m_axi_gmem2_wlast(m_axi_gmem2.WLAST),
    .m_axi_gmem2_wready(m_axi_gmem2.WREADY),
    .m_axi_gmem2_wstrb(m_axi_gmem2.WSTRB),
    .m_axi_gmem2_wvalid(m_axi_gmem2.WVALID),
    .m_axi_gmem3_araddr(m_axi_gmem3.ARADDR),
    .m_axi_gmem3_arburst(m_axi_gmem3.ARBURST),
    .m_axi_gmem3_arcache(m_axi_gmem3.ARCACHE),
    .m_axi_gmem3_arid(m_axi_gmem3.ARID),
    .m_axi_gmem3_arlen(m_axi_gmem3.ARLEN),
    .m_axi_gmem3_arlock(m_axi_gmem3.ARLOCK),
    .m_axi_gmem3_arprot(m_axi_gmem3.ARPROT),
    .m_axi_gmem3_arqos(m_axi_gmem3.ARQOS),
    .m_axi_gmem3_arready(m_axi_gmem3.ARREADY),
    .m_axi_gmem3_arregion(m_axi_gmem3.ARREGION),
    .m_axi_gmem3_arsize(m_axi_gmem3.ARSIZE),
    .m_axi_gmem3_arvalid(m_axi_gmem3.ARVALID),
    .m_axi_gmem3_awaddr(m_axi_gmem3.AWADDR),
    .m_axi_gmem3_awburst(m_axi_gmem3.AWBURST),
    .m_axi_gmem3_awcache(m_axi_gmem3.AWCACHE),
    .m_axi_gmem3_awid(m_axi_gmem3.AWID),
    .m_axi_gmem3_awlen(m_axi_gmem3.AWLEN),
    .m_axi_gmem3_awlock(m_axi_gmem3.AWLOCK),
    .m_axi_gmem3_awprot(m_axi_gmem3.AWPROT),
    .m_axi_gmem3_awqos(m_axi_gmem3.AWQOS),
    .m_axi_gmem3_awready(m_axi_gmem3.AWREADY),
    .m_axi_gmem3_awregion(m_axi_gmem3.AWREGION),
    .m_axi_gmem3_awsize(m_axi_gmem3.AWSIZE),
    .m_axi_gmem3_awvalid(m_axi_gmem3.AWVALID),
    .m_axi_gmem3_bid(m_axi_gmem3.BID),
    .m_axi_gmem3_bready(m_axi_gmem3.BREADY),
    .m_axi_gmem3_bresp(m_axi_gmem3.BRESP),
    .m_axi_gmem3_bvalid(m_axi_gmem3.BVALID),
    .m_axi_gmem3_rdata(m_axi_gmem3.RDATA),
    .m_axi_gmem3_rid(m_axi_gmem3.RID),
    .m_axi_gmem3_rlast(m_axi_gmem3.RLAST),
    .m_axi_gmem3_rready(m_axi_gmem3.RREADY),
    .m_axi_gmem3_rresp(m_axi_gmem3.RRESP),
    .m_axi_gmem3_rvalid(m_axi_gmem3.RVALID),
    .m_axi_gmem3_wdata(m_axi_gmem3.WDATA),
    .m_axi_gmem3_wid(m_axi_gmem3.WID),
    .m_axi_gmem3_wlast(m_axi_gmem3.WLAST),
    .m_axi_gmem3_wready(m_axi_gmem3.WREADY),
    .m_axi_gmem3_wstrb(m_axi_gmem3.WSTRB),
    .m_axi_gmem3_wvalid(m_axi_gmem3.WVALID),
    .m_axi_gmem4_araddr(m_axi_gmem4.ARADDR),
    .m_axi_gmem4_arburst(m_axi_gmem4.ARBURST),
    .m_axi_gmem4_arcache(m_axi_gmem4.ARCACHE),
    .m_axi_gmem4_arid(m_axi_gmem4.ARID),
    .m_axi_gmem4_arlen(m_axi_gmem4.ARLEN),
    .m_axi_gmem4_arlock(m_axi_gmem4.ARLOCK),
    .m_axi_gmem4_arprot(m_axi_gmem4.ARPROT),
    .m_axi_gmem4_arqos(m_axi_gmem4.ARQOS),
    .m_axi_gmem4_arready(m_axi_gmem4.ARREADY),
    .m_axi_gmem4_arregion(m_axi_gmem4.ARREGION),
    .m_axi_gmem4_arsize(m_axi_gmem4.ARSIZE),
    .m_axi_gmem4_arvalid(m_axi_gmem4.ARVALID),
    .m_axi_gmem4_awaddr(m_axi_gmem4.AWADDR),
    .m_axi_gmem4_awburst(m_axi_gmem4.AWBURST),
    .m_axi_gmem4_awcache(m_axi_gmem4.AWCACHE),
    .m_axi_gmem4_awid(m_axi_gmem4.AWID),
    .m_axi_gmem4_awlen(m_axi_gmem4.AWLEN),
    .m_axi_gmem4_awlock(m_axi_gmem4.AWLOCK),
    .m_axi_gmem4_awprot(m_axi_gmem4.AWPROT),
    .m_axi_gmem4_awqos(m_axi_gmem4.AWQOS),
    .m_axi_gmem4_awready(m_axi_gmem4.AWREADY),
    .m_axi_gmem4_awregion(m_axi_gmem4.AWREGION),
    .m_axi_gmem4_awsize(m_axi_gmem4.AWSIZE),
    .m_axi_gmem4_awvalid(m_axi_gmem4.AWVALID),
    .m_axi_gmem4_bid(m_axi_gmem4.BID),
    .m_axi_gmem4_bready(m_axi_gmem4.BREADY),
    .m_axi_gmem4_bresp(m_axi_gmem4.BRESP),
    .m_axi_gmem4_bvalid(m_axi_gmem4.BVALID),
    .m_axi_gmem4_rdata(m_axi_gmem4.RDATA),
    .m_axi_gmem4_rid(m_axi_gmem4.RID),
    .m_axi_gmem4_rlast(m_axi_gmem4.RLAST),
    .m_axi_gmem4_rready(m_axi_gmem4.RREADY),
    .m_axi_gmem4_rresp(m_axi_gmem4.RRESP),
    .m_axi_gmem4_rvalid(m_axi_gmem4.RVALID),
    .m_axi_gmem4_wdata(m_axi_gmem4.WDATA),
    .m_axi_gmem4_wid(m_axi_gmem4.WID),
    .m_axi_gmem4_wlast(m_axi_gmem4.WLAST),
    .m_axi_gmem4_wready(m_axi_gmem4.WREADY),
    .m_axi_gmem4_wstrb(m_axi_gmem4.WSTRB),
    .m_axi_gmem4_wvalid(m_axi_gmem4.WVALID),
    .m_axi_gmem5_araddr(m_axi_gmem5.ARADDR),
    .m_axi_gmem5_arburst(m_axi_gmem5.ARBURST),
    .m_axi_gmem5_arcache(m_axi_gmem5.ARCACHE),
    .m_axi_gmem5_arid(m_axi_gmem5.ARID),
    .m_axi_gmem5_arlen(m_axi_gmem5.ARLEN),
    .m_axi_gmem5_arlock(m_axi_gmem5.ARLOCK),
    .m_axi_gmem5_arprot(m_axi_gmem5.ARPROT),
    .m_axi_gmem5_arqos(m_axi_gmem5.ARQOS),
    .m_axi_gmem5_arready(m_axi_gmem5.ARREADY),
    .m_axi_gmem5_arregion(m_axi_gmem5.ARREGION),
    .m_axi_gmem5_arsize(m_axi_gmem5.ARSIZE),
    .m_axi_gmem5_arvalid(m_axi_gmem5.ARVALID),
    .m_axi_gmem5_awaddr(m_axi_gmem5.AWADDR),
    .m_axi_gmem5_awburst(m_axi_gmem5.AWBURST),
    .m_axi_gmem5_awcache(m_axi_gmem5.AWCACHE),
    .m_axi_gmem5_awid(m_axi_gmem5.AWID),
    .m_axi_gmem5_awlen(m_axi_gmem5.AWLEN),
    .m_axi_gmem5_awlock(m_axi_gmem5.AWLOCK),
    .m_axi_gmem5_awprot(m_axi_gmem5.AWPROT),
    .m_axi_gmem5_awqos(m_axi_gmem5.AWQOS),
    .m_axi_gmem5_awready(m_axi_gmem5.AWREADY),
    .m_axi_gmem5_awregion(m_axi_gmem5.AWREGION),
    .m_axi_gmem5_awsize(m_axi_gmem5.AWSIZE),
    .m_axi_gmem5_awvalid(m_axi_gmem5.AWVALID),
    .m_axi_gmem5_bid(m_axi_gmem5.BID),
    .m_axi_gmem5_bready(m_axi_gmem5.BREADY),
    .m_axi_gmem5_bresp(m_axi_gmem5.BRESP),
    .m_axi_gmem5_bvalid(m_axi_gmem5.BVALID),
    .m_axi_gmem5_rdata(m_axi_gmem5.RDATA),
    .m_axi_gmem5_rid(m_axi_gmem5.RID),
    .m_axi_gmem5_rlast(m_axi_gmem5.RLAST),
    .m_axi_gmem5_rready(m_axi_gmem5.RREADY),
    .m_axi_gmem5_rresp(m_axi_gmem5.RRESP),
    .m_axi_gmem5_rvalid(m_axi_gmem5.RVALID),
    .m_axi_gmem5_wdata(m_axi_gmem5.WDATA),
    .m_axi_gmem5_wid(m_axi_gmem5.WID),
    .m_axi_gmem5_wlast(m_axi_gmem5.WLAST),
    .m_axi_gmem5_wready(m_axi_gmem5.WREADY),
    .m_axi_gmem5_wstrb(m_axi_gmem5.WSTRB),
    .m_axi_gmem5_wvalid(m_axi_gmem5.WVALID),
    .m_axi_gmem6_araddr(m_axi_gmem6.ARADDR),
    .m_axi_gmem6_arburst(m_axi_gmem6.ARBURST),
    .m_axi_gmem6_arcache(m_axi_gmem6.ARCACHE),
    .m_axi_gmem6_arid(m_axi_gmem6.ARID),
    .m_axi_gmem6_arlen(m_axi_gmem6.ARLEN),
    .m_axi_gmem6_arlock(m_axi_gmem6.ARLOCK),
    .m_axi_gmem6_arprot(m_axi_gmem6.ARPROT),
    .m_axi_gmem6_arqos(m_axi_gmem6.ARQOS),
    .m_axi_gmem6_arready(m_axi_gmem6.ARREADY),
    .m_axi_gmem6_arregion(m_axi_gmem6.ARREGION),
    .m_axi_gmem6_arsize(m_axi_gmem6.ARSIZE),
    .m_axi_gmem6_arvalid(m_axi_gmem6.ARVALID),
    .m_axi_gmem6_awaddr(m_axi_gmem6.AWADDR),
    .m_axi_gmem6_awburst(m_axi_gmem6.AWBURST),
    .m_axi_gmem6_awcache(m_axi_gmem6.AWCACHE),
    .m_axi_gmem6_awid(m_axi_gmem6.AWID),
    .m_axi_gmem6_awlen(m_axi_gmem6.AWLEN),
    .m_axi_gmem6_awlock(m_axi_gmem6.AWLOCK),
    .m_axi_gmem6_awprot(m_axi_gmem6.AWPROT),
    .m_axi_gmem6_awqos(m_axi_gmem6.AWQOS),
    .m_axi_gmem6_awready(m_axi_gmem6.AWREADY),
    .m_axi_gmem6_awregion(m_axi_gmem6.AWREGION),
    .m_axi_gmem6_awsize(m_axi_gmem6.AWSIZE),
    .m_axi_gmem6_awvalid(m_axi_gmem6.AWVALID),
    .m_axi_gmem6_bid(m_axi_gmem6.BID),
    .m_axi_gmem6_bready(m_axi_gmem6.BREADY),
    .m_axi_gmem6_bresp(m_axi_gmem6.BRESP),
    .m_axi_gmem6_bvalid(m_axi_gmem6.BVALID),
    .m_axi_gmem6_rdata(m_axi_gmem6.RDATA),
    .m_axi_gmem6_rid(m_axi_gmem6.RID),
    .m_axi_gmem6_rlast(m_axi_gmem6.RLAST),
    .m_axi_gmem6_rready(m_axi_gmem6.RREADY),
    .m_axi_gmem6_rresp(m_axi_gmem6.RRESP),
    .m_axi_gmem6_rvalid(m_axi_gmem6.RVALID),
    .m_axi_gmem6_wdata(m_axi_gmem6.WDATA),
    .m_axi_gmem6_wid(m_axi_gmem6.WID),
    .m_axi_gmem6_wlast(m_axi_gmem6.WLAST),
    .m_axi_gmem6_wready(m_axi_gmem6.WREADY),
    .m_axi_gmem6_wstrb(m_axi_gmem6.WSTRB),
    .m_axi_gmem6_wvalid(m_axi_gmem6.WVALID),
    .s_axi_control_araddr(s_axi_control.ARADDR),
    .s_axi_control_arready(s_axi_control.ARREADY),
    .s_axi_control_arvalid(s_axi_control.ARVALID),
    .s_axi_control_awaddr(s_axi_control.AWADDR),
    .s_axi_control_awready(s_axi_control.AWREADY),
    .s_axi_control_awvalid(s_axi_control.AWVALID),
    .s_axi_control_bready(s_axi_control.BREADY),
    .s_axi_control_bresp(s_axi_control.BRESP),
    .s_axi_control_bvalid(s_axi_control.BVALID),
    .s_axi_control_rdata(s_axi_control.RDATA),
    .s_axi_control_rready(s_axi_control.RREADY),
    .s_axi_control_rresp(s_axi_control.RRESP),
    .s_axi_control_rvalid(s_axi_control.RVALID),
    .s_axi_control_wdata(s_axi_control.WDATA),
    .s_axi_control_wready(s_axi_control.WREADY),
    .s_axi_control_wstrb(s_axi_control.WSTRB),
    .s_axi_control_wvalid(s_axi_control.WVALID)
  );

endmodule
