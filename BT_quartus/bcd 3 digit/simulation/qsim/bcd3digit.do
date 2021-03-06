onerror {quit -f}
vlib work
vlog -work work bcd3digit.vo
vlog -work work bcd3digit.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bcd3digit_vlg_vec_tst
vcd file -direction bcd3digit.msim.vcd
vcd add -internal bcd3digit_vlg_vec_tst/*
vcd add -internal bcd3digit_vlg_vec_tst/i1/*
add wave /*
run -all
