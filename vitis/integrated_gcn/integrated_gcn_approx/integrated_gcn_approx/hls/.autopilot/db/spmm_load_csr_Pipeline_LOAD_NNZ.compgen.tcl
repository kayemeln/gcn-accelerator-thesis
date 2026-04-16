# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 873 \
    name nnz_total \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nnz_total \
    op interface \
    ports { nnz_total { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 874 \
    name gmem4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem4 \
    op interface \
    ports { m_axi_gmem4_0_AWVALID { O 1 bit } m_axi_gmem4_0_AWREADY { I 1 bit } m_axi_gmem4_0_AWADDR { O 64 vector } m_axi_gmem4_0_AWID { O 1 vector } m_axi_gmem4_0_AWLEN { O 32 vector } m_axi_gmem4_0_AWSIZE { O 3 vector } m_axi_gmem4_0_AWBURST { O 2 vector } m_axi_gmem4_0_AWLOCK { O 2 vector } m_axi_gmem4_0_AWCACHE { O 4 vector } m_axi_gmem4_0_AWPROT { O 3 vector } m_axi_gmem4_0_AWQOS { O 4 vector } m_axi_gmem4_0_AWREGION { O 4 vector } m_axi_gmem4_0_AWUSER { O 1 vector } m_axi_gmem4_0_WVALID { O 1 bit } m_axi_gmem4_0_WREADY { I 1 bit } m_axi_gmem4_0_WDATA { O 32 vector } m_axi_gmem4_0_WSTRB { O 4 vector } m_axi_gmem4_0_WLAST { O 1 bit } m_axi_gmem4_0_WID { O 1 vector } m_axi_gmem4_0_WUSER { O 1 vector } m_axi_gmem4_0_ARVALID { O 1 bit } m_axi_gmem4_0_ARREADY { I 1 bit } m_axi_gmem4_0_ARADDR { O 64 vector } m_axi_gmem4_0_ARID { O 1 vector } m_axi_gmem4_0_ARLEN { O 32 vector } m_axi_gmem4_0_ARSIZE { O 3 vector } m_axi_gmem4_0_ARBURST { O 2 vector } m_axi_gmem4_0_ARLOCK { O 2 vector } m_axi_gmem4_0_ARCACHE { O 4 vector } m_axi_gmem4_0_ARPROT { O 3 vector } m_axi_gmem4_0_ARQOS { O 4 vector } m_axi_gmem4_0_ARREGION { O 4 vector } m_axi_gmem4_0_ARUSER { O 1 vector } m_axi_gmem4_0_RVALID { I 1 bit } m_axi_gmem4_0_RREADY { O 1 bit } m_axi_gmem4_0_RDATA { I 32 vector } m_axi_gmem4_0_RLAST { I 1 bit } m_axi_gmem4_0_RID { I 1 vector } m_axi_gmem4_0_RFIFONUM { I 9 vector } m_axi_gmem4_0_RUSER { I 1 vector } m_axi_gmem4_0_RRESP { I 2 vector } m_axi_gmem4_0_BVALID { I 1 bit } m_axi_gmem4_0_BREADY { O 1 bit } m_axi_gmem4_0_BRESP { I 2 vector } m_axi_gmem4_0_BID { I 1 vector } m_axi_gmem4_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 875 \
    name sext_ln208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln208 \
    op interface \
    ports { sext_ln208 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 876 \
    name gmem5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem5 \
    op interface \
    ports { m_axi_gmem5_0_AWVALID { O 1 bit } m_axi_gmem5_0_AWREADY { I 1 bit } m_axi_gmem5_0_AWADDR { O 64 vector } m_axi_gmem5_0_AWID { O 1 vector } m_axi_gmem5_0_AWLEN { O 32 vector } m_axi_gmem5_0_AWSIZE { O 3 vector } m_axi_gmem5_0_AWBURST { O 2 vector } m_axi_gmem5_0_AWLOCK { O 2 vector } m_axi_gmem5_0_AWCACHE { O 4 vector } m_axi_gmem5_0_AWPROT { O 3 vector } m_axi_gmem5_0_AWQOS { O 4 vector } m_axi_gmem5_0_AWREGION { O 4 vector } m_axi_gmem5_0_AWUSER { O 1 vector } m_axi_gmem5_0_WVALID { O 1 bit } m_axi_gmem5_0_WREADY { I 1 bit } m_axi_gmem5_0_WDATA { O 8 vector } m_axi_gmem5_0_WSTRB { O 1 vector } m_axi_gmem5_0_WLAST { O 1 bit } m_axi_gmem5_0_WID { O 1 vector } m_axi_gmem5_0_WUSER { O 1 vector } m_axi_gmem5_0_ARVALID { O 1 bit } m_axi_gmem5_0_ARREADY { I 1 bit } m_axi_gmem5_0_ARADDR { O 64 vector } m_axi_gmem5_0_ARID { O 1 vector } m_axi_gmem5_0_ARLEN { O 32 vector } m_axi_gmem5_0_ARSIZE { O 3 vector } m_axi_gmem5_0_ARBURST { O 2 vector } m_axi_gmem5_0_ARLOCK { O 2 vector } m_axi_gmem5_0_ARCACHE { O 4 vector } m_axi_gmem5_0_ARPROT { O 3 vector } m_axi_gmem5_0_ARQOS { O 4 vector } m_axi_gmem5_0_ARREGION { O 4 vector } m_axi_gmem5_0_ARUSER { O 1 vector } m_axi_gmem5_0_RVALID { I 1 bit } m_axi_gmem5_0_RREADY { O 1 bit } m_axi_gmem5_0_RDATA { I 8 vector } m_axi_gmem5_0_RLAST { I 1 bit } m_axi_gmem5_0_RID { I 1 vector } m_axi_gmem5_0_RFIFONUM { I 11 vector } m_axi_gmem5_0_RUSER { I 1 vector } m_axi_gmem5_0_RRESP { I 2 vector } m_axi_gmem5_0_BVALID { I 1 bit } m_axi_gmem5_0_BREADY { O 1 bit } m_axi_gmem5_0_BRESP { I 2 vector } m_axi_gmem5_0_BID { I 1 vector } m_axi_gmem5_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 877 \
    name values \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_values \
    op interface \
    ports { values { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 878 \
    name col_fifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_col_fifo \
    op interface \
    ports { col_fifo_din { O 32 vector } col_fifo_full_n { I 1 bit } col_fifo_write { O 1 bit } col_fifo_num_data_valid { I 9 vector } col_fifo_fifo_cap { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 879 \
    name val_fifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_val_fifo \
    op interface \
    ports { val_fifo_din { O 8 vector } val_fifo_full_n { I 1 bit } val_fifo_write { O 1 bit } val_fifo_num_data_valid { I 9 vector } val_fifo_fifo_cap { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName integrated_gcn_approx_flow_control_loop_pipe_sequential_init_U
set CompName integrated_gcn_approx_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix integrated_gcn_approx_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


