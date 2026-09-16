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
node=out
sim_type=ac}
N 0 -20 0 0 {lab=SIG}
N 0 0 0 10 {lab=SIG}
N 0 70 0 90 {lab=0}
N 0 -60 0 -20 {lab=SIG}
N 0 -80 0 -60 {lab=SIG}
N 630 -100 840 -100 {lab=OUTA}
N 290 -120 300 -120 {lab=FBA}
N 540 -100 630 -100 {lab=OUTA}
N 570 -260 610 -260 {lab=FBA}
N 510 -260 570 -260 {lab=FBA}
N 740 -100 740 -70 {lab=OUTA}
N 740 -10 740 30 {lab=0}
N 400 -260 510 -260 {lab=FBA}
N 270 -260 340 -260 {lab=FBA}
N 270 -220 270 -120 {lab=FBA}
N 270 -120 290 -120 {lab=FBA}
N 270 -260 270 -220 {lab=FBA}
N 610 -260 610 -220 {lab=FBA}
N 420 -10 420 -0 {lab=0}
N 420 -190 420 -180 {lab=VDD}
N 490 -100 540 -100 {lab=OUTA}
N 250 -80 290 -80 {lab=SIG}
N 320 -80 350 -80 {lab=SIG}
N 120 -80 250 -80 {lab=SIG}
N 300 -120 350 -120 {lab=FBA}
N 610 -160 610 -100 {lab=OUTA}
N 290 -80 320 -80 {lab=SIG}
N 340 -260 400 -260 {lab=FBA}
N 630 310 840 310 {lab=OUTB}
N 540 310 630 310 {lab=OUTB}
N 570 150 610 150 {lab=FBB}
N 510 150 570 150 {lab=FBB}
N 740 310 740 340 {lab=OUTB}
N 740 400 740 440 {lab=0}
N 610 150 610 190 {lab=FBB}
N 420 400 420 410 {lab=0}
N 420 220 420 230 {lab=VDD}
N 490 310 540 310 {lab=OUTB}
N 610 250 610 310 {lab=OUTB}
N 490 -40 510 -40 {lab=#net1}
N 570 -40 600 -40 {lab=#net2}
N 0 -80 120 -80 {lab=SIG}
N 100 -80 100 290 {lab=SIG}
N 270 150 450 150 {lab=#net3}
N 270 150 270 290 {lab=#net3}
N 270 290 350 290 {lab=#net3}
N 220 290 270 290 {lab=#net3}
N 100 290 160 290 {lab=SIG}
N 280 330 280 350 {lab=#net4}
N 280 330 350 330 {lab=#net4}
N 280 410 280 420 {lab=0}
N 690 310 690 340 {lab=OUTB}
N 690 400 690 440 {lab=0}
N 490 370 510 370 {lab=#net5}
N 570 370 600 370 {lab=#net6}
N 510 100 610 100 {lab=FBB}
N 610 100 610 150 {lab=FBB}
N 270 100 450 100 {lab=#net3}
N 270 100 270 150 {lab=#net3}
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
	ac dec 1000 1 100e6
	write tb_amplifier_ac.raw

	plot 20*log10(abs(v(outa) / v(fba))) 180/pi*ph(v(outa) / v(fba))
	plot 20*log10(abs(v(outb) / v(fbb))) 180/pi*ph(v(outb) / v(fbb))
	#quit
.endc
"}
C {vsource.sym} 0 40 0 0 {name=V2 value="DC 1.0" savecurrent=false}
C {gnd.sym} 0 90 0 0 {name=l2 lab=0}
C {lab_wire.sym} 20 -80 0 1 {name=p3 sig_type=std_logic lab=SIG}
C {devices/launcher.sym} -815 -425 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {ip_amplifier.sym} 420 -100 0 0 {name=x2}
C {gnd.sym} 420 0 0 0 {name=l4 lab=0}
C {lab_wire.sym} 800 -100 0 0 {name=p2 sig_type=std_logic lab=OUTA}
C {res.sym} 740 -40 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 740 30 0 0 {name=l7 lab=0}
C {vdd.sym} 420 -190 0 0 {name=l11 lab=VDD}
C {ngspice_probe.sym} 270 -80 0 0 {name=r1}
C {vsource.sym} 610 -190 0 0 {name=V1 value="AC 1" savecurrent=false}
C {lab_wire.sym} 570 -260 0 0 {name=p1 sig_type=std_logic lab=FBA}
C {ip_amplifier.sym} 420 310 0 0 {name=x1}
C {gnd.sym} 420 410 0 0 {name=l1 lab=0}
C {lab_wire.sym} 800 310 0 0 {name=p4 sig_type=std_logic lab=OUTB}
C {res.sym} 740 370 0 0 {name=R3
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 740 440 0 0 {name=l3 lab=0}
C {vdd.sym} 420 220 0 0 {name=l5 lab=VDD}
C {vsource.sym} 610 220 0 0 {name=V3 value="AC 1" savecurrent=false}
C {lab_wire.sym} 570 150 0 0 {name=p5 sig_type=std_logic lab=FBB}
C {capa.sym} 540 -40 1 0 {name=C1
m=1
value=0.9p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 600 -70 0 0 {name=R5
value=15k
footprint=1206
device=resistor
m=1}
C {res.sym} 480 150 1 0 {name=R4
value=40k
footprint=1206
device=resistor
m=1}
C {res.sym} 190 290 1 0 {name=R6
value=10k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 280 380 0 0 {name=V4 value="DC 1.0" savecurrent=false}
C {gnd.sym} 280 420 0 0 {name=l6 lab=0}
C {capa.sym} 690 370 2 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 690 440 0 0 {name=l8 lab=0}
C {capa.sym} 540 370 3 0 {name=C3
m=1
value=0.9p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 600 340 0 0 {name=R7
value=15k
footprint=1206
device=resistor
m=1}
C {capa.sym} 480 100 3 0 {name=C4
m=1
value=0.9p
footprint=1206
device="ceramic capacitor"}
