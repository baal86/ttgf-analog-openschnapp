v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 0 260 800 660 {flags=graph
y1=5.2
y2=8.1
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=-2
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
hilight_wave=-1
sim_type=ac
color="4 5"
node="zout; vmir I(v3) /
zout_parax; vmir_parax I(v6) /"
rainbow=0}
T {Nominal} 0 -280 0 0 0.4 0.4 {}
T {PARAX} 460 -280 0 0 0.4 0.4 {}
N 160 -200 240 -200 {lab=vref}
N 160 100 160 150 {lab=vsubs}
N 160 150 240 150 {lab=vsubs}
N 240 50 240 60 {lab=GND}
N 240 -110 240 -100 {lab=GND}
N 240 -200 240 -170 {lab=vref}
N 240 120 240 150 {lab=vsubs}
N 100 -40 100 -20 {lab=vmir}
N 100 -200 100 -190 {lab=vmir}
N 160 -200 160 -190 {lab=vref}
N 160 -40 160 -20 {lab=vref}
N 100 -130 100 -40 {lab=vmir}
N 160 -130 160 -40 {lab=vref}
N 0 -120 0 -110 {lab=GND}
N 0 -200 0 -180 {lab=vmir}
N 0 -200 100 -200 {lab=vmir}
N 160 -190 160 -130 {lab=vref}
N 100 -190 100 -130 {lab=vmir}
N 630 -200 710 -200 {lab=vref}
N 630 100 630 150 {lab=vsubs}
N 630 150 710 150 {lab=vsubs}
N 570 -40 570 -20 {lab=vmir_parax}
N 570 -200 570 -190 {lab=vmir_parax}
N 630 -200 630 -190 {lab=vref}
N 630 -40 630 -20 {lab=vref}
N 570 -130 570 -40 {lab=vmir_parax}
N 630 -130 630 -40 {lab=vref}
N 470 -120 470 -110 {lab=GND}
N 470 -200 470 -180 {lab=vmir_parax}
N 470 -200 570 -200 {lab=vmir_parax}
N 630 -190 630 -130 {lab=vref}
N 570 -190 570 -130 {lab=vmir_parax}
C {devices/launcher.sym} -595 -285 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -660 110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/launcher.sym} -595 -245 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {simulator_commands_shown.sym} -660 -130 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
	reset
	op
	ac dec 1000 0.01 100Meg
	save all
	write tb_current_source_ac.raw
	quit
.endc
"}
C {ip_current_source.sym} 130 40 0 0 {name=x1}
C {vsource.sym} 240 -140 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 240 90 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 240 50 2 0 {name=l8 lab=GND}
C {gnd.sym} 240 -100 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 220 150 0 0 {name=p1 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 200 -200 0 0 {name=p2 sig_type=std_logic lab=vref}
C {vsource.sym} 0 -150 0 0 {name=V3 value="DC 2.5 AC 1" savecurrent=false}
C {gnd.sym} 0 -110 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 60 -200 0 0 {name=p3 sig_type=std_logic lab=vmir}
C {ip_current_source.sym} 600 40 0 0 {name=x2
schematic=ip_current_source_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/ip_current_source.sim.spice])"
tclcommand="textwindow [file normalize ../mag/ip_current_source.sim.spice]"}
C {lab_wire.sym} 690 150 0 0 {name=p4 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 670 -200 0 0 {name=p5 sig_type=std_logic lab=vref}
C {vsource.sym} 470 -150 0 0 {name=V6 value="DC 2.5 AC 1" savecurrent=false}
C {gnd.sym} 470 -110 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 560 -200 0 0 {name=p6 sig_type=std_logic lab=vmir_parax
}
