set ModuleHierarchy {[{
"Name" : "integrated_gcn", "RefName" : "integrated_gcn","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_gemm_stage_fu_148", "RefName" : "gemm_stage","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "gemm_read_X_U0", "RefName" : "gemm_read_X","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_35_1_VITIS_LOOP_37_3_VITIS_LOOP_38_4_VITIS_LOOP_39_5","RefName" : "VITIS_LOOP_35_1_VITIS_LOOP_37_3_VITIS_LOOP_38_4_VITIS_LOOP_39_5","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "gemm_read_W_U0", "RefName" : "gemm_read_W","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_55_1_VITIS_LOOP_57_3_VITIS_LOOP_58_4_VITIS_LOOP_59_5","RefName" : "VITIS_LOOP_55_1_VITIS_LOOP_57_3_VITIS_LOOP_58_4_VITIS_LOOP_59_5","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "gemm_compute_U0", "RefName" : "gemm_compute","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "COMP_IB","RefName" : "COMP_IB","ID" : "7","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_gemm_compute_Pipeline_COMP_INIT_fu_2138", "RefName" : "gemm_compute_Pipeline_COMP_INIT","ID" : "8","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "COMP_INIT","RefName" : "COMP_INIT","ID" : "9","Type" : "pipeline"},]},
			{"Name" : "grp_gemm_compute_Pipeline_COMP_EMIT_VITIS_LOOP_146_4_fu_2398", "RefName" : "gemm_compute_Pipeline_COMP_EMIT_VITIS_LOOP_146_4","ID" : "10","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "COMP_EMIT_VITIS_LOOP_146_4","RefName" : "COMP_EMIT_VITIS_LOOP_146_4","ID" : "11","Type" : "pipeline"},]},],
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
			{"Name" : "VITIS_LOOP_165_1_VITIS_LOOP_167_3_VITIS_LOOP_168_4","RefName" : "VITIS_LOOP_165_1_VITIS_LOOP_167_3_VITIS_LOOP_168_4","ID" : "19","Type" : "pipeline"},]},]},
	{"Name" : "grp_spmm_stage_fu_164", "RefName" : "spmm_stage","ID" : "20","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "spmm_load_csr_U0", "RefName" : "spmm_load_csr","ID" : "21","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_spmm_load_csr_Pipeline_LOAD_ROWS_fu_121", "RefName" : "spmm_load_csr_Pipeline_LOAD_ROWS","ID" : "22","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "LOAD_ROWS","RefName" : "LOAD_ROWS","ID" : "23","Type" : "pipeline"},]},
			{"Name" : "grp_spmm_load_csr_Pipeline_LOAD_NNZ_fu_130", "RefName" : "spmm_load_csr_Pipeline_LOAD_NNZ","ID" : "24","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "LOAD_NNZ","RefName" : "LOAD_NNZ","ID" : "25","Type" : "pipeline"},]},]},
		{"Name" : "spmm_compute_U0", "RefName" : "spmm_compute","ID" : "26","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "SPMM_ROW","RefName" : "SPMM_ROW","ID" : "27","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_spmm_compute_Pipeline_SPMM_INIT_fu_402", "RefName" : "spmm_compute_Pipeline_SPMM_INIT","ID" : "28","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "SPMM_INIT","RefName" : "SPMM_INIT","ID" : "29","Type" : "pipeline"},]},
			{"Name" : "grp_spmm_compute_Pipeline_SPMM_WRITE_fu_438", "RefName" : "spmm_compute_Pipeline_SPMM_WRITE","ID" : "30","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "SPMM_WRITE","RefName" : "SPMM_WRITE","ID" : "31","Type" : "pipeline"},]},],
			"SubLoops" : [
			{"Name" : "SPMM_NNZ","RefName" : "SPMM_NNZ","ID" : "32","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_spmm_compute_Pipeline_SPMM_LOAD_H_fu_476", "RefName" : "spmm_compute_Pipeline_SPMM_LOAD_H","ID" : "33","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "SPMM_LOAD_H","RefName" : "SPMM_LOAD_H","ID" : "34","Type" : "pipeline"},]},
				{"Name" : "grp_spmm_compute_Pipeline_SPMM_MAC_fu_515", "RefName" : "spmm_compute_Pipeline_SPMM_MAC","ID" : "35","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "SPMM_MAC","RefName" : "SPMM_MAC","ID" : "36","Type" : "pipeline"},]},]},]},]},
		{"Name" : "spmm_store_U0", "RefName" : "spmm_store","ID" : "37","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "SPMM_STORE_ROW_SPMM_STORE_FEAT","RefName" : "SPMM_STORE_ROW_SPMM_STORE_FEAT","ID" : "38","Type" : "pipeline"},]},]},]
}]}