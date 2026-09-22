v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=0.99	
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.9
x2=1
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
}
N -80 -820 -80 -800 {lab=SIG}
N -80 -800 -80 -790 {lab=SIG}
N -80 -730 -80 -710 {lab=0}
N -80 -860 -80 -820 {lab=SIG}
N -80 -880 -80 -860 {lab=SIG}
N 550 -860 760 -860 {lab=OUT}
N 460 -860 550 -860 {lab=OUT}
N 660 -860 660 -830 {lab=OUT}
N 660 -770 660 -730 {lab=0}
N 340 -770 340 -760 {lab=0}
N 340 -950 340 -940 {lab=VDD}
N 410 -860 460 -860 {lab=OUT}
N 530 -920 530 -860 {lab=OUT}
N -80 -880 40 -880 {lab=SIG}
N 530 -990 530 -920 {lab=OUT}
N 550 -500 760 -500 {lab=OUT_PARAX}
N 460 -500 550 -500 {lab=OUT_PARAX}
N 660 -500 660 -470 {lab=OUT_PARAX}
N 660 -410 660 -370 {lab=0}
N 340 -410 340 -400 {lab=0}
N 410 -500 460 -500 {lab=OUT_PARAX}
N 530 -560 530 -500 {lab=OUT_PARAX}
N 530 -1040 530 -990 {lab=OUT}
N 410 -1040 530 -1040 {lab=OUT}
N 360 -1040 380 -1040 {lab=OUT}
N 380 -1040 410 -1040 {lab=OUT}
N 230 -1040 230 -890 {lab=#net1}
N 240 -1040 300 -1040 {lab=#net1}
N 230 -1040 240 -1040 {lab=#net1}
N 230 -890 230 -880 {lab=#net1}
N 100 -880 100 -840 {lab=SIG}
N 100 -880 140 -880 {lab=SIG}
N 410 -680 530 -680 {lab=OUT_PARAX}
N 360 -680 380 -680 {lab=OUT_PARAX}
N 380 -680 410 -680 {lab=OUT_PARAX}
N 230 -680 230 -530 {lab=#net2}
N 240 -680 300 -680 {lab=#net2}
N 230 -680 240 -680 {lab=#net2}
N 100 -520 140 -520 {lab=SIG}
N 40 -880 100 -880 {lab=SIG}
N 100 -840 100 -520 {lab=SIG}
N 250 -350 250 -340 {lab=0}
N 250 -840 250 -420 {lab=#net3}
N 250 -840 270 -840 {lab=#net3}
N 250 -480 270 -480 {lab=#net3}
N 530 -680 530 -560 {lab=OUT_PARAX}
N 340 -590 340 -580 {lab=VDD}
N 200 -880 270 -880 {lab=#net1}
N 230 -530 230 -520 {lab=#net2}
N 200 -520 270 -520 {lab=#net2}
N 250 -420 250 -410 {lab=#net3}
C {devices/launcher.sym} -1075 -545 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -1150 -60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.inc $::180MCU_MODELS/design.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
"}
C {simulator_commands_shown.sym} -1150 -350 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
V_DD VDD 0 3.3
.options klu
.options itl1=0
.options reltol=0.003 abstol=1e-11 chgtol=1e-13 vntol=1e-5

.control
	save V(out) V(out_parax) V(open) V(open_parax)
	dc V2 0.5 1.5 0.01
	write tb_amplifier_x10_dc.raw		
	quit
.endc
"}
C {devices/launcher.sym} -1075 -505 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {gnd.sym} -80 -710 0 0 {name=l1 lab=0}
C {lab_wire.sym} -60 -880 0 1 {name=p1 sig_type=std_logic lab=SIG}
C {ip_amplifier.sym} 340 -860 0 0 {name=x1}
C {gnd.sym} 340 -760 0 0 {name=l3 lab=0}
C {lab_wire.sym} 720 -860 0 0 {name=p4 sig_type=std_logic lab=OUT}
C {res.sym} 660 -800 0 0 {name=R6
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 660 -730 0 0 {name=l5 lab=0}
C {vdd.sym} 340 -950 0 0 {name=l6 lab=VDD}
C {vsource.sym} -80 -760 0 0 {name=V2 value="DC 1.0" savecurrent=false}
C {gnd.sym} 340 -400 0 0 {name=l2 lab=0}
C {lab_wire.sym} 720 -500 0 0 {name=p2 sig_type=std_logic lab=OUT_PARAX}
C {res.sym} 660 -440 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 660 -370 0 0 {name=l4 lab=0}
C {vdd.sym} 340 -590 0 0 {name=l7 lab=VDD}
C {ip_amplifier.sym} 340 -500 0 0 {name=x3
schematic=ip_amplifier_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_amplifier.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_amplifier.sim.spice]"}
C {res.sym} 330 -1040 1 0 {name=R2
value=150k
footprint=1206
device=resistor
m=1}
C {res.sym} 170 -880 1 0 {name=R3
value=15k
footprint=1206
device=resistor
m=1}
C {res.sym} 330 -680 1 0 {name=R4
value=150k
footprint=1206
device=resistor
m=1}
C {res.sym} 170 -520 1 0 {name=R5
value=15k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 250 -380 0 0 {name=V1 value="DC 1.0" savecurrent=false}
C {gnd.sym} 250 -340 0 0 {name=l8 lab=0}
