onerror {quit -f}
vlib work
vlog -work work TKLLS.vo
vlog -work work TKLLS.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.TKLLS_vlg_vec_tst
vcd file -direction TKLLS.msim.vcd
vcd add -internal TKLLS_vlg_vec_tst/*
vcd add -internal TKLLS_vlg_vec_tst/i1/*
add wave /*
run -all
