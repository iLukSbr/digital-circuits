onerror {exit -code 1}
vlib work
vcom -work work ff_jk_deb.vho
vcom -work work output_files/Waveform.vwf.vht
vsim -c -t 1ps -L maxii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ff_jk_deb_vhd_vec_tst
vcd file -direction ff_jk_deb.msim.vcd
vcd add -internal ff_jk_deb_vhd_vec_tst/*
vcd add -internal ff_jk_deb_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
