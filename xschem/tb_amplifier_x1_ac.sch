v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -420 -990 380 -590 {flags=graph
y1=-0.079	
y2=0.0057
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=0
x2=9
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
node=out
sim_type=ac}
N 0 -20 0 0 {lab=SIG}
N 0 0 0 10 {lab=SIG}
N 0 70 0 90 {lab=0}
N 0 -60 0 -20 {lab=SIG}
N 0 -80 0 -60 {lab=SIG}
N 630 -100 840 -100 {lab=OUT}
N 290 -120 300 -120 {lab=FB}
N 540 -100 630 -100 {lab=OUT}
N 570 -260 610 -260 {lab=FB}
N 510 -260 570 -260 {lab=FB}
N 740 -100 740 -70 {lab=OUT}
N 740 -10 740 30 {lab=0}
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
N 0 -80 120 -80 {lab=SIG}
C {devices/launcher.sym} -815 -465 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -890 -20 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.inc $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {simulator_commands_shown.sym} -890 -320 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
V_DD VDD 0 3.3

.control
	save all
	op
	write tb_amplifier_x1_ac.bias.raw
	ac dec 1000 1 1e9
	write tb_amplifier_x1_ac.raw

	plot 20*log10(abs(v(out) / v(fb))) 180/pi*ph(v(out) / v(fb))
	#quit
.endc
"}
C {vsource.sym} 0 40 0 0 {name=V2 value="DC 1.0" savecurrent=false}
C {gnd.sym} 0 90 0 0 {name=l2 lab=0}
C {lab_wire.sym} 20 -80 0 1 {name=p3 sig_type=std_logic lab=SIG}
C {devices/launcher.sym} -815 -425 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].bias.raw
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
C {vdd.sym} 420 -190 0 0 {name=l11 lab=VDD}
C {ngspice_probe.sym} 270 -80 0 0 {name=r1}
C {vsource.sym} 610 -190 0 0 {name=V1 value="AC 1" savecurrent=false}
C {lab_wire.sym} 570 -260 0 0 {name=p1 sig_type=std_logic lab=FB}
