v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=0.17
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5 6 7 8 9"
node="out
x1.com_p
x1.low_r
x1.low_l
x1.diff_r
x1.diff_l"}
N -410 -640 -30 -640 {lab=VDD}
N -410 -250 -410 -200 {lab=0}
N -410 -640 -410 -310 {lab=VDD}
N -30 -640 210 -640 {lab=VDD}
N 210 -640 210 -500 {lab=VDD}
N 210 -330 210 -300 {lab=0}
N 60 -440 90 -440 {lab=OUT}
N 330 -420 370 -420 {lab=OUT}
N 370 -420 480 -420 {lab=OUT}
N 40 -400 90 -400 {lab=#net1}
N 40 -400 40 -380 {lab=#net1}
N 40 -380 40 -370 {lab=#net1}
N 40 -310 40 -290 {lab=0}
N 480 -420 510 -420 {lab=OUT}
N 510 -420 550 -420 {lab=OUT}
N 550 -420 560 -420 {lab=OUT}
N 40 -540 40 -440 {lab=OUT}
N 60 -540 370 -540 {lab=OUT}
N 370 -540 370 -420 {lab=OUT}
N 40 -540 60 -540 {lab=OUT}
N 40 -440 60 -440 {lab=OUT}
C {vsource.sym} -410 -280 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -410 -200 0 0 {name=l3 lab=0}
C {devices/launcher.sym} -1075 -545 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -1170 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {devices/launcher.sym} -1075 -505 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {simulator_commands_shown.sym} -1150 -350 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
	dc V3 0 3.3 0.01
	save all
	write tb_amplifier.raw
	quit
.endc
"}
C {lab_wire.sym} -380 -640 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {ip_amplifier.sym} 210 -420 0 0 {name=x1}
C {gnd.sym} 210 -300 0 0 {name=l1 lab=0}
C {lab_wire.sym} 500 -420 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {vsource.sym} 40 -340 0 0 {name=V3 value=2.0 savecurrent=false}
C {gnd.sym} 40 -290 0 0 {name=l4 lab=0}
