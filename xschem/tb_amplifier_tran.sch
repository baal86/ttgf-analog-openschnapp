v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=0.95	
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
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
y2=2.6}
N -510 -360 -510 -340 {lab=SIG}
N -510 -340 -510 -330 {lab=SIG}
N -510 -270 -510 -250 {lab=SIG}
N -510 -400 -510 -360 {lab=SIG}
N -510 -440 -510 -400 {lab=SIG}
N -510 -440 -300 -440 {lab=SIG}
N -510 -250 -510 -200 {lab=SIG}
N -510 -330 -510 -270 {lab=SIG}
N -510 -140 -510 -100 {lab=0}
N 280 -140 490 -140 {lab=OUT}
N -60 -160 -50 -160 {lab=#net1}
N 190 -140 280 -140 {lab=OUT}
N 220 -300 260 -300 {lab=OUT}
N 260 -260 260 -140 {lab=OUT}
N 160 -300 220 -300 {lab=OUT}
N 390 -140 390 -110 {lab=OUT}
N 390 -50 390 -10 {lab=0}
N 320 -140 320 -110 {lab=OUT}
N 320 -50 320 -10 {lab=0}
N -80 -120 -80 -90 {lab=#net2}
N -80 -120 -50 -120 {lab=#net2}
N 50 -300 160 -300 {lab=OUT}
N -80 -300 -10 -300 {lab=#net1}
N -80 -260 -80 -160 {lab=#net1}
N -80 -160 -60 -160 {lab=#net1}
N -140 -160 -80 -160 {lab=#net1}
N -250 -160 -200 -160 {lab=SIG}
N -250 -440 -250 -160 {lab=SIG}
N -80 -300 -80 -260 {lab=#net1}
N 260 -300 260 -260 {lab=OUT}
N 70 -50 70 -40 {lab=0}
N 70 -230 70 -220 {lab=VDD}
N -50 -160 0 -160 {lab=#net1}
N -50 -120 0 -120 {lab=#net2}
N 140 -140 190 -140 {lab=OUT}
N -300 -440 -250 -440 {lab=SIG}
C {devices/launcher.sym} -1085 -545 0 0 {name=h1
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

.control
	save all
	tran 100n 1m
	write tb_amplifier_tran.raw
	set appendwrite
	quit
.endc
"}
C {vsource.sym} -510 -170 0 0 {name=V2 value="PULSE(1.0 0.5 0.0 1n 1n 100u 200u)" savecurrent=false}
C {gnd.sym} -510 -100 0 0 {name=l2 lab=0}
C {lab_wire.sym} -460 -440 0 1 {name=p3 sig_type=std_logic lab=SIG}
C {ip_amplifier.sym} 70 -140 0 0 {name=x2}
C {gnd.sym} 70 -40 0 0 {name=l4 lab=0}
C {lab_wire.sym} 450 -140 0 0 {name=p4 sig_type=std_logic lab=OUT}
C {res.sym} 390 -80 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 390 -10 0 0 {name=l7 lab=0}
C {capa.sym} 320 -80 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 320 -10 0 0 {name=l8 lab=0}
C {vsource.sym} -80 -60 0 0 {name=V3 value=1.0 savecurrent=false}
C {gnd.sym} -80 -30 0 0 {name=l9 lab=0}
C {res.sym} -170 -160 1 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 20 -300 1 0 {name=R4
value=30k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 70 -230 0 0 {name=l11 lab=VDD}
