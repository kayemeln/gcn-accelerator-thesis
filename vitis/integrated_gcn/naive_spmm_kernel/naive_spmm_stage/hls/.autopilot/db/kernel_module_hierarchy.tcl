set ModuleHierarchy {[{
"Name" : "naive_spmm_stage", "RefName" : "naive_spmm_stage","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "SPMM_ROW","RefName" : "SPMM_ROW","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_naive_spmm_stage_Pipeline_SPMM_INIT_fu_1041", "RefName" : "naive_spmm_stage_Pipeline_SPMM_INIT","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "SPMM_INIT","RefName" : "SPMM_INIT","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "grp_naive_spmm_stage_Pipeline_SPMM_NNZ_fu_1046", "RefName" : "naive_spmm_stage_Pipeline_SPMM_NNZ","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "SPMM_NNZ","RefName" : "SPMM_NNZ","ID" : "5","Type" : "pipeline"},]},
	{"Name" : "grp_naive_spmm_stage_Pipeline_SPMM_WRITE_fu_1191", "RefName" : "naive_spmm_stage_Pipeline_SPMM_WRITE","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "SPMM_WRITE","RefName" : "SPMM_WRITE","ID" : "7","Type" : "pipeline"},]},]},]
}]}