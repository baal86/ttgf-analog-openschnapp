v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 730 -370 1530 30 {flags=graph
y1=0
y2=1.6
ypos1=0
ypos2=1.6
divy=5
subdivy=1
unity=1
x1=0
x2=0.0022
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="y15
a3
a2
a1
a0"
color="4 7 7 7 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
digital=1}
C {devices/launcher.sym} -75 -535 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -140 70 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {devices/launcher.sym} -75 -495 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {simulator_commands_shown.sym} -150 -340 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
astim [A3 A2 A1 A0 ] stim
.model stim d_source input_file=\\"../stim.txt\\"
adut [ A3 A2 A1 A0 ] [Y15 Y14 Y13 Y12 Y11 Y10 Y9 Y8 Y7 Y6 Y5 Y4 Y3 Y2 Y1 Y0] null dut
.model dut d_cosim simulation=\\"../../verilog/rtl/ip_line_mux.so\\"
.param VDD=3.3
r1 Y15 0 100k
r2 A3 0 100k
r3 A2 0 100k
r4 A1 0 100k
r5 A0 0 100k

.control
	reset
	tran 25n 2.2m
	save currents
	save all
	write tb_line_mux.raw
.endc
"}
