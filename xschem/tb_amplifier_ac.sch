v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1120 -1020 -320 -620 {flags=graph
y1=-1.3	
y2=3.6
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=0
x2=8
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=1
logy=1
color=4
node="out fb /"
sim_type=ac}
N 120 -20 120 0 {lab=SIG}
N 120 0 120 10 {lab=SIG}
N 120 70 120 90 {lab=0}
N 120 -60 120 -20 {lab=SIG}
N 120 -80 120 -60 {lab=SIG}
N 630 -100 840 -100 {lab=OUT}
N 290 -120 300 -120 {lab=FB}
N 540 -100 630 -100 {lab=OUT}
N 570 -260 610 -260 {lab=FB}
N 510 -260 570 -260 {lab=FB}
N 740 -100 740 -70 {lab=OUT}
N 740 -10 740 30 {lab=0}
N 670 -100 670 -70 {lab=OUT}
N 670 -10 670 30 {lab=0}
N 400 -260 510 -260 {lab=FB}
N 270 -260 340 -260 {lab=FB}
N 270 -220 270 -120 {lab=FB}
N 270 -120 290 -120 {lab=FB}
N 270 -260 270 -220 {lab=FB}
N 610 -260 610 -220 {lab=FB}
N 420 -10 420 -0 {lab=0}
N 420 -190 420 -180 {lab=VDD}
N 490 -100 540 -100 {lab=OUT}
N 250 -80 290 -80 {lab=SIG}
N 320 -80 350 -80 {lab=SIG}
N 120 -80 250 -80 {lab=SIG}
N 300 -120 350 -120 {lab=FB}
N 610 -160 610 -100 {lab=OUT}
N 290 -80 320 -80 {lab=SIG}
N 340 -260 400 -260 {lab=FB}
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
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {simulator_commands_shown.sym} -1150 -350 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
V_DD VDD 0 3.3

.control
	save all
	ac dec 1000 1 100e6
	write tb_amplifier_ac.raw
	settype phase out
	plot cph(out)
.endc
"}
C {vsource.sym} 120 40 0 0 {name=V2 value="DC 2.0" savecurrent=false}
C {gnd.sym} 120 90 0 0 {name=l2 lab=0}
C {lab_wire.sym} 140 -80 0 1 {name=p3 sig_type=std_logic lab=SIG}
C {devices/launcher.sym} -1075 -505 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {ip_amplifier.sym} 420 -100 0 0 {name=x2}
C {gnd.sym} 420 0 0 0 {name=l4 lab=0}
C {lab_wire.sym} 800 -100 0 0 {name=p2 sig_type=std_logic lab=OUT}
C {res.sym} 740 -40 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 740 30 0 0 {name=l7 lab=0}
C {capa.sym} 670 -40 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 670 30 0 0 {name=l8 lab=0}
C {vdd.sym} 420 -190 0 0 {name=l11 lab=VDD}
C {ngspice_probe.sym} 270 -80 0 0 {name=r1}
C {vsource.sym} 610 -190 0 0 {name=V1 value="AC 1" savecurrent=false}
C {lab_wire.sym} 570 -260 0 0 {name=p1 sig_type=std_logic lab=FB}
