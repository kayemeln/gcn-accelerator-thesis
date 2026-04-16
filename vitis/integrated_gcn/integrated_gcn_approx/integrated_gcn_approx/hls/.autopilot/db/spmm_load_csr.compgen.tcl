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
    id 880 \
    name gmem3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem3 \
    op interface \
    ports { m_axi_gmem3_0_AWVALID { O 1 bit } m_axi_gmem3_0_AWREADY { I 1 bit } m_axi_gmem3_0_AWADDR { O 64 vector } m_axi_gmem3_0_AWID { O 1 vector } m_axi_gmem3_0_AWLEN { O 32 vector } m_axi_gmem3_0_AWSIZE { O 3 vector } m_axi_gmem3_0_AWBURST { O 2 vector } m_axi_gmem3_0_AWLOCK { O 2 vector } m_axi_gmem3_0_AWCACHE { O 4 vector } m_axi_gmem3_0_AWPROT { O 3 vector } m_axi_gmem3_0_AWQOS { O 4 vector } m_axi_gmem3_0_AWREGION { O 4 vector } m_axi_gmem3_0_AWUSER { O 1 vector } m_axi_gmem3_0_WVALID { O 1 bit } m_axi_gmem3_0_WREADY { I 1 bit } m_axi_gmem3_0_WDATA { O 32 vector } m_axi_gmem3_0_WSTRB { O 4 vector } m_axi_gmem3_0_WLAST { O 1 bit } m_axi_gmem3_0_WID { O 1 vector } m_axi_gmem3_0_WUSER { O 1 vector } m_axi_gmem3_0_ARVALID { O 1 bit } m_axi_gmem3_0_ARREADY { I 1 bit } m_axi_gmem3_0_ARADDR { O 64 vector } m_axi_gmem3_0_ARID { O 1 vector } m_axi_gmem3_0_ARLEN { O 32 vector } m_axi_gmem3_0_ARSIZE { O 3 vector } m_axi_gmem3_0_ARBURST { O 2 vector } m_axi_gmem3_0_ARLOCK { O 2 vector } m_axi_gmem3_0_ARCACHE { O 4 vector } m_axi_gmem3_0_ARPROT { O 3 vector } m_axi_gmem3_0_ARQOS { O 4 vector } m_axi_gmem3_0_ARREGION { O 4 vector } m_axi_gmem3_0_ARUSER { O 1 vector } m_axi_gmem3_0_RVALID { I 1 bit } m_axi_gmem3_0_RREADY { O 1 bit } m_axi_gmem3_0_RDATA { I 32 vector } m_axi_gmem3_0_RLAST { I 1 bit } m_axi_gmem3_0_RID { I 1 vector } m_axi_gmem3_0_RFIFONUM { I 9 vector } m_axi_gmem3_0_RUSER { I 1 vector } m_axi_gmem3_0_RRESP { I 2 vector } m_axi_gmem3_0_BVALID { I 1 bit } m_axi_gmem3_0_BREADY { O 1 bit } m_axi_gmem3_0_BRESP { I 2 vector } m_axi_gmem3_0_BID { I 1 vector } m_axi_gmem3_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 881 \
    name row_length \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_length \
    op interface \
    ports { row_length { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 882 \
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
    id 883 \
    name colind \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_colind \
    op interface \
    ports { colind { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 884 \
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
    id 885 \
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
    id 886 \
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
    id 887 \
    name row_fifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_row_fifo \
    op interface \
    ports { row_fifo_din { O 32 vector } row_fifo_full_n { I 1 bit } row_fifo_write { O 1 bit } row_fifo_num_data_valid { I 5 vector } row_fifo_fifo_cap { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 888 \
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
    id 889 \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


