set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME spmm_stage_entry_proc}
  {SRCNAME spmm_load_csr_Pipeline_LOAD_ROWS MODELNAME spmm_load_csr_Pipeline_LOAD_ROWS RTLNAME spmm_stage_spmm_load_csr_Pipeline_LOAD_ROWS
    SUBMODULES {
      {MODELNAME spmm_stage_flow_control_loop_pipe_sequential_init RTLNAME spmm_stage_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME spmm_stage_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME spmm_load_csr_Pipeline_LOAD_NNZ MODELNAME spmm_load_csr_Pipeline_LOAD_NNZ RTLNAME spmm_stage_spmm_load_csr_Pipeline_LOAD_NNZ}
  {SRCNAME spmm_load_csr MODELNAME spmm_load_csr RTLNAME spmm_stage_spmm_load_csr}
  {SRCNAME spmm_compute_Pipeline_SPMM_INIT MODELNAME spmm_compute_Pipeline_SPMM_INIT RTLNAME spmm_stage_spmm_compute_Pipeline_SPMM_INIT}
  {SRCNAME spmm_compute_Pipeline_SPMM_LOAD_H MODELNAME spmm_compute_Pipeline_SPMM_LOAD_H RTLNAME spmm_stage_spmm_compute_Pipeline_SPMM_LOAD_H}
  {SRCNAME spmm_compute_Pipeline_SPMM_MAC MODELNAME spmm_compute_Pipeline_SPMM_MAC RTLNAME spmm_stage_spmm_compute_Pipeline_SPMM_MAC
    SUBMODULES {
      {MODELNAME spmm_stage_mul_26s_26s_52_1_1 RTLNAME spmm_stage_mul_26s_26s_52_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME spmm_compute_Pipeline_SPMM_WRITE MODELNAME spmm_compute_Pipeline_SPMM_WRITE RTLNAME spmm_stage_spmm_compute_Pipeline_SPMM_WRITE
    SUBMODULES {
      {MODELNAME spmm_stage_sparsemux_65_5_26_1_1 RTLNAME spmm_stage_sparsemux_65_5_26_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME spmm_compute MODELNAME spmm_compute RTLNAME spmm_stage_spmm_compute
    SUBMODULES {
      {MODELNAME spmm_stage_spmm_compute_acc_RAM_AUTO_1R1W RTLNAME spmm_stage_spmm_compute_acc_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME spmm_stage_spmm_compute_h_buf_RAM_AUTO_1R1W RTLNAME spmm_stage_spmm_compute_h_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME spmm_store MODELNAME spmm_store RTLNAME spmm_stage_spmm_store
    SUBMODULES {
      {MODELNAME spmm_stage_flow_control_loop_delay_pipe RTLNAME spmm_stage_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME spmm_stage_flow_control_loop_delay_pipe_U}
    }
  }
  {SRCNAME spmm_stage MODELNAME spmm_stage RTLNAME spmm_stage IS_TOP 1
    SUBMODULES {
      {MODELNAME spmm_stage_fifo_w64_d4_S RTLNAME spmm_stage_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME H_out_c_U}
      {MODELNAME spmm_stage_fifo_w32_d16_S RTLNAME spmm_stage_fifo_w32_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME row_fifo_U}
      {MODELNAME spmm_stage_fifo_w32_d256_A RTLNAME spmm_stage_fifo_w32_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME col_fifo_U}
      {MODELNAME spmm_stage_fifo_w16_d256_A RTLNAME spmm_stage_fifo_w16_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME val_fifo_U}
      {MODELNAME spmm_stage_fifo_w16_d32_S RTLNAME spmm_stage_fifo_w16_d32_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME result_fifo_U}
      {MODELNAME spmm_stage_start_for_spmm_store_U0 RTLNAME spmm_stage_start_for_spmm_store_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_spmm_store_U0_U}
      {MODELNAME spmm_stage_gmem0_m_axi RTLNAME spmm_stage_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_stage_gmem1_m_axi RTLNAME spmm_stage_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_stage_gmem2_m_axi RTLNAME spmm_stage_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_stage_gmem3_m_axi RTLNAME spmm_stage_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_stage_gmem4_m_axi RTLNAME spmm_stage_gmem4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_stage_control_s_axi RTLNAME spmm_stage_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
