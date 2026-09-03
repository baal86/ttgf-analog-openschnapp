v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 440 -400 1240 0 {flags=graph
y2=1
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=0
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0`
legendmag=1.0
node="MC;bus %-1
OFF;bus % 0
ON;bus % 10"
color="4 6 7"
dataset=-1
unitx=1
logx=1
logy=1
sim_type=ac
y1=-10
vlegend=0
legend=1
linewidth_mult=0.5
x2=8}
N 100 -30 160 -30 {lab=column}
N 100 40 260 40 {lab=bus}
N -180 20 -100 20 {lab=en}
N -180 20 -180 180 {lab=en}
N -0 -410 0 -390 {lab=GND}
N 30 -450 160 -450 {lab=column}
N 160 -450 160 -400 {lab=column}
N -100 -450 -30 -450 {lab=GND}
N 0 -230 0 -210 {lab=#net1}
N -100 -270 -30 -270 {lab=in}
N 30 -270 160 -270 {lab=column}
N -0 -150 -0 -140 {lab=GND}
N -180 240 -180 250 {lab=GND}
N -160 -270 -160 -240 {lab=in}
N -160 -270 -100 -270 {lab=in}
N -160 -180 -160 -160 {lab=GND}
N 260 40 360 40 {lab=bus}
N -0 80 0 90 {lab=GND}
N 360 130 360 150 {lab=GND}
N 160 -400 160 -30 {lab=column}
N 360 40 360 70 {lab=bus}
N 290 130 290 150 {lab=GND}
N 290 40 290 70 {lab=bus}
C {ip_column_switch.sym} 0 -20 0 0 {name=x1}
C {gnd.sym} 0 -390 0 0 {name=l2 lab=GND}
C {symbols/nfet3_03v3.sym} 0 -430 3 0 {name=M1
L=0.3u
W=1.0u
body=GND
nf=1
m=17
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gnd.sym} -100 -450 1 0 {name=l3 lab=GND}
C {symbols/nfet3_03v3.sym} 0 -250 3 0 {name=M2
L=0.3u
W=1.0u
body=GND
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {vsource.sym} 0 -180 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 0 -140 0 0 {name=l4 lab=GND}
C {vsource.sym} -180 210 0 0 {name=V3 value=\{ven\} savecurrent=false}
C {gnd.sym} -180 250 0 0 {name=l5 lab=GND}
C {vsource.sym} -160 -210 0 0 {name=V4 value="DC=2.0 AC=1" savecurrent=false}
C {gnd.sym} -160 -160 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -100 -270 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_wire.sym} 160 -340 1 0 {name=p3 sig_type=std_logic lab=column
}
C {lab_wire.sym} 230 40 0 0 {name=p2 sig_type=std_logic lab=bus}
C {lab_wire.sym} -130 20 0 0 {name=p5 sig_type=std_logic lab=en}
C {devices/launcher.sym} -795 -535 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -850 140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::180MCU_MODELS/sm141064.ngspice statistical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/launcher.sym} -795 -495 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {simulator_commands_shown.sym} -860 -380 0 0 {name=COMMANDS
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

.param ven = 3.3

.control
	save all
	foreach venv 0.0 3.3
		repeat 10
			mc_source
			alterparam ven = $venv
			reset
			ac dec 1000 1 100Meg
			write tb_column_switch_ac.raw	
			set appendwrite
			reset
		end
	end
	quit
.endc
"}
C {res.sym} 360 100 0 0 {name=R1
value=2.0e6
footprint=1206
device=resistor
m=1}
C {gnd.sym} 0 90 0 0 {name=l1 lab=GND}
C {gnd.sym} 360 150 0 0 {name=l7 lab=GND}
C {capa.sym} 290 100 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 290 150 0 0 {name=l8 lab=GND}
