v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=1.8	
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.1473429e-05
x2=0.00013176117
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5"
node="outb
outa"
hcursor2_y=1.8627841
y2=2.5}
N -360 -80 -360 -60 {lab=SIG}
N -360 -60 -360 -50 {lab=SIG}
N -360 -50 -360 -30 {lab=SIG}
N -360 -120 -360 -80 {lab=SIG}
N -360 -160 -360 -120 {lab=SIG}
N -360 -30 -360 20 {lab=SIG}
N -360 80 -360 120 {lab=0}
N -60 -160 -50 -160 {lab=#net1}
N 190 -140 280 -140 {lab=OUTB}
N 220 -300 260 -300 {lab=OUTB}
N 260 -260 260 -140 {lab=OUTB}
N 160 -300 220 -300 {lab=OUTB}
N 560 -140 560 -110 {lab=OUTB}
N 560 -50 560 -10 {lab=0}
N 490 -140 490 -110 {lab=OUTB}
N 490 -50 490 -10 {lab=0}
N -80 -120 -80 -90 {lab=#net2}
N -80 -120 -50 -120 {lab=#net2}
N 50 -300 160 -300 {lab=OUTB}
N -80 -300 -10 -300 {lab=#net1}
N -80 -260 -80 -160 {lab=#net1}
N -80 -160 -60 -160 {lab=#net1}
N -140 -160 -80 -160 {lab=#net1}
N -250 -160 -200 -160 {lab=SIG}
N -80 -300 -80 -260 {lab=#net1}
N 260 -300 260 -260 {lab=OUTB}
N 70 -50 70 -40 {lab=0}
N 70 -230 70 -220 {lab=VDD}
N -50 -160 0 -160 {lab=#net1}
N -50 -120 0 -120 {lab=#net2}
N 140 -140 190 -140 {lab=OUTB}
N -300 -160 -250 -160 {lab=SIG}
N -360 -160 -300 -160 {lab=SIG}
N 490 -140 670 -140 {lab=OUTB}
N 340 -140 490 -140 {lab=OUTB}
N 280 -140 340 -140 {lab=OUTB}
N -60 -520 -50 -520 {lab=OUTA}
N 190 -500 280 -500 {lab=OUTA}
N 220 -660 260 -660 {lab=OUTA}
N 260 -620 260 -500 {lab=OUTA}
N 160 -660 220 -660 {lab=OUTA}
N 50 -660 160 -660 {lab=OUTA}
N -80 -660 -10 -660 {lab=OUTA}
N -80 -620 -80 -520 {lab=OUTA}
N -80 -660 -80 -620 {lab=OUTA}
N 260 -660 260 -620 {lab=OUTA}
N 70 -410 70 -400 {lab=0}
N 70 -590 70 -580 {lab=VDD}
N -50 -520 0 -520 {lab=OUTA}
N -50 -480 0 -480 {lab=SIG}
N 140 -500 190 -500 {lab=OUTA}
N -10 -660 50 -660 {lab=OUTA}
N -80 -520 -60 -520 {lab=OUTA}
N -360 -480 -50 -480 {lab=SIG}
N -360 -480 -360 -160 {lab=SIG}
N 280 -500 320 -500 {lab=OUTA}
N 320 -500 320 -470 {lab=OUTA}
N 320 -410 320 -370 {lab=0}
N 400 -500 400 -470 {lab=OUTA}
N 400 -410 400 -370 {lab=0}
N 320 -500 430 -500 {lab=OUTA}
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
	tran 100n 100u
	write tb_amplifier_tran.raw
	set appendwrite
	quit
.endc
"}
C {vsource.sym} -360 50 0 0 {name=V2 value="PULSE(2.0 1.9 0.0 1n 1n 5u 10u)" savecurrent=false}
C {gnd.sym} -360 120 0 0 {name=l2 lab=0
value="PULSE(1.0 0.5 0.0 1n 1n 5u 10u)"}
C {lab_wire.sym} -310 -160 0 1 {name=p3 sig_type=std_logic lab=SIG}
C {ip_amplifier.sym} 70 -140 0 0 {name=x2}
C {gnd.sym} 70 -40 0 0 {name=l4 lab=0}
C {lab_wire.sym} 620 -140 0 0 {name=p4 sig_type=std_logic lab=OUTB}
C {res.sym} 560 -80 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 560 -10 0 0 {name=l7 lab=0}
C {capa.sym} 490 -80 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 490 -10 0 0 {name=l8 lab=0}
C {vsource.sym} -80 -60 0 0 {name=V3 value=2.0 savecurrent=false}
C {gnd.sym} -80 -30 0 0 {name=l9 lab=0}
C {res.sym} -170 -160 1 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 20 -300 1 0 {name=R4
value=40k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 70 -230 0 0 {name=l11 lab=VDD}
C {ip_amplifier.sym} 70 -500 0 0 {name=x1}
C {gnd.sym} 70 -400 0 0 {name=l1 lab=0}
C {vdd.sym} 70 -590 0 0 {name=l5 lab=VDD}
C {res.sym} 320 -440 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 320 -370 0 0 {name=l3 lab=0}
C {capa.sym} 400 -440 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 400 -370 0 0 {name=l6 lab=0}
C {lab_wire.sym} 370 -500 0 0 {name=p1 sig_type=std_logic lab=OUTA}
