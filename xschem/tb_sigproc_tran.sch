v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=0	
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.5490328e-06
x2=3.59591e-05
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
y2=2.5}
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
N 410 -120 620 -120 {lab=OUT}
N 320 -120 410 -120 {lab=OUT}
N 270 -120 320 -120 {lab=OUT}
N -140 -160 -20 -160 {lab=SIG}
N -200 -160 -140 -160 {lab=SIG}
N 120 -270 120 -220 {lab=VDD}
N -60 -60 -60 -40 {lab=#net1}
N -60 -60 -20 -60 {lab=#net1}
N -60 20 -60 30 {lab=0}
N 380 -120 380 -90 {lab=OUT}
N 380 -30 380 20 {lab=0}
N 260 -120 270 -120 {lab=OUT}
N 120 -0 120 40 {lab=0}
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
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
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
.save v(out)
.control
	tran 10n 50u
	write tb_sigproc_tran.raw
	set appendwrite
	quit
.endc
"}
C {vsource.sym} -360 50 0 0 {name=V2 value="PULSE(1.0 0.75 0.0 1n 1n 5u 10u)" savecurrent=false}
C {gnd.sym} -360 120 0 0 {name=l2 lab=0
value="PULSE(1.0 0.5 0.0 1n 1n 5u 10u)"}
C {lab_wire.sym} -310 -160 0 1 {name=p3 sig_type=std_logic lab=SIG}
C {lab_wire.sym} 580 -120 0 0 {name=p4 sig_type=std_logic lab=OUT}
C {ip_sigproc.sym} 120 -120 0 0 {name=x1}
C {gnd.sym} 120 40 0 0 {name=l1 lab=0
value="PULSE(1.0 0.5 0.0 1n 1n 5u 10u)"}
C {vdd.sym} 120 -270 0 0 {name=l3 lab=VDD}
C {vsource.sym} -60 -10 0 0 {name=V1 value=1 savecurrent=false}
C {gnd.sym} -60 30 0 0 {name=l4 lab=0
value="PULSE(1.0 0.5 0.0 1n 1n 5u 10u)"}
C {capa.sym} 380 -60 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 380 20 0 0 {name=l5 lab=0
value="PULSE(1.0 0.5 0.0 1n 1n 5u 10u)"}
