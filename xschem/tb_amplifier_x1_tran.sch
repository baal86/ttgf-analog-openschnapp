v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=0.65	
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=50e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=4
node=out
hcursor2_y=1.8627841
y2=1.1}
N -360 -80 -360 -60 {lab=SIG}
N -360 -60 -360 -50 {lab=SIG}
N -360 -50 -360 -30 {lab=SIG}
N -360 -120 -360 -80 {lab=SIG}
N -360 -160 -360 -120 {lab=SIG}
N -360 -30 -360 20 {lab=SIG}
N -360 80 -360 120 {lab=0}
N -250 -160 -200 -160 {lab=SIG}
N -300 -160 -250 -160 {lab=SIG}
N -360 -160 -300 -160 {lab=SIG}
N 260 -180 470 -180 {lab=OUT}
N -80 -200 -70 -200 {lab=OUT}
N 170 -180 260 -180 {lab=OUT}
N 200 -340 240 -340 {lab=OUT}
N 140 -340 200 -340 {lab=OUT}
N 30 -340 140 -340 {lab=OUT}
N -100 -340 -30 -340 {lab=OUT}
N -100 -300 -100 -200 {lab=OUT}
N -100 -200 -80 -200 {lab=OUT}
N -100 -340 -100 -300 {lab=OUT}
N 50 -90 50 -80 {lab=0}
N 50 -270 50 -260 {lab=VDD}
N 120 -180 170 -180 {lab=OUT}
N -70 -200 -20 -200 {lab=OUT}
N 240 -240 240 -180 {lab=OUT}
N -30 -340 30 -340 {lab=OUT}
N -140 -160 -20 -160 {lab=SIG}
N 240 -310 240 -240 {lab=OUT}
N -200 -160 -140 -160 {lab=SIG}
N 240 -340 240 -310 {lab=OUT}
C {devices/launcher.sym} -1075 -545 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -1150 60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.inc $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {devices/launcher.sym} -1075 -505 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].op.raw
"
}
C {simulator_commands_shown.sym} -1150 -350 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
V_DD VDD 0 3.3
.option klu
.option reltol=0.005
.option abstol=100n
.save all
.control
	op
	write tb_amplifier_x1_tran.op.raw
	tran 10n 50u
	write tb_amplifier_x1_tran.raw
	set appendwrite
	quit
.endc
"}
C {vsource.sym} -360 50 0 0 {name=V2 value="PULSE(1.0 0.75 0.0 1n 1n 5u 10u)" savecurrent=false}
C {gnd.sym} -360 120 0 0 {name=l2 lab=0
value="PULSE(1.0 0.5 0.0 1n 1n 5u 10u)"}
C {lab_wire.sym} -310 -160 0 1 {name=p3 sig_type=std_logic lab=SIG}
C {ip_amplifier.sym} 50 -180 0 0 {name=x1}
C {gnd.sym} 50 -80 0 0 {name=l3 lab=0}
C {lab_wire.sym} 430 -180 0 0 {name=p4 sig_type=std_logic lab=OUT}
C {vdd.sym} 50 -270 0 0 {name=l6 lab=VDD}
