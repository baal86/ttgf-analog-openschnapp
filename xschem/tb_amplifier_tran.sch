v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=0.72	
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-5e-06
x2=9.5e-05
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
y2=2.1}
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
N 490 -180 700 -180 {lab=OUTA}
N 150 -200 160 -200 {lab=OUTA}
N 400 -180 490 -180 {lab=OUTA}
N 430 -340 470 -340 {lab=OUTA}
N 370 -340 430 -340 {lab=OUTA}
N 600 -180 600 -150 {lab=OUTA}
N 600 -90 600 -50 {lab=0}
N 260 -340 370 -340 {lab=OUTA}
N 130 -340 200 -340 {lab=OUTA}
N 130 -300 130 -200 {lab=OUTA}
N 130 -200 150 -200 {lab=OUTA}
N 130 -340 130 -300 {lab=OUTA}
N 470 -340 470 -300 {lab=OUTA}
N 280 -90 280 -80 {lab=0}
N 280 -270 280 -260 {lab=VDD}
N 350 -180 400 -180 {lab=OUTA}
N 110 -160 150 -160 {lab=SIG}
N 180 -160 210 -160 {lab=SIG}
N -20 -160 110 -160 {lab=SIG}
N 160 -200 210 -200 {lab=OUTA}
N 470 -240 470 -180 {lab=OUTA}
N 150 -160 180 -160 {lab=SIG}
N 200 -340 260 -340 {lab=OUTA}
N 490 230 700 230 {lab=OUTB}
N 400 230 490 230 {lab=OUTB}
N 430 70 470 70 {lab=OUTB}
N 370 70 430 70 {lab=OUTB}
N 600 230 600 260 {lab=OUTB}
N 600 320 600 360 {lab=0}
N 470 70 470 110 {lab=OUTB}
N 280 320 280 330 {lab=0}
N 280 140 280 150 {lab=VDD}
N 350 230 400 230 {lab=OUTB}
N 470 170 470 230 {lab=OUTB}
N -140 -160 -20 -160 {lab=SIG}
N -40 -160 -40 210 {lab=SIG}
N 130 70 310 70 {lab=#net1}
N 130 70 130 210 {lab=#net1}
N 130 210 210 210 {lab=#net1}
N 80 210 130 210 {lab=#net1}
N -40 210 20 210 {lab=SIG}
N 140 250 140 270 {lab=#net2}
N 140 250 210 250 {lab=#net2}
N 140 330 140 340 {lab=0}
N 550 230 550 260 {lab=OUTB}
N 550 320 550 360 {lab=0}
N 470 -310 470 -240 {lab=OUTA}
N 470 110 470 170 {lab=OUTB}
N -200 -160 -140 -160 {lab=SIG}
N 370 20 470 20 {lab=OUTB}
N 470 20 470 70 {lab=OUTB}
N 130 20 310 20 {lab=#net1}
N 130 20 130 70 {lab=#net1}
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
.option abstol=10u
.control
	save all
	tran 1n 100u
	write tb_amplifier_tran.raw
	set appendwrite
	quit
.endc
"}
C {vsource.sym} -360 50 0 0 {name=V2 value="PULSE(1.0 0.75 0.0 1n 1n 5u 10u)" savecurrent=false}
C {gnd.sym} -360 120 0 0 {name=l2 lab=0
value="PULSE(1.0 0.5 0.0 1n 1n 5u 10u)"}
C {lab_wire.sym} -310 -160 0 1 {name=p3 sig_type=std_logic lab=SIG}
C {ip_amplifier.sym} 280 -180 0 0 {name=x1}
C {gnd.sym} 280 -80 0 0 {name=l3 lab=0}
C {lab_wire.sym} 660 -180 0 0 {name=p4 sig_type=std_logic lab=OUTA}
C {res.sym} 600 -120 0 0 {name=R6
value=10k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 600 -50 0 0 {name=l5 lab=0}
C {vdd.sym} 280 -270 0 0 {name=l6 lab=VDD}
C {ip_amplifier.sym} 280 230 0 0 {name=x3}
C {gnd.sym} 280 330 0 0 {name=l10 lab=0}
C {lab_wire.sym} 660 230 0 0 {name=p6 sig_type=std_logic lab=OUTB}
C {res.sym} 600 290 0 0 {name=R8
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 600 360 0 0 {name=l12 lab=0}
C {vdd.sym} 280 140 0 0 {name=l13 lab=VDD}
C {res.sym} 340 70 1 0 {name=R10
value=40k
footprint=1206
device=resistor
m=1}
C {res.sym} 50 210 1 0 {name=R11
value=10k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 140 300 0 0 {name=V6 value="DC 1.0" savecurrent=false}
C {gnd.sym} 140 340 0 0 {name=l14 lab=0}
C {capa.sym} 550 290 2 0 {name=C3
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 550 360 0 0 {name=l15 lab=0}
C {capa.sym} 340 20 3 0 {name=C2
m=1
value=0.9p
footprint=1206
device="ceramic capacitor"}
