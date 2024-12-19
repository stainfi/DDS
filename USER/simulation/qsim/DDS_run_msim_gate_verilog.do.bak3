transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {DDS.vo}

vlog -vlog01compat -work work +incdir+D:/Quartus/project/DDS/USER/simulation/qsim {D:/Quartus/project/DDS/USER/simulation/qsim/DDS_vlg_tst.v}

vsim -t 1ps -L altera_mf_ver -L altera_ver -L lpm_ver -L sgate_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L gate_work -L work -voptargs="+acc"  DDS_vlg_tst

add wave *
view structure
view signals
run -all
