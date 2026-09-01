set layout [readnet spice $project.lvs.spice]
set source [readnet spice /dev/null]
#readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.tech/ngspice/sm141064.spice $layout
#readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.tech/ngspice/sm141064.spice $source

# top level GL verilog
readnet verilog ../src/project.v $source
readnet verilog ../src/column.v $source

# add an GL verilog of any digital blocks:
# readnet verilog ../verilog/gl/ip_line_mux.v $source

# add any spice files of your analog blocks:
readnet spice ../xschem/simulation/$project.lvs.spice $source

lvs "$layout $project" "$source $project" $::env(PDK_ROOT)/$::env(PDK)/libs.tech/netgen/gf180mcuD_setup.tcl lvs.report -blackbox