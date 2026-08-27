v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1040 440 1840 840 {flags=graph
y1=-0.088
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.08m
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="OUT
\\"pass_drop;x1.sfout out -\\"
read"
color="12 7 11"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
x2=2.13m
sim_type=tran}
B 2 1040 0 1840 400 {flags=graph,unlocked
y1=-0.007
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.01m
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
B 2 1040 -440 1840 -40 {flags=graph,unlocked
y1=-0.0021
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.1m
x2=1.13m
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="inj
\\"reset_drop;vreset inj -\\"
reset"
color="4 7 12"
dataset=-1
unitx=1
logx=0
logy=0
digital=0
vlegend=0
legend=1
sim_type=tran}
T {Reset behavior, qualifying reset FET voltage drop} 1040 -470 0 0 0.4 0.4 {}
T {Integration time} 1040 -30 0 0 0.4 0.4 {}
T {Readout phase} 1040 410 0 0 0.4 0.4 {}
N 690 -200 690 -100 {lab=VDD}
N 790 -200 790 -190 {lab=VDD}
N 690 -200 790 -200 {lab=VDD}
N 630 -200 630 -100 {lab=VRESET}
N 540 -200 630 -200 {lab=VRESET}
N 540 -200 540 -190 {lab=VRESET}
N 600 180 600 200 {lab=VSS}
N 600 200 660 200 {lab=VSS}
N 660 100 660 200 {lab=VSS}
N 600 110 600 120 {lab=GND}
N 480 -0 560 -0 {lab=INJ}
N 750 0 840 0 {lab=OUT}
N 270 350 270 360 {lab=GND}
N 790 -130 790 -120 {lab=GND}
N 540 -130 540 -120 {lab=GND}
N 550 -20 560 -20 {lab=RESET}
N 550 20 560 20 {lab=READ}
N 270 -0 440 -0 {lab=INJ}
N 440 -0 480 0 {lab=INJ}
N 370 270 370 280 {lab=GND}
N 370 -20 550 -20 {lab=RESET}
N 270 60 270 210 {lab=INJ}
N 270 0 270 60 {lab=INJ}
N 370 -20 370 60 {lab=RESET}
N 840 0 840 40 {lab=OUT}
N 470 350 470 360 {lab=GND}
N 470 20 550 20 {lab=READ}
N 470 20 470 290 {lab=READ}
N 270 210 270 290 {lab=INJ}
N 370 60 370 210 {lab=RESET}
N 660 200 900 200 {lab=VSS}
N 900 160 900 200 {lab=VSS}
N 790 -200 900 -200 {lab=VDD}
N 900 -200 900 40 {lab=VDD}
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
C {vsource.sym} 790 -160 0 1 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 540 -160 0 1 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 600 150 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 790 -120 0 1 {name=l1 lab=GND}
C {gnd.sym} 600 110 2 0 {name=l2 lab=GND}
C {gnd.sym} 540 -120 0 1 {name=l3 lab=GND}
C {lab_wire.sym} 570 -200 0 1 {name=p1 sig_type=std_logic lab=VRESET}
C {lab_wire.sym} 750 -200 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 610 200 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 300 0 0 0 {name=p6 sig_type=std_logic lab=INJ}
C {lab_wire.sym} 820 0 0 0 {name=p8 sig_type=std_logic lab=OUT}
C {isource.sym} 270 320 0 0 {name=I1 value=\{iphoto\}}
C {gnd.sym} 270 360 0 0 {name=l5 lab=GND}
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
.param pixel_time=10u
.param int_time=1m
.param iphoto=10p
.control
	foreach iphoto 0p 8p 16p 28p 32p
		alterparam iphoto = $iphoto
		reset
		op
		tran 25n 2.2m
		save all
		write tb_pixel_nd2ps_tran.raw
		set appendwrite
	end
	quit
.endc
"}
C {lab_wire.sym} 430 -20 0 0 {name=p5 sig_type=std_logic lab=RESET}
C {vsource.sym} 370 240 0 0 {name=V4 
value="PULSE(0 3.3 \{pixel_time\} 10n 10n \{pixel_time\} \{int_time+10*pixel_time\})" 
savecurrent=false}
C {gnd.sym} 370 280 0 0 {name=l6 lab=GND}
C {vsource.sym} 470 320 0 0 {name=V5 
value="PULSE(0 3.3 \{int_time\} 10n 10n \{pixel_time\} \{int_time+10*pixel_time\})" 
savecurrent=false}
C {gnd.sym} 470 360 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 540 20 0 0 {name=p3 sig_type=std_logic lab=READ}
C {ip_current_source.sym} 870 100 0 0 {name=x2}
C {ip_pixel_nd2ps.sym} 660 0 0 0 {name=x1}
