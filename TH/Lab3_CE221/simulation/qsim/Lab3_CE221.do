onerror {quit -f}
vlib work
vlog -work work Lab3_CE221.vo
vlog -work work Lab3_CE221.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.counter_4bit_vlg_vec_tst
vcd file -direction Lab3_CE221.msim.vcd
vcd add -internal counter_4bit_vlg_vec_tst/*
vcd add -internal counter_4bit_vlg_vec_tst/i1/*
add wave /*
run -all
