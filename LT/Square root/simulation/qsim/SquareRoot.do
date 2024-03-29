onerror {quit -f}
vlib work
vlog -work work SquareRoot.vo
vlog -work work SquareRoot.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Controller_vlg_vec_tst
vcd file -direction SquareRoot.msim.vcd
vcd add -internal Controller_vlg_vec_tst/*
vcd add -internal Controller_vlg_vec_tst/i1/*
add wave /*
run -all
