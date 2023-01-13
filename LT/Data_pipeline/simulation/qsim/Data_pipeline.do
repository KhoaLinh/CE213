onerror {quit -f}
vlib work
vlog -work work Data_pipeline.vo
vlog -work work Data_pipeline.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Data_pipeline_vlg_vec_tst
vcd file -direction Data_pipeline.msim.vcd
vcd add -internal Data_pipeline_vlg_vec_tst/*
vcd add -internal Data_pipeline_vlg_vec_tst/i1/*
add wave /*
run -all
