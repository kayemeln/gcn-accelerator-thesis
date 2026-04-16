# This script segment is generated automatically by AutoPilot

set name naive_spmm_stage_mul_26s_26s_52_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name acc_load_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_63 \
    op interface \
    ports { acc_load_63 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name acc_load_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_62 \
    op interface \
    ports { acc_load_62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name acc_load_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_61 \
    op interface \
    ports { acc_load_61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name acc_load_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_60 \
    op interface \
    ports { acc_load_60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name acc_load_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_59 \
    op interface \
    ports { acc_load_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name acc_load_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_58 \
    op interface \
    ports { acc_load_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name acc_load_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_57 \
    op interface \
    ports { acc_load_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name acc_load_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_56 \
    op interface \
    ports { acc_load_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name acc_load_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_55 \
    op interface \
    ports { acc_load_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name acc_load_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_54 \
    op interface \
    ports { acc_load_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name acc_load_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_53 \
    op interface \
    ports { acc_load_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name acc_load_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_52 \
    op interface \
    ports { acc_load_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name acc_load_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_51 \
    op interface \
    ports { acc_load_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name acc_load_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_50 \
    op interface \
    ports { acc_load_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name acc_load_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_49 \
    op interface \
    ports { acc_load_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name acc_load_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_48 \
    op interface \
    ports { acc_load_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name acc_load_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_47 \
    op interface \
    ports { acc_load_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name acc_load_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_46 \
    op interface \
    ports { acc_load_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name acc_load_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_45 \
    op interface \
    ports { acc_load_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name acc_load_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_44 \
    op interface \
    ports { acc_load_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name acc_load_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_43 \
    op interface \
    ports { acc_load_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name acc_load_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_42 \
    op interface \
    ports { acc_load_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name acc_load_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_41 \
    op interface \
    ports { acc_load_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name acc_load_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_40 \
    op interface \
    ports { acc_load_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name acc_load_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_39 \
    op interface \
    ports { acc_load_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name acc_load_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_38 \
    op interface \
    ports { acc_load_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name acc_load_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_37 \
    op interface \
    ports { acc_load_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name acc_load_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_36 \
    op interface \
    ports { acc_load_36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name acc_load_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_35 \
    op interface \
    ports { acc_load_35 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name acc_load_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_34 \
    op interface \
    ports { acc_load_34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name acc_load_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_33 \
    op interface \
    ports { acc_load_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name acc_load_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_32 \
    op interface \
    ports { acc_load_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name acc_load_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_31 \
    op interface \
    ports { acc_load_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name acc_load_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_30 \
    op interface \
    ports { acc_load_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name acc_load_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_29 \
    op interface \
    ports { acc_load_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name acc_load_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_28 \
    op interface \
    ports { acc_load_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name acc_load_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_27 \
    op interface \
    ports { acc_load_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name acc_load_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_26 \
    op interface \
    ports { acc_load_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name acc_load_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_25 \
    op interface \
    ports { acc_load_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name acc_load_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_24 \
    op interface \
    ports { acc_load_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name acc_load_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_23 \
    op interface \
    ports { acc_load_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name acc_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_22 \
    op interface \
    ports { acc_load_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name acc_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_21 \
    op interface \
    ports { acc_load_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name acc_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_20 \
    op interface \
    ports { acc_load_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name acc_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_19 \
    op interface \
    ports { acc_load_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name acc_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_18 \
    op interface \
    ports { acc_load_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name acc_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_17 \
    op interface \
    ports { acc_load_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name acc_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_16 \
    op interface \
    ports { acc_load_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name acc_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_15 \
    op interface \
    ports { acc_load_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name acc_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_14 \
    op interface \
    ports { acc_load_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name acc_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_13 \
    op interface \
    ports { acc_load_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name acc_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_12 \
    op interface \
    ports { acc_load_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name acc_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_11 \
    op interface \
    ports { acc_load_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name acc_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_10 \
    op interface \
    ports { acc_load_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name acc_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_9 \
    op interface \
    ports { acc_load_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name acc_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_8 \
    op interface \
    ports { acc_load_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name acc_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_7 \
    op interface \
    ports { acc_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name acc_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_6 \
    op interface \
    ports { acc_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name acc_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_5 \
    op interface \
    ports { acc_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name acc_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_4 \
    op interface \
    ports { acc_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name acc_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_3 \
    op interface \
    ports { acc_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name acc_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_2 \
    op interface \
    ports { acc_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name acc_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load_1 \
    op interface \
    ports { acc_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name acc_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_load \
    op interface \
    ports { acc_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name row_start \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_start \
    op interface \
    ports { row_start { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name gmem3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem3 \
    op interface \
    ports { m_axi_gmem3_0_AWVALID { O 1 bit } m_axi_gmem3_0_AWREADY { I 1 bit } m_axi_gmem3_0_AWADDR { O 64 vector } m_axi_gmem3_0_AWID { O 1 vector } m_axi_gmem3_0_AWLEN { O 32 vector } m_axi_gmem3_0_AWSIZE { O 3 vector } m_axi_gmem3_0_AWBURST { O 2 vector } m_axi_gmem3_0_AWLOCK { O 2 vector } m_axi_gmem3_0_AWCACHE { O 4 vector } m_axi_gmem3_0_AWPROT { O 3 vector } m_axi_gmem3_0_AWQOS { O 4 vector } m_axi_gmem3_0_AWREGION { O 4 vector } m_axi_gmem3_0_AWUSER { O 1 vector } m_axi_gmem3_0_WVALID { O 1 bit } m_axi_gmem3_0_WREADY { I 1 bit } m_axi_gmem3_0_WDATA { O 16 vector } m_axi_gmem3_0_WSTRB { O 2 vector } m_axi_gmem3_0_WLAST { O 1 bit } m_axi_gmem3_0_WID { O 1 vector } m_axi_gmem3_0_WUSER { O 1 vector } m_axi_gmem3_0_ARVALID { O 1 bit } m_axi_gmem3_0_ARREADY { I 1 bit } m_axi_gmem3_0_ARADDR { O 64 vector } m_axi_gmem3_0_ARID { O 1 vector } m_axi_gmem3_0_ARLEN { O 32 vector } m_axi_gmem3_0_ARSIZE { O 3 vector } m_axi_gmem3_0_ARBURST { O 2 vector } m_axi_gmem3_0_ARLOCK { O 2 vector } m_axi_gmem3_0_ARCACHE { O 4 vector } m_axi_gmem3_0_ARPROT { O 3 vector } m_axi_gmem3_0_ARQOS { O 4 vector } m_axi_gmem3_0_ARREGION { O 4 vector } m_axi_gmem3_0_ARUSER { O 1 vector } m_axi_gmem3_0_RVALID { I 1 bit } m_axi_gmem3_0_RREADY { O 1 bit } m_axi_gmem3_0_RDATA { I 16 vector } m_axi_gmem3_0_RLAST { I 1 bit } m_axi_gmem3_0_RID { I 1 vector } m_axi_gmem3_0_RFIFONUM { I 10 vector } m_axi_gmem3_0_RUSER { I 1 vector } m_axi_gmem3_0_RRESP { I 2 vector } m_axi_gmem3_0_BVALID { I 1 bit } m_axi_gmem3_0_BREADY { O 1 bit } m_axi_gmem3_0_BRESP { I 2 vector } m_axi_gmem3_0_BID { I 1 vector } m_axi_gmem3_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name gmem2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem2 \
    op interface \
    ports { m_axi_gmem2_0_AWVALID { O 1 bit } m_axi_gmem2_0_AWREADY { I 1 bit } m_axi_gmem2_0_AWADDR { O 64 vector } m_axi_gmem2_0_AWID { O 1 vector } m_axi_gmem2_0_AWLEN { O 32 vector } m_axi_gmem2_0_AWSIZE { O 3 vector } m_axi_gmem2_0_AWBURST { O 2 vector } m_axi_gmem2_0_AWLOCK { O 2 vector } m_axi_gmem2_0_AWCACHE { O 4 vector } m_axi_gmem2_0_AWPROT { O 3 vector } m_axi_gmem2_0_AWQOS { O 4 vector } m_axi_gmem2_0_AWREGION { O 4 vector } m_axi_gmem2_0_AWUSER { O 1 vector } m_axi_gmem2_0_WVALID { O 1 bit } m_axi_gmem2_0_WREADY { I 1 bit } m_axi_gmem2_0_WDATA { O 16 vector } m_axi_gmem2_0_WSTRB { O 2 vector } m_axi_gmem2_0_WLAST { O 1 bit } m_axi_gmem2_0_WID { O 1 vector } m_axi_gmem2_0_WUSER { O 1 vector } m_axi_gmem2_0_ARVALID { O 1 bit } m_axi_gmem2_0_ARREADY { I 1 bit } m_axi_gmem2_0_ARADDR { O 64 vector } m_axi_gmem2_0_ARID { O 1 vector } m_axi_gmem2_0_ARLEN { O 32 vector } m_axi_gmem2_0_ARSIZE { O 3 vector } m_axi_gmem2_0_ARBURST { O 2 vector } m_axi_gmem2_0_ARLOCK { O 2 vector } m_axi_gmem2_0_ARCACHE { O 4 vector } m_axi_gmem2_0_ARPROT { O 3 vector } m_axi_gmem2_0_ARQOS { O 4 vector } m_axi_gmem2_0_ARREGION { O 4 vector } m_axi_gmem2_0_ARUSER { O 1 vector } m_axi_gmem2_0_RVALID { I 1 bit } m_axi_gmem2_0_RREADY { O 1 bit } m_axi_gmem2_0_RDATA { I 16 vector } m_axi_gmem2_0_RLAST { I 1 bit } m_axi_gmem2_0_RID { I 1 vector } m_axi_gmem2_0_RFIFONUM { I 10 vector } m_axi_gmem2_0_RUSER { I 1 vector } m_axi_gmem2_0_RRESP { I 2 vector } m_axi_gmem2_0_BVALID { I 1 bit } m_axi_gmem2_0_BREADY { O 1 bit } m_axi_gmem2_0_BRESP { I 2 vector } m_axi_gmem2_0_BID { I 1 vector } m_axi_gmem2_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name gmem1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem1 \
    op interface \
    ports { m_axi_gmem1_0_AWVALID { O 1 bit } m_axi_gmem1_0_AWREADY { I 1 bit } m_axi_gmem1_0_AWADDR { O 64 vector } m_axi_gmem1_0_AWID { O 1 vector } m_axi_gmem1_0_AWLEN { O 32 vector } m_axi_gmem1_0_AWSIZE { O 3 vector } m_axi_gmem1_0_AWBURST { O 2 vector } m_axi_gmem1_0_AWLOCK { O 2 vector } m_axi_gmem1_0_AWCACHE { O 4 vector } m_axi_gmem1_0_AWPROT { O 3 vector } m_axi_gmem1_0_AWQOS { O 4 vector } m_axi_gmem1_0_AWREGION { O 4 vector } m_axi_gmem1_0_AWUSER { O 1 vector } m_axi_gmem1_0_WVALID { O 1 bit } m_axi_gmem1_0_WREADY { I 1 bit } m_axi_gmem1_0_WDATA { O 32 vector } m_axi_gmem1_0_WSTRB { O 4 vector } m_axi_gmem1_0_WLAST { O 1 bit } m_axi_gmem1_0_WID { O 1 vector } m_axi_gmem1_0_WUSER { O 1 vector } m_axi_gmem1_0_ARVALID { O 1 bit } m_axi_gmem1_0_ARREADY { I 1 bit } m_axi_gmem1_0_ARADDR { O 64 vector } m_axi_gmem1_0_ARID { O 1 vector } m_axi_gmem1_0_ARLEN { O 32 vector } m_axi_gmem1_0_ARSIZE { O 3 vector } m_axi_gmem1_0_ARBURST { O 2 vector } m_axi_gmem1_0_ARLOCK { O 2 vector } m_axi_gmem1_0_ARCACHE { O 4 vector } m_axi_gmem1_0_ARPROT { O 3 vector } m_axi_gmem1_0_ARQOS { O 4 vector } m_axi_gmem1_0_ARREGION { O 4 vector } m_axi_gmem1_0_ARUSER { O 1 vector } m_axi_gmem1_0_RVALID { I 1 bit } m_axi_gmem1_0_RREADY { O 1 bit } m_axi_gmem1_0_RDATA { I 32 vector } m_axi_gmem1_0_RLAST { I 1 bit } m_axi_gmem1_0_RID { I 1 vector } m_axi_gmem1_0_RFIFONUM { I 9 vector } m_axi_gmem1_0_RUSER { I 1 vector } m_axi_gmem1_0_RRESP { I 2 vector } m_axi_gmem1_0_BVALID { I 1 bit } m_axi_gmem1_0_BREADY { O 1 bit } m_axi_gmem1_0_BRESP { I 2 vector } m_axi_gmem1_0_BID { I 1 vector } m_axi_gmem1_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name row_end \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_end \
    op interface \
    ports { row_end { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name sext_ln31_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln31_2 \
    op interface \
    ports { sext_ln31_2 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name sext_ln31_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln31_3 \
    op interface \
    ports { sext_ln31_3 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name H_temp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_H_temp \
    op interface \
    ports { H_temp { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name conv_i_i13_6372_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_6372_out \
    op interface \
    ports { conv_i_i13_6372_out { O 32 vector } conv_i_i13_6372_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name conv_i_i13_6271_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_6271_out \
    op interface \
    ports { conv_i_i13_6271_out { O 32 vector } conv_i_i13_6271_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name conv_i_i13_6170_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_6170_out \
    op interface \
    ports { conv_i_i13_6170_out { O 32 vector } conv_i_i13_6170_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name conv_i_i13_6069_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_6069_out \
    op interface \
    ports { conv_i_i13_6069_out { O 32 vector } conv_i_i13_6069_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name conv_i_i13_5968_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_5968_out \
    op interface \
    ports { conv_i_i13_5968_out { O 32 vector } conv_i_i13_5968_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name conv_i_i13_5867_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_5867_out \
    op interface \
    ports { conv_i_i13_5867_out { O 32 vector } conv_i_i13_5867_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name conv_i_i13_5766_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_5766_out \
    op interface \
    ports { conv_i_i13_5766_out { O 32 vector } conv_i_i13_5766_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name conv_i_i13_5665_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_5665_out \
    op interface \
    ports { conv_i_i13_5665_out { O 32 vector } conv_i_i13_5665_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name conv_i_i13_5564_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_5564_out \
    op interface \
    ports { conv_i_i13_5564_out { O 32 vector } conv_i_i13_5564_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name conv_i_i13_5463_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_5463_out \
    op interface \
    ports { conv_i_i13_5463_out { O 32 vector } conv_i_i13_5463_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name conv_i_i13_5362_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_5362_out \
    op interface \
    ports { conv_i_i13_5362_out { O 32 vector } conv_i_i13_5362_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name conv_i_i13_5261_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_5261_out \
    op interface \
    ports { conv_i_i13_5261_out { O 32 vector } conv_i_i13_5261_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name conv_i_i13_5160_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_5160_out \
    op interface \
    ports { conv_i_i13_5160_out { O 32 vector } conv_i_i13_5160_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name conv_i_i13_5059_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_5059_out \
    op interface \
    ports { conv_i_i13_5059_out { O 32 vector } conv_i_i13_5059_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name conv_i_i13_4958_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_4958_out \
    op interface \
    ports { conv_i_i13_4958_out { O 32 vector } conv_i_i13_4958_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name conv_i_i13_4857_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_4857_out \
    op interface \
    ports { conv_i_i13_4857_out { O 32 vector } conv_i_i13_4857_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name conv_i_i13_4756_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_4756_out \
    op interface \
    ports { conv_i_i13_4756_out { O 32 vector } conv_i_i13_4756_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name conv_i_i13_4655_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_4655_out \
    op interface \
    ports { conv_i_i13_4655_out { O 32 vector } conv_i_i13_4655_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name conv_i_i13_4554_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_4554_out \
    op interface \
    ports { conv_i_i13_4554_out { O 32 vector } conv_i_i13_4554_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name conv_i_i13_4453_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_4453_out \
    op interface \
    ports { conv_i_i13_4453_out { O 32 vector } conv_i_i13_4453_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name conv_i_i13_4352_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_4352_out \
    op interface \
    ports { conv_i_i13_4352_out { O 32 vector } conv_i_i13_4352_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name conv_i_i13_4251_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_4251_out \
    op interface \
    ports { conv_i_i13_4251_out { O 32 vector } conv_i_i13_4251_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name conv_i_i13_4150_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_4150_out \
    op interface \
    ports { conv_i_i13_4150_out { O 32 vector } conv_i_i13_4150_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name conv_i_i13_4049_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_4049_out \
    op interface \
    ports { conv_i_i13_4049_out { O 32 vector } conv_i_i13_4049_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name conv_i_i13_3948_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_3948_out \
    op interface \
    ports { conv_i_i13_3948_out { O 32 vector } conv_i_i13_3948_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name conv_i_i13_3847_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_3847_out \
    op interface \
    ports { conv_i_i13_3847_out { O 32 vector } conv_i_i13_3847_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name conv_i_i13_3746_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_3746_out \
    op interface \
    ports { conv_i_i13_3746_out { O 32 vector } conv_i_i13_3746_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name conv_i_i13_3645_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_3645_out \
    op interface \
    ports { conv_i_i13_3645_out { O 32 vector } conv_i_i13_3645_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name conv_i_i13_3544_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_3544_out \
    op interface \
    ports { conv_i_i13_3544_out { O 32 vector } conv_i_i13_3544_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name conv_i_i13_3443_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_3443_out \
    op interface \
    ports { conv_i_i13_3443_out { O 32 vector } conv_i_i13_3443_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name conv_i_i13_3342_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_3342_out \
    op interface \
    ports { conv_i_i13_3342_out { O 32 vector } conv_i_i13_3342_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name conv_i_i13_3241_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_3241_out \
    op interface \
    ports { conv_i_i13_3241_out { O 32 vector } conv_i_i13_3241_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name conv_i_i13_3140_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_3140_out \
    op interface \
    ports { conv_i_i13_3140_out { O 32 vector } conv_i_i13_3140_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name conv_i_i13_3039_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_3039_out \
    op interface \
    ports { conv_i_i13_3039_out { O 32 vector } conv_i_i13_3039_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name conv_i_i13_2938_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_2938_out \
    op interface \
    ports { conv_i_i13_2938_out { O 32 vector } conv_i_i13_2938_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name conv_i_i13_2837_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_2837_out \
    op interface \
    ports { conv_i_i13_2837_out { O 32 vector } conv_i_i13_2837_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name conv_i_i13_2736_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_2736_out \
    op interface \
    ports { conv_i_i13_2736_out { O 32 vector } conv_i_i13_2736_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name conv_i_i13_2635_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_2635_out \
    op interface \
    ports { conv_i_i13_2635_out { O 32 vector } conv_i_i13_2635_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name conv_i_i13_2534_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_2534_out \
    op interface \
    ports { conv_i_i13_2534_out { O 32 vector } conv_i_i13_2534_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name conv_i_i13_2433_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_2433_out \
    op interface \
    ports { conv_i_i13_2433_out { O 32 vector } conv_i_i13_2433_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name conv_i_i13_2332_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_2332_out \
    op interface \
    ports { conv_i_i13_2332_out { O 32 vector } conv_i_i13_2332_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name conv_i_i13_2231_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_2231_out \
    op interface \
    ports { conv_i_i13_2231_out { O 32 vector } conv_i_i13_2231_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name conv_i_i13_2130_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_2130_out \
    op interface \
    ports { conv_i_i13_2130_out { O 32 vector } conv_i_i13_2130_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name conv_i_i13_2029_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_2029_out \
    op interface \
    ports { conv_i_i13_2029_out { O 32 vector } conv_i_i13_2029_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name conv_i_i13_1928_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_1928_out \
    op interface \
    ports { conv_i_i13_1928_out { O 32 vector } conv_i_i13_1928_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name conv_i_i13_1827_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_1827_out \
    op interface \
    ports { conv_i_i13_1827_out { O 32 vector } conv_i_i13_1827_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name conv_i_i13_1726_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_1726_out \
    op interface \
    ports { conv_i_i13_1726_out { O 32 vector } conv_i_i13_1726_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name conv_i_i13_1625_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_1625_out \
    op interface \
    ports { conv_i_i13_1625_out { O 32 vector } conv_i_i13_1625_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name conv_i_i13_1524_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_1524_out \
    op interface \
    ports { conv_i_i13_1524_out { O 32 vector } conv_i_i13_1524_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name conv_i_i13_1423_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_1423_out \
    op interface \
    ports { conv_i_i13_1423_out { O 32 vector } conv_i_i13_1423_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name conv_i_i13_1322_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_1322_out \
    op interface \
    ports { conv_i_i13_1322_out { O 32 vector } conv_i_i13_1322_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name conv_i_i13_1221_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_1221_out \
    op interface \
    ports { conv_i_i13_1221_out { O 32 vector } conv_i_i13_1221_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name conv_i_i13_1120_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_1120_out \
    op interface \
    ports { conv_i_i13_1120_out { O 32 vector } conv_i_i13_1120_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name conv_i_i13_1019_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_1019_out \
    op interface \
    ports { conv_i_i13_1019_out { O 32 vector } conv_i_i13_1019_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name conv_i_i13_918_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_918_out \
    op interface \
    ports { conv_i_i13_918_out { O 32 vector } conv_i_i13_918_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name conv_i_i13_817_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_817_out \
    op interface \
    ports { conv_i_i13_817_out { O 32 vector } conv_i_i13_817_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name conv_i_i13_716_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_716_out \
    op interface \
    ports { conv_i_i13_716_out { O 32 vector } conv_i_i13_716_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name conv_i_i13_615_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_615_out \
    op interface \
    ports { conv_i_i13_615_out { O 32 vector } conv_i_i13_615_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name conv_i_i13_514_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_514_out \
    op interface \
    ports { conv_i_i13_514_out { O 32 vector } conv_i_i13_514_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name conv_i_i13_413_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_413_out \
    op interface \
    ports { conv_i_i13_413_out { O 32 vector } conv_i_i13_413_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name conv_i_i13_312_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_312_out \
    op interface \
    ports { conv_i_i13_312_out { O 32 vector } conv_i_i13_312_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name conv_i_i13_211_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_211_out \
    op interface \
    ports { conv_i_i13_211_out { O 32 vector } conv_i_i13_211_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name conv_i_i13_110_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i13_110_out \
    op interface \
    ports { conv_i_i13_110_out { O 32 vector } conv_i_i13_110_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name conv_i_i135_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i135_out \
    op interface \
    ports { conv_i_i135_out { O 32 vector } conv_i_i135_out_ap_vld { O 1 bit } } \
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
set InstName naive_spmm_stage_flow_control_loop_pipe_sequential_init_U
set CompName naive_spmm_stage_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix naive_spmm_stage_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


