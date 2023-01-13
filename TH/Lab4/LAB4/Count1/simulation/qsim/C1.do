onerror {quit -f}
vlib work
vlog -work work C1.vo
vlog -work work C1.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.C1_vlg_vec_tst
vcd file -direction C1.msim.vcd
vcd add -internal C1_vlg_vec_tst/*
vcd add -internal C1_vlg_vec_tst/i1/*
add wave /*
run -all
