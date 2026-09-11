v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 140 160 940 560 {flags=graph
y1=1
y2=2.4
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
node="out
out_parax
x1.siminj
x3.siminj"
color="4 5 6 7"
dataset=-1
unitx=1
logx=0
logy=0
}
T {DC Transfer Function} 140 120 0 0 0.4 0.4 {}
N 0 0 0 10 {lab=GND}
N 130 -180 190 -180 {lab=VDD}
N 0 -30 0 0 {lab=GND}
N 0 -160 0 -90 {lab=INJ}
N 470 -200 470 -190 {lab=OUT}
N 470 -130 470 -120 {lab=#net1}
N 390 -200 470 -200 {lab=OUT}
N 290 -70 290 -60 {lab=GND}
N 290 -100 290 -70 {lab=GND}
N 530 30 530 40 {lab=GND}
N 530 0 530 30 {lab=GND}
N 530 -230 530 -120 {lab=VDD}
N 490 -130 490 -120 {lab=VDD}
N 490 -130 530 -130 {lab=VDD}
N 700 -180 760 -180 {lab=VDD}
N 1040 -200 1040 -190 {lab=OUT_PARAX}
N 1040 -130 1040 -120 {lab=#net2}
N 960 -200 1040 -200 {lab=OUT_PARAX}
N 860 -70 860 -60 {lab=GND}
N 860 -100 860 -70 {lab=GND}
N 1100 30 1100 40 {lab=GND}
N 1100 0 1100 30 {lab=GND}
N 1100 -230 1100 -120 {lab=VDD}
N 1060 -130 1060 -120 {lab=VDD}
N 1060 -130 1100 -130 {lab=VDD}
N 130 -220 190 -220 {lab=VDD}
N 700 -220 760 -220 {lab=VDD}
N 290 -310 290 -300 {lab=VDD}
N 860 -310 860 -300 {lab=VDD}
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
C {gnd.sym} 0 10 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 0 -140 3 0 {name=p6 sig_type=std_logic lab=INJ}
C {lab_wire.sym} 400 -200 0 1 {name=p8 sig_type=std_logic lab=OUT}
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
V_DD  VDD 0 3.3
# Global parameters typically sourced from design.ngspice
.param sw_stat_global   = 1
.param sw_stat_mismatch = 1
.param mc_skew          = 1
.param res_mc_skew=3
.param cap_mc_skew=3
.param fnoicor=0

.control
	save all
	repeat 100
		mc_source
		dc V4 0.0 1.0 1.0
		write tb_pixel_nd2ps_dc_reset.raw		
		set appendwrite
		reset
	end
	quit
.endc
"}
C {ip_pixel_nd2ps.sym} 290 -200 0 0 {name=x1}
C {vsource.sym} 0 -60 0 1 {name=V4 value=0.0 savecurrent=false}
C {ip_current_source.sym} 500 -60 0 0 {name=x2}
C {ammeter.sym} 470 -160 0 0 {name=viload savecurrent=false spice_ignore=0}
C {gnd.sym} 290 -60 0 0 {name=l3 lab=GND}
C {gnd.sym} 530 40 0 0 {name=l4 lab=GND}
C {vdd.sym} 290 -310 0 0 {name=l1 lab=VDD}
C {vdd.sym} 530 -230 0 0 {name=l6 lab=VDD}
C {vdd.sym} 130 -180 3 0 {name=l7 lab=VDD}
C {lab_wire.sym} 970 -200 0 1 {name=p1 sig_type=std_logic lab=OUT_PARAX}
C {ip_pixel_nd2ps.sym} 860 -200 0 0 {name=x3
schematic=ip_pixel_nd2ps_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_pixel_nd2ps.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_pixel_nd2ps.sim.spice]"}
C {ip_current_source.sym} 1070 -60 0 0 {name=x4
schematic=ip_current_source_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_current_source.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_current_source.sim.spice]"}
C {ammeter.sym} 1040 -160 0 0 {name=viload_parax savecurrent=false spice_ignore=0}
C {gnd.sym} 860 -60 0 0 {name=l8 lab=GND}
C {gnd.sym} 1100 40 0 0 {name=l9 lab=GND}
C {vdd.sym} 860 -310 0 0 {name=l11 lab=VDD}
C {vdd.sym} 1100 -230 0 0 {name=l12 lab=VDD}
C {vdd.sym} 700 -180 3 0 {name=l13 lab=VDD}
C {vdd.sym} 130 -220 3 0 {name=l5 lab=VDD}
C {vdd.sym} 700 -220 3 0 {name=l10 lab=VDD}
