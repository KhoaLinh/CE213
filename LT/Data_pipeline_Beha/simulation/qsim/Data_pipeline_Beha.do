onerror {quit -f}
vlib work
vlog -work work Data_pipeline_Beha.vo
vlog -work work Data_pipeline_Beha.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Squareroot_vlg_vec_tst
vcd file -direction Data_pipeline_Beha.msim.vcd
vcd add -internal Squareroot_vlg_vec_tst/*
vcd add -internal Squareroot_vlg_vec_tst/i1/*
add wave /*
run -all
