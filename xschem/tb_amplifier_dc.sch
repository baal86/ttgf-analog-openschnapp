v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=0.001	
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.5
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
node="outa
outb"
}
N -80 -780 -80 -760 {lab=SIG}
N -80 -760 -80 -750 {lab=SIG}
N -80 -690 -80 -670 {lab=0}
N -80 -820 -80 -780 {lab=SIG}
N -80 -840 -80 -820 {lab=SIG}
N 550 -860 760 -860 {lab=OUTA}
N 210 -880 220 -880 {lab=OUTA}
N 460 -860 550 -860 {lab=OUTA}
N 490 -1020 530 -1020 {lab=OUTA}
N 430 -1020 490 -1020 {lab=OUTA}
N 660 -860 660 -830 {lab=OUTA}
N 660 -770 660 -730 {lab=0}
N 320 -1020 430 -1020 {lab=OUTA}
N 190 -1020 260 -1020 {lab=OUTA}
N 190 -980 190 -880 {lab=OUTA}
N 190 -880 210 -880 {lab=OUTA}
N 190 -1020 190 -980 {lab=OUTA}
N 530 -1020 530 -980 {lab=OUTA}
N 340 -770 340 -760 {lab=0}
N 340 -950 340 -940 {lab=VDD}
N 410 -860 460 -860 {lab=OUTA}
N 170 -840 210 -840 {lab=SIG}
N 240 -840 270 -840 {lab=SIG}
N 40 -840 170 -840 {lab=SIG}
N 220 -880 270 -880 {lab=OUTA}
N 530 -920 530 -860 {lab=OUTA}
N 210 -840 240 -840 {lab=SIG}
N 260 -1020 320 -1020 {lab=OUTA}
N 550 -450 760 -450 {lab=OUTB}
N 460 -450 550 -450 {lab=OUTB}
N 490 -610 530 -610 {lab=OUTB}
N 430 -610 490 -610 {lab=OUTB}
N 660 -450 660 -420 {lab=OUTB}
N 660 -360 660 -320 {lab=0}
N 530 -610 530 -570 {lab=OUTB}
N 340 -360 340 -350 {lab=0}
N 340 -540 340 -530 {lab=VDD}
N 410 -450 460 -450 {lab=OUTB}
N 530 -510 530 -450 {lab=OUTB}
N 410 -800 430 -800 {lab=#net1}
N 490 -800 520 -800 {lab=#net2}
N -80 -840 40 -840 {lab=SIG}
N 20 -840 20 -470 {lab=SIG}
N 190 -610 370 -610 {lab=#net3}
N 190 -610 190 -470 {lab=#net3}
N 190 -470 270 -470 {lab=#net3}
N 140 -470 190 -470 {lab=#net3}
N 20 -470 80 -470 {lab=SIG}
N 200 -430 200 -410 {lab=#net4}
N 200 -430 270 -430 {lab=#net4}
N 200 -350 200 -340 {lab=0}
N 610 -450 610 -420 {lab=OUTB}
N 610 -360 610 -320 {lab=0}
N 410 -390 430 -390 {lab=#net5}
N 490 -390 520 -390 {lab=OUTB}
N 520 -450 520 -390 {lab=OUTB}
N 530 -990 530 -920 {lab=OUTA}
N 530 -570 530 -510 {lab=OUTB}
C {devices/launcher.sym} -1075 -545 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -1150 -100 0 0 {name=MODELS only_toplevel=true
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
	dc V2 0 2.5 0.01
	write tb_amplifier_dc.raw
	quit
.endc
"}
C {devices/launcher.sym} -1075 -505 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {gnd.sym} -80 -670 0 0 {name=l1 lab=0}
C {lab_wire.sym} -60 -840 0 1 {name=p1 sig_type=std_logic lab=SIG}
C {ip_amplifier.sym} 340 -860 0 0 {name=x1}
C {gnd.sym} 340 -760 0 0 {name=l3 lab=0}
C {lab_wire.sym} 720 -860 0 0 {name=p4 sig_type=std_logic lab=OUTA}
C {res.sym} 660 -800 0 0 {name=R6
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 660 -730 0 0 {name=l5 lab=0}
C {vdd.sym} 340 -950 0 0 {name=l6 lab=VDD}
C {ngspice_probe.sym} 190 -840 0 0 {name=r7}
C {ip_amplifier.sym} 340 -450 0 0 {name=x3}
C {gnd.sym} 340 -350 0 0 {name=l10 lab=0}
C {lab_wire.sym} 720 -450 0 0 {name=p6 sig_type=std_logic lab=OUTB}
C {res.sym} 660 -390 0 0 {name=R8
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 660 -320 0 0 {name=l12 lab=0}
C {vdd.sym} 340 -540 0 0 {name=l13 lab=VDD}
C {capa.sym} 460 -800 1 0 {name=C1
m=1
value=0.9p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 520 -830 0 0 {name=R9
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 400 -610 1 0 {name=R10
value=40k
footprint=1206
device=resistor
m=1}
C {res.sym} 110 -470 1 0 {name=R11
value=10k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 200 -380 0 0 {name=V6 value="DC 1.0" savecurrent=false}
C {gnd.sym} 200 -340 0 0 {name=l14 lab=0}
C {capa.sym} 610 -390 2 0 {name=C3
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 610 -320 0 0 {name=l15 lab=0}
C {capa.sym} 460 -390 3 0 {name=C4
m=1
value=0.9p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -80 -720 0 0 {name=V2 value="DC 1.0" savecurrent=false}
