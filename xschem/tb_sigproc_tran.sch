v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=0.81	
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 14"
node="out
out_parax"
y2=2.2}
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
N 410 280 620 280 {lab=OUT_PARAX}
N 320 280 410 280 {lab=OUT_PARAX}
N 270 280 320 280 {lab=OUT_PARAX}
N 120 130 120 180 {lab=VDD}
N -60 340 -60 360 {lab=#net2}
N -60 340 -20 340 {lab=#net2}
N -60 420 -60 430 {lab=0}
N 380 280 380 310 {lab=OUT_PARAX}
N 380 370 380 420 {lab=0}
N 260 280 270 280 {lab=OUT_PARAX}
N 120 400 120 440 {lab=0}
N -120 240 -20 240 {lab=SIG}
N -120 -160 -120 240 {lab=SIG}
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
.save v(out) v(out_parax)
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
C {lab_wire.sym} 580 280 0 0 {name=p1 sig_type=std_logic lab=OUT_PARAX
}
C {ip_sigproc.sym} 120 280 0 0 {name=x2
schematic=ip_sigproc_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_sigproc.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_sigproc.sim.spice]"}
C {gnd.sym} 120 440 0 0 {name=l6 lab=0
value="PULSE(1.0 0.5 0.0 1n 1n 5u 10u)"}
C {vdd.sym} 120 130 0 0 {name=l7 lab=VDD}
C {vsource.sym} -60 390 0 0 {name=V3 value=1 savecurrent=false}
C {gnd.sym} -60 430 0 0 {name=l8 lab=0
value="PULSE(1.0 0.5 0.0 1n 1n 5u 10u)"}
C {capa.sym} 380 340 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 380 420 0 0 {name=l9 lab=0
value="PULSE(1.0 0.5 0.0 1n 1n 5u 10u)"}
