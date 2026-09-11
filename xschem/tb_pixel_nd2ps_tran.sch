v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1040 200 1840 600 {flags=graph
y1=-0.088
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.98e-3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="OUT
read"
color="12 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
sim_type=tran
x2=1.03e-3}
B 2 1040 -260 1840 140 {flags=graph,unlocked
y1=-0.23
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0011
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="inj
reset
read"
color="4 7 12"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran}
T {Integration time} 1040 -290 0 0 0.4 0.4 {}
T {Readout phase} 1040 170 0 0 0.4 0.4 {}
N 360 0 440 0 {lab=INJ}
N 150 350 150 360 {lab=GND}
N 430 -20 440 -20 {lab=RESET}
N 430 20 440 20 {lab=READ}
N 150 0 320 0 {lab=INJ}
N 320 0 360 0 {lab=INJ}
N 250 270 250 280 {lab=GND}
N 250 -20 430 -20 {lab=RESET}
N 150 60 150 210 {lab=INJ}
N 150 0 150 60 {lab=INJ}
N 250 -20 250 60 {lab=RESET}
N 840 0 840 40 {lab=OUT}
N 350 350 350 360 {lab=GND}
N 350 20 430 20 {lab=READ}
N 350 20 350 290 {lab=READ}
N 150 210 150 290 {lab=INJ}
N 250 60 250 210 {lab=RESET}
N 760 0 840 -0 {lab=OUT}
N 540 100 540 110 {lab=GND}
N 900 160 900 170 {lab=GND}
N 540 -110 540 -100 {lab=VDD}
N 900 -10 900 0 {lab=VDD}
N 860 0 860 40 {lab=VDD}
N 860 -0 890 0 {lab=VDD}
N 890 0 900 0 {lab=VDD}
N 900 -10 900 0 {lab=VDD}
N 900 -0 900 40 {lab=VDD}
N 640 0 760 0 {lab=OUT}
N 710 -0 710 30 {lab=OUT}
N 710 90 710 120 {lab=GND}
C {devices/launcher.sym} -435 -95 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -500 490 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {gnd.sym} 540 110 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 420 0 0 0 {name=p6 sig_type=std_logic lab=INJ}
C {lab_wire.sym} 820 0 0 0 {name=p8 sig_type=std_logic lab=OUT}
C {isource.sym} 150 320 0 0 {name=I1 value=\{iphoto\}}
C {gnd.sym} 150 360 0 0 {name=l5 lab=GND}
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
.ic V(INJ)=2.3
V_DD VDD 0 3.3
V_INJ INJ X1.siminj 0
.param pixel_time=10u
.param int_time=1m
.param iphoto=10p
.control
	foreach iphoto 0p 8p 16p 24p 32p
		alterparam iphoto = $iphoto
		reset
		op
		tran 25n 1.1m
		save all
		write tb_pixel_nd2ps_tran.raw
		set appendwrite
	end
	quit
.endc
"}
C {lab_wire.sym} 420 -20 0 0 {name=p5 sig_type=std_logic lab=RESET}
C {vsource.sym} 250 240 0 0 {name=V4 
value="PULSE(0 3.3 \{pixel_time\} 10n 10n \{pixel_time\} \{int_time+10*pixel_time\})" 
savecurrent=false}
C {gnd.sym} 250 280 0 0 {name=l6 lab=GND}
C {vsource.sym} 350 320 0 0 {name=V5 
value="PULSE(0 3.3 \{int_time\} 10n 10n \{pixel_time\} \{int_time+10*pixel_time\})" 
savecurrent=false}
C {gnd.sym} 350 360 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 420 20 0 0 {name=p3 sig_type=std_logic lab=READ}
C {ip_current_source.sym} 870 100 0 0 {name=x2}
C {ip_pixel_nd2ps.sym} 540 0 0 0 {name=x1}
C {gnd.sym} 900 170 0 0 {name=l3 lab=GND}
C {vdd.sym} 540 -110 0 0 {name=l4 lab=VDD}
C {vdd.sym} 900 -10 0 0 {name=l1 lab=VDD}
C {capa.sym} 710 60 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 710 120 0 0 {name=l7 lab=GND}
