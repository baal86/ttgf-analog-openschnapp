v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 290 -80 1090 320 {flags=graph
y1=1.1e-08
y2=6.9e-05
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
color="4 5"
node="imir; i(v3) -1 * %-1
iref; i(v1) -1 * %-1"
dataset=-1
sweep=1
mode=Line}
N 100 -100 180 -100 {lab=vref}
N 100 200 100 250 {lab=vsubs}
N 100 250 180 250 {lab=vsubs}
N 180 150 180 160 {lab=GND}
N 180 -10 180 0 {lab=GND}
N 180 -100 180 -70 {lab=vref}
N 180 220 180 250 {lab=vsubs}
N 40 60 40 80 {lab=vmir}
N 40 -100 40 -90 {lab=vmir}
N 100 -100 100 -90 {lab=vref}
N 100 60 100 80 {lab=vref}
N 40 -30 40 60 {lab=vmir}
N 100 -30 100 60 {lab=vref}
N -60 -20 -60 -10 {lab=GND}
N -60 -100 -60 -80 {lab=vmir}
N -60 -100 40 -100 {lab=vmir}
N 100 -90 100 -30 {lab=vref}
N 40 -90 40 -30 {lab=vmir}
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
	repeat 20
		mc_source
		dc v3 0.0 3.3 0.01	
		write tb_current_source_dc.raw
		set appendwrite
		reset
	end
	quit
.endc
"}
C {ip_current_source.sym} 70 140 0 0 {name=x1}
C {vsource.sym} 180 -40 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 180 190 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 180 150 2 0 {name=l8 lab=GND}
C {gnd.sym} 180 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 160 250 0 0 {name=p1 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 140 -100 0 0 {name=p2 sig_type=std_logic lab=vref}
C {vsource.sym} -60 -50 0 0 {name=V3 value=1.5 savecurrent=false}
C {gnd.sym} -60 -10 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 0 -100 0 0 {name=p3 sig_type=std_logic lab=vmir}
