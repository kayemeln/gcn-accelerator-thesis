//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Thu Apr 16 10:17:10 2026
//Host        : nat-Yoga-Pro-9-16IAH10 running 64-bit Ubuntu 24.04.3 LTS
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst_n,
    m_axi_gmem0_araddr,
    m_axi_gmem0_arburst,
    m_axi_gmem0_arcache,
    m_axi_gmem0_arid,
    m_axi_gmem0_arlen,
    m_axi_gmem0_arlock,
    m_axi_gmem0_arprot,
    m_axi_gmem0_arqos,
    m_axi_gmem0_arready,
    m_axi_gmem0_arregion,
    m_axi_gmem0_arsize,
    m_axi_gmem0_arvalid,
    m_axi_gmem0_awaddr,
    m_axi_gmem0_awburst,
    m_axi_gmem0_awcache,
    m_axi_gmem0_awid,
    m_axi_gmem0_awlen,
    m_axi_gmem0_awlock,
    m_axi_gmem0_awprot,
    m_axi_gmem0_awqos,
    m_axi_gmem0_awready,
    m_axi_gmem0_awregion,
    m_axi_gmem0_awsize,
    m_axi_gmem0_awvalid,
    m_axi_gmem0_bid,
    m_axi_gmem0_bready,
    m_axi_gmem0_bresp,
    m_axi_gmem0_bvalid,
    m_axi_gmem0_rdata,
    m_axi_gmem0_rid,
    m_axi_gmem0_rlast,
    m_axi_gmem0_rready,
    m_axi_gmem0_rresp,
    m_axi_gmem0_rvalid,
    m_axi_gmem0_wdata,
    m_axi_gmem0_wid,
    m_axi_gmem0_wlast,
    m_axi_gmem0_wready,
    m_axi_gmem0_wstrb,
    m_axi_gmem0_wvalid,
    m_axi_gmem1_araddr,
    m_axi_gmem1_arburst,
    m_axi_gmem1_arcache,
    m_axi_gmem1_arid,
    m_axi_gmem1_arlen,
    m_axi_gmem1_arlock,
    m_axi_gmem1_arprot,
    m_axi_gmem1_arqos,
    m_axi_gmem1_arready,
    m_axi_gmem1_arregion,
    m_axi_gmem1_arsize,
    m_axi_gmem1_arvalid,
    m_axi_gmem1_awaddr,
    m_axi_gmem1_awburst,
    m_axi_gmem1_awcache,
    m_axi_gmem1_awid,
    m_axi_gmem1_awlen,
    m_axi_gmem1_awlock,
    m_axi_gmem1_awprot,
    m_axi_gmem1_awqos,
    m_axi_gmem1_awready,
    m_axi_gmem1_awregion,
    m_axi_gmem1_awsize,
    m_axi_gmem1_awvalid,
    m_axi_gmem1_bid,
    m_axi_gmem1_bready,
    m_axi_gmem1_bresp,
    m_axi_gmem1_bvalid,
    m_axi_gmem1_rdata,
    m_axi_gmem1_rid,
    m_axi_gmem1_rlast,
    m_axi_gmem1_rready,
    m_axi_gmem1_rresp,
    m_axi_gmem1_rvalid,
    m_axi_gmem1_wdata,
    m_axi_gmem1_wid,
    m_axi_gmem1_wlast,
    m_axi_gmem1_wready,
    m_axi_gmem1_wstrb,
    m_axi_gmem1_wvalid,
    m_axi_gmem2_araddr,
    m_axi_gmem2_arburst,
    m_axi_gmem2_arcache,
    m_axi_gmem2_arid,
    m_axi_gmem2_arlen,
    m_axi_gmem2_arlock,
    m_axi_gmem2_arprot,
    m_axi_gmem2_arqos,
    m_axi_gmem2_arready,
    m_axi_gmem2_arregion,
    m_axi_gmem2_arsize,
    m_axi_gmem2_arvalid,
    m_axi_gmem2_awaddr,
    m_axi_gmem2_awburst,
    m_axi_gmem2_awcache,
    m_axi_gmem2_awid,
    m_axi_gmem2_awlen,
    m_axi_gmem2_awlock,
    m_axi_gmem2_awprot,
    m_axi_gmem2_awqos,
    m_axi_gmem2_awready,
    m_axi_gmem2_awregion,
    m_axi_gmem2_awsize,
    m_axi_gmem2_awvalid,
    m_axi_gmem2_bid,
    m_axi_gmem2_bready,
    m_axi_gmem2_bresp,
    m_axi_gmem2_bvalid,
    m_axi_gmem2_rdata,
    m_axi_gmem2_rid,
    m_axi_gmem2_rlast,
    m_axi_gmem2_rready,
    m_axi_gmem2_rresp,
    m_axi_gmem2_rvalid,
    m_axi_gmem2_wdata,
    m_axi_gmem2_wid,
    m_axi_gmem2_wlast,
    m_axi_gmem2_wready,
    m_axi_gmem2_wstrb,
    m_axi_gmem2_wvalid,
    m_axi_gmem3_araddr,
    m_axi_gmem3_arburst,
    m_axi_gmem3_arcache,
    m_axi_gmem3_arid,
    m_axi_gmem3_arlen,
    m_axi_gmem3_arlock,
    m_axi_gmem3_arprot,
    m_axi_gmem3_arqos,
    m_axi_gmem3_arready,
    m_axi_gmem3_arregion,
    m_axi_gmem3_arsize,
    m_axi_gmem3_arvalid,
    m_axi_gmem3_awaddr,
    m_axi_gmem3_awburst,
    m_axi_gmem3_awcache,
    m_axi_gmem3_awid,
    m_axi_gmem3_awlen,
    m_axi_gmem3_awlock,
    m_axi_gmem3_awprot,
    m_axi_gmem3_awqos,
    m_axi_gmem3_awready,
    m_axi_gmem3_awregion,
    m_axi_gmem3_awsize,
    m_axi_gmem3_awvalid,
    m_axi_gmem3_bid,
    m_axi_gmem3_bready,
    m_axi_gmem3_bresp,
    m_axi_gmem3_bvalid,
    m_axi_gmem3_rdata,
    m_axi_gmem3_rid,
    m_axi_gmem3_rlast,
    m_axi_gmem3_rready,
    m_axi_gmem3_rresp,
    m_axi_gmem3_rvalid,
    m_axi_gmem3_wdata,
    m_axi_gmem3_wid,
    m_axi_gmem3_wlast,
    m_axi_gmem3_wready,
    m_axi_gmem3_wstrb,
    m_axi_gmem3_wvalid,
    m_axi_gmem4_araddr,
    m_axi_gmem4_arburst,
    m_axi_gmem4_arcache,
    m_axi_gmem4_arid,
    m_axi_gmem4_arlen,
    m_axi_gmem4_arlock,
    m_axi_gmem4_arprot,
    m_axi_gmem4_arqos,
    m_axi_gmem4_arready,
    m_axi_gmem4_arregion,
    m_axi_gmem4_arsize,
    m_axi_gmem4_arvalid,
    m_axi_gmem4_awaddr,
    m_axi_gmem4_awburst,
    m_axi_gmem4_awcache,
    m_axi_gmem4_awid,
    m_axi_gmem4_awlen,
    m_axi_gmem4_awlock,
    m_axi_gmem4_awprot,
    m_axi_gmem4_awqos,
    m_axi_gmem4_awready,
    m_axi_gmem4_awregion,
    m_axi_gmem4_awsize,
    m_axi_gmem4_awvalid,
    m_axi_gmem4_bid,
    m_axi_gmem4_bready,
    m_axi_gmem4_bresp,
    m_axi_gmem4_bvalid,
    m_axi_gmem4_rdata,
    m_axi_gmem4_rid,
    m_axi_gmem4_rlast,
    m_axi_gmem4_rready,
    m_axi_gmem4_rresp,
    m_axi_gmem4_rvalid,
    m_axi_gmem4_wdata,
    m_axi_gmem4_wid,
    m_axi_gmem4_wlast,
    m_axi_gmem4_wready,
    m_axi_gmem4_wstrb,
    m_axi_gmem4_wvalid,
    m_axi_gmem5_araddr,
    m_axi_gmem5_arburst,
    m_axi_gmem5_arcache,
    m_axi_gmem5_arid,
    m_axi_gmem5_arlen,
    m_axi_gmem5_arlock,
    m_axi_gmem5_arprot,
    m_axi_gmem5_arqos,
    m_axi_gmem5_arready,
    m_axi_gmem5_arregion,
    m_axi_gmem5_arsize,
    m_axi_gmem5_arvalid,
    m_axi_gmem5_awaddr,
    m_axi_gmem5_awburst,
    m_axi_gmem5_awcache,
    m_axi_gmem5_awid,
    m_axi_gmem5_awlen,
    m_axi_gmem5_awlock,
    m_axi_gmem5_awprot,
    m_axi_gmem5_awqos,
    m_axi_gmem5_awready,
    m_axi_gmem5_awregion,
    m_axi_gmem5_awsize,
    m_axi_gmem5_awvalid,
    m_axi_gmem5_bid,
    m_axi_gmem5_bready,
    m_axi_gmem5_bresp,
    m_axi_gmem5_bvalid,
    m_axi_gmem5_rdata,
    m_axi_gmem5_rid,
    m_axi_gmem5_rlast,
    m_axi_gmem5_rready,
    m_axi_gmem5_rresp,
    m_axi_gmem5_rvalid,
    m_axi_gmem5_wdata,
    m_axi_gmem5_wid,
    m_axi_gmem5_wlast,
    m_axi_gmem5_wready,
    m_axi_gmem5_wstrb,
    m_axi_gmem5_wvalid,
    m_axi_gmem6_araddr,
    m_axi_gmem6_arburst,
    m_axi_gmem6_arcache,
    m_axi_gmem6_arid,
    m_axi_gmem6_arlen,
    m_axi_gmem6_arlock,
    m_axi_gmem6_arprot,
    m_axi_gmem6_arqos,
    m_axi_gmem6_arready,
    m_axi_gmem6_arregion,
    m_axi_gmem6_arsize,
    m_axi_gmem6_arvalid,
    m_axi_gmem6_awaddr,
    m_axi_gmem6_awburst,
    m_axi_gmem6_awcache,
    m_axi_gmem6_awid,
    m_axi_gmem6_awlen,
    m_axi_gmem6_awlock,
    m_axi_gmem6_awprot,
    m_axi_gmem6_awqos,
    m_axi_gmem6_awready,
    m_axi_gmem6_awregion,
    m_axi_gmem6_awsize,
    m_axi_gmem6_awvalid,
    m_axi_gmem6_bid,
    m_axi_gmem6_bready,
    m_axi_gmem6_bresp,
    m_axi_gmem6_bvalid,
    m_axi_gmem6_rdata,
    m_axi_gmem6_rid,
    m_axi_gmem6_rlast,
    m_axi_gmem6_rready,
    m_axi_gmem6_rresp,
    m_axi_gmem6_rvalid,
    m_axi_gmem6_wdata,
    m_axi_gmem6_wid,
    m_axi_gmem6_wlast,
    m_axi_gmem6_wready,
    m_axi_gmem6_wstrb,
    m_axi_gmem6_wvalid,
    nnz_total,
    s_axi_control_araddr,
    s_axi_control_arready,
    s_axi_control_arvalid,
    s_axi_control_awaddr,
    s_axi_control_awready,
    s_axi_control_awvalid,
    s_axi_control_bready,
    s_axi_control_bresp,
    s_axi_control_bvalid,
    s_axi_control_rdata,
    s_axi_control_rready,
    s_axi_control_rresp,
    s_axi_control_rvalid,
    s_axi_control_wdata,
    s_axi_control_wready,
    s_axi_control_wstrb,
    s_axi_control_wvalid);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst_n;
  output [63:0]m_axi_gmem0_araddr;
  output [1:0]m_axi_gmem0_arburst;
  output [3:0]m_axi_gmem0_arcache;
  output [0:0]m_axi_gmem0_arid;
  output [7:0]m_axi_gmem0_arlen;
  output [1:0]m_axi_gmem0_arlock;
  output [2:0]m_axi_gmem0_arprot;
  output [3:0]m_axi_gmem0_arqos;
  input m_axi_gmem0_arready;
  output [3:0]m_axi_gmem0_arregion;
  output [2:0]m_axi_gmem0_arsize;
  output m_axi_gmem0_arvalid;
  output [63:0]m_axi_gmem0_awaddr;
  output [1:0]m_axi_gmem0_awburst;
  output [3:0]m_axi_gmem0_awcache;
  output [0:0]m_axi_gmem0_awid;
  output [7:0]m_axi_gmem0_awlen;
  output [1:0]m_axi_gmem0_awlock;
  output [2:0]m_axi_gmem0_awprot;
  output [3:0]m_axi_gmem0_awqos;
  input m_axi_gmem0_awready;
  output [3:0]m_axi_gmem0_awregion;
  output [2:0]m_axi_gmem0_awsize;
  output m_axi_gmem0_awvalid;
  input [0:0]m_axi_gmem0_bid;
  output m_axi_gmem0_bready;
  input [1:0]m_axi_gmem0_bresp;
  input m_axi_gmem0_bvalid;
  input [511:0]m_axi_gmem0_rdata;
  input [0:0]m_axi_gmem0_rid;
  input m_axi_gmem0_rlast;
  output m_axi_gmem0_rready;
  input [1:0]m_axi_gmem0_rresp;
  input m_axi_gmem0_rvalid;
  output [511:0]m_axi_gmem0_wdata;
  output [0:0]m_axi_gmem0_wid;
  output m_axi_gmem0_wlast;
  input m_axi_gmem0_wready;
  output [63:0]m_axi_gmem0_wstrb;
  output m_axi_gmem0_wvalid;
  output [63:0]m_axi_gmem1_araddr;
  output [1:0]m_axi_gmem1_arburst;
  output [3:0]m_axi_gmem1_arcache;
  output [0:0]m_axi_gmem1_arid;
  output [7:0]m_axi_gmem1_arlen;
  output [1:0]m_axi_gmem1_arlock;
  output [2:0]m_axi_gmem1_arprot;
  output [3:0]m_axi_gmem1_arqos;
  input m_axi_gmem1_arready;
  output [3:0]m_axi_gmem1_arregion;
  output [2:0]m_axi_gmem1_arsize;
  output m_axi_gmem1_arvalid;
  output [63:0]m_axi_gmem1_awaddr;
  output [1:0]m_axi_gmem1_awburst;
  output [3:0]m_axi_gmem1_awcache;
  output [0:0]m_axi_gmem1_awid;
  output [7:0]m_axi_gmem1_awlen;
  output [1:0]m_axi_gmem1_awlock;
  output [2:0]m_axi_gmem1_awprot;
  output [3:0]m_axi_gmem1_awqos;
  input m_axi_gmem1_awready;
  output [3:0]m_axi_gmem1_awregion;
  output [2:0]m_axi_gmem1_awsize;
  output m_axi_gmem1_awvalid;
  input [0:0]m_axi_gmem1_bid;
  output m_axi_gmem1_bready;
  input [1:0]m_axi_gmem1_bresp;
  input m_axi_gmem1_bvalid;
  input [511:0]m_axi_gmem1_rdata;
  input [0:0]m_axi_gmem1_rid;
  input m_axi_gmem1_rlast;
  output m_axi_gmem1_rready;
  input [1:0]m_axi_gmem1_rresp;
  input m_axi_gmem1_rvalid;
  output [511:0]m_axi_gmem1_wdata;
  output [0:0]m_axi_gmem1_wid;
  output m_axi_gmem1_wlast;
  input m_axi_gmem1_wready;
  output [63:0]m_axi_gmem1_wstrb;
  output m_axi_gmem1_wvalid;
  output [63:0]m_axi_gmem2_araddr;
  output [1:0]m_axi_gmem2_arburst;
  output [3:0]m_axi_gmem2_arcache;
  output [0:0]m_axi_gmem2_arid;
  output [7:0]m_axi_gmem2_arlen;
  output [1:0]m_axi_gmem2_arlock;
  output [2:0]m_axi_gmem2_arprot;
  output [3:0]m_axi_gmem2_arqos;
  input m_axi_gmem2_arready;
  output [3:0]m_axi_gmem2_arregion;
  output [2:0]m_axi_gmem2_arsize;
  output m_axi_gmem2_arvalid;
  output [63:0]m_axi_gmem2_awaddr;
  output [1:0]m_axi_gmem2_awburst;
  output [3:0]m_axi_gmem2_awcache;
  output [0:0]m_axi_gmem2_awid;
  output [7:0]m_axi_gmem2_awlen;
  output [1:0]m_axi_gmem2_awlock;
  output [2:0]m_axi_gmem2_awprot;
  output [3:0]m_axi_gmem2_awqos;
  input m_axi_gmem2_awready;
  output [3:0]m_axi_gmem2_awregion;
  output [2:0]m_axi_gmem2_awsize;
  output m_axi_gmem2_awvalid;
  input [0:0]m_axi_gmem2_bid;
  output m_axi_gmem2_bready;
  input [1:0]m_axi_gmem2_bresp;
  input m_axi_gmem2_bvalid;
  input [511:0]m_axi_gmem2_rdata;
  input [0:0]m_axi_gmem2_rid;
  input m_axi_gmem2_rlast;
  output m_axi_gmem2_rready;
  input [1:0]m_axi_gmem2_rresp;
  input m_axi_gmem2_rvalid;
  output [511:0]m_axi_gmem2_wdata;
  output [0:0]m_axi_gmem2_wid;
  output m_axi_gmem2_wlast;
  input m_axi_gmem2_wready;
  output [63:0]m_axi_gmem2_wstrb;
  output m_axi_gmem2_wvalid;
  output [63:0]m_axi_gmem3_araddr;
  output [1:0]m_axi_gmem3_arburst;
  output [3:0]m_axi_gmem3_arcache;
  output [0:0]m_axi_gmem3_arid;
  output [7:0]m_axi_gmem3_arlen;
  output [1:0]m_axi_gmem3_arlock;
  output [2:0]m_axi_gmem3_arprot;
  output [3:0]m_axi_gmem3_arqos;
  input m_axi_gmem3_arready;
  output [3:0]m_axi_gmem3_arregion;
  output [2:0]m_axi_gmem3_arsize;
  output m_axi_gmem3_arvalid;
  output [63:0]m_axi_gmem3_awaddr;
  output [1:0]m_axi_gmem3_awburst;
  output [3:0]m_axi_gmem3_awcache;
  output [0:0]m_axi_gmem3_awid;
  output [7:0]m_axi_gmem3_awlen;
  output [1:0]m_axi_gmem3_awlock;
  output [2:0]m_axi_gmem3_awprot;
  output [3:0]m_axi_gmem3_awqos;
  input m_axi_gmem3_awready;
  output [3:0]m_axi_gmem3_awregion;
  output [2:0]m_axi_gmem3_awsize;
  output m_axi_gmem3_awvalid;
  input [0:0]m_axi_gmem3_bid;
  output m_axi_gmem3_bready;
  input [1:0]m_axi_gmem3_bresp;
  input m_axi_gmem3_bvalid;
  input [31:0]m_axi_gmem3_rdata;
  input [0:0]m_axi_gmem3_rid;
  input m_axi_gmem3_rlast;
  output m_axi_gmem3_rready;
  input [1:0]m_axi_gmem3_rresp;
  input m_axi_gmem3_rvalid;
  output [31:0]m_axi_gmem3_wdata;
  output [0:0]m_axi_gmem3_wid;
  output m_axi_gmem3_wlast;
  input m_axi_gmem3_wready;
  output [3:0]m_axi_gmem3_wstrb;
  output m_axi_gmem3_wvalid;
  output [63:0]m_axi_gmem4_araddr;
  output [1:0]m_axi_gmem4_arburst;
  output [3:0]m_axi_gmem4_arcache;
  output [0:0]m_axi_gmem4_arid;
  output [7:0]m_axi_gmem4_arlen;
  output [1:0]m_axi_gmem4_arlock;
  output [2:0]m_axi_gmem4_arprot;
  output [3:0]m_axi_gmem4_arqos;
  input m_axi_gmem4_arready;
  output [3:0]m_axi_gmem4_arregion;
  output [2:0]m_axi_gmem4_arsize;
  output m_axi_gmem4_arvalid;
  output [63:0]m_axi_gmem4_awaddr;
  output [1:0]m_axi_gmem4_awburst;
  output [3:0]m_axi_gmem4_awcache;
  output [0:0]m_axi_gmem4_awid;
  output [7:0]m_axi_gmem4_awlen;
  output [1:0]m_axi_gmem4_awlock;
  output [2:0]m_axi_gmem4_awprot;
  output [3:0]m_axi_gmem4_awqos;
  input m_axi_gmem4_awready;
  output [3:0]m_axi_gmem4_awregion;
  output [2:0]m_axi_gmem4_awsize;
  output m_axi_gmem4_awvalid;
  input [0:0]m_axi_gmem4_bid;
  output m_axi_gmem4_bready;
  input [1:0]m_axi_gmem4_bresp;
  input m_axi_gmem4_bvalid;
  input [31:0]m_axi_gmem4_rdata;
  input [0:0]m_axi_gmem4_rid;
  input m_axi_gmem4_rlast;
  output m_axi_gmem4_rready;
  input [1:0]m_axi_gmem4_rresp;
  input m_axi_gmem4_rvalid;
  output [31:0]m_axi_gmem4_wdata;
  output [0:0]m_axi_gmem4_wid;
  output m_axi_gmem4_wlast;
  input m_axi_gmem4_wready;
  output [3:0]m_axi_gmem4_wstrb;
  output m_axi_gmem4_wvalid;
  output [63:0]m_axi_gmem5_araddr;
  output [1:0]m_axi_gmem5_arburst;
  output [3:0]m_axi_gmem5_arcache;
  output [0:0]m_axi_gmem5_arid;
  output [7:0]m_axi_gmem5_arlen;
  output [1:0]m_axi_gmem5_arlock;
  output [2:0]m_axi_gmem5_arprot;
  output [3:0]m_axi_gmem5_arqos;
  input m_axi_gmem5_arready;
  output [3:0]m_axi_gmem5_arregion;
  output [2:0]m_axi_gmem5_arsize;
  output m_axi_gmem5_arvalid;
  output [63:0]m_axi_gmem5_awaddr;
  output [1:0]m_axi_gmem5_awburst;
  output [3:0]m_axi_gmem5_awcache;
  output [0:0]m_axi_gmem5_awid;
  output [7:0]m_axi_gmem5_awlen;
  output [1:0]m_axi_gmem5_awlock;
  output [2:0]m_axi_gmem5_awprot;
  output [3:0]m_axi_gmem5_awqos;
  input m_axi_gmem5_awready;
  output [3:0]m_axi_gmem5_awregion;
  output [2:0]m_axi_gmem5_awsize;
  output m_axi_gmem5_awvalid;
  input [0:0]m_axi_gmem5_bid;
  output m_axi_gmem5_bready;
  input [1:0]m_axi_gmem5_bresp;
  input m_axi_gmem5_bvalid;
  input [31:0]m_axi_gmem5_rdata;
  input [0:0]m_axi_gmem5_rid;
  input m_axi_gmem5_rlast;
  output m_axi_gmem5_rready;
  input [1:0]m_axi_gmem5_rresp;
  input m_axi_gmem5_rvalid;
  output [31:0]m_axi_gmem5_wdata;
  output [0:0]m_axi_gmem5_wid;
  output m_axi_gmem5_wlast;
  input m_axi_gmem5_wready;
  output [3:0]m_axi_gmem5_wstrb;
  output m_axi_gmem5_wvalid;
  output [63:0]m_axi_gmem6_araddr;
  output [1:0]m_axi_gmem6_arburst;
  output [3:0]m_axi_gmem6_arcache;
  output [0:0]m_axi_gmem6_arid;
  output [7:0]m_axi_gmem6_arlen;
  output [1:0]m_axi_gmem6_arlock;
  output [2:0]m_axi_gmem6_arprot;
  output [3:0]m_axi_gmem6_arqos;
  input m_axi_gmem6_arready;
  output [3:0]m_axi_gmem6_arregion;
  output [2:0]m_axi_gmem6_arsize;
  output m_axi_gmem6_arvalid;
  output [63:0]m_axi_gmem6_awaddr;
  output [1:0]m_axi_gmem6_awburst;
  output [3:0]m_axi_gmem6_awcache;
  output [0:0]m_axi_gmem6_awid;
  output [7:0]m_axi_gmem6_awlen;
  output [1:0]m_axi_gmem6_awlock;
  output [2:0]m_axi_gmem6_awprot;
  output [3:0]m_axi_gmem6_awqos;
  input m_axi_gmem6_awready;
  output [3:0]m_axi_gmem6_awregion;
  output [2:0]m_axi_gmem6_awsize;
  output m_axi_gmem6_awvalid;
  input [0:0]m_axi_gmem6_bid;
  output m_axi_gmem6_bready;
  input [1:0]m_axi_gmem6_bresp;
  input m_axi_gmem6_bvalid;
  input [511:0]m_axi_gmem6_rdata;
  input [0:0]m_axi_gmem6_rid;
  input m_axi_gmem6_rlast;
  output m_axi_gmem6_rready;
  input [1:0]m_axi_gmem6_rresp;
  input m_axi_gmem6_rvalid;
  output [511:0]m_axi_gmem6_wdata;
  output [0:0]m_axi_gmem6_wid;
  output m_axi_gmem6_wlast;
  input m_axi_gmem6_wready;
  output [63:0]m_axi_gmem6_wstrb;
  output m_axi_gmem6_wvalid;
  input [31:0]nnz_total;
  input [6:0]s_axi_control_araddr;
  output s_axi_control_arready;
  input s_axi_control_arvalid;
  input [6:0]s_axi_control_awaddr;
  output s_axi_control_awready;
  input s_axi_control_awvalid;
  input s_axi_control_bready;
  output [1:0]s_axi_control_bresp;
  output s_axi_control_bvalid;
  output [31:0]s_axi_control_rdata;
  input s_axi_control_rready;
  output [1:0]s_axi_control_rresp;
  output s_axi_control_rvalid;
  input [31:0]s_axi_control_wdata;
  output s_axi_control_wready;
  input [3:0]s_axi_control_wstrb;
  input s_axi_control_wvalid;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst_n;
  wire [63:0]m_axi_gmem0_araddr;
  wire [1:0]m_axi_gmem0_arburst;
  wire [3:0]m_axi_gmem0_arcache;
  wire [0:0]m_axi_gmem0_arid;
  wire [7:0]m_axi_gmem0_arlen;
  wire [1:0]m_axi_gmem0_arlock;
  wire [2:0]m_axi_gmem0_arprot;
  wire [3:0]m_axi_gmem0_arqos;
  wire m_axi_gmem0_arready;
  wire [3:0]m_axi_gmem0_arregion;
  wire [2:0]m_axi_gmem0_arsize;
  wire m_axi_gmem0_arvalid;
  wire [63:0]m_axi_gmem0_awaddr;
  wire [1:0]m_axi_gmem0_awburst;
  wire [3:0]m_axi_gmem0_awcache;
  wire [0:0]m_axi_gmem0_awid;
  wire [7:0]m_axi_gmem0_awlen;
  wire [1:0]m_axi_gmem0_awlock;
  wire [2:0]m_axi_gmem0_awprot;
  wire [3:0]m_axi_gmem0_awqos;
  wire m_axi_gmem0_awready;
  wire [3:0]m_axi_gmem0_awregion;
  wire [2:0]m_axi_gmem0_awsize;
  wire m_axi_gmem0_awvalid;
  wire [0:0]m_axi_gmem0_bid;
  wire m_axi_gmem0_bready;
  wire [1:0]m_axi_gmem0_bresp;
  wire m_axi_gmem0_bvalid;
  wire [511:0]m_axi_gmem0_rdata;
  wire [0:0]m_axi_gmem0_rid;
  wire m_axi_gmem0_rlast;
  wire m_axi_gmem0_rready;
  wire [1:0]m_axi_gmem0_rresp;
  wire m_axi_gmem0_rvalid;
  wire [511:0]m_axi_gmem0_wdata;
  wire [0:0]m_axi_gmem0_wid;
  wire m_axi_gmem0_wlast;
  wire m_axi_gmem0_wready;
  wire [63:0]m_axi_gmem0_wstrb;
  wire m_axi_gmem0_wvalid;
  wire [63:0]m_axi_gmem1_araddr;
  wire [1:0]m_axi_gmem1_arburst;
  wire [3:0]m_axi_gmem1_arcache;
  wire [0:0]m_axi_gmem1_arid;
  wire [7:0]m_axi_gmem1_arlen;
  wire [1:0]m_axi_gmem1_arlock;
  wire [2:0]m_axi_gmem1_arprot;
  wire [3:0]m_axi_gmem1_arqos;
  wire m_axi_gmem1_arready;
  wire [3:0]m_axi_gmem1_arregion;
  wire [2:0]m_axi_gmem1_arsize;
  wire m_axi_gmem1_arvalid;
  wire [63:0]m_axi_gmem1_awaddr;
  wire [1:0]m_axi_gmem1_awburst;
  wire [3:0]m_axi_gmem1_awcache;
  wire [0:0]m_axi_gmem1_awid;
  wire [7:0]m_axi_gmem1_awlen;
  wire [1:0]m_axi_gmem1_awlock;
  wire [2:0]m_axi_gmem1_awprot;
  wire [3:0]m_axi_gmem1_awqos;
  wire m_axi_gmem1_awready;
  wire [3:0]m_axi_gmem1_awregion;
  wire [2:0]m_axi_gmem1_awsize;
  wire m_axi_gmem1_awvalid;
  wire [0:0]m_axi_gmem1_bid;
  wire m_axi_gmem1_bready;
  wire [1:0]m_axi_gmem1_bresp;
  wire m_axi_gmem1_bvalid;
  wire [511:0]m_axi_gmem1_rdata;
  wire [0:0]m_axi_gmem1_rid;
  wire m_axi_gmem1_rlast;
  wire m_axi_gmem1_rready;
  wire [1:0]m_axi_gmem1_rresp;
  wire m_axi_gmem1_rvalid;
  wire [511:0]m_axi_gmem1_wdata;
  wire [0:0]m_axi_gmem1_wid;
  wire m_axi_gmem1_wlast;
  wire m_axi_gmem1_wready;
  wire [63:0]m_axi_gmem1_wstrb;
  wire m_axi_gmem1_wvalid;
  wire [63:0]m_axi_gmem2_araddr;
  wire [1:0]m_axi_gmem2_arburst;
  wire [3:0]m_axi_gmem2_arcache;
  wire [0:0]m_axi_gmem2_arid;
  wire [7:0]m_axi_gmem2_arlen;
  wire [1:0]m_axi_gmem2_arlock;
  wire [2:0]m_axi_gmem2_arprot;
  wire [3:0]m_axi_gmem2_arqos;
  wire m_axi_gmem2_arready;
  wire [3:0]m_axi_gmem2_arregion;
  wire [2:0]m_axi_gmem2_arsize;
  wire m_axi_gmem2_arvalid;
  wire [63:0]m_axi_gmem2_awaddr;
  wire [1:0]m_axi_gmem2_awburst;
  wire [3:0]m_axi_gmem2_awcache;
  wire [0:0]m_axi_gmem2_awid;
  wire [7:0]m_axi_gmem2_awlen;
  wire [1:0]m_axi_gmem2_awlock;
  wire [2:0]m_axi_gmem2_awprot;
  wire [3:0]m_axi_gmem2_awqos;
  wire m_axi_gmem2_awready;
  wire [3:0]m_axi_gmem2_awregion;
  wire [2:0]m_axi_gmem2_awsize;
  wire m_axi_gmem2_awvalid;
  wire [0:0]m_axi_gmem2_bid;
  wire m_axi_gmem2_bready;
  wire [1:0]m_axi_gmem2_bresp;
  wire m_axi_gmem2_bvalid;
  wire [511:0]m_axi_gmem2_rdata;
  wire [0:0]m_axi_gmem2_rid;
  wire m_axi_gmem2_rlast;
  wire m_axi_gmem2_rready;
  wire [1:0]m_axi_gmem2_rresp;
  wire m_axi_gmem2_rvalid;
  wire [511:0]m_axi_gmem2_wdata;
  wire [0:0]m_axi_gmem2_wid;
  wire m_axi_gmem2_wlast;
  wire m_axi_gmem2_wready;
  wire [63:0]m_axi_gmem2_wstrb;
  wire m_axi_gmem2_wvalid;
  wire [63:0]m_axi_gmem3_araddr;
  wire [1:0]m_axi_gmem3_arburst;
  wire [3:0]m_axi_gmem3_arcache;
  wire [0:0]m_axi_gmem3_arid;
  wire [7:0]m_axi_gmem3_arlen;
  wire [1:0]m_axi_gmem3_arlock;
  wire [2:0]m_axi_gmem3_arprot;
  wire [3:0]m_axi_gmem3_arqos;
  wire m_axi_gmem3_arready;
  wire [3:0]m_axi_gmem3_arregion;
  wire [2:0]m_axi_gmem3_arsize;
  wire m_axi_gmem3_arvalid;
  wire [63:0]m_axi_gmem3_awaddr;
  wire [1:0]m_axi_gmem3_awburst;
  wire [3:0]m_axi_gmem3_awcache;
  wire [0:0]m_axi_gmem3_awid;
  wire [7:0]m_axi_gmem3_awlen;
  wire [1:0]m_axi_gmem3_awlock;
  wire [2:0]m_axi_gmem3_awprot;
  wire [3:0]m_axi_gmem3_awqos;
  wire m_axi_gmem3_awready;
  wire [3:0]m_axi_gmem3_awregion;
  wire [2:0]m_axi_gmem3_awsize;
  wire m_axi_gmem3_awvalid;
  wire [0:0]m_axi_gmem3_bid;
  wire m_axi_gmem3_bready;
  wire [1:0]m_axi_gmem3_bresp;
  wire m_axi_gmem3_bvalid;
  wire [31:0]m_axi_gmem3_rdata;
  wire [0:0]m_axi_gmem3_rid;
  wire m_axi_gmem3_rlast;
  wire m_axi_gmem3_rready;
  wire [1:0]m_axi_gmem3_rresp;
  wire m_axi_gmem3_rvalid;
  wire [31:0]m_axi_gmem3_wdata;
  wire [0:0]m_axi_gmem3_wid;
  wire m_axi_gmem3_wlast;
  wire m_axi_gmem3_wready;
  wire [3:0]m_axi_gmem3_wstrb;
  wire m_axi_gmem3_wvalid;
  wire [63:0]m_axi_gmem4_araddr;
  wire [1:0]m_axi_gmem4_arburst;
  wire [3:0]m_axi_gmem4_arcache;
  wire [0:0]m_axi_gmem4_arid;
  wire [7:0]m_axi_gmem4_arlen;
  wire [1:0]m_axi_gmem4_arlock;
  wire [2:0]m_axi_gmem4_arprot;
  wire [3:0]m_axi_gmem4_arqos;
  wire m_axi_gmem4_arready;
  wire [3:0]m_axi_gmem4_arregion;
  wire [2:0]m_axi_gmem4_arsize;
  wire m_axi_gmem4_arvalid;
  wire [63:0]m_axi_gmem4_awaddr;
  wire [1:0]m_axi_gmem4_awburst;
  wire [3:0]m_axi_gmem4_awcache;
  wire [0:0]m_axi_gmem4_awid;
  wire [7:0]m_axi_gmem4_awlen;
  wire [1:0]m_axi_gmem4_awlock;
  wire [2:0]m_axi_gmem4_awprot;
  wire [3:0]m_axi_gmem4_awqos;
  wire m_axi_gmem4_awready;
  wire [3:0]m_axi_gmem4_awregion;
  wire [2:0]m_axi_gmem4_awsize;
  wire m_axi_gmem4_awvalid;
  wire [0:0]m_axi_gmem4_bid;
  wire m_axi_gmem4_bready;
  wire [1:0]m_axi_gmem4_bresp;
  wire m_axi_gmem4_bvalid;
  wire [31:0]m_axi_gmem4_rdata;
  wire [0:0]m_axi_gmem4_rid;
  wire m_axi_gmem4_rlast;
  wire m_axi_gmem4_rready;
  wire [1:0]m_axi_gmem4_rresp;
  wire m_axi_gmem4_rvalid;
  wire [31:0]m_axi_gmem4_wdata;
  wire [0:0]m_axi_gmem4_wid;
  wire m_axi_gmem4_wlast;
  wire m_axi_gmem4_wready;
  wire [3:0]m_axi_gmem4_wstrb;
  wire m_axi_gmem4_wvalid;
  wire [63:0]m_axi_gmem5_araddr;
  wire [1:0]m_axi_gmem5_arburst;
  wire [3:0]m_axi_gmem5_arcache;
  wire [0:0]m_axi_gmem5_arid;
  wire [7:0]m_axi_gmem5_arlen;
  wire [1:0]m_axi_gmem5_arlock;
  wire [2:0]m_axi_gmem5_arprot;
  wire [3:0]m_axi_gmem5_arqos;
  wire m_axi_gmem5_arready;
  wire [3:0]m_axi_gmem5_arregion;
  wire [2:0]m_axi_gmem5_arsize;
  wire m_axi_gmem5_arvalid;
  wire [63:0]m_axi_gmem5_awaddr;
  wire [1:0]m_axi_gmem5_awburst;
  wire [3:0]m_axi_gmem5_awcache;
  wire [0:0]m_axi_gmem5_awid;
  wire [7:0]m_axi_gmem5_awlen;
  wire [1:0]m_axi_gmem5_awlock;
  wire [2:0]m_axi_gmem5_awprot;
  wire [3:0]m_axi_gmem5_awqos;
  wire m_axi_gmem5_awready;
  wire [3:0]m_axi_gmem5_awregion;
  wire [2:0]m_axi_gmem5_awsize;
  wire m_axi_gmem5_awvalid;
  wire [0:0]m_axi_gmem5_bid;
  wire m_axi_gmem5_bready;
  wire [1:0]m_axi_gmem5_bresp;
  wire m_axi_gmem5_bvalid;
  wire [31:0]m_axi_gmem5_rdata;
  wire [0:0]m_axi_gmem5_rid;
  wire m_axi_gmem5_rlast;
  wire m_axi_gmem5_rready;
  wire [1:0]m_axi_gmem5_rresp;
  wire m_axi_gmem5_rvalid;
  wire [31:0]m_axi_gmem5_wdata;
  wire [0:0]m_axi_gmem5_wid;
  wire m_axi_gmem5_wlast;
  wire m_axi_gmem5_wready;
  wire [3:0]m_axi_gmem5_wstrb;
  wire m_axi_gmem5_wvalid;
  wire [63:0]m_axi_gmem6_araddr;
  wire [1:0]m_axi_gmem6_arburst;
  wire [3:0]m_axi_gmem6_arcache;
  wire [0:0]m_axi_gmem6_arid;
  wire [7:0]m_axi_gmem6_arlen;
  wire [1:0]m_axi_gmem6_arlock;
  wire [2:0]m_axi_gmem6_arprot;
  wire [3:0]m_axi_gmem6_arqos;
  wire m_axi_gmem6_arready;
  wire [3:0]m_axi_gmem6_arregion;
  wire [2:0]m_axi_gmem6_arsize;
  wire m_axi_gmem6_arvalid;
  wire [63:0]m_axi_gmem6_awaddr;
  wire [1:0]m_axi_gmem6_awburst;
  wire [3:0]m_axi_gmem6_awcache;
  wire [0:0]m_axi_gmem6_awid;
  wire [7:0]m_axi_gmem6_awlen;
  wire [1:0]m_axi_gmem6_awlock;
  wire [2:0]m_axi_gmem6_awprot;
  wire [3:0]m_axi_gmem6_awqos;
  wire m_axi_gmem6_awready;
  wire [3:0]m_axi_gmem6_awregion;
  wire [2:0]m_axi_gmem6_awsize;
  wire m_axi_gmem6_awvalid;
  wire [0:0]m_axi_gmem6_bid;
  wire m_axi_gmem6_bready;
  wire [1:0]m_axi_gmem6_bresp;
  wire m_axi_gmem6_bvalid;
  wire [511:0]m_axi_gmem6_rdata;
  wire [0:0]m_axi_gmem6_rid;
  wire m_axi_gmem6_rlast;
  wire m_axi_gmem6_rready;
  wire [1:0]m_axi_gmem6_rresp;
  wire m_axi_gmem6_rvalid;
  wire [511:0]m_axi_gmem6_wdata;
  wire [0:0]m_axi_gmem6_wid;
  wire m_axi_gmem6_wlast;
  wire m_axi_gmem6_wready;
  wire [63:0]m_axi_gmem6_wstrb;
  wire m_axi_gmem6_wvalid;
  wire [31:0]nnz_total;
  wire [6:0]s_axi_control_araddr;
  wire s_axi_control_arready;
  wire s_axi_control_arvalid;
  wire [6:0]s_axi_control_awaddr;
  wire s_axi_control_awready;
  wire s_axi_control_awvalid;
  wire s_axi_control_bready;
  wire [1:0]s_axi_control_bresp;
  wire s_axi_control_bvalid;
  wire [31:0]s_axi_control_rdata;
  wire s_axi_control_rready;
  wire [1:0]s_axi_control_rresp;
  wire s_axi_control_rvalid;
  wire [31:0]s_axi_control_wdata;
  wire s_axi_control_wready;
  wire [3:0]s_axi_control_wstrb;
  wire s_axi_control_wvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst_n(ap_rst_n),
        .m_axi_gmem0_araddr(m_axi_gmem0_araddr),
        .m_axi_gmem0_arburst(m_axi_gmem0_arburst),
        .m_axi_gmem0_arcache(m_axi_gmem0_arcache),
        .m_axi_gmem0_arid(m_axi_gmem0_arid),
        .m_axi_gmem0_arlen(m_axi_gmem0_arlen),
        .m_axi_gmem0_arlock(m_axi_gmem0_arlock),
        .m_axi_gmem0_arprot(m_axi_gmem0_arprot),
        .m_axi_gmem0_arqos(m_axi_gmem0_arqos),
        .m_axi_gmem0_arready(m_axi_gmem0_arready),
        .m_axi_gmem0_arregion(m_axi_gmem0_arregion),
        .m_axi_gmem0_arsize(m_axi_gmem0_arsize),
        .m_axi_gmem0_arvalid(m_axi_gmem0_arvalid),
        .m_axi_gmem0_awaddr(m_axi_gmem0_awaddr),
        .m_axi_gmem0_awburst(m_axi_gmem0_awburst),
        .m_axi_gmem0_awcache(m_axi_gmem0_awcache),
        .m_axi_gmem0_awid(m_axi_gmem0_awid),
        .m_axi_gmem0_awlen(m_axi_gmem0_awlen),
        .m_axi_gmem0_awlock(m_axi_gmem0_awlock),
        .m_axi_gmem0_awprot(m_axi_gmem0_awprot),
        .m_axi_gmem0_awqos(m_axi_gmem0_awqos),
        .m_axi_gmem0_awready(m_axi_gmem0_awready),
        .m_axi_gmem0_awregion(m_axi_gmem0_awregion),
        .m_axi_gmem0_awsize(m_axi_gmem0_awsize),
        .m_axi_gmem0_awvalid(m_axi_gmem0_awvalid),
        .m_axi_gmem0_bid(m_axi_gmem0_bid),
        .m_axi_gmem0_bready(m_axi_gmem0_bready),
        .m_axi_gmem0_bresp(m_axi_gmem0_bresp),
        .m_axi_gmem0_bvalid(m_axi_gmem0_bvalid),
        .m_axi_gmem0_rdata(m_axi_gmem0_rdata),
        .m_axi_gmem0_rid(m_axi_gmem0_rid),
        .m_axi_gmem0_rlast(m_axi_gmem0_rlast),
        .m_axi_gmem0_rready(m_axi_gmem0_rready),
        .m_axi_gmem0_rresp(m_axi_gmem0_rresp),
        .m_axi_gmem0_rvalid(m_axi_gmem0_rvalid),
        .m_axi_gmem0_wdata(m_axi_gmem0_wdata),
        .m_axi_gmem0_wid(m_axi_gmem0_wid),
        .m_axi_gmem0_wlast(m_axi_gmem0_wlast),
        .m_axi_gmem0_wready(m_axi_gmem0_wready),
        .m_axi_gmem0_wstrb(m_axi_gmem0_wstrb),
        .m_axi_gmem0_wvalid(m_axi_gmem0_wvalid),
        .m_axi_gmem1_araddr(m_axi_gmem1_araddr),
        .m_axi_gmem1_arburst(m_axi_gmem1_arburst),
        .m_axi_gmem1_arcache(m_axi_gmem1_arcache),
        .m_axi_gmem1_arid(m_axi_gmem1_arid),
        .m_axi_gmem1_arlen(m_axi_gmem1_arlen),
        .m_axi_gmem1_arlock(m_axi_gmem1_arlock),
        .m_axi_gmem1_arprot(m_axi_gmem1_arprot),
        .m_axi_gmem1_arqos(m_axi_gmem1_arqos),
        .m_axi_gmem1_arready(m_axi_gmem1_arready),
        .m_axi_gmem1_arregion(m_axi_gmem1_arregion),
        .m_axi_gmem1_arsize(m_axi_gmem1_arsize),
        .m_axi_gmem1_arvalid(m_axi_gmem1_arvalid),
        .m_axi_gmem1_awaddr(m_axi_gmem1_awaddr),
        .m_axi_gmem1_awburst(m_axi_gmem1_awburst),
        .m_axi_gmem1_awcache(m_axi_gmem1_awcache),
        .m_axi_gmem1_awid(m_axi_gmem1_awid),
        .m_axi_gmem1_awlen(m_axi_gmem1_awlen),
        .m_axi_gmem1_awlock(m_axi_gmem1_awlock),
        .m_axi_gmem1_awprot(m_axi_gmem1_awprot),
        .m_axi_gmem1_awqos(m_axi_gmem1_awqos),
        .m_axi_gmem1_awready(m_axi_gmem1_awready),
        .m_axi_gmem1_awregion(m_axi_gmem1_awregion),
        .m_axi_gmem1_awsize(m_axi_gmem1_awsize),
        .m_axi_gmem1_awvalid(m_axi_gmem1_awvalid),
        .m_axi_gmem1_bid(m_axi_gmem1_bid),
        .m_axi_gmem1_bready(m_axi_gmem1_bready),
        .m_axi_gmem1_bresp(m_axi_gmem1_bresp),
        .m_axi_gmem1_bvalid(m_axi_gmem1_bvalid),
        .m_axi_gmem1_rdata(m_axi_gmem1_rdata),
        .m_axi_gmem1_rid(m_axi_gmem1_rid),
        .m_axi_gmem1_rlast(m_axi_gmem1_rlast),
        .m_axi_gmem1_rready(m_axi_gmem1_rready),
        .m_axi_gmem1_rresp(m_axi_gmem1_rresp),
        .m_axi_gmem1_rvalid(m_axi_gmem1_rvalid),
        .m_axi_gmem1_wdata(m_axi_gmem1_wdata),
        .m_axi_gmem1_wid(m_axi_gmem1_wid),
        .m_axi_gmem1_wlast(m_axi_gmem1_wlast),
        .m_axi_gmem1_wready(m_axi_gmem1_wready),
        .m_axi_gmem1_wstrb(m_axi_gmem1_wstrb),
        .m_axi_gmem1_wvalid(m_axi_gmem1_wvalid),
        .m_axi_gmem2_araddr(m_axi_gmem2_araddr),
        .m_axi_gmem2_arburst(m_axi_gmem2_arburst),
        .m_axi_gmem2_arcache(m_axi_gmem2_arcache),
        .m_axi_gmem2_arid(m_axi_gmem2_arid),
        .m_axi_gmem2_arlen(m_axi_gmem2_arlen),
        .m_axi_gmem2_arlock(m_axi_gmem2_arlock),
        .m_axi_gmem2_arprot(m_axi_gmem2_arprot),
        .m_axi_gmem2_arqos(m_axi_gmem2_arqos),
        .m_axi_gmem2_arready(m_axi_gmem2_arready),
        .m_axi_gmem2_arregion(m_axi_gmem2_arregion),
        .m_axi_gmem2_arsize(m_axi_gmem2_arsize),
        .m_axi_gmem2_arvalid(m_axi_gmem2_arvalid),
        .m_axi_gmem2_awaddr(m_axi_gmem2_awaddr),
        .m_axi_gmem2_awburst(m_axi_gmem2_awburst),
        .m_axi_gmem2_awcache(m_axi_gmem2_awcache),
        .m_axi_gmem2_awid(m_axi_gmem2_awid),
        .m_axi_gmem2_awlen(m_axi_gmem2_awlen),
        .m_axi_gmem2_awlock(m_axi_gmem2_awlock),
        .m_axi_gmem2_awprot(m_axi_gmem2_awprot),
        .m_axi_gmem2_awqos(m_axi_gmem2_awqos),
        .m_axi_gmem2_awready(m_axi_gmem2_awready),
        .m_axi_gmem2_awregion(m_axi_gmem2_awregion),
        .m_axi_gmem2_awsize(m_axi_gmem2_awsize),
        .m_axi_gmem2_awvalid(m_axi_gmem2_awvalid),
        .m_axi_gmem2_bid(m_axi_gmem2_bid),
        .m_axi_gmem2_bready(m_axi_gmem2_bready),
        .m_axi_gmem2_bresp(m_axi_gmem2_bresp),
        .m_axi_gmem2_bvalid(m_axi_gmem2_bvalid),
        .m_axi_gmem2_rdata(m_axi_gmem2_rdata),
        .m_axi_gmem2_rid(m_axi_gmem2_rid),
        .m_axi_gmem2_rlast(m_axi_gmem2_rlast),
        .m_axi_gmem2_rready(m_axi_gmem2_rready),
        .m_axi_gmem2_rresp(m_axi_gmem2_rresp),
        .m_axi_gmem2_rvalid(m_axi_gmem2_rvalid),
        .m_axi_gmem2_wdata(m_axi_gmem2_wdata),
        .m_axi_gmem2_wid(m_axi_gmem2_wid),
        .m_axi_gmem2_wlast(m_axi_gmem2_wlast),
        .m_axi_gmem2_wready(m_axi_gmem2_wready),
        .m_axi_gmem2_wstrb(m_axi_gmem2_wstrb),
        .m_axi_gmem2_wvalid(m_axi_gmem2_wvalid),
        .m_axi_gmem3_araddr(m_axi_gmem3_araddr),
        .m_axi_gmem3_arburst(m_axi_gmem3_arburst),
        .m_axi_gmem3_arcache(m_axi_gmem3_arcache),
        .m_axi_gmem3_arid(m_axi_gmem3_arid),
        .m_axi_gmem3_arlen(m_axi_gmem3_arlen),
        .m_axi_gmem3_arlock(m_axi_gmem3_arlock),
        .m_axi_gmem3_arprot(m_axi_gmem3_arprot),
        .m_axi_gmem3_arqos(m_axi_gmem3_arqos),
        .m_axi_gmem3_arready(m_axi_gmem3_arready),
        .m_axi_gmem3_arregion(m_axi_gmem3_arregion),
        .m_axi_gmem3_arsize(m_axi_gmem3_arsize),
        .m_axi_gmem3_arvalid(m_axi_gmem3_arvalid),
        .m_axi_gmem3_awaddr(m_axi_gmem3_awaddr),
        .m_axi_gmem3_awburst(m_axi_gmem3_awburst),
        .m_axi_gmem3_awcache(m_axi_gmem3_awcache),
        .m_axi_gmem3_awid(m_axi_gmem3_awid),
        .m_axi_gmem3_awlen(m_axi_gmem3_awlen),
        .m_axi_gmem3_awlock(m_axi_gmem3_awlock),
        .m_axi_gmem3_awprot(m_axi_gmem3_awprot),
        .m_axi_gmem3_awqos(m_axi_gmem3_awqos),
        .m_axi_gmem3_awready(m_axi_gmem3_awready),
        .m_axi_gmem3_awregion(m_axi_gmem3_awregion),
        .m_axi_gmem3_awsize(m_axi_gmem3_awsize),
        .m_axi_gmem3_awvalid(m_axi_gmem3_awvalid),
        .m_axi_gmem3_bid(m_axi_gmem3_bid),
        .m_axi_gmem3_bready(m_axi_gmem3_bready),
        .m_axi_gmem3_bresp(m_axi_gmem3_bresp),
        .m_axi_gmem3_bvalid(m_axi_gmem3_bvalid),
        .m_axi_gmem3_rdata(m_axi_gmem3_rdata),
        .m_axi_gmem3_rid(m_axi_gmem3_rid),
        .m_axi_gmem3_rlast(m_axi_gmem3_rlast),
        .m_axi_gmem3_rready(m_axi_gmem3_rready),
        .m_axi_gmem3_rresp(m_axi_gmem3_rresp),
        .m_axi_gmem3_rvalid(m_axi_gmem3_rvalid),
        .m_axi_gmem3_wdata(m_axi_gmem3_wdata),
        .m_axi_gmem3_wid(m_axi_gmem3_wid),
        .m_axi_gmem3_wlast(m_axi_gmem3_wlast),
        .m_axi_gmem3_wready(m_axi_gmem3_wready),
        .m_axi_gmem3_wstrb(m_axi_gmem3_wstrb),
        .m_axi_gmem3_wvalid(m_axi_gmem3_wvalid),
        .m_axi_gmem4_araddr(m_axi_gmem4_araddr),
        .m_axi_gmem4_arburst(m_axi_gmem4_arburst),
        .m_axi_gmem4_arcache(m_axi_gmem4_arcache),
        .m_axi_gmem4_arid(m_axi_gmem4_arid),
        .m_axi_gmem4_arlen(m_axi_gmem4_arlen),
        .m_axi_gmem4_arlock(m_axi_gmem4_arlock),
        .m_axi_gmem4_arprot(m_axi_gmem4_arprot),
        .m_axi_gmem4_arqos(m_axi_gmem4_arqos),
        .m_axi_gmem4_arready(m_axi_gmem4_arready),
        .m_axi_gmem4_arregion(m_axi_gmem4_arregion),
        .m_axi_gmem4_arsize(m_axi_gmem4_arsize),
        .m_axi_gmem4_arvalid(m_axi_gmem4_arvalid),
        .m_axi_gmem4_awaddr(m_axi_gmem4_awaddr),
        .m_axi_gmem4_awburst(m_axi_gmem4_awburst),
        .m_axi_gmem4_awcache(m_axi_gmem4_awcache),
        .m_axi_gmem4_awid(m_axi_gmem4_awid),
        .m_axi_gmem4_awlen(m_axi_gmem4_awlen),
        .m_axi_gmem4_awlock(m_axi_gmem4_awlock),
        .m_axi_gmem4_awprot(m_axi_gmem4_awprot),
        .m_axi_gmem4_awqos(m_axi_gmem4_awqos),
        .m_axi_gmem4_awready(m_axi_gmem4_awready),
        .m_axi_gmem4_awregion(m_axi_gmem4_awregion),
        .m_axi_gmem4_awsize(m_axi_gmem4_awsize),
        .m_axi_gmem4_awvalid(m_axi_gmem4_awvalid),
        .m_axi_gmem4_bid(m_axi_gmem4_bid),
        .m_axi_gmem4_bready(m_axi_gmem4_bready),
        .m_axi_gmem4_bresp(m_axi_gmem4_bresp),
        .m_axi_gmem4_bvalid(m_axi_gmem4_bvalid),
        .m_axi_gmem4_rdata(m_axi_gmem4_rdata),
        .m_axi_gmem4_rid(m_axi_gmem4_rid),
        .m_axi_gmem4_rlast(m_axi_gmem4_rlast),
        .m_axi_gmem4_rready(m_axi_gmem4_rready),
        .m_axi_gmem4_rresp(m_axi_gmem4_rresp),
        .m_axi_gmem4_rvalid(m_axi_gmem4_rvalid),
        .m_axi_gmem4_wdata(m_axi_gmem4_wdata),
        .m_axi_gmem4_wid(m_axi_gmem4_wid),
        .m_axi_gmem4_wlast(m_axi_gmem4_wlast),
        .m_axi_gmem4_wready(m_axi_gmem4_wready),
        .m_axi_gmem4_wstrb(m_axi_gmem4_wstrb),
        .m_axi_gmem4_wvalid(m_axi_gmem4_wvalid),
        .m_axi_gmem5_araddr(m_axi_gmem5_araddr),
        .m_axi_gmem5_arburst(m_axi_gmem5_arburst),
        .m_axi_gmem5_arcache(m_axi_gmem5_arcache),
        .m_axi_gmem5_arid(m_axi_gmem5_arid),
        .m_axi_gmem5_arlen(m_axi_gmem5_arlen),
        .m_axi_gmem5_arlock(m_axi_gmem5_arlock),
        .m_axi_gmem5_arprot(m_axi_gmem5_arprot),
        .m_axi_gmem5_arqos(m_axi_gmem5_arqos),
        .m_axi_gmem5_arready(m_axi_gmem5_arready),
        .m_axi_gmem5_arregion(m_axi_gmem5_arregion),
        .m_axi_gmem5_arsize(m_axi_gmem5_arsize),
        .m_axi_gmem5_arvalid(m_axi_gmem5_arvalid),
        .m_axi_gmem5_awaddr(m_axi_gmem5_awaddr),
        .m_axi_gmem5_awburst(m_axi_gmem5_awburst),
        .m_axi_gmem5_awcache(m_axi_gmem5_awcache),
        .m_axi_gmem5_awid(m_axi_gmem5_awid),
        .m_axi_gmem5_awlen(m_axi_gmem5_awlen),
        .m_axi_gmem5_awlock(m_axi_gmem5_awlock),
        .m_axi_gmem5_awprot(m_axi_gmem5_awprot),
        .m_axi_gmem5_awqos(m_axi_gmem5_awqos),
        .m_axi_gmem5_awready(m_axi_gmem5_awready),
        .m_axi_gmem5_awregion(m_axi_gmem5_awregion),
        .m_axi_gmem5_awsize(m_axi_gmem5_awsize),
        .m_axi_gmem5_awvalid(m_axi_gmem5_awvalid),
        .m_axi_gmem5_bid(m_axi_gmem5_bid),
        .m_axi_gmem5_bready(m_axi_gmem5_bready),
        .m_axi_gmem5_bresp(m_axi_gmem5_bresp),
        .m_axi_gmem5_bvalid(m_axi_gmem5_bvalid),
        .m_axi_gmem5_rdata(m_axi_gmem5_rdata),
        .m_axi_gmem5_rid(m_axi_gmem5_rid),
        .m_axi_gmem5_rlast(m_axi_gmem5_rlast),
        .m_axi_gmem5_rready(m_axi_gmem5_rready),
        .m_axi_gmem5_rresp(m_axi_gmem5_rresp),
        .m_axi_gmem5_rvalid(m_axi_gmem5_rvalid),
        .m_axi_gmem5_wdata(m_axi_gmem5_wdata),
        .m_axi_gmem5_wid(m_axi_gmem5_wid),
        .m_axi_gmem5_wlast(m_axi_gmem5_wlast),
        .m_axi_gmem5_wready(m_axi_gmem5_wready),
        .m_axi_gmem5_wstrb(m_axi_gmem5_wstrb),
        .m_axi_gmem5_wvalid(m_axi_gmem5_wvalid),
        .m_axi_gmem6_araddr(m_axi_gmem6_araddr),
        .m_axi_gmem6_arburst(m_axi_gmem6_arburst),
        .m_axi_gmem6_arcache(m_axi_gmem6_arcache),
        .m_axi_gmem6_arid(m_axi_gmem6_arid),
        .m_axi_gmem6_arlen(m_axi_gmem6_arlen),
        .m_axi_gmem6_arlock(m_axi_gmem6_arlock),
        .m_axi_gmem6_arprot(m_axi_gmem6_arprot),
        .m_axi_gmem6_arqos(m_axi_gmem6_arqos),
        .m_axi_gmem6_arready(m_axi_gmem6_arready),
        .m_axi_gmem6_arregion(m_axi_gmem6_arregion),
        .m_axi_gmem6_arsize(m_axi_gmem6_arsize),
        .m_axi_gmem6_arvalid(m_axi_gmem6_arvalid),
        .m_axi_gmem6_awaddr(m_axi_gmem6_awaddr),
        .m_axi_gmem6_awburst(m_axi_gmem6_awburst),
        .m_axi_gmem6_awcache(m_axi_gmem6_awcache),
        .m_axi_gmem6_awid(m_axi_gmem6_awid),
        .m_axi_gmem6_awlen(m_axi_gmem6_awlen),
        .m_axi_gmem6_awlock(m_axi_gmem6_awlock),
        .m_axi_gmem6_awprot(m_axi_gmem6_awprot),
        .m_axi_gmem6_awqos(m_axi_gmem6_awqos),
        .m_axi_gmem6_awready(m_axi_gmem6_awready),
        .m_axi_gmem6_awregion(m_axi_gmem6_awregion),
        .m_axi_gmem6_awsize(m_axi_gmem6_awsize),
        .m_axi_gmem6_awvalid(m_axi_gmem6_awvalid),
        .m_axi_gmem6_bid(m_axi_gmem6_bid),
        .m_axi_gmem6_bready(m_axi_gmem6_bready),
        .m_axi_gmem6_bresp(m_axi_gmem6_bresp),
        .m_axi_gmem6_bvalid(m_axi_gmem6_bvalid),
        .m_axi_gmem6_rdata(m_axi_gmem6_rdata),
        .m_axi_gmem6_rid(m_axi_gmem6_rid),
        .m_axi_gmem6_rlast(m_axi_gmem6_rlast),
        .m_axi_gmem6_rready(m_axi_gmem6_rready),
        .m_axi_gmem6_rresp(m_axi_gmem6_rresp),
        .m_axi_gmem6_rvalid(m_axi_gmem6_rvalid),
        .m_axi_gmem6_wdata(m_axi_gmem6_wdata),
        .m_axi_gmem6_wid(m_axi_gmem6_wid),
        .m_axi_gmem6_wlast(m_axi_gmem6_wlast),
        .m_axi_gmem6_wready(m_axi_gmem6_wready),
        .m_axi_gmem6_wstrb(m_axi_gmem6_wstrb),
        .m_axi_gmem6_wvalid(m_axi_gmem6_wvalid),
        .nnz_total(nnz_total),
        .s_axi_control_araddr(s_axi_control_araddr),
        .s_axi_control_arready(s_axi_control_arready),
        .s_axi_control_arvalid(s_axi_control_arvalid),
        .s_axi_control_awaddr(s_axi_control_awaddr),
        .s_axi_control_awready(s_axi_control_awready),
        .s_axi_control_awvalid(s_axi_control_awvalid),
        .s_axi_control_bready(s_axi_control_bready),
        .s_axi_control_bresp(s_axi_control_bresp),
        .s_axi_control_bvalid(s_axi_control_bvalid),
        .s_axi_control_rdata(s_axi_control_rdata),
        .s_axi_control_rready(s_axi_control_rready),
        .s_axi_control_rresp(s_axi_control_rresp),
        .s_axi_control_rvalid(s_axi_control_rvalid),
        .s_axi_control_wdata(s_axi_control_wdata),
        .s_axi_control_wready(s_axi_control_wready),
        .s_axi_control_wstrb(s_axi_control_wstrb),
        .s_axi_control_wvalid(s_axi_control_wvalid));
endmodule
