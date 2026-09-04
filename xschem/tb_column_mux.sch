v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 320 -180 1220 420 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=8.5
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
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
digital=1
color="7 4 6 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9"
node="clk
A[4:0];a4,a3,a2,a1,a0
Y[16:0];y20,y19,y18,y17,y16,y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,y3,y2,y1,y0
y0
y1
y2
y3
y4
y5
y6
y7
y8
y9
y10
y11
y12
y13
y14
y15
y16
y17
y18
y19
y20"}
C {devices/launcher.sym} -75 -535 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -140 -710 0 0 {name=MODELS only_toplevel=true
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
astim [clk A4 A3 A2 A1 A0] stim
.model stim d_source input_file=\\"../st_column_mux.txt\\"
adut [clk A4 A3 A2 A1 A0] [Y20 Y19 Y18 Y17 Y16 Y15 Y14 Y13 Y12 Y11 Y10 Y9 Y8 Y7 Y6 Y5 Y4 Y3 Y2 Y1 Y0] null dut
.model dut d_cosim simulation=\\"../../verilog/rtl/ip_column_mux/ip_column_mux.so\\"
.param VDD=3.3
rclk clk 0 100k

ra4 A4 0 100k
ra3 A3 0 100k
ra2 A2 0 100k
ra1 A1 0 100k
ra0 A0 0 100k

ry20 Y20 0 100k
ry19 Y19 0 100k
ry18 Y18 0 100k
ry17 Y17 0 100k
ry16 Y16 0 100k
ry15 Y15 0 100k
ry14 Y14 0 100k
ry13 Y13 0 100k
ry12 Y12 0 100k
ry11 Y11 0 100k
ry10 Y10 0 100k
ry9 Y9 0 100k
ry8 Y8 0 100k
ry7 Y7 0 100k
ry6 Y6 0 100k
ry5 Y5 0 100k
ry4 Y4 0 100k
ry3 Y3 0 100k
ry2 Y2 0 100k
ry1 Y1 0 100k
ry0 Y0 0 100k

.control
	reset
	tran 1u 2.2m
	save all
	write tb_column_mux.raw
	quit
.endc
"}
