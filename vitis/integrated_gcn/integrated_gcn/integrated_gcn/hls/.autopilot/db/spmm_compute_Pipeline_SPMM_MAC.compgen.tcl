# This script segment is generated automatically by AutoPilot

set name integrated_gcn_mul_26s_26s_52_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1598 \
    name acc_31 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_31 \
    op interface \
    ports { acc_31_address0 { O 1 vector } acc_31_ce0 { O 1 bit } acc_31_we0 { O 1 bit } acc_31_d0 { O 32 vector } acc_31_address1 { O 1 vector } acc_31_ce1 { O 1 bit } acc_31_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1599 \
    name acc_30 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_30 \
    op interface \
    ports { acc_30_address0 { O 1 vector } acc_30_ce0 { O 1 bit } acc_30_we0 { O 1 bit } acc_30_d0 { O 32 vector } acc_30_address1 { O 1 vector } acc_30_ce1 { O 1 bit } acc_30_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1600 \
    name acc_29 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_29 \
    op interface \
    ports { acc_29_address0 { O 1 vector } acc_29_ce0 { O 1 bit } acc_29_we0 { O 1 bit } acc_29_d0 { O 32 vector } acc_29_address1 { O 1 vector } acc_29_ce1 { O 1 bit } acc_29_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1601 \
    name acc_28 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_28 \
    op interface \
    ports { acc_28_address0 { O 1 vector } acc_28_ce0 { O 1 bit } acc_28_we0 { O 1 bit } acc_28_d0 { O 32 vector } acc_28_address1 { O 1 vector } acc_28_ce1 { O 1 bit } acc_28_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1602 \
    name acc_27 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_27 \
    op interface \
    ports { acc_27_address0 { O 1 vector } acc_27_ce0 { O 1 bit } acc_27_we0 { O 1 bit } acc_27_d0 { O 32 vector } acc_27_address1 { O 1 vector } acc_27_ce1 { O 1 bit } acc_27_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1603 \
    name acc_26 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_26 \
    op interface \
    ports { acc_26_address0 { O 1 vector } acc_26_ce0 { O 1 bit } acc_26_we0 { O 1 bit } acc_26_d0 { O 32 vector } acc_26_address1 { O 1 vector } acc_26_ce1 { O 1 bit } acc_26_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1604 \
    name acc_25 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_25 \
    op interface \
    ports { acc_25_address0 { O 1 vector } acc_25_ce0 { O 1 bit } acc_25_we0 { O 1 bit } acc_25_d0 { O 32 vector } acc_25_address1 { O 1 vector } acc_25_ce1 { O 1 bit } acc_25_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1605 \
    name acc_24 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_24 \
    op interface \
    ports { acc_24_address0 { O 1 vector } acc_24_ce0 { O 1 bit } acc_24_we0 { O 1 bit } acc_24_d0 { O 32 vector } acc_24_address1 { O 1 vector } acc_24_ce1 { O 1 bit } acc_24_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1606 \
    name acc_23 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_23 \
    op interface \
    ports { acc_23_address0 { O 1 vector } acc_23_ce0 { O 1 bit } acc_23_we0 { O 1 bit } acc_23_d0 { O 32 vector } acc_23_address1 { O 1 vector } acc_23_ce1 { O 1 bit } acc_23_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1607 \
    name acc_22 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_22 \
    op interface \
    ports { acc_22_address0 { O 1 vector } acc_22_ce0 { O 1 bit } acc_22_we0 { O 1 bit } acc_22_d0 { O 32 vector } acc_22_address1 { O 1 vector } acc_22_ce1 { O 1 bit } acc_22_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1608 \
    name acc_21 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_21 \
    op interface \
    ports { acc_21_address0 { O 1 vector } acc_21_ce0 { O 1 bit } acc_21_we0 { O 1 bit } acc_21_d0 { O 32 vector } acc_21_address1 { O 1 vector } acc_21_ce1 { O 1 bit } acc_21_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1609 \
    name acc_20 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_20 \
    op interface \
    ports { acc_20_address0 { O 1 vector } acc_20_ce0 { O 1 bit } acc_20_we0 { O 1 bit } acc_20_d0 { O 32 vector } acc_20_address1 { O 1 vector } acc_20_ce1 { O 1 bit } acc_20_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1610 \
    name acc_19 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_19 \
    op interface \
    ports { acc_19_address0 { O 1 vector } acc_19_ce0 { O 1 bit } acc_19_we0 { O 1 bit } acc_19_d0 { O 32 vector } acc_19_address1 { O 1 vector } acc_19_ce1 { O 1 bit } acc_19_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1611 \
    name acc_18 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_18 \
    op interface \
    ports { acc_18_address0 { O 1 vector } acc_18_ce0 { O 1 bit } acc_18_we0 { O 1 bit } acc_18_d0 { O 32 vector } acc_18_address1 { O 1 vector } acc_18_ce1 { O 1 bit } acc_18_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1612 \
    name acc_17 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_17 \
    op interface \
    ports { acc_17_address0 { O 1 vector } acc_17_ce0 { O 1 bit } acc_17_we0 { O 1 bit } acc_17_d0 { O 32 vector } acc_17_address1 { O 1 vector } acc_17_ce1 { O 1 bit } acc_17_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1613 \
    name acc_16 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_16 \
    op interface \
    ports { acc_16_address0 { O 1 vector } acc_16_ce0 { O 1 bit } acc_16_we0 { O 1 bit } acc_16_d0 { O 32 vector } acc_16_address1 { O 1 vector } acc_16_ce1 { O 1 bit } acc_16_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1614 \
    name acc_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_15 \
    op interface \
    ports { acc_15_address0 { O 1 vector } acc_15_ce0 { O 1 bit } acc_15_we0 { O 1 bit } acc_15_d0 { O 32 vector } acc_15_address1 { O 1 vector } acc_15_ce1 { O 1 bit } acc_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1615 \
    name acc_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_14 \
    op interface \
    ports { acc_14_address0 { O 1 vector } acc_14_ce0 { O 1 bit } acc_14_we0 { O 1 bit } acc_14_d0 { O 32 vector } acc_14_address1 { O 1 vector } acc_14_ce1 { O 1 bit } acc_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1616 \
    name acc_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_13 \
    op interface \
    ports { acc_13_address0 { O 1 vector } acc_13_ce0 { O 1 bit } acc_13_we0 { O 1 bit } acc_13_d0 { O 32 vector } acc_13_address1 { O 1 vector } acc_13_ce1 { O 1 bit } acc_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1617 \
    name acc_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_12 \
    op interface \
    ports { acc_12_address0 { O 1 vector } acc_12_ce0 { O 1 bit } acc_12_we0 { O 1 bit } acc_12_d0 { O 32 vector } acc_12_address1 { O 1 vector } acc_12_ce1 { O 1 bit } acc_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1618 \
    name acc_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_11 \
    op interface \
    ports { acc_11_address0 { O 1 vector } acc_11_ce0 { O 1 bit } acc_11_we0 { O 1 bit } acc_11_d0 { O 32 vector } acc_11_address1 { O 1 vector } acc_11_ce1 { O 1 bit } acc_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1619 \
    name acc_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_10 \
    op interface \
    ports { acc_10_address0 { O 1 vector } acc_10_ce0 { O 1 bit } acc_10_we0 { O 1 bit } acc_10_d0 { O 32 vector } acc_10_address1 { O 1 vector } acc_10_ce1 { O 1 bit } acc_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1620 \
    name acc_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_9 \
    op interface \
    ports { acc_9_address0 { O 1 vector } acc_9_ce0 { O 1 bit } acc_9_we0 { O 1 bit } acc_9_d0 { O 32 vector } acc_9_address1 { O 1 vector } acc_9_ce1 { O 1 bit } acc_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1621 \
    name acc_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_8 \
    op interface \
    ports { acc_8_address0 { O 1 vector } acc_8_ce0 { O 1 bit } acc_8_we0 { O 1 bit } acc_8_d0 { O 32 vector } acc_8_address1 { O 1 vector } acc_8_ce1 { O 1 bit } acc_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1622 \
    name acc_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_7 \
    op interface \
    ports { acc_7_address0 { O 1 vector } acc_7_ce0 { O 1 bit } acc_7_we0 { O 1 bit } acc_7_d0 { O 32 vector } acc_7_address1 { O 1 vector } acc_7_ce1 { O 1 bit } acc_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1623 \
    name acc_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_6 \
    op interface \
    ports { acc_6_address0 { O 1 vector } acc_6_ce0 { O 1 bit } acc_6_we0 { O 1 bit } acc_6_d0 { O 32 vector } acc_6_address1 { O 1 vector } acc_6_ce1 { O 1 bit } acc_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1624 \
    name acc_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_5 \
    op interface \
    ports { acc_5_address0 { O 1 vector } acc_5_ce0 { O 1 bit } acc_5_we0 { O 1 bit } acc_5_d0 { O 32 vector } acc_5_address1 { O 1 vector } acc_5_ce1 { O 1 bit } acc_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1625 \
    name acc_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_4 \
    op interface \
    ports { acc_4_address0 { O 1 vector } acc_4_ce0 { O 1 bit } acc_4_we0 { O 1 bit } acc_4_d0 { O 32 vector } acc_4_address1 { O 1 vector } acc_4_ce1 { O 1 bit } acc_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1626 \
    name acc_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_3 \
    op interface \
    ports { acc_3_address0 { O 1 vector } acc_3_ce0 { O 1 bit } acc_3_we0 { O 1 bit } acc_3_d0 { O 32 vector } acc_3_address1 { O 1 vector } acc_3_ce1 { O 1 bit } acc_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1627 \
    name acc_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_2 \
    op interface \
    ports { acc_2_address0 { O 1 vector } acc_2_ce0 { O 1 bit } acc_2_we0 { O 1 bit } acc_2_d0 { O 32 vector } acc_2_address1 { O 1 vector } acc_2_ce1 { O 1 bit } acc_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1628 \
    name acc_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc_1 \
    op interface \
    ports { acc_1_address0 { O 1 vector } acc_1_ce0 { O 1 bit } acc_1_we0 { O 1 bit } acc_1_d0 { O 32 vector } acc_1_address1 { O 1 vector } acc_1_ce1 { O 1 bit } acc_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1629 \
    name acc \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc \
    op interface \
    ports { acc_address0 { O 1 vector } acc_ce0 { O 1 bit } acc_we0 { O 1 bit } acc_d0 { O 32 vector } acc_address1 { O 1 vector } acc_ce1 { O 1 bit } acc_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1630 \
    name h_buf \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf \
    op interface \
    ports { h_buf_address0 { O 1 vector } h_buf_ce0 { O 1 bit } h_buf_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1632 \
    name h_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_1 \
    op interface \
    ports { h_buf_1_address0 { O 1 vector } h_buf_1_ce0 { O 1 bit } h_buf_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1633 \
    name h_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_2 \
    op interface \
    ports { h_buf_2_address0 { O 1 vector } h_buf_2_ce0 { O 1 bit } h_buf_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1634 \
    name h_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_3 \
    op interface \
    ports { h_buf_3_address0 { O 1 vector } h_buf_3_ce0 { O 1 bit } h_buf_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1635 \
    name h_buf_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_4 \
    op interface \
    ports { h_buf_4_address0 { O 1 vector } h_buf_4_ce0 { O 1 bit } h_buf_4_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1636 \
    name h_buf_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_5 \
    op interface \
    ports { h_buf_5_address0 { O 1 vector } h_buf_5_ce0 { O 1 bit } h_buf_5_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1637 \
    name h_buf_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_6 \
    op interface \
    ports { h_buf_6_address0 { O 1 vector } h_buf_6_ce0 { O 1 bit } h_buf_6_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1638 \
    name h_buf_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_7 \
    op interface \
    ports { h_buf_7_address0 { O 1 vector } h_buf_7_ce0 { O 1 bit } h_buf_7_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1639 \
    name h_buf_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_8 \
    op interface \
    ports { h_buf_8_address0 { O 1 vector } h_buf_8_ce0 { O 1 bit } h_buf_8_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1640 \
    name h_buf_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_9 \
    op interface \
    ports { h_buf_9_address0 { O 1 vector } h_buf_9_ce0 { O 1 bit } h_buf_9_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1641 \
    name h_buf_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_10 \
    op interface \
    ports { h_buf_10_address0 { O 1 vector } h_buf_10_ce0 { O 1 bit } h_buf_10_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1642 \
    name h_buf_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_11 \
    op interface \
    ports { h_buf_11_address0 { O 1 vector } h_buf_11_ce0 { O 1 bit } h_buf_11_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1643 \
    name h_buf_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_12 \
    op interface \
    ports { h_buf_12_address0 { O 1 vector } h_buf_12_ce0 { O 1 bit } h_buf_12_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1644 \
    name h_buf_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_13 \
    op interface \
    ports { h_buf_13_address0 { O 1 vector } h_buf_13_ce0 { O 1 bit } h_buf_13_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1645 \
    name h_buf_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_14 \
    op interface \
    ports { h_buf_14_address0 { O 1 vector } h_buf_14_ce0 { O 1 bit } h_buf_14_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1646 \
    name h_buf_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_15 \
    op interface \
    ports { h_buf_15_address0 { O 1 vector } h_buf_15_ce0 { O 1 bit } h_buf_15_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1647 \
    name h_buf_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_16 \
    op interface \
    ports { h_buf_16_address0 { O 1 vector } h_buf_16_ce0 { O 1 bit } h_buf_16_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1648 \
    name h_buf_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_17 \
    op interface \
    ports { h_buf_17_address0 { O 1 vector } h_buf_17_ce0 { O 1 bit } h_buf_17_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1649 \
    name h_buf_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_18 \
    op interface \
    ports { h_buf_18_address0 { O 1 vector } h_buf_18_ce0 { O 1 bit } h_buf_18_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1650 \
    name h_buf_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_19 \
    op interface \
    ports { h_buf_19_address0 { O 1 vector } h_buf_19_ce0 { O 1 bit } h_buf_19_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1651 \
    name h_buf_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_20 \
    op interface \
    ports { h_buf_20_address0 { O 1 vector } h_buf_20_ce0 { O 1 bit } h_buf_20_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1652 \
    name h_buf_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_21 \
    op interface \
    ports { h_buf_21_address0 { O 1 vector } h_buf_21_ce0 { O 1 bit } h_buf_21_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1653 \
    name h_buf_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_22 \
    op interface \
    ports { h_buf_22_address0 { O 1 vector } h_buf_22_ce0 { O 1 bit } h_buf_22_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1654 \
    name h_buf_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_23 \
    op interface \
    ports { h_buf_23_address0 { O 1 vector } h_buf_23_ce0 { O 1 bit } h_buf_23_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1655 \
    name h_buf_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_24 \
    op interface \
    ports { h_buf_24_address0 { O 1 vector } h_buf_24_ce0 { O 1 bit } h_buf_24_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1656 \
    name h_buf_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_25 \
    op interface \
    ports { h_buf_25_address0 { O 1 vector } h_buf_25_ce0 { O 1 bit } h_buf_25_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1657 \
    name h_buf_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_26 \
    op interface \
    ports { h_buf_26_address0 { O 1 vector } h_buf_26_ce0 { O 1 bit } h_buf_26_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1658 \
    name h_buf_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_27 \
    op interface \
    ports { h_buf_27_address0 { O 1 vector } h_buf_27_ce0 { O 1 bit } h_buf_27_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1659 \
    name h_buf_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_28 \
    op interface \
    ports { h_buf_28_address0 { O 1 vector } h_buf_28_ce0 { O 1 bit } h_buf_28_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1660 \
    name h_buf_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_29 \
    op interface \
    ports { h_buf_29_address0 { O 1 vector } h_buf_29_ce0 { O 1 bit } h_buf_29_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1661 \
    name h_buf_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_30 \
    op interface \
    ports { h_buf_30_address0 { O 1 vector } h_buf_30_ce0 { O 1 bit } h_buf_30_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1662 \
    name h_buf_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename h_buf_31 \
    op interface \
    ports { h_buf_31_address0 { O 1 vector } h_buf_31_ce0 { O 1 bit } h_buf_31_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_buf_31'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1631 \
    name sext_ln265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln265 \
    op interface \
    ports { sext_ln265 { I 26 vector } } \
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
set InstName integrated_gcn_flow_control_loop_pipe_sequential_init_U
set CompName integrated_gcn_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix integrated_gcn_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


