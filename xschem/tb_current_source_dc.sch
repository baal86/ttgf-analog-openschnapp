v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 0 300 800 700 {flags=graph
y1=0
y2=15u
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=3.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
unitx=1
logx=0
logy=0
hilight_wave=-1
dataset=-1
sweep=1
mode=Line
color="4 5"
node="i(vimir_parax)
i(vimir)"}
T {Nominal} 0 -170 0 0 0.4 0.4 {}
T {PARAX} 400 -170 0 0 0.4 0.4 {}
N 160 -120 240 -120 {lab=vref}
N 160 180 160 230 {lab=vsubs}
N 160 230 240 230 {lab=vsubs}
N 240 130 240 140 {lab=GND}
N 240 -30 240 -20 {lab=GND}
N 240 -120 240 -90 {lab=vref}
N 240 200 240 230 {lab=vsubs}
N 100 40 100 60 {lab=#net1}
N 100 -120 100 -110 {lab=vmir}
N 160 -120 160 -110 {lab=vref}
N 160 40 160 60 {lab=#net2}
N 0 -40 0 -30 {lab=GND}
N 0 -120 0 -100 {lab=vmir}
N 0 -120 100 -120 {lab=vmir}
N 160 -110 160 -30 {lab=vref}
N 100 -110 100 -50 {lab=vmir}
N 560 -120 640 -120 {lab=vref}
N 560 180 560 230 {lab=vsubs}
N 560 230 640 230 {lab=vsubs}
N 500 40 500 60 {lab=#net3}
N 500 -120 500 -110 {lab=vmir}
N 560 -120 560 -110 {lab=vref}
N 560 40 560 60 {lab=#net4}
N 400 -120 500 -120 {lab=vmir}
N 560 -110 560 -30 {lab=vref}
N 500 -110 500 -50 {lab=vmir}
N 100 10 100 40 {lab=#net1}
N 160 30 160 40 {lab=#net2}
N 500 10 500 40 {lab=#net3}
N 560 30 560 40 {lab=#net4}
C {devices/launcher.sym} -595 -95 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -660 450 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::180MCU_MODELS/sm141064.ngspice statistical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/launcher.sym} -595 -55 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {simulator_commands_shown.sym} -660 30 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
# Global parameters typically sourced from design.ngspice
.param sw_stat_global   = 1
.param sw_stat_mismatch = 1
.param mc_skew          = 1
.param res_mc_skew=3
.param cap_mc_skew=3
.param fnoicor=0

.control
	save all
	repeat 10
		mc_source
		dc v3 0.0 3.3 0.01	
		write tb_current_source_dc.raw
		set appendwrite
		reset
	end
	quit
.endc
"}
C {ip_current_source.sym} 130 120 0 0 {name=x1}
C {vsource.sym} 240 -60 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 240 170 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 240 130 2 0 {name=l8 lab=GND}
C {gnd.sym} 240 -20 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 220 230 0 0 {name=p1 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 200 -120 0 0 {name=p2 sig_type=std_logic lab=vref}
C {vsource.sym} 0 -70 0 0 {name=V3 value=1.5 savecurrent=false}
C {gnd.sym} 0 -30 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 60 -120 0 0 {name=p3 sig_type=std_logic lab=vmir}
C {ip_current_source.sym} 530 120 0 0 {name=x2
schematic=ip_current_source_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/ip_current_source.sim.spice])"
tclcommand="textwindow [file normalize ../mag/ip_current_source.sim.spice]"}
C {lab_wire.sym} 620 230 0 0 {name=p4 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 600 -120 0 0 {name=p5 sig_type=std_logic lab=vref}
C {lab_wire.sym} 490 -120 0 0 {name=p6 sig_type=std_logic lab=vmir
}
C {ammeter.sym} 100 -20 0 0 {name=Vimir savecurrent=false spice_ignore=0}
C {ammeter.sym} 160 0 0 0 {name=Viref savecurrent=false spice_ignore=0}
C {ammeter.sym} 500 -20 0 0 {name=Vimir_parax savecurrent=false spice_ignore=0}
C {ammeter.sym} 560 0 0 0 {name=Viref_parax savecurrent=false spice_ignore=0}
