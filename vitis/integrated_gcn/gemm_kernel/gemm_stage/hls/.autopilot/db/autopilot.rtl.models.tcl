set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME gemm_stage_entry_proc}
  {SRCNAME gemm_read_X MODELNAME gemm_read_X RTLNAME gemm_stage_gemm_read_X
    SUBMODULES {
      {MODELNAME gemm_stage_mul_5ns_14ns_17_1_1 RTLNAME gemm_stage_mul_5ns_14ns_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME gemm_stage_mac_muladd_7ns_7ns_17s_17_1_1 RTLNAME gemm_stage_mac_muladd_7ns_7ns_17s_17_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME gemm_stage_flow_control_loop_delay_pipe RTLNAME gemm_stage_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gemm_stage_flow_control_loop_delay_pipe_U}
    }
  }
  {SRCNAME gemm_read_W MODELNAME gemm_read_W RTLNAME gemm_stage_gemm_read_W
    SUBMODULES {
      {MODELNAME gemm_stage_flow_control_loop_pipe RTLNAME gemm_stage_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gemm_stage_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME gemm_compute_Pipeline_COMP_INIT MODELNAME gemm_compute_Pipeline_COMP_INIT RTLNAME gemm_stage_gemm_compute_Pipeline_COMP_INIT
    SUBMODULES {
      {MODELNAME gemm_stage_flow_control_loop_pipe_sequential_init RTLNAME gemm_stage_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gemm_stage_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME gemm_compute_Pipeline_COMP_LOAD_XW MODELNAME gemm_compute_Pipeline_COMP_LOAD_XW RTLNAME gemm_stage_gemm_compute_Pipeline_COMP_LOAD_XW}
  {SRCNAME gemm_compute_Pipeline_COMP_I MODELNAME gemm_compute_Pipeline_COMP_I RTLNAME gemm_stage_gemm_compute_Pipeline_COMP_I
    SUBMODULES {
      {MODELNAME gemm_stage_sparsemux_33_6_16_1_1 RTLNAME gemm_stage_sparsemux_33_6_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME gemm_stage_mac_muladd_16s_16s_32s_32_4_1 RTLNAME gemm_stage_mac_muladd_16s_16s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME gemm_compute_Pipeline_COMP_EMIT_VITIS_LOOP_119_4 MODELNAME gemm_compute_Pipeline_COMP_EMIT_VITIS_LOOP_119_4 RTLNAME gemm_stage_gemm_compute_Pipeline_COMP_EMIT_VITIS_LOOP_119_4
    SUBMODULES {
      {MODELNAME gemm_stage_sparsemux_9_2_26_1_1 RTLNAME gemm_stage_sparsemux_9_2_26_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME gemm_compute MODELNAME gemm_compute RTLNAME gemm_stage_gemm_compute
    SUBMODULES {
      {MODELNAME gemm_stage_gemm_compute_XW_block_RAM_AUTO_1R1W RTLNAME gemm_stage_gemm_compute_XW_block_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME gemm_write MODELNAME gemm_write RTLNAME gemm_stage_gemm_write}
  {SRCNAME gemm_stage MODELNAME gemm_stage RTLNAME gemm_stage IS_TOP 1
    SUBMODULES {
      {MODELNAME gemm_stage_fifo_w64_d4_S RTLNAME gemm_stage_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME H_temp_c_U}
      {MODELNAME gemm_stage_fifo_w512_d16_A RTLNAME gemm_stage_fifo_w512_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME X_stream_U}
      {MODELNAME gemm_stage_fifo_w512_d16_A RTLNAME gemm_stage_fifo_w512_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME W_stream_U}
      {MODELNAME gemm_stage_fifo_w512_d16_A RTLNAME gemm_stage_fifo_w512_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME XW_stream_U}
      {MODELNAME gemm_stage_start_for_gemm_write_U0 RTLNAME gemm_stage_start_for_gemm_write_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_gemm_write_U0_U}
      {MODELNAME gemm_stage_start_for_gemm_compute_U0 RTLNAME gemm_stage_start_for_gemm_compute_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_gemm_compute_U0_U}
      {MODELNAME gemm_stage_gmem0_m_axi RTLNAME gemm_stage_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gemm_stage_gmem1_m_axi RTLNAME gemm_stage_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gemm_stage_gmem2_m_axi RTLNAME gemm_stage_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gemm_stage_control_s_axi RTLNAME gemm_stage_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
