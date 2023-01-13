onerror {quit -f}
vlib work
vlog -work work lnx.vo
vlog -work work lnx.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MUL_vlg_vec_tst
vcd file -direction lnx.msim.vcd
vcd add -internal MUL_vlg_vec_tst/*
vcd add -internal MUL_vlg_vec_tst/i1/*
add wave /*
run -all
