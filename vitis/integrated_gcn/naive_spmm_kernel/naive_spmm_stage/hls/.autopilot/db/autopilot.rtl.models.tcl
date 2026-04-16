set SynModuleInfo {
  {SRCNAME naive_spmm_stage_Pipeline_SPMM_INIT MODELNAME naive_spmm_stage_Pipeline_SPMM_INIT RTLNAME naive_spmm_stage_naive_spmm_stage_Pipeline_SPMM_INIT
    SUBMODULES {
      {MODELNAME naive_spmm_stage_flow_control_loop_pipe_sequential_init RTLNAME naive_spmm_stage_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME naive_spmm_stage_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME naive_spmm_stage_Pipeline_SPMM_NNZ MODELNAME naive_spmm_stage_Pipeline_SPMM_NNZ RTLNAME naive_spmm_stage_naive_spmm_stage_Pipeline_SPMM_NNZ
    SUBMODULES {
      {MODELNAME naive_spmm_stage_mul_26s_26s_52_1_1 RTLNAME naive_spmm_stage_mul_26s_26s_52_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME naive_spmm_stage_Pipeline_SPMM_WRITE MODELNAME naive_spmm_stage_Pipeline_SPMM_WRITE RTLNAME naive_spmm_stage_naive_spmm_stage_Pipeline_SPMM_WRITE}
  {SRCNAME naive_spmm_stage MODELNAME naive_spmm_stage RTLNAME naive_spmm_stage IS_TOP 1
    SUBMODULES {
      {MODELNAME naive_spmm_stage_acc_RAM_AUTO_1R1W RTLNAME naive_spmm_stage_acc_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME naive_spmm_stage_gmem0_m_axi RTLNAME naive_spmm_stage_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME naive_spmm_stage_gmem1_m_axi RTLNAME naive_spmm_stage_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME naive_spmm_stage_gmem2_m_axi RTLNAME naive_spmm_stage_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME naive_spmm_stage_gmem3_m_axi RTLNAME naive_spmm_stage_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME naive_spmm_stage_gmem4_m_axi RTLNAME naive_spmm_stage_gmem4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME naive_spmm_stage_control_s_axi RTLNAME naive_spmm_stage_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
