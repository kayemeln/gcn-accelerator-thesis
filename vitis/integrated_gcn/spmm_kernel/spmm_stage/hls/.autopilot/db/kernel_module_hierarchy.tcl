set ModuleHierarchy {[{
"Name" : "spmm_stage", "RefName" : "spmm_stage","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0", "RefName" : "entry_proc","ID" : "1","Type" : "sequential"},
	{"Name" : "spmm_load_csr_U0", "RefName" : "spmm_load_csr","ID" : "2","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_spmm_load_csr_Pipeline_LOAD_ROWS_fu_115", "RefName" : "spmm_load_csr_Pipeline_LOAD_ROWS","ID" : "3","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_ROWS","RefName" : "LOAD_ROWS","ID" : "4","Type" : "pipeline"},]},
		{"Name" : "grp_spmm_load_csr_Pipeline_LOAD_NNZ_fu_124", "RefName" : "spmm_load_csr_Pipeline_LOAD_NNZ","ID" : "5","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LOAD_NNZ","RefName" : "LOAD_NNZ","ID" : "6","Type" : "pipeline"},]},]},
	{"Name" : "spmm_compute_U0", "RefName" : "spmm_compute","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "SPMM_ROW","RefName" : "SPMM_ROW","ID" : "8","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_spmm_compute_Pipeline_SPMM_INIT_fu_396", "RefName" : "spmm_compute_Pipeline_SPMM_INIT","ID" : "9","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "SPMM_INIT","RefName" : "SPMM_INIT","ID" : "10","Type" : "pipeline"},]},
		{"Name" : "grp_spmm_compute_Pipeline_SPMM_WRITE_fu_432", "RefName" : "spmm_compute_Pipeline_SPMM_WRITE","ID" : "11","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "SPMM_WRITE","RefName" : "SPMM_WRITE","ID" : "12","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "SPMM_NNZ","RefName" : "SPMM_NNZ","ID" : "13","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_spmm_compute_Pipeline_SPMM_LOAD_H_fu_470", "RefName" : "spmm_compute_Pipeline_SPMM_LOAD_H","ID" : "14","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "SPMM_LOAD_H","RefName" : "SPMM_LOAD_H","ID" : "15","Type" : "pipeline"},]},
			{"Name" : "grp_spmm_compute_Pipeline_SPMM_MAC_fu_509", "RefName" : "spmm_compute_Pipeline_SPMM_MAC","ID" : "16","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "SPMM_MAC","RefName" : "SPMM_MAC","ID" : "17","Type" : "pipeline"},]},]},]},]},
	{"Name" : "spmm_store_U0", "RefName" : "spmm_store","ID" : "18","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "SPMM_STORE_ROW_SPMM_STORE_FEAT","RefName" : "SPMM_STORE_ROW_SPMM_STORE_FEAT","ID" : "19","Type" : "pipeline"},]},]
}]}