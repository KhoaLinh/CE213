onerror {quit -f}
vlib work
vlog -work work can.vo
vlog -work work can.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.BS_vlg_vec_tst
vcd file -direction can.msim.vcd
vcd add -internal BS_vlg_vec_tst/*
vcd add -internal BS_vlg_vec_tst/i1/*
add wave /*
run -all
