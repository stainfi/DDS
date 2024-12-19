transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Quartus/project/DDS/LIB {D:/Quartus/project/DDS/LIB/DFF32.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/project/DDS/LIB {D:/Quartus/project/DDS/LIB/ADDER32.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/project/DDS/ROM {D:/Quartus/project/DDS/ROM/sin_rom.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/project/DDS/LIB {D:/Quartus/project/DDS/LIB/DIV10.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/project/DDS/LIB {D:/Quartus/project/DDS/LIB/add_off.v}

vlog -vlog01compat -work work +incdir+D:/Quartus/project/DDS/USER/simulation/qsim {D:/Quartus/project/DDS/USER/simulation/qsim/DDS_vlg_tst.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  DDS_vlg_tst

add wave *
view structure
view signals
run -all
