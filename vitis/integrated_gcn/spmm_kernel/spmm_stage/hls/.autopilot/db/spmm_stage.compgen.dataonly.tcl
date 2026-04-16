# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
row_length { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
colind { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
values { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
H_temp { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
H_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
}
dict set axilite_register_dict control $port_control


