set SynModuleInfo {
  {SRCNAME gemm_read_X MODELNAME gemm_read_X RTLNAME integrated_gcn_approx_gemm_read_X
    SUBMODULES {
      {MODELNAME integrated_gcn_approx_mac_muladd_11ns_6ns_6ns_16_4_1 RTLNAME integrated_gcn_approx_mac_muladd_11ns_6ns_6ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME integrated_gcn_approx_flow_control_loop_pipe RTLNAME integrated_gcn_approx_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME integrated_gcn_approx_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME gemm_read_W MODELNAME gemm_read_W RTLNAME integrated_gcn_approx_gemm_read_W}
  {SRCNAME gemm_compute_Pipeline_COMP_INIT MODELNAME gemm_compute_Pipeline_COMP_INIT RTLNAME integrated_gcn_approx_gemm_compute_Pipeline_COMP_INIT
    SUBMODULES {
      {MODELNAME integrated_gcn_approx_flow_control_loop_pipe_sequential_init RTLNAME integrated_gcn_approx_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME integrated_gcn_approx_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mul8s_1KV8 MODELNAME mul8s_1KV8 RTLNAME integrated_gcn_approx_mul8s_1KV8}
  {SRCNAME gemm_compute_Pipeline_COMP_KB_COMP_K_COMP_I MODELNAME gemm_compute_Pipeline_COMP_KB_COMP_K_COMP_I RTLNAME integrated_gcn_approx_gemm_compute_Pipeline_COMP_KB_COMP_K_COMP_I
    SUBMODULES {
      {MODELNAME integrated_gcn_approx_sparsemux_33_6_8_1_1 RTLNAME integrated_gcn_approx_sparsemux_33_6_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME gemm_compute_Pipeline_COMP_EMIT MODELNAME gemm_compute_Pipeline_COMP_EMIT RTLNAME integrated_gcn_approx_gemm_compute_Pipeline_COMP_EMIT
    SUBMODULES {
      {MODELNAME integrated_gcn_approx_sparsemux_9_2_16_1_1 RTLNAME integrated_gcn_approx_sparsemux_9_2_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME gemm_compute MODELNAME gemm_compute RTLNAME integrated_gcn_approx_gemm_compute
    SUBMODULES {
      {MODELNAME integrated_gcn_approx_gemm_compute_XW_block_RAM_AUTO_1R1W RTLNAME integrated_gcn_approx_gemm_compute_XW_block_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME gemm_write MODELNAME gemm_write RTLNAME integrated_gcn_approx_gemm_write}
  {SRCNAME gemm_stage MODELNAME gemm_stage RTLNAME integrated_gcn_approx_gemm_stage
    SUBMODULES {
      {MODELNAME integrated_gcn_approx_fifo_w512_d16_A RTLNAME integrated_gcn_approx_fifo_w512_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME X_stream_U}
      {MODELNAME integrated_gcn_approx_fifo_w512_d16_A RTLNAME integrated_gcn_approx_fifo_w512_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME W_stream_U}
      {MODELNAME integrated_gcn_approx_fifo_w512_d16_A RTLNAME integrated_gcn_approx_fifo_w512_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME XW_stream_U}
      {MODELNAME integrated_gcn_approx_start_for_gemm_compute_U0 RTLNAME integrated_gcn_approx_start_for_gemm_compute_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_gemm_compute_U0_U}
      {MODELNAME integrated_gcn_approx_start_for_gemm_write_U0 RTLNAME integrated_gcn_approx_start_for_gemm_write_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_gemm_write_U0_U}
    }
  }
  {SRCNAME spmm_load_csr_Pipeline_LOAD_ROWS MODELNAME spmm_load_csr_Pipeline_LOAD_ROWS RTLNAME integrated_gcn_approx_spmm_load_csr_Pipeline_LOAD_ROWS}
  {SRCNAME spmm_load_csr_Pipeline_LOAD_NNZ MODELNAME spmm_load_csr_Pipeline_LOAD_NNZ RTLNAME integrated_gcn_approx_spmm_load_csr_Pipeline_LOAD_NNZ}
  {SRCNAME spmm_load_csr MODELNAME spmm_load_csr RTLNAME integrated_gcn_approx_spmm_load_csr}
  {SRCNAME spmm_compute_Pipeline_SPMM_INIT MODELNAME spmm_compute_Pipeline_SPMM_INIT RTLNAME integrated_gcn_approx_spmm_compute_Pipeline_SPMM_INIT}
  {SRCNAME spmm_compute_Pipeline_SPMM_MAC MODELNAME spmm_compute_Pipeline_SPMM_MAC RTLNAME integrated_gcn_approx_spmm_compute_Pipeline_SPMM_MAC}
  {SRCNAME spmm_compute_Pipeline_SPMM_WRITE MODELNAME spmm_compute_Pipeline_SPMM_WRITE RTLNAME integrated_gcn_approx_spmm_compute_Pipeline_SPMM_WRITE
    SUBMODULES {
      {MODELNAME integrated_gcn_approx_sparsemux_65_5_16_1_1 RTLNAME integrated_gcn_approx_sparsemux_65_5_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME spmm_compute MODELNAME spmm_compute RTLNAME integrated_gcn_approx_spmm_compute
    SUBMODULES {
      {MODELNAME integrated_gcn_approx_spmm_compute_acc_RAM_AUTO_1R1W RTLNAME integrated_gcn_approx_spmm_compute_acc_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME integrated_gcn_approx_spmm_compute_h_buf_RAM_AUTO_1R1W RTLNAME integrated_gcn_approx_spmm_compute_h_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME spmm_store MODELNAME spmm_store RTLNAME integrated_gcn_approx_spmm_store}
  {SRCNAME spmm_stage MODELNAME spmm_stage RTLNAME integrated_gcn_approx_spmm_stage
    SUBMODULES {
      {MODELNAME integrated_gcn_approx_fifo_w32_d16_S RTLNAME integrated_gcn_approx_fifo_w32_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME row_fifo_U}
      {MODELNAME integrated_gcn_approx_fifo_w32_d256_A RTLNAME integrated_gcn_approx_fifo_w32_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME col_fifo_U}
      {MODELNAME integrated_gcn_approx_fifo_w8_d256_A RTLNAME integrated_gcn_approx_fifo_w8_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME val_fifo_U}
      {MODELNAME integrated_gcn_approx_fifo_w8_d32_S RTLNAME integrated_gcn_approx_fifo_w8_d32_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME result_fifo_U}
      {MODELNAME integrated_gcn_approx_start_for_spmm_compute_U0 RTLNAME integrated_gcn_approx_start_for_spmm_compute_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_spmm_compute_U0_U}
      {MODELNAME integrated_gcn_approx_start_for_spmm_store_U0 RTLNAME integrated_gcn_approx_start_for_spmm_store_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_spmm_store_U0_U}
    }
  }
  {SRCNAME integrated_gcn_approx MODELNAME integrated_gcn_approx RTLNAME integrated_gcn_approx IS_TOP 1
    SUBMODULES {
      {MODELNAME integrated_gcn_approx_gmem0_m_axi RTLNAME integrated_gcn_approx_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_approx_gmem1_m_axi RTLNAME integrated_gcn_approx_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_approx_gmem2_m_axi RTLNAME integrated_gcn_approx_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_approx_gmem3_m_axi RTLNAME integrated_gcn_approx_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_approx_gmem4_m_axi RTLNAME integrated_gcn_approx_gmem4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_approx_gmem5_m_axi RTLNAME integrated_gcn_approx_gmem5_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_approx_gmem6_m_axi RTLNAME integrated_gcn_approx_gmem6_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME integrated_gcn_approx_control_s_axi RTLNAME integrated_gcn_approx_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
