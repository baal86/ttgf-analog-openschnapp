v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 140 160 940 560 {flags=graph
y1=8.9e-10
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=out
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
T {DC Transfer Function} 140 120 0 0 0.4 0.4 {}
N 290 -400 290 -300 {lab=VDD}
N 420 -400 420 -390 {lab=VDD}
N 320 -400 420 -400 {lab=VDD}
N 160 -20 160 0 {lab=VSS}
N 290 -100 290 0 {lab=VSS}
N 160 -90 160 -80 {lab=GND}
N 380 -200 470 -200 {lab=OUT}
N 420 -330 420 -320 {lab=GND}
N 130 -220 190 -220 {lab=VSS}
N 130 -180 190 -180 {lab=VDD}
N 290 0 530 0 {lab=VSS}
N 0 -200 190 -200 {lab=INJ}
N 0 -30 0 0 {lab=VSS}
N 160 0 290 0 {lab=VSS}
N 0 -200 0 -90 {lab=INJ}
N 0 0 160 0 {lab=VSS}
N 420 -400 530 -400 {lab=VDD}
N 470 -200 470 -190 {lab=OUT}
N 470 -130 470 -120 {lab=#net1}
N 530 -130 530 -120 {lab=#net2}
N 530 -400 530 -190 {lab=VDD}
N 290 -400 320 -400 {lab=VDD}
C {devices/launcher.sym} -435 -95 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -500 550 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::180MCU_MODELS/sm141064.ngspice statistical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {vsource.sym} 420 -360 0 1 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 160 -50 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 420 -320 0 1 {name=l1 lab=GND}
C {gnd.sym} 160 -90 2 0 {name=l2 lab=GND}
C {lab_wire.sym} 380 -400 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 170 0 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 30 -200 0 0 {name=p6 sig_type=std_logic lab=INJ}
C {lab_wire.sym} 430 -200 0 1 {name=p8 sig_type=std_logic lab=OUT}
C {devices/launcher.sym} -435 -55 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {simulator_commands_shown.sym} -510 100 0 0 {name=COMMANDS
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
		dc V4 0.0 3.3 0.01
		write tb_pixel_nd2ps_dc.raw		
		set appendwrite
		reset
	end
	quit
.endc
"}
C {ip_pixel_nd2ps.sym} 290 -200 0 0 {name=x1}
C {lab_wire.sym} 160 -220 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 160 -180 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {vsource.sym} 0 -60 0 1 {name=V4 value=0.0 savecurrent=false}
C {ip_current_source.sym} 500 -60 0 0 {name=x2}
C {ammeter.sym} 470 -160 0 0 {name=viload savecurrent=false spice_ignore=0}
C {ammeter.sym} 530 -160 0 0 {name=viref savecurrent=false spice_ignore=0}
