onerror {quit -f}
vlib work
vlog -work work nhan4bit.vo
vlog -work work nhan4bit.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.nhan4bit_vlg_vec_tst
vcd file -direction nhan4bit.msim.vcd
vcd add -internal nhan4bit_vlg_vec_tst/*
vcd add -internal nhan4bit_vlg_vec_tst/i1/*
add wave /*
run -all
