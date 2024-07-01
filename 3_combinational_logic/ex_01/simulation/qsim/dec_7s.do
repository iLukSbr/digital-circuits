onerror {exit -code 1}
vlib work
vcom -work work dec_7s.vho
vcom -work work Waveform.vwf.vht
vsim -c -t 1ps -L maxii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.dec_7s_vhd_vec_tst
vcd file -direction dec_7s.msim.vcd
vcd add -internal dec_7s_vhd_vec_tst/*
vcd add -internal dec_7s_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
