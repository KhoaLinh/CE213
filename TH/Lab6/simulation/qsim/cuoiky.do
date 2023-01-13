onerror {quit -f}
vlib work
vlog -work work cuoiky.vo
vlog -work work cuoiky.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ALU_vlg_vec_tst
vcd file -direction cuoiky.msim.vcd
vcd add -internal ALU_vlg_vec_tst/*
vcd add -internal ALU_vlg_vec_tst/i1/*
add wave /*
run -all
