onerror {quit -f}
vlib work
vlog -work work ss4bit.vo
vlog -work work ss4bit.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ss4bit_vlg_vec_tst
vcd file -direction ss4bit.msim.vcd
vcd add -internal ss4bit_vlg_vec_tst/*
vcd add -internal ss4bit_vlg_vec_tst/i1/*
add wave /*
run -all
