v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=0.0046	
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5"
node="outb
outa"
hcursor1_y=2.7010113
hcursor2_y=1.2784901}
N -410 -250 -410 -200 {lab=0}
N -410 -640 -410 -310 {lab=VDD}
N 420 -330 420 -300 {lab=0}
N 50 -340 50 -320 {lab=SIG}
N 50 -320 50 -310 {lab=SIG}
N 50 -250 50 -230 {lab=0}
N 50 -380 50 -340 {lab=SIG}
N 630 -420 840 -420 {lab=OUTA}
N 290 -440 300 -440 {lab=OUTA}
N 540 -420 630 -420 {lab=OUTA}
N 260 -400 270 -400 {lab=SIG}
N 570 -540 610 -540 {lab=OUTA}
N 610 -540 610 -420 {lab=OUTA}
N 270 -540 510 -540 {lab=OUTA}
N 270 -540 270 -440 {lab=OUTA}
N 160 -400 200 -400 {lab=SIG}
N 50 -400 160 -400 {lab=SIG}
N 50 -400 50 -380 {lab=SIG}
N 270 -400 300 -400 {lab=SIG}
N 270 -440 290 -440 {lab=OUTA}
N 200 -400 260 -400 {lab=SIG}
N 510 -540 570 -540 {lab=OUTA}
N 740 -420 740 -390 {lab=OUTA}
N 740 -330 740 -290 {lab=0}
N 670 -420 670 -390 {lab=OUTA}
N 670 -330 670 -290 {lab=0}
N 420 -10 420 20 {lab=0}
N 630 -100 840 -100 {lab=OUTB}
N 290 -120 300 -120 {lab=#net1}
N 540 -100 630 -100 {lab=OUTB}
N 570 -220 610 -220 {lab=OUTB}
N 610 -220 610 -100 {lab=OUTB}
N 510 -220 570 -220 {lab=OUTB}
N 740 -100 740 -70 {lab=OUTB}
N 740 -10 740 30 {lab=0}
N 670 -100 670 -70 {lab=OUTB}
N 670 -10 670 30 {lab=0}
N 420 -190 420 -180 {lab=VDD}
N 420 -190 470 -190 {lab=VDD}
N 420 -510 420 -500 {lab=VDD}
N 420 -510 470 -510 {lab=VDD}
N 270 -80 270 -50 {lab=#net2}
N 270 -80 300 -80 {lab=#net2}
N 400 -220 510 -220 {lab=OUTB}
N 270 -220 340 -220 {lab=#net1}
N 270 -220 270 -120 {lab=#net1}
N 270 -120 290 -120 {lab=#net1}
N 210 -120 270 -120 {lab=#net1}
N 100 -120 150 -120 {lab=SIG}
N 100 -400 100 -120 {lab=SIG}
N -400 -640 -380 -640 {lab=VDD}
N -410 -640 -400 -640 {lab=VDD}
C {vsource.sym} -410 -280 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -410 -200 0 0 {name=l3 lab=0}
C {devices/launcher.sym} -1075 -545 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -1150 60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::180MCU_MODELS/sm141064.ngspice statistical
.lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {simulator_commands_shown.sym} -1150 -350 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param sw_stat_global   = 1
.param sw_stat_mismatch = 1
.param mc_skew          = 1
.param res_mc_skew=3
.param cap_mc_skew=3
.param fnoicor=0

.control
	save all
	repeat 1
		mc_source
		dc V2 0 2 0.01
		write tb_amplifier_dc.raw
		set appendwrite
		reset
	end
	quit
.endc
"}
C {lab_wire.sym} -380 -640 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {ip_amplifier.sym} 420 -420 0 0 {name=x1}
C {gnd.sym} 420 -300 0 0 {name=l1 lab=0}
C {lab_wire.sym} 800 -420 0 0 {name=p1 sig_type=std_logic lab=OUTA}
C {vsource.sym} 50 -280 0 0 {name=V2 value=1.0 savecurrent=false}
C {gnd.sym} 50 -230 0 0 {name=l2 lab=0}
C {lab_wire.sym} 70 -400 0 1 {name=p3 sig_type=std_logic lab=SIG}
C {devices/launcher.sym} -1075 -505 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {res.sym} 740 -360 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 740 -290 0 0 {name=l5 lab=0}
C {capa.sym} 670 -360 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 670 -290 0 0 {name=l6 lab=0}
C {ip_amplifier.sym} 420 -100 0 0 {name=x2}
C {gnd.sym} 420 20 0 0 {name=l4 lab=0}
C {lab_wire.sym} 800 -100 0 0 {name=p2 sig_type=std_logic lab=OUTB}
C {res.sym} 740 -40 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 740 30 0 0 {name=l7 lab=0}
C {capa.sym} 670 -40 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 670 30 0 0 {name=l8 lab=0}
C {lab_wire.sym} 420 -190 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 420 -510 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} 270 -20 0 0 {name=V3 value=1.0 savecurrent=false}
C {gnd.sym} 270 10 0 0 {name=l9 lab=0}
C {res.sym} 180 -120 1 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 370 -220 1 0 {name=R4
value=30k
footprint=1206
device=resistor
m=1}
