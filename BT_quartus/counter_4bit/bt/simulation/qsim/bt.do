onerror {quit -f}
vlib work
vlog -work work bt.vo
vlog -work work bt.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bt_vlg_vec_tst
vcd file -direction bt.msim.vcd
vcd add -internal bt_vlg_vec_tst/*
vcd add -internal bt_vlg_vec_tst/i1/*
add wave /*
run -all
