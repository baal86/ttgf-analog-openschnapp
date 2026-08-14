v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 290 -80 1090 320 {flags=graph
y1=0
y2=30e-6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.000028e-05
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 7"
node="i(vref)
i(vmir)"
hilight_wave=-1}
N 100 -10 180 -10 {lab=vdd}
N 100 200 100 250 {lab=vsubs}
N 100 250 180 250 {lab=vsubs}
N 180 150 180 160 {lab=GND}
N 180 80 180 90 {lab=GND}
N 180 -10 180 20 {lab=vdd}
N 180 220 180 250 {lab=vsubs}
N 40 60 40 80 {lab=#net1}
N 40 -10 40 -0 {lab=vdd}
N 40 -10 100 -10 {lab=vdd}
N 100 -10 100 -0 {lab=vdd}
N 100 60 100 80 {lab=#net2}
C {devices/launcher.sym} -595 -95 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -660 280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/launcher.sym} -595 -55 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {simulator_commands_shown.sym} -640 40 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
	op
	tran 1n 100u 50u
	save all
	write tb_current_source.raw
	quit
.endc
"}
C {ip_current_source.sym} 70 140 0 0 {name=x1}
C {vsource.sym} 180 50 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 180 190 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 180 150 2 0 {name=l8 lab=GND}
C {gnd.sym} 180 90 0 0 {name=l1 lab=GND}
C {ammeter.sym} 40 30 0 0 {name=Vmir savecurrent=true spice_ignore=0}
C {lab_wire.sym} 160 250 0 0 {name=p1 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 160 -10 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {ammeter.sym} 100 30 0 0 {name=Vref savecurrent=true spice_ignore=0}
