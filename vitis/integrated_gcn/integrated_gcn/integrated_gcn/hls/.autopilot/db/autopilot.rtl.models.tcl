set SynModuleInfo {
  {SRCNAME gemm_read_X MODELNAME gemm_read_X RTLNAME integrated_gcn_gemm_read_X
    SUBMODULES {
      {MODELNAME integrated_gcn_mul_5ns_14ns_17_1_1 RTLNAME integrated_gcn_mul_5ns_14ns_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME integrated_gcn_mac_muladd_7ns_7ns_17s_17_4_1 RTLNAME integrated_gcn_mac_muladd_7ns_7ns_17s_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME integrated_gcn_flow_control_loop_pipe RTLNAME integrated_gcn_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME integrated_gcn_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME gemm_read_W MODELNAME gemm_read_W RTLNAME integrated_gcn_gemm_read_W}
  {SRCNAME gemm_compute_Pipeline_COMP_INIT MODELNAME gemm_compute_Pipeline_COMP_INIT RTLNAME integrated_gcn_gemm_compute_Pipeline_COMP_INIT
    SUBMODULES {
      {MODELNAME integrated_gcn_flow_control_loop_pipe_sequential_init RTLNAME integrated_gcn_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME integrated_gcn_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME gemm_compute_Pipeline_COMP_LOAD_XW MODELNAME gemm_compute_Pipeline_COMP_LOAD_XW RTLNAME integrated_gcn_gemm_compute_Pipeline_COMP_LOAD_XW}
  {SRCNAME gemm_compute_Pipeline_COMP_I MODELNAME gemm_compute_Pipeline_COMP_I RTLNAME integrated_gcn_gemm_compute_Pipeline_COMP_I
    SUBMODULES {
      {MODELNAME integrated_gcn_sparsemux_33_6_16_1_1 RTLNAME integrated_gcn_sparsemux_33_6_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME integrated_gcn_mac_muladd_16s_16s_32s_32_4_1 RTLNAME integrated_gcn_mac_muladd_16s_16s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME gemm_compute_Pipeline_COMP_EMIT_VITIS_LOOP_146_4 MODELNAME gemm_compute_Pipeline_COMP_EMIT_VITIS_LOOP_146_4 RTLNAME integrated_gcn_gemm_compute_Pipeline_COMP_EMIT_VITIS_LOOP_146_4
    SUBMODULES {
      {MODELNAME integrated_gcn_sparsemux_9_2_32_1_1 RTLNAME integrated_gcn_sparsemux_9_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME gemm_compute MODELNAME gemm_compute RTLNAME integrated_gcn_gemm_compute
    SUBMODULES {
      {MODELNAME integrated_gcn_gemm_compute_XW_block_RAM_AUTO_1R1W RTLNAME integrated_gcn_gemm_compute_XW_block_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME gemm_write MODELNAME gemm_write RTLNAME integrated_gcn_gemm_write}
  {SRCNAME gemm_stage MODELNAME gemm_stage RTLNAME integrated_gcn_gemm_stage
    SUBMODULES {
      {MODELNAME integrated_gcn_fifo_w512_d16_A RTLNAME integrated_gcn_fifo_w512_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME X_stream_U}
      {MODELNAME integrated_gcn_fifo_w512_d16_A RTLNAME integrated_gcn_fifo_w512_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME W_stream_U}
      {MODELNAME integrated_gcn_fifo_w512_d16_A RTLNAME integrated_gcn_fifo_w512_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME XW_stream_U}
      {MODELNAME integrated_gcn_start_for_gemm_compute_U0 RTLNAME integrated_gcn_start_for_gemm_compute_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_gemm_compute_U0_U}
      {MODELNAME integrated_gcn_start_for_gemm_write_U0 RTLNAME integrated_gcn_start_for_gemm_write_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_gemm_write_U0_U}
    }
  }
  {SRCNAME spmm_load_csr_Pipeline_LOAD_ROWS MODELNAME spmm_load_csr_Pipeline_LOAD_ROWS RTLNAME integrated_gcn_spmm_load_csr_Pipeline_LOAD_ROWS}
  {SRCNAME spmm_load_csr_Pipeline_LOAD_NNZ MODELNAME spmm_load_csr_Pipeline_LOAD_NNZ RTLNAME integrated_gcn_spmm_load_csr_Pipeline_LOAD_NNZ}
  {SRCNAME spmm_load_csr MODELNAME spmm_load_csr RTLNAME integrated_gcn_spmm_load_csr}
  {SRCNAME spmm_compute_Pipeline_SPMM_INIT MODELNAME spmm_compute_Pipeline_SPMM_INIT RTLNAME integrated_gcn_spmm_compute_Pipeline_SPMM_INIT}
  {SRCNAME spmm_compute_Pipeline_SPMM_LOAD_H MODELNAME spmm_compute_Pipeline_SPMM_LOAD_H RTLNAME integrated_gcn_spmm_compute_Pipeline_SPMM_LOAD_H}
  {SRCNAME spmm_compute_Pipeline_SPMM_MAC MODELNAME spmm_compute_Pipeline_SPMM_MAC RTLNAME integrated_gcn_spmm_compute_Pipeline_SPMM_MAC
    SUBMODULES {
      {MODELNAME integrated_gcn_mul_26s_26s_52_1_1 RTLNAME integrated_gcn_mul_26s_26s_52_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME spmm_compute_Pipeline_SPMM_WRITE MODELNAME spmm_compute_Pipeline_SPMM_WRITE RTLNAME integrated_gcn_spmm_compute_Pipeline_SPMM_WRITE
    SUBMODULES {
      {MODELNAME integrated_gcn_sparsemux_65_5_32_1_1 RTLNAME integrated_gcn_sparsemux_65_5_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME spmm_compute MODELNAME spmm_compute RTLNAME integrated_gcn_spmm_compute
    SUBMODULES {
      {MODELNAME integrated_gcn_spmm_compute_acc_RAM_AUTO_1R1W RTLNAME integrated_gcn_spmm_compute_acc_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME integrated_gcn_spmm_compute_h_buf_RAM_AUTO_1R1W RTLNAME integrated_gcn_spmm_compute_h_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME spmm_store MODELNAME spmm_store RTLNAME integrated_gcn_spmm_store}
  {SRCNAME spmm_stage MODELNAME spmm_stage RTLNAME integrated_gcn_spmm_stage
    SUBMODULES {
      {MODELNAME integrated_gcn_fifo_w32_d16_S RTLNAME integrated_gcn_fifo_w32_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME row_fifo_U}
      {MODELNAME integrated_gcn_fifo_w32_d256_A RTLNAME integrated_gcn_fifo_w32_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME col_fifo_U}
      {MODELNAME integrated_gcn_fifo_w16_d256_A RTLNAME integrated_gcn_fifo_w16_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME val_fifo_U}
      {MODELNAME integrated_gcn_fifo_w16_d32_S RTLNAME integrated_gcn_fifo_w16_d32_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME result_fifo_U}
      {MODELNAME integrated_gcn_start_for_spmm_compute_U0 RTLNAME integrated_gcn_start_for_spmm_compute_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_spmm_compute_U0_U}
      {MODELNAME integrated_gcn_start_for_spmm_store_U0 RTLNAME integrated_gcn_start_for_spmm_store_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_spmm_store_U0_U}
    }
  }
  {SRCNAME integrated_gcn MODELNAME integrated_gcn RTLNAME integrated_gcn IS_TOP 1
    SUBMODULES {
      {MODELNAME integrated_gcn_gmem0_m_axi RTLNAME integrated_gcn_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_gmem1_m_axi RTLNAME integrated_gcn_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_gmem2_m_axi RTLNAME integrated_gcn_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_gmem3_m_axi RTLNAME integrated_gcn_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_gmem4_m_axi RTLNAME integrated_gcn_gmem4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_gmem5_m_axi RTLNAME integrated_gcn_gmem5_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_gmem6_m_axi RTLNAME integrated_gcn_gmem6_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_control_s_axi RTLNAME integrated_gcn_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
