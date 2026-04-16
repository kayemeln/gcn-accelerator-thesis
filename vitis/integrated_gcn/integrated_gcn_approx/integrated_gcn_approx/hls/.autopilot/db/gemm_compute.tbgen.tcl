set moduleName gemm_compute
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 21
set C_modelName {gemm_compute}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ X_stream int 512 regular {fifo 0 volatile }  }
	{ W_stream int 512 regular {fifo 0 volatile }  }
	{ XW_stream int 512 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "X_stream", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "W_stream", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "XW_stream", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ X_stream_dout sc_in sc_lv 512 signal 0 } 
	{ X_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ X_stream_read sc_out sc_logic 1 signal 0 } 
	{ X_stream_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ X_stream_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ W_stream_dout sc_in sc_lv 512 signal 1 } 
	{ W_stream_empty_n sc_in sc_logic 1 signal 1 } 
	{ W_stream_read sc_out sc_logic 1 signal 1 } 
	{ W_stream_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ W_stream_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ XW_stream_din sc_out sc_lv 512 signal 2 } 
	{ XW_stream_full_n sc_in sc_logic 1 signal 2 } 
	{ XW_stream_write sc_out sc_logic 1 signal 2 } 
	{ XW_stream_num_data_valid sc_in sc_lv 32 signal 2 } 
	{ XW_stream_fifo_cap sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "X_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "X_stream", "role": "dout" }} , 
 	{ "name": "X_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_stream", "role": "empty_n" }} , 
 	{ "name": "X_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_stream", "role": "read" }} , 
 	{ "name": "X_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "X_stream", "role": "num_data_valid" }} , 
 	{ "name": "X_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "X_stream", "role": "fifo_cap" }} , 
 	{ "name": "W_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "W_stream", "role": "dout" }} , 
 	{ "name": "W_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_stream", "role": "empty_n" }} , 
 	{ "name": "W_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_stream", "role": "read" }} , 
 	{ "name": "W_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "W_stream", "role": "num_data_valid" }} , 
 	{ "name": "W_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "W_stream", "role": "fifo_cap" }} , 
 	{ "name": "XW_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "XW_stream", "role": "din" }} , 
 	{ "name": "XW_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "XW_stream", "role": "full_n" }} , 
 	{ "name": "XW_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "XW_stream", "role": "write" }} , 
 	{ "name": "XW_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "XW_stream", "role": "num_data_valid" }} , 
 	{ "name": "XW_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "XW_stream", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	gemm_compute {
		X_stream {Type I LastRead 2 FirstWrite -1}
		W_stream {Type I LastRead 2 FirstWrite -1}
		XW_stream {Type O LastRead -1 FirstWrite 1}}
	gemm_compute_Pipeline_COMP_INIT {
		XW_block_255 {Type O LastRead -1 FirstWrite 0}
		XW_block_254 {Type O LastRead -1 FirstWrite 0}
		XW_block_253 {Type O LastRead -1 FirstWrite 0}
		XW_block_252 {Type O LastRead -1 FirstWrite 0}
		XW_block_251 {Type O LastRead -1 FirstWrite 0}
		XW_block_250 {Type O LastRead -1 FirstWrite 0}
		XW_block_249 {Type O LastRead -1 FirstWrite 0}
		XW_block_248 {Type O LastRead -1 FirstWrite 0}
		XW_block_247 {Type O LastRead -1 FirstWrite 0}
		XW_block_246 {Type O LastRead -1 FirstWrite 0}
		XW_block_245 {Type O LastRead -1 FirstWrite 0}
		XW_block_244 {Type O LastRead -1 FirstWrite 0}
		XW_block_243 {Type O LastRead -1 FirstWrite 0}
		XW_block_242 {Type O LastRead -1 FirstWrite 0}
		XW_block_241 {Type O LastRead -1 FirstWrite 0}
		XW_block_240 {Type O LastRead -1 FirstWrite 0}
		XW_block_239 {Type O LastRead -1 FirstWrite 0}
		XW_block_238 {Type O LastRead -1 FirstWrite 0}
		XW_block_237 {Type O LastRead -1 FirstWrite 0}
		XW_block_236 {Type O LastRead -1 FirstWrite 0}
		XW_block_235 {Type O LastRead -1 FirstWrite 0}
		XW_block_234 {Type O LastRead -1 FirstWrite 0}
		XW_block_233 {Type O LastRead -1 FirstWrite 0}
		XW_block_232 {Type O LastRead -1 FirstWrite 0}
		XW_block_231 {Type O LastRead -1 FirstWrite 0}
		XW_block_230 {Type O LastRead -1 FirstWrite 0}
		XW_block_229 {Type O LastRead -1 FirstWrite 0}
		XW_block_228 {Type O LastRead -1 FirstWrite 0}
		XW_block_227 {Type O LastRead -1 FirstWrite 0}
		XW_block_226 {Type O LastRead -1 FirstWrite 0}
		XW_block_225 {Type O LastRead -1 FirstWrite 0}
		XW_block_224 {Type O LastRead -1 FirstWrite 0}
		XW_block_223 {Type O LastRead -1 FirstWrite 0}
		XW_block_222 {Type O LastRead -1 FirstWrite 0}
		XW_block_221 {Type O LastRead -1 FirstWrite 0}
		XW_block_220 {Type O LastRead -1 FirstWrite 0}
		XW_block_219 {Type O LastRead -1 FirstWrite 0}
		XW_block_218 {Type O LastRead -1 FirstWrite 0}
		XW_block_217 {Type O LastRead -1 FirstWrite 0}
		XW_block_216 {Type O LastRead -1 FirstWrite 0}
		XW_block_215 {Type O LastRead -1 FirstWrite 0}
		XW_block_214 {Type O LastRead -1 FirstWrite 0}
		XW_block_213 {Type O LastRead -1 FirstWrite 0}
		XW_block_212 {Type O LastRead -1 FirstWrite 0}
		XW_block_211 {Type O LastRead -1 FirstWrite 0}
		XW_block_210 {Type O LastRead -1 FirstWrite 0}
		XW_block_209 {Type O LastRead -1 FirstWrite 0}
		XW_block_208 {Type O LastRead -1 FirstWrite 0}
		XW_block_207 {Type O LastRead -1 FirstWrite 0}
		XW_block_206 {Type O LastRead -1 FirstWrite 0}
		XW_block_205 {Type O LastRead -1 FirstWrite 0}
		XW_block_204 {Type O LastRead -1 FirstWrite 0}
		XW_block_203 {Type O LastRead -1 FirstWrite 0}
		XW_block_202 {Type O LastRead -1 FirstWrite 0}
		XW_block_201 {Type O LastRead -1 FirstWrite 0}
		XW_block_200 {Type O LastRead -1 FirstWrite 0}
		XW_block_199 {Type O LastRead -1 FirstWrite 0}
		XW_block_198 {Type O LastRead -1 FirstWrite 0}
		XW_block_197 {Type O LastRead -1 FirstWrite 0}
		XW_block_196 {Type O LastRead -1 FirstWrite 0}
		XW_block_195 {Type O LastRead -1 FirstWrite 0}
		XW_block_194 {Type O LastRead -1 FirstWrite 0}
		XW_block_193 {Type O LastRead -1 FirstWrite 0}
		XW_block_192 {Type O LastRead -1 FirstWrite 0}
		XW_block_191 {Type O LastRead -1 FirstWrite 0}
		XW_block_190 {Type O LastRead -1 FirstWrite 0}
		XW_block_189 {Type O LastRead -1 FirstWrite 0}
		XW_block_188 {Type O LastRead -1 FirstWrite 0}
		XW_block_187 {Type O LastRead -1 FirstWrite 0}
		XW_block_186 {Type O LastRead -1 FirstWrite 0}
		XW_block_185 {Type O LastRead -1 FirstWrite 0}
		XW_block_184 {Type O LastRead -1 FirstWrite 0}
		XW_block_183 {Type O LastRead -1 FirstWrite 0}
		XW_block_182 {Type O LastRead -1 FirstWrite 0}
		XW_block_181 {Type O LastRead -1 FirstWrite 0}
		XW_block_180 {Type O LastRead -1 FirstWrite 0}
		XW_block_179 {Type O LastRead -1 FirstWrite 0}
		XW_block_178 {Type O LastRead -1 FirstWrite 0}
		XW_block_177 {Type O LastRead -1 FirstWrite 0}
		XW_block_176 {Type O LastRead -1 FirstWrite 0}
		XW_block_175 {Type O LastRead -1 FirstWrite 0}
		XW_block_174 {Type O LastRead -1 FirstWrite 0}
		XW_block_173 {Type O LastRead -1 FirstWrite 0}
		XW_block_172 {Type O LastRead -1 FirstWrite 0}
		XW_block_171 {Type O LastRead -1 FirstWrite 0}
		XW_block_170 {Type O LastRead -1 FirstWrite 0}
		XW_block_169 {Type O LastRead -1 FirstWrite 0}
		XW_block_168 {Type O LastRead -1 FirstWrite 0}
		XW_block_167 {Type O LastRead -1 FirstWrite 0}
		XW_block_166 {Type O LastRead -1 FirstWrite 0}
		XW_block_165 {Type O LastRead -1 FirstWrite 0}
		XW_block_164 {Type O LastRead -1 FirstWrite 0}
		XW_block_163 {Type O LastRead -1 FirstWrite 0}
		XW_block_162 {Type O LastRead -1 FirstWrite 0}
		XW_block_161 {Type O LastRead -1 FirstWrite 0}
		XW_block_160 {Type O LastRead -1 FirstWrite 0}
		XW_block_159 {Type O LastRead -1 FirstWrite 0}
		XW_block_158 {Type O LastRead -1 FirstWrite 0}
		XW_block_157 {Type O LastRead -1 FirstWrite 0}
		XW_block_156 {Type O LastRead -1 FirstWrite 0}
		XW_block_155 {Type O LastRead -1 FirstWrite 0}
		XW_block_154 {Type O LastRead -1 FirstWrite 0}
		XW_block_153 {Type O LastRead -1 FirstWrite 0}
		XW_block_152 {Type O LastRead -1 FirstWrite 0}
		XW_block_151 {Type O LastRead -1 FirstWrite 0}
		XW_block_150 {Type O LastRead -1 FirstWrite 0}
		XW_block_149 {Type O LastRead -1 FirstWrite 0}
		XW_block_148 {Type O LastRead -1 FirstWrite 0}
		XW_block_147 {Type O LastRead -1 FirstWrite 0}
		XW_block_146 {Type O LastRead -1 FirstWrite 0}
		XW_block_145 {Type O LastRead -1 FirstWrite 0}
		XW_block_144 {Type O LastRead -1 FirstWrite 0}
		XW_block_143 {Type O LastRead -1 FirstWrite 0}
		XW_block_142 {Type O LastRead -1 FirstWrite 0}
		XW_block_141 {Type O LastRead -1 FirstWrite 0}
		XW_block_140 {Type O LastRead -1 FirstWrite 0}
		XW_block_139 {Type O LastRead -1 FirstWrite 0}
		XW_block_138 {Type O LastRead -1 FirstWrite 0}
		XW_block_137 {Type O LastRead -1 FirstWrite 0}
		XW_block_136 {Type O LastRead -1 FirstWrite 0}
		XW_block_135 {Type O LastRead -1 FirstWrite 0}
		XW_block_134 {Type O LastRead -1 FirstWrite 0}
		XW_block_133 {Type O LastRead -1 FirstWrite 0}
		XW_block_132 {Type O LastRead -1 FirstWrite 0}
		XW_block_131 {Type O LastRead -1 FirstWrite 0}
		XW_block_130 {Type O LastRead -1 FirstWrite 0}
		XW_block_129 {Type O LastRead -1 FirstWrite 0}
		XW_block_128 {Type O LastRead -1 FirstWrite 0}
		XW_block_127 {Type O LastRead -1 FirstWrite 0}
		XW_block_126 {Type O LastRead -1 FirstWrite 0}
		XW_block_125 {Type O LastRead -1 FirstWrite 0}
		XW_block_124 {Type O LastRead -1 FirstWrite 0}
		XW_block_123 {Type O LastRead -1 FirstWrite 0}
		XW_block_122 {Type O LastRead -1 FirstWrite 0}
		XW_block_121 {Type O LastRead -1 FirstWrite 0}
		XW_block_120 {Type O LastRead -1 FirstWrite 0}
		XW_block_119 {Type O LastRead -1 FirstWrite 0}
		XW_block_118 {Type O LastRead -1 FirstWrite 0}
		XW_block_117 {Type O LastRead -1 FirstWrite 0}
		XW_block_116 {Type O LastRead -1 FirstWrite 0}
		XW_block_115 {Type O LastRead -1 FirstWrite 0}
		XW_block_114 {Type O LastRead -1 FirstWrite 0}
		XW_block_113 {Type O LastRead -1 FirstWrite 0}
		XW_block_112 {Type O LastRead -1 FirstWrite 0}
		XW_block_111 {Type O LastRead -1 FirstWrite 0}
		XW_block_110 {Type O LastRead -1 FirstWrite 0}
		XW_block_109 {Type O LastRead -1 FirstWrite 0}
		XW_block_108 {Type O LastRead -1 FirstWrite 0}
		XW_block_107 {Type O LastRead -1 FirstWrite 0}
		XW_block_106 {Type O LastRead -1 FirstWrite 0}
		XW_block_105 {Type O LastRead -1 FirstWrite 0}
		XW_block_104 {Type O LastRead -1 FirstWrite 0}
		XW_block_103 {Type O LastRead -1 FirstWrite 0}
		XW_block_102 {Type O LastRead -1 FirstWrite 0}
		XW_block_101 {Type O LastRead -1 FirstWrite 0}
		XW_block_100 {Type O LastRead -1 FirstWrite 0}
		XW_block_99 {Type O LastRead -1 FirstWrite 0}
		XW_block_98 {Type O LastRead -1 FirstWrite 0}
		XW_block_97 {Type O LastRead -1 FirstWrite 0}
		XW_block_96 {Type O LastRead -1 FirstWrite 0}
		XW_block_95 {Type O LastRead -1 FirstWrite 0}
		XW_block_94 {Type O LastRead -1 FirstWrite 0}
		XW_block_93 {Type O LastRead -1 FirstWrite 0}
		XW_block_92 {Type O LastRead -1 FirstWrite 0}
		XW_block_91 {Type O LastRead -1 FirstWrite 0}
		XW_block_90 {Type O LastRead -1 FirstWrite 0}
		XW_block_89 {Type O LastRead -1 FirstWrite 0}
		XW_block_88 {Type O LastRead -1 FirstWrite 0}
		XW_block_87 {Type O LastRead -1 FirstWrite 0}
		XW_block_86 {Type O LastRead -1 FirstWrite 0}
		XW_block_85 {Type O LastRead -1 FirstWrite 0}
		XW_block_84 {Type O LastRead -1 FirstWrite 0}
		XW_block_83 {Type O LastRead -1 FirstWrite 0}
		XW_block_82 {Type O LastRead -1 FirstWrite 0}
		XW_block_81 {Type O LastRead -1 FirstWrite 0}
		XW_block_80 {Type O LastRead -1 FirstWrite 0}
		XW_block_79 {Type O LastRead -1 FirstWrite 0}
		XW_block_78 {Type O LastRead -1 FirstWrite 0}
		XW_block_77 {Type O LastRead -1 FirstWrite 0}
		XW_block_76 {Type O LastRead -1 FirstWrite 0}
		XW_block_75 {Type O LastRead -1 FirstWrite 0}
		XW_block_74 {Type O LastRead -1 FirstWrite 0}
		XW_block_73 {Type O LastRead -1 FirstWrite 0}
		XW_block_72 {Type O LastRead -1 FirstWrite 0}
		XW_block_71 {Type O LastRead -1 FirstWrite 0}
		XW_block_70 {Type O LastRead -1 FirstWrite 0}
		XW_block_69 {Type O LastRead -1 FirstWrite 0}
		XW_block_68 {Type O LastRead -1 FirstWrite 0}
		XW_block_67 {Type O LastRead -1 FirstWrite 0}
		XW_block_66 {Type O LastRead -1 FirstWrite 0}
		XW_block_65 {Type O LastRead -1 FirstWrite 0}
		XW_block_64 {Type O LastRead -1 FirstWrite 0}
		XW_block_63 {Type O LastRead -1 FirstWrite 0}
		XW_block_62 {Type O LastRead -1 FirstWrite 0}
		XW_block_61 {Type O LastRead -1 FirstWrite 0}
		XW_block_60 {Type O LastRead -1 FirstWrite 0}
		XW_block_59 {Type O LastRead -1 FirstWrite 0}
		XW_block_58 {Type O LastRead -1 FirstWrite 0}
		XW_block_57 {Type O LastRead -1 FirstWrite 0}
		XW_block_56 {Type O LastRead -1 FirstWrite 0}
		XW_block_55 {Type O LastRead -1 FirstWrite 0}
		XW_block_54 {Type O LastRead -1 FirstWrite 0}
		XW_block_53 {Type O LastRead -1 FirstWrite 0}
		XW_block_52 {Type O LastRead -1 FirstWrite 0}
		XW_block_51 {Type O LastRead -1 FirstWrite 0}
		XW_block_50 {Type O LastRead -1 FirstWrite 0}
		XW_block_49 {Type O LastRead -1 FirstWrite 0}
		XW_block_48 {Type O LastRead -1 FirstWrite 0}
		XW_block_47 {Type O LastRead -1 FirstWrite 0}
		XW_block_46 {Type O LastRead -1 FirstWrite 0}
		XW_block_45 {Type O LastRead -1 FirstWrite 0}
		XW_block_44 {Type O LastRead -1 FirstWrite 0}
		XW_block_43 {Type O LastRead -1 FirstWrite 0}
		XW_block_42 {Type O LastRead -1 FirstWrite 0}
		XW_block_41 {Type O LastRead -1 FirstWrite 0}
		XW_block_40 {Type O LastRead -1 FirstWrite 0}
		XW_block_39 {Type O LastRead -1 FirstWrite 0}
		XW_block_38 {Type O LastRead -1 FirstWrite 0}
		XW_block_37 {Type O LastRead -1 FirstWrite 0}
		XW_block_36 {Type O LastRead -1 FirstWrite 0}
		XW_block_35 {Type O LastRead -1 FirstWrite 0}
		XW_block_34 {Type O LastRead -1 FirstWrite 0}
		XW_block_33 {Type O LastRead -1 FirstWrite 0}
		XW_block_32 {Type O LastRead -1 FirstWrite 0}
		XW_block_31 {Type O LastRead -1 FirstWrite 0}
		XW_block_30 {Type O LastRead -1 FirstWrite 0}
		XW_block_29 {Type O LastRead -1 FirstWrite 0}
		XW_block_28 {Type O LastRead -1 FirstWrite 0}
		XW_block_27 {Type O LastRead -1 FirstWrite 0}
		XW_block_26 {Type O LastRead -1 FirstWrite 0}
		XW_block_25 {Type O LastRead -1 FirstWrite 0}
		XW_block_24 {Type O LastRead -1 FirstWrite 0}
		XW_block_23 {Type O LastRead -1 FirstWrite 0}
		XW_block_22 {Type O LastRead -1 FirstWrite 0}
		XW_block_21 {Type O LastRead -1 FirstWrite 0}
		XW_block_20 {Type O LastRead -1 FirstWrite 0}
		XW_block_19 {Type O LastRead -1 FirstWrite 0}
		XW_block_18 {Type O LastRead -1 FirstWrite 0}
		XW_block_17 {Type O LastRead -1 FirstWrite 0}
		XW_block_16 {Type O LastRead -1 FirstWrite 0}
		XW_block_15 {Type O LastRead -1 FirstWrite 0}
		XW_block_14 {Type O LastRead -1 FirstWrite 0}
		XW_block_13 {Type O LastRead -1 FirstWrite 0}
		XW_block_12 {Type O LastRead -1 FirstWrite 0}
		XW_block_11 {Type O LastRead -1 FirstWrite 0}
		XW_block_10 {Type O LastRead -1 FirstWrite 0}
		XW_block_9 {Type O LastRead -1 FirstWrite 0}
		XW_block_8 {Type O LastRead -1 FirstWrite 0}
		XW_block_7 {Type O LastRead -1 FirstWrite 0}
		XW_block_6 {Type O LastRead -1 FirstWrite 0}
		XW_block_5 {Type O LastRead -1 FirstWrite 0}
		XW_block_4 {Type O LastRead -1 FirstWrite 0}
		XW_block_3 {Type O LastRead -1 FirstWrite 0}
		XW_block_2 {Type O LastRead -1 FirstWrite 0}
		XW_block_1 {Type O LastRead -1 FirstWrite 0}
		XW_block {Type O LastRead -1 FirstWrite 0}}
	gemm_compute_Pipeline_COMP_KB_COMP_K_COMP_I {
		XW_block {Type IO LastRead 4 FirstWrite 5}
		XW_block_1 {Type IO LastRead 4 FirstWrite 5}
		XW_block_2 {Type IO LastRead 4 FirstWrite 5}
		XW_block_3 {Type IO LastRead 4 FirstWrite 5}
		XW_block_4 {Type IO LastRead 4 FirstWrite 5}
		XW_block_5 {Type IO LastRead 4 FirstWrite 5}
		XW_block_6 {Type IO LastRead 4 FirstWrite 5}
		XW_block_7 {Type IO LastRead 4 FirstWrite 5}
		XW_block_8 {Type IO LastRead 4 FirstWrite 5}
		XW_block_9 {Type IO LastRead 4 FirstWrite 5}
		XW_block_10 {Type IO LastRead 4 FirstWrite 5}
		XW_block_11 {Type IO LastRead 4 FirstWrite 5}
		XW_block_12 {Type IO LastRead 4 FirstWrite 5}
		XW_block_13 {Type IO LastRead 4 FirstWrite 5}
		XW_block_14 {Type IO LastRead 4 FirstWrite 5}
		XW_block_15 {Type IO LastRead 4 FirstWrite 5}
		XW_block_16 {Type IO LastRead 4 FirstWrite 5}
		XW_block_17 {Type IO LastRead 4 FirstWrite 5}
		XW_block_18 {Type IO LastRead 4 FirstWrite 5}
		XW_block_19 {Type IO LastRead 4 FirstWrite 5}
		XW_block_20 {Type IO LastRead 4 FirstWrite 5}
		XW_block_21 {Type IO LastRead 4 FirstWrite 5}
		XW_block_22 {Type IO LastRead 4 FirstWrite 5}
		XW_block_23 {Type IO LastRead 4 FirstWrite 5}
		XW_block_24 {Type IO LastRead 4 FirstWrite 5}
		XW_block_25 {Type IO LastRead 4 FirstWrite 5}
		XW_block_26 {Type IO LastRead 4 FirstWrite 5}
		XW_block_27 {Type IO LastRead 4 FirstWrite 5}
		XW_block_28 {Type IO LastRead 4 FirstWrite 5}
		XW_block_29 {Type IO LastRead 4 FirstWrite 5}
		XW_block_30 {Type IO LastRead 4 FirstWrite 5}
		XW_block_31 {Type IO LastRead 4 FirstWrite 5}
		XW_block_32 {Type IO LastRead 4 FirstWrite 5}
		XW_block_33 {Type IO LastRead 4 FirstWrite 5}
		XW_block_34 {Type IO LastRead 4 FirstWrite 5}
		XW_block_35 {Type IO LastRead 4 FirstWrite 5}
		XW_block_36 {Type IO LastRead 4 FirstWrite 5}
		XW_block_37 {Type IO LastRead 4 FirstWrite 5}
		XW_block_38 {Type IO LastRead 4 FirstWrite 5}
		XW_block_39 {Type IO LastRead 4 FirstWrite 5}
		XW_block_40 {Type IO LastRead 4 FirstWrite 5}
		XW_block_41 {Type IO LastRead 4 FirstWrite 5}
		XW_block_42 {Type IO LastRead 4 FirstWrite 5}
		XW_block_43 {Type IO LastRead 4 FirstWrite 5}
		XW_block_44 {Type IO LastRead 4 FirstWrite 5}
		XW_block_45 {Type IO LastRead 4 FirstWrite 5}
		XW_block_46 {Type IO LastRead 4 FirstWrite 5}
		XW_block_47 {Type IO LastRead 4 FirstWrite 5}
		XW_block_48 {Type IO LastRead 4 FirstWrite 5}
		XW_block_49 {Type IO LastRead 4 FirstWrite 5}
		XW_block_50 {Type IO LastRead 4 FirstWrite 5}
		XW_block_51 {Type IO LastRead 4 FirstWrite 5}
		XW_block_52 {Type IO LastRead 4 FirstWrite 5}
		XW_block_53 {Type IO LastRead 4 FirstWrite 5}
		XW_block_54 {Type IO LastRead 4 FirstWrite 5}
		XW_block_55 {Type IO LastRead 4 FirstWrite 5}
		XW_block_56 {Type IO LastRead 4 FirstWrite 5}
		XW_block_57 {Type IO LastRead 4 FirstWrite 5}
		XW_block_58 {Type IO LastRead 4 FirstWrite 5}
		XW_block_59 {Type IO LastRead 4 FirstWrite 5}
		XW_block_60 {Type IO LastRead 4 FirstWrite 5}
		XW_block_61 {Type IO LastRead 4 FirstWrite 5}
		XW_block_62 {Type IO LastRead 4 FirstWrite 5}
		XW_block_63 {Type IO LastRead 4 FirstWrite 5}
		XW_block_64 {Type IO LastRead 4 FirstWrite 5}
		XW_block_65 {Type IO LastRead 4 FirstWrite 5}
		XW_block_66 {Type IO LastRead 4 FirstWrite 5}
		XW_block_67 {Type IO LastRead 4 FirstWrite 5}
		XW_block_68 {Type IO LastRead 4 FirstWrite 5}
		XW_block_69 {Type IO LastRead 4 FirstWrite 5}
		XW_block_70 {Type IO LastRead 4 FirstWrite 5}
		XW_block_71 {Type IO LastRead 4 FirstWrite 5}
		XW_block_72 {Type IO LastRead 4 FirstWrite 5}
		XW_block_73 {Type IO LastRead 4 FirstWrite 5}
		XW_block_74 {Type IO LastRead 4 FirstWrite 5}
		XW_block_75 {Type IO LastRead 4 FirstWrite 5}
		XW_block_76 {Type IO LastRead 4 FirstWrite 5}
		XW_block_77 {Type IO LastRead 4 FirstWrite 5}
		XW_block_78 {Type IO LastRead 4 FirstWrite 5}
		XW_block_79 {Type IO LastRead 4 FirstWrite 5}
		XW_block_80 {Type IO LastRead 4 FirstWrite 5}
		XW_block_81 {Type IO LastRead 4 FirstWrite 5}
		XW_block_82 {Type IO LastRead 4 FirstWrite 5}
		XW_block_83 {Type IO LastRead 4 FirstWrite 5}
		XW_block_84 {Type IO LastRead 4 FirstWrite 5}
		XW_block_85 {Type IO LastRead 4 FirstWrite 5}
		XW_block_86 {Type IO LastRead 4 FirstWrite 5}
		XW_block_87 {Type IO LastRead 4 FirstWrite 5}
		XW_block_88 {Type IO LastRead 4 FirstWrite 5}
		XW_block_89 {Type IO LastRead 4 FirstWrite 5}
		XW_block_90 {Type IO LastRead 4 FirstWrite 5}
		XW_block_91 {Type IO LastRead 4 FirstWrite 5}
		XW_block_92 {Type IO LastRead 4 FirstWrite 5}
		XW_block_93 {Type IO LastRead 4 FirstWrite 5}
		XW_block_94 {Type IO LastRead 4 FirstWrite 5}
		XW_block_95 {Type IO LastRead 4 FirstWrite 5}
		XW_block_96 {Type IO LastRead 4 FirstWrite 5}
		XW_block_97 {Type IO LastRead 4 FirstWrite 5}
		XW_block_98 {Type IO LastRead 4 FirstWrite 5}
		XW_block_99 {Type IO LastRead 4 FirstWrite 5}
		XW_block_100 {Type IO LastRead 4 FirstWrite 5}
		XW_block_101 {Type IO LastRead 4 FirstWrite 5}
		XW_block_102 {Type IO LastRead 4 FirstWrite 5}
		XW_block_103 {Type IO LastRead 4 FirstWrite 5}
		XW_block_104 {Type IO LastRead 4 FirstWrite 5}
		XW_block_105 {Type IO LastRead 4 FirstWrite 5}
		XW_block_106 {Type IO LastRead 4 FirstWrite 5}
		XW_block_107 {Type IO LastRead 4 FirstWrite 5}
		XW_block_108 {Type IO LastRead 4 FirstWrite 5}
		XW_block_109 {Type IO LastRead 4 FirstWrite 5}
		XW_block_110 {Type IO LastRead 4 FirstWrite 5}
		XW_block_111 {Type IO LastRead 4 FirstWrite 5}
		XW_block_112 {Type IO LastRead 4 FirstWrite 5}
		XW_block_113 {Type IO LastRead 4 FirstWrite 5}
		XW_block_114 {Type IO LastRead 4 FirstWrite 5}
		XW_block_115 {Type IO LastRead 4 FirstWrite 5}
		XW_block_116 {Type IO LastRead 4 FirstWrite 5}
		XW_block_117 {Type IO LastRead 4 FirstWrite 5}
		XW_block_118 {Type IO LastRead 4 FirstWrite 5}
		XW_block_119 {Type IO LastRead 4 FirstWrite 5}
		XW_block_120 {Type IO LastRead 4 FirstWrite 5}
		XW_block_121 {Type IO LastRead 4 FirstWrite 5}
		XW_block_122 {Type IO LastRead 4 FirstWrite 5}
		XW_block_123 {Type IO LastRead 4 FirstWrite 5}
		XW_block_124 {Type IO LastRead 4 FirstWrite 5}
		XW_block_125 {Type IO LastRead 4 FirstWrite 5}
		XW_block_126 {Type IO LastRead 4 FirstWrite 5}
		XW_block_127 {Type IO LastRead 4 FirstWrite 5}
		XW_block_128 {Type IO LastRead 4 FirstWrite 5}
		XW_block_129 {Type IO LastRead 4 FirstWrite 5}
		XW_block_130 {Type IO LastRead 4 FirstWrite 5}
		XW_block_131 {Type IO LastRead 4 FirstWrite 5}
		XW_block_132 {Type IO LastRead 4 FirstWrite 5}
		XW_block_133 {Type IO LastRead 4 FirstWrite 5}
		XW_block_134 {Type IO LastRead 4 FirstWrite 5}
		XW_block_135 {Type IO LastRead 4 FirstWrite 5}
		XW_block_136 {Type IO LastRead 4 FirstWrite 5}
		XW_block_137 {Type IO LastRead 4 FirstWrite 5}
		XW_block_138 {Type IO LastRead 4 FirstWrite 5}
		XW_block_139 {Type IO LastRead 4 FirstWrite 5}
		XW_block_140 {Type IO LastRead 4 FirstWrite 5}
		XW_block_141 {Type IO LastRead 4 FirstWrite 5}
		XW_block_142 {Type IO LastRead 4 FirstWrite 5}
		XW_block_143 {Type IO LastRead 4 FirstWrite 5}
		XW_block_144 {Type IO LastRead 4 FirstWrite 5}
		XW_block_145 {Type IO LastRead 4 FirstWrite 5}
		XW_block_146 {Type IO LastRead 4 FirstWrite 5}
		XW_block_147 {Type IO LastRead 4 FirstWrite 5}
		XW_block_148 {Type IO LastRead 4 FirstWrite 5}
		XW_block_149 {Type IO LastRead 4 FirstWrite 5}
		XW_block_150 {Type IO LastRead 4 FirstWrite 5}
		XW_block_151 {Type IO LastRead 4 FirstWrite 5}
		XW_block_152 {Type IO LastRead 4 FirstWrite 5}
		XW_block_153 {Type IO LastRead 4 FirstWrite 5}
		XW_block_154 {Type IO LastRead 4 FirstWrite 5}
		XW_block_155 {Type IO LastRead 4 FirstWrite 5}
		XW_block_156 {Type IO LastRead 4 FirstWrite 5}
		XW_block_157 {Type IO LastRead 4 FirstWrite 5}
		XW_block_158 {Type IO LastRead 4 FirstWrite 5}
		XW_block_159 {Type IO LastRead 4 FirstWrite 5}
		XW_block_160 {Type IO LastRead 4 FirstWrite 5}
		XW_block_161 {Type IO LastRead 4 FirstWrite 5}
		XW_block_162 {Type IO LastRead 4 FirstWrite 5}
		XW_block_163 {Type IO LastRead 4 FirstWrite 5}
		XW_block_164 {Type IO LastRead 4 FirstWrite 5}
		XW_block_165 {Type IO LastRead 4 FirstWrite 5}
		XW_block_166 {Type IO LastRead 4 FirstWrite 5}
		XW_block_167 {Type IO LastRead 4 FirstWrite 5}
		XW_block_168 {Type IO LastRead 4 FirstWrite 5}
		XW_block_169 {Type IO LastRead 4 FirstWrite 5}
		XW_block_170 {Type IO LastRead 4 FirstWrite 5}
		XW_block_171 {Type IO LastRead 4 FirstWrite 5}
		XW_block_172 {Type IO LastRead 4 FirstWrite 5}
		XW_block_173 {Type IO LastRead 4 FirstWrite 5}
		XW_block_174 {Type IO LastRead 4 FirstWrite 5}
		XW_block_175 {Type IO LastRead 4 FirstWrite 5}
		XW_block_176 {Type IO LastRead 4 FirstWrite 5}
		XW_block_177 {Type IO LastRead 4 FirstWrite 5}
		XW_block_178 {Type IO LastRead 4 FirstWrite 5}
		XW_block_179 {Type IO LastRead 4 FirstWrite 5}
		XW_block_180 {Type IO LastRead 4 FirstWrite 5}
		XW_block_181 {Type IO LastRead 4 FirstWrite 5}
		XW_block_182 {Type IO LastRead 4 FirstWrite 5}
		XW_block_183 {Type IO LastRead 4 FirstWrite 5}
		XW_block_184 {Type IO LastRead 4 FirstWrite 5}
		XW_block_185 {Type IO LastRead 4 FirstWrite 5}
		XW_block_186 {Type IO LastRead 4 FirstWrite 5}
		XW_block_187 {Type IO LastRead 4 FirstWrite 5}
		XW_block_188 {Type IO LastRead 4 FirstWrite 5}
		XW_block_189 {Type IO LastRead 4 FirstWrite 5}
		XW_block_190 {Type IO LastRead 4 FirstWrite 5}
		XW_block_191 {Type IO LastRead 4 FirstWrite 5}
		XW_block_192 {Type IO LastRead 4 FirstWrite 5}
		XW_block_193 {Type IO LastRead 4 FirstWrite 5}
		XW_block_194 {Type IO LastRead 4 FirstWrite 5}
		XW_block_195 {Type IO LastRead 4 FirstWrite 5}
		XW_block_196 {Type IO LastRead 4 FirstWrite 5}
		XW_block_197 {Type IO LastRead 4 FirstWrite 5}
		XW_block_198 {Type IO LastRead 4 FirstWrite 5}
		XW_block_199 {Type IO LastRead 4 FirstWrite 5}
		XW_block_200 {Type IO LastRead 4 FirstWrite 5}
		XW_block_201 {Type IO LastRead 4 FirstWrite 5}
		XW_block_202 {Type IO LastRead 4 FirstWrite 5}
		XW_block_203 {Type IO LastRead 4 FirstWrite 5}
		XW_block_204 {Type IO LastRead 4 FirstWrite 5}
		XW_block_205 {Type IO LastRead 4 FirstWrite 5}
		XW_block_206 {Type IO LastRead 4 FirstWrite 5}
		XW_block_207 {Type IO LastRead 4 FirstWrite 5}
		XW_block_208 {Type IO LastRead 4 FirstWrite 5}
		XW_block_209 {Type IO LastRead 4 FirstWrite 5}
		XW_block_210 {Type IO LastRead 4 FirstWrite 5}
		XW_block_211 {Type IO LastRead 4 FirstWrite 5}
		XW_block_212 {Type IO LastRead 4 FirstWrite 5}
		XW_block_213 {Type IO LastRead 4 FirstWrite 5}
		XW_block_214 {Type IO LastRead 4 FirstWrite 5}
		XW_block_215 {Type IO LastRead 4 FirstWrite 5}
		XW_block_216 {Type IO LastRead 4 FirstWrite 5}
		XW_block_217 {Type IO LastRead 4 FirstWrite 5}
		XW_block_218 {Type IO LastRead 4 FirstWrite 5}
		XW_block_219 {Type IO LastRead 4 FirstWrite 5}
		XW_block_220 {Type IO LastRead 4 FirstWrite 5}
		XW_block_221 {Type IO LastRead 4 FirstWrite 5}
		XW_block_222 {Type IO LastRead 4 FirstWrite 5}
		XW_block_223 {Type IO LastRead 4 FirstWrite 5}
		XW_block_224 {Type IO LastRead 4 FirstWrite 5}
		XW_block_225 {Type IO LastRead 4 FirstWrite 5}
		XW_block_226 {Type IO LastRead 4 FirstWrite 5}
		XW_block_227 {Type IO LastRead 4 FirstWrite 5}
		XW_block_228 {Type IO LastRead 4 FirstWrite 5}
		XW_block_229 {Type IO LastRead 4 FirstWrite 5}
		XW_block_230 {Type IO LastRead 4 FirstWrite 5}
		XW_block_231 {Type IO LastRead 4 FirstWrite 5}
		XW_block_232 {Type IO LastRead 4 FirstWrite 5}
		XW_block_233 {Type IO LastRead 4 FirstWrite 5}
		XW_block_234 {Type IO LastRead 4 FirstWrite 5}
		XW_block_235 {Type IO LastRead 4 FirstWrite 5}
		XW_block_236 {Type IO LastRead 4 FirstWrite 5}
		XW_block_237 {Type IO LastRead 4 FirstWrite 5}
		XW_block_238 {Type IO LastRead 4 FirstWrite 5}
		XW_block_239 {Type IO LastRead 4 FirstWrite 5}
		XW_block_240 {Type IO LastRead 4 FirstWrite 5}
		XW_block_241 {Type IO LastRead 4 FirstWrite 5}
		XW_block_242 {Type IO LastRead 4 FirstWrite 5}
		XW_block_243 {Type IO LastRead 4 FirstWrite 5}
		XW_block_244 {Type IO LastRead 4 FirstWrite 5}
		XW_block_245 {Type IO LastRead 4 FirstWrite 5}
		XW_block_246 {Type IO LastRead 4 FirstWrite 5}
		XW_block_247 {Type IO LastRead 4 FirstWrite 5}
		XW_block_248 {Type IO LastRead 4 FirstWrite 5}
		XW_block_249 {Type IO LastRead 4 FirstWrite 5}
		XW_block_250 {Type IO LastRead 4 FirstWrite 5}
		XW_block_251 {Type IO LastRead 4 FirstWrite 5}
		XW_block_252 {Type IO LastRead 4 FirstWrite 5}
		XW_block_253 {Type IO LastRead 4 FirstWrite 5}
		XW_block_254 {Type IO LastRead 4 FirstWrite 5}
		XW_block_255 {Type IO LastRead 4 FirstWrite 5}
		X_stream {Type I LastRead 2 FirstWrite -1}
		W_stream {Type I LastRead 2 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	mul8s_1KV8 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}
	gemm_compute_Pipeline_COMP_EMIT {
		XW_block {Type I LastRead 0 FirstWrite -1}
		XW_block_64 {Type I LastRead 0 FirstWrite -1}
		XW_block_128 {Type I LastRead 0 FirstWrite -1}
		XW_block_192 {Type I LastRead 0 FirstWrite -1}
		XW_block_1 {Type I LastRead 0 FirstWrite -1}
		XW_block_65 {Type I LastRead 0 FirstWrite -1}
		XW_block_129 {Type I LastRead 0 FirstWrite -1}
		XW_block_193 {Type I LastRead 0 FirstWrite -1}
		XW_block_2 {Type I LastRead 0 FirstWrite -1}
		XW_block_66 {Type I LastRead 0 FirstWrite -1}
		XW_block_130 {Type I LastRead 0 FirstWrite -1}
		XW_block_194 {Type I LastRead 0 FirstWrite -1}
		XW_block_3 {Type I LastRead 0 FirstWrite -1}
		XW_block_67 {Type I LastRead 0 FirstWrite -1}
		XW_block_131 {Type I LastRead 0 FirstWrite -1}
		XW_block_195 {Type I LastRead 0 FirstWrite -1}
		XW_block_4 {Type I LastRead 0 FirstWrite -1}
		XW_block_68 {Type I LastRead 0 FirstWrite -1}
		XW_block_132 {Type I LastRead 0 FirstWrite -1}
		XW_block_196 {Type I LastRead 0 FirstWrite -1}
		XW_block_5 {Type I LastRead 0 FirstWrite -1}
		XW_block_69 {Type I LastRead 0 FirstWrite -1}
		XW_block_133 {Type I LastRead 0 FirstWrite -1}
		XW_block_197 {Type I LastRead 0 FirstWrite -1}
		XW_block_6 {Type I LastRead 0 FirstWrite -1}
		XW_block_70 {Type I LastRead 0 FirstWrite -1}
		XW_block_134 {Type I LastRead 0 FirstWrite -1}
		XW_block_198 {Type I LastRead 0 FirstWrite -1}
		XW_block_7 {Type I LastRead 0 FirstWrite -1}
		XW_block_71 {Type I LastRead 0 FirstWrite -1}
		XW_block_135 {Type I LastRead 0 FirstWrite -1}
		XW_block_199 {Type I LastRead 0 FirstWrite -1}
		XW_block_8 {Type I LastRead 0 FirstWrite -1}
		XW_block_72 {Type I LastRead 0 FirstWrite -1}
		XW_block_136 {Type I LastRead 0 FirstWrite -1}
		XW_block_200 {Type I LastRead 0 FirstWrite -1}
		XW_block_9 {Type I LastRead 0 FirstWrite -1}
		XW_block_73 {Type I LastRead 0 FirstWrite -1}
		XW_block_137 {Type I LastRead 0 FirstWrite -1}
		XW_block_201 {Type I LastRead 0 FirstWrite -1}
		XW_block_10 {Type I LastRead 0 FirstWrite -1}
		XW_block_74 {Type I LastRead 0 FirstWrite -1}
		XW_block_138 {Type I LastRead 0 FirstWrite -1}
		XW_block_202 {Type I LastRead 0 FirstWrite -1}
		XW_block_11 {Type I LastRead 0 FirstWrite -1}
		XW_block_75 {Type I LastRead 0 FirstWrite -1}
		XW_block_139 {Type I LastRead 0 FirstWrite -1}
		XW_block_203 {Type I LastRead 0 FirstWrite -1}
		XW_block_12 {Type I LastRead 0 FirstWrite -1}
		XW_block_76 {Type I LastRead 0 FirstWrite -1}
		XW_block_140 {Type I LastRead 0 FirstWrite -1}
		XW_block_204 {Type I LastRead 0 FirstWrite -1}
		XW_block_13 {Type I LastRead 0 FirstWrite -1}
		XW_block_77 {Type I LastRead 0 FirstWrite -1}
		XW_block_141 {Type I LastRead 0 FirstWrite -1}
		XW_block_205 {Type I LastRead 0 FirstWrite -1}
		XW_block_14 {Type I LastRead 0 FirstWrite -1}
		XW_block_78 {Type I LastRead 0 FirstWrite -1}
		XW_block_142 {Type I LastRead 0 FirstWrite -1}
		XW_block_206 {Type I LastRead 0 FirstWrite -1}
		XW_block_15 {Type I LastRead 0 FirstWrite -1}
		XW_block_79 {Type I LastRead 0 FirstWrite -1}
		XW_block_143 {Type I LastRead 0 FirstWrite -1}
		XW_block_207 {Type I LastRead 0 FirstWrite -1}
		XW_block_16 {Type I LastRead 0 FirstWrite -1}
		XW_block_80 {Type I LastRead 0 FirstWrite -1}
		XW_block_144 {Type I LastRead 0 FirstWrite -1}
		XW_block_208 {Type I LastRead 0 FirstWrite -1}
		XW_block_17 {Type I LastRead 0 FirstWrite -1}
		XW_block_81 {Type I LastRead 0 FirstWrite -1}
		XW_block_145 {Type I LastRead 0 FirstWrite -1}
		XW_block_209 {Type I LastRead 0 FirstWrite -1}
		XW_block_18 {Type I LastRead 0 FirstWrite -1}
		XW_block_82 {Type I LastRead 0 FirstWrite -1}
		XW_block_146 {Type I LastRead 0 FirstWrite -1}
		XW_block_210 {Type I LastRead 0 FirstWrite -1}
		XW_block_19 {Type I LastRead 0 FirstWrite -1}
		XW_block_83 {Type I LastRead 0 FirstWrite -1}
		XW_block_147 {Type I LastRead 0 FirstWrite -1}
		XW_block_211 {Type I LastRead 0 FirstWrite -1}
		XW_block_20 {Type I LastRead 0 FirstWrite -1}
		XW_block_84 {Type I LastRead 0 FirstWrite -1}
		XW_block_148 {Type I LastRead 0 FirstWrite -1}
		XW_block_212 {Type I LastRead 0 FirstWrite -1}
		XW_block_21 {Type I LastRead 0 FirstWrite -1}
		XW_block_85 {Type I LastRead 0 FirstWrite -1}
		XW_block_149 {Type I LastRead 0 FirstWrite -1}
		XW_block_213 {Type I LastRead 0 FirstWrite -1}
		XW_block_22 {Type I LastRead 0 FirstWrite -1}
		XW_block_86 {Type I LastRead 0 FirstWrite -1}
		XW_block_150 {Type I LastRead 0 FirstWrite -1}
		XW_block_214 {Type I LastRead 0 FirstWrite -1}
		XW_block_23 {Type I LastRead 0 FirstWrite -1}
		XW_block_87 {Type I LastRead 0 FirstWrite -1}
		XW_block_151 {Type I LastRead 0 FirstWrite -1}
		XW_block_215 {Type I LastRead 0 FirstWrite -1}
		XW_block_24 {Type I LastRead 0 FirstWrite -1}
		XW_block_88 {Type I LastRead 0 FirstWrite -1}
		XW_block_152 {Type I LastRead 0 FirstWrite -1}
		XW_block_216 {Type I LastRead 0 FirstWrite -1}
		XW_block_25 {Type I LastRead 0 FirstWrite -1}
		XW_block_89 {Type I LastRead 0 FirstWrite -1}
		XW_block_153 {Type I LastRead 0 FirstWrite -1}
		XW_block_217 {Type I LastRead 0 FirstWrite -1}
		XW_block_26 {Type I LastRead 0 FirstWrite -1}
		XW_block_90 {Type I LastRead 0 FirstWrite -1}
		XW_block_154 {Type I LastRead 0 FirstWrite -1}
		XW_block_218 {Type I LastRead 0 FirstWrite -1}
		XW_block_27 {Type I LastRead 0 FirstWrite -1}
		XW_block_91 {Type I LastRead 0 FirstWrite -1}
		XW_block_155 {Type I LastRead 0 FirstWrite -1}
		XW_block_219 {Type I LastRead 0 FirstWrite -1}
		XW_block_28 {Type I LastRead 0 FirstWrite -1}
		XW_block_92 {Type I LastRead 0 FirstWrite -1}
		XW_block_156 {Type I LastRead 0 FirstWrite -1}
		XW_block_220 {Type I LastRead 0 FirstWrite -1}
		XW_block_29 {Type I LastRead 0 FirstWrite -1}
		XW_block_93 {Type I LastRead 0 FirstWrite -1}
		XW_block_157 {Type I LastRead 0 FirstWrite -1}
		XW_block_221 {Type I LastRead 0 FirstWrite -1}
		XW_block_30 {Type I LastRead 0 FirstWrite -1}
		XW_block_94 {Type I LastRead 0 FirstWrite -1}
		XW_block_158 {Type I LastRead 0 FirstWrite -1}
		XW_block_222 {Type I LastRead 0 FirstWrite -1}
		XW_block_31 {Type I LastRead 0 FirstWrite -1}
		XW_block_95 {Type I LastRead 0 FirstWrite -1}
		XW_block_159 {Type I LastRead 0 FirstWrite -1}
		XW_block_223 {Type I LastRead 0 FirstWrite -1}
		XW_block_32 {Type I LastRead 0 FirstWrite -1}
		XW_block_96 {Type I LastRead 0 FirstWrite -1}
		XW_block_160 {Type I LastRead 0 FirstWrite -1}
		XW_block_224 {Type I LastRead 0 FirstWrite -1}
		XW_block_33 {Type I LastRead 0 FirstWrite -1}
		XW_block_97 {Type I LastRead 0 FirstWrite -1}
		XW_block_161 {Type I LastRead 0 FirstWrite -1}
		XW_block_225 {Type I LastRead 0 FirstWrite -1}
		XW_block_34 {Type I LastRead 0 FirstWrite -1}
		XW_block_98 {Type I LastRead 0 FirstWrite -1}
		XW_block_162 {Type I LastRead 0 FirstWrite -1}
		XW_block_226 {Type I LastRead 0 FirstWrite -1}
		XW_block_35 {Type I LastRead 0 FirstWrite -1}
		XW_block_99 {Type I LastRead 0 FirstWrite -1}
		XW_block_163 {Type I LastRead 0 FirstWrite -1}
		XW_block_227 {Type I LastRead 0 FirstWrite -1}
		XW_block_36 {Type I LastRead 0 FirstWrite -1}
		XW_block_100 {Type I LastRead 0 FirstWrite -1}
		XW_block_164 {Type I LastRead 0 FirstWrite -1}
		XW_block_228 {Type I LastRead 0 FirstWrite -1}
		XW_block_37 {Type I LastRead 0 FirstWrite -1}
		XW_block_101 {Type I LastRead 0 FirstWrite -1}
		XW_block_165 {Type I LastRead 0 FirstWrite -1}
		XW_block_229 {Type I LastRead 0 FirstWrite -1}
		XW_block_38 {Type I LastRead 0 FirstWrite -1}
		XW_block_102 {Type I LastRead 0 FirstWrite -1}
		XW_block_166 {Type I LastRead 0 FirstWrite -1}
		XW_block_230 {Type I LastRead 0 FirstWrite -1}
		XW_block_39 {Type I LastRead 0 FirstWrite -1}
		XW_block_103 {Type I LastRead 0 FirstWrite -1}
		XW_block_167 {Type I LastRead 0 FirstWrite -1}
		XW_block_231 {Type I LastRead 0 FirstWrite -1}
		XW_block_40 {Type I LastRead 0 FirstWrite -1}
		XW_block_104 {Type I LastRead 0 FirstWrite -1}
		XW_block_168 {Type I LastRead 0 FirstWrite -1}
		XW_block_232 {Type I LastRead 0 FirstWrite -1}
		XW_block_41 {Type I LastRead 0 FirstWrite -1}
		XW_block_105 {Type I LastRead 0 FirstWrite -1}
		XW_block_169 {Type I LastRead 0 FirstWrite -1}
		XW_block_233 {Type I LastRead 0 FirstWrite -1}
		XW_block_42 {Type I LastRead 0 FirstWrite -1}
		XW_block_106 {Type I LastRead 0 FirstWrite -1}
		XW_block_170 {Type I LastRead 0 FirstWrite -1}
		XW_block_234 {Type I LastRead 0 FirstWrite -1}
		XW_block_43 {Type I LastRead 0 FirstWrite -1}
		XW_block_107 {Type I LastRead 0 FirstWrite -1}
		XW_block_171 {Type I LastRead 0 FirstWrite -1}
		XW_block_235 {Type I LastRead 0 FirstWrite -1}
		XW_block_44 {Type I LastRead 0 FirstWrite -1}
		XW_block_108 {Type I LastRead 0 FirstWrite -1}
		XW_block_172 {Type I LastRead 0 FirstWrite -1}
		XW_block_236 {Type I LastRead 0 FirstWrite -1}
		XW_block_45 {Type I LastRead 0 FirstWrite -1}
		XW_block_109 {Type I LastRead 0 FirstWrite -1}
		XW_block_173 {Type I LastRead 0 FirstWrite -1}
		XW_block_237 {Type I LastRead 0 FirstWrite -1}
		XW_block_46 {Type I LastRead 0 FirstWrite -1}
		XW_block_110 {Type I LastRead 0 FirstWrite -1}
		XW_block_174 {Type I LastRead 0 FirstWrite -1}
		XW_block_238 {Type I LastRead 0 FirstWrite -1}
		XW_block_47 {Type I LastRead 0 FirstWrite -1}
		XW_block_111 {Type I LastRead 0 FirstWrite -1}
		XW_block_175 {Type I LastRead 0 FirstWrite -1}
		XW_block_239 {Type I LastRead 0 FirstWrite -1}
		XW_block_48 {Type I LastRead 0 FirstWrite -1}
		XW_block_112 {Type I LastRead 0 FirstWrite -1}
		XW_block_176 {Type I LastRead 0 FirstWrite -1}
		XW_block_240 {Type I LastRead 0 FirstWrite -1}
		XW_block_49 {Type I LastRead 0 FirstWrite -1}
		XW_block_113 {Type I LastRead 0 FirstWrite -1}
		XW_block_177 {Type I LastRead 0 FirstWrite -1}
		XW_block_241 {Type I LastRead 0 FirstWrite -1}
		XW_block_50 {Type I LastRead 0 FirstWrite -1}
		XW_block_114 {Type I LastRead 0 FirstWrite -1}
		XW_block_178 {Type I LastRead 0 FirstWrite -1}
		XW_block_242 {Type I LastRead 0 FirstWrite -1}
		XW_block_51 {Type I LastRead 0 FirstWrite -1}
		XW_block_115 {Type I LastRead 0 FirstWrite -1}
		XW_block_179 {Type I LastRead 0 FirstWrite -1}
		XW_block_243 {Type I LastRead 0 FirstWrite -1}
		XW_block_52 {Type I LastRead 0 FirstWrite -1}
		XW_block_116 {Type I LastRead 0 FirstWrite -1}
		XW_block_180 {Type I LastRead 0 FirstWrite -1}
		XW_block_244 {Type I LastRead 0 FirstWrite -1}
		XW_block_53 {Type I LastRead 0 FirstWrite -1}
		XW_block_117 {Type I LastRead 0 FirstWrite -1}
		XW_block_181 {Type I LastRead 0 FirstWrite -1}
		XW_block_245 {Type I LastRead 0 FirstWrite -1}
		XW_block_54 {Type I LastRead 0 FirstWrite -1}
		XW_block_118 {Type I LastRead 0 FirstWrite -1}
		XW_block_182 {Type I LastRead 0 FirstWrite -1}
		XW_block_246 {Type I LastRead 0 FirstWrite -1}
		XW_block_55 {Type I LastRead 0 FirstWrite -1}
		XW_block_119 {Type I LastRead 0 FirstWrite -1}
		XW_block_183 {Type I LastRead 0 FirstWrite -1}
		XW_block_247 {Type I LastRead 0 FirstWrite -1}
		XW_block_56 {Type I LastRead 0 FirstWrite -1}
		XW_block_120 {Type I LastRead 0 FirstWrite -1}
		XW_block_184 {Type I LastRead 0 FirstWrite -1}
		XW_block_248 {Type I LastRead 0 FirstWrite -1}
		XW_block_57 {Type I LastRead 0 FirstWrite -1}
		XW_block_121 {Type I LastRead 0 FirstWrite -1}
		XW_block_185 {Type I LastRead 0 FirstWrite -1}
		XW_block_249 {Type I LastRead 0 FirstWrite -1}
		XW_block_58 {Type I LastRead 0 FirstWrite -1}
		XW_block_122 {Type I LastRead 0 FirstWrite -1}
		XW_block_186 {Type I LastRead 0 FirstWrite -1}
		XW_block_250 {Type I LastRead 0 FirstWrite -1}
		XW_block_59 {Type I LastRead 0 FirstWrite -1}
		XW_block_123 {Type I LastRead 0 FirstWrite -1}
		XW_block_187 {Type I LastRead 0 FirstWrite -1}
		XW_block_251 {Type I LastRead 0 FirstWrite -1}
		XW_block_60 {Type I LastRead 0 FirstWrite -1}
		XW_block_124 {Type I LastRead 0 FirstWrite -1}
		XW_block_188 {Type I LastRead 0 FirstWrite -1}
		XW_block_252 {Type I LastRead 0 FirstWrite -1}
		XW_block_61 {Type I LastRead 0 FirstWrite -1}
		XW_block_125 {Type I LastRead 0 FirstWrite -1}
		XW_block_189 {Type I LastRead 0 FirstWrite -1}
		XW_block_253 {Type I LastRead 0 FirstWrite -1}
		XW_block_62 {Type I LastRead 0 FirstWrite -1}
		XW_block_126 {Type I LastRead 0 FirstWrite -1}
		XW_block_190 {Type I LastRead 0 FirstWrite -1}
		XW_block_254 {Type I LastRead 0 FirstWrite -1}
		XW_block_63 {Type I LastRead 0 FirstWrite -1}
		XW_block_127 {Type I LastRead 0 FirstWrite -1}
		XW_block_191 {Type I LastRead 0 FirstWrite -1}
		XW_block_255 {Type I LastRead 0 FirstWrite -1}
		XW_stream {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1018886", "Max" : "1018886"}
	, {"Name" : "Interval", "Min" : "1018886", "Max" : "1018886"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	X_stream { ap_fifo {  { X_stream_dout fifo_data_out 0 512 }  { X_stream_empty_n fifo_status_empty 0 1 }  { X_stream_read fifo_data_in 1 1 }  { X_stream_num_data_valid fifo_update 0 5 }  { X_stream_fifo_cap fifo_data 0 5 } } }
	W_stream { ap_fifo {  { W_stream_dout fifo_data_out 0 512 }  { W_stream_empty_n fifo_status_empty 0 1 }  { W_stream_read fifo_data_in 1 1 }  { W_stream_num_data_valid fifo_update 0 5 }  { W_stream_fifo_cap fifo_data 0 5 } } }
	XW_stream { ap_fifo {  { XW_stream_din fifo_data_out 1 512 }  { XW_stream_full_n fifo_status_empty 0 1 }  { XW_stream_write fifo_data_in 1 1 }  { XW_stream_num_data_valid fifo_update 0 32 }  { XW_stream_fifo_cap fifo_data 0 32 } } }
}
