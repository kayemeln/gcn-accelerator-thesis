set ModuleHierarchy {[{
"Name" : "gemm_stage", "RefName" : "gemm_stage","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0", "RefName" : "entry_proc","ID" : "1","Type" : "sequential"},
	{"Name" : "gemm_read_X_U0", "RefName" : "gemm_read_X","ID" : "2","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_20_1_VITIS_LOOP_22_3_VITIS_LOOP_23_4_VITIS_LOOP_24_5","RefName" : "VITIS_LOOP_20_1_VITIS_LOOP_22_3_VITIS_LOOP_23_4_VITIS_LOOP_24_5","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "gemm_read_W_U0", "RefName" : "gemm_read_W","ID" : "4","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_40_1_VITIS_LOOP_42_3_VITIS_LOOP_43_4_VITIS_LOOP_44_5","RefName" : "VITIS_LOOP_40_1_VITIS_LOOP_42_3_VITIS_LOOP_43_4_VITIS_LOOP_44_5","ID" : "5","Type" : "pipeline"},]},
	{"Name" : "gemm_compute_U0", "RefName" : "gemm_compute","ID" : "6","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "COMP_IB","RefName" : "COMP_IB","ID" : "7","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_gemm_compute_Pipeline_COMP_INIT_fu_2138", "RefName" : "gemm_compute_Pipeline_COMP_INIT","ID" : "8","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "COMP_INIT","RefName" : "COMP_INIT","ID" : "9","Type" : "pipeline"},]},
		{"Name" : "grp_gemm_compute_Pipeline_COMP_EMIT_VITIS_LOOP_119_4_fu_2398", "RefName" : "gemm_compute_Pipeline_COMP_EMIT_VITIS_LOOP_119_4","ID" : "10","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "COMP_EMIT_VITIS_LOOP_119_4","RefName" : "COMP_EMIT_VITIS_LOOP_119_4","ID" : "11","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "COMP_KB","RefName" : "COMP_KB","ID" : "12","Type" : "no",
			"SubLoops" : [
			{"Name" : "COMP_K","RefName" : "COMP_K","ID" : "13","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_gemm_compute_Pipeline_COMP_LOAD_XW_fu_2660", "RefName" : "gemm_compute_Pipeline_COMP_LOAD_XW","ID" : "14","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "COMP_LOAD_XW","RefName" : "COMP_LOAD_XW","ID" : "15","Type" : "pipeline"},]},
				{"Name" : "grp_gemm_compute_Pipeline_COMP_I_fu_2924", "RefName" : "gemm_compute_Pipeline_COMP_I","ID" : "16","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "COMP_I","RefName" : "COMP_I","ID" : "17","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "gemm_write_U0", "RefName" : "gemm_write","ID" : "18","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_138_1_VITIS_LOOP_140_3_VITIS_LOOP_141_4","RefName" : "VITIS_LOOP_138_1_VITIS_LOOP_140_3_VITIS_LOOP_141_4","ID" : "19","Type" : "pipeline"},]},]
}]}