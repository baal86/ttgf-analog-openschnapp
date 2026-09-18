v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=0.64	
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
y2=2.4}
N -400 -120 -400 -100 {lab=SIG}
N -400 -100 -400 -90 {lab=SIG}
N -400 -90 -400 -70 {lab=SIG}
N -400 -160 -400 -120 {lab=SIG}
N -400 -200 -400 -160 {lab=SIG}
N -400 -70 -400 -20 {lab=SIG}
N -400 40 -400 80 {lab=0}
N -290 -200 -240 -200 {lab=SIG}
N -340 -200 -290 -200 {lab=SIG}
N -400 -200 -340 -200 {lab=SIG}
N -80 -200 -70 -200 {lab=#net1}
N 170 -180 260 -180 {lab=#net2}
N -100 -300 -100 -200 {lab=#net1}
N -100 -200 -80 -200 {lab=#net1}
N -100 -340 -100 -300 {lab=#net1}
N 50 -90 50 -80 {lab=0}
N 50 -270 50 -260 {lab=VDD}
N 120 -180 170 -180 {lab=#net2}
N -70 -200 -20 -200 {lab=#net1}
N 240 -240 240 -180 {lab=#net2}
N 240 -310 240 -240 {lab=#net2}
N 240 -340 240 -310 {lab=#net2}
N -180 -200 -100 -200 {lab=#net1}
N -100 -370 20 -370 {lab=#net1}
N -100 -370 -100 -340 {lab=#net1}
N 90 -370 240 -370 {lab=#net2}
N 240 -370 240 -340 {lab=#net2}
N 20 -370 30 -370 {lab=#net1}
N -100 -160 -20 -160 {lab=#net3}
N -100 -160 -100 -120 {lab=#net3}
N -100 -60 -100 -40 {lab=0}
N 320 -180 460 -180 {lab=OUT}
N 370 -180 370 -150 {lab=OUT}
N 370 -90 370 -80 {lab=0}
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
.control
	tran 10n 50u
	write tb_amplifier_x4_tran.raw
	set appendwrite
	quit
.endc
"}
C {vsource.sym} -400 10 0 0 {name=V2 value="PULSE(1.0 0.75 0.0 1n 1n 5u 10u)" savecurrent=false}
C {gnd.sym} -400 80 0 0 {name=l2 lab=0
value="PULSE(1.0 0.5 0.0 1n 1n 5u 10u)"}
C {lab_wire.sym} -350 -200 0 1 {name=p3 sig_type=std_logic lab=SIG}
C {ip_amplifier.sym} 50 -180 0 0 {name=x1}
C {gnd.sym} 50 -80 0 0 {name=l3 lab=0}
C {lab_wire.sym} 430 -180 0 0 {name=p4 sig_type=std_logic lab=OUT}
C {vdd.sym} 50 -270 0 0 {name=l6 lab=VDD}
C {res.sym} -210 -200 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 60 -370 1 0 {name=R2
value=40k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -100 -90 0 0 {name=V1 value=1 savecurrent=false}
C {gnd.sym} -100 -40 0 0 {name=l1 lab=0
value="PULSE(1.0 0.5 0.0 1n 1n 5u 10u)"}
C {res.sym} 290 -180 1 0 {name=R3
value=1000
footprint=1206
device=resistor
m=1}
C {capa.sym} 370 -120 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 370 -80 0 0 {name=l4 lab=0}
