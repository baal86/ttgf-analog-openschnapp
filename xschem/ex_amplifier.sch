v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=1.2e-05
y2=1.3e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=i(vmeas1)
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 250 110 250 140 {lab=0}
N -410 -640 -30 -640 {lab=VDD}
N -410 -250 -410 -200 {lab=0}
N 170 20 170 80 {lab=#net1}
N 100 20 100 50 {lab=#net1}
N 140 80 170 80 {lab=#net1}
N 170 80 210 80 {lab=#net1}
N 100 20 170 20 {lab=#net1}
N 100 -90 100 20 {lab=#net1}
N 250 -60 250 50 {lab=#net2}
N 100 -90 210 -90 {lab=#net1}
N 250 -150 250 -120 {lab=#net3}
N 100 110 100 140 {lab=0}
N -410 -640 -410 -310 {lab=VDD}
N -30 -640 -30 -540 {lab=VDD}
N -30 -460 30 -460 {lab=COMMON_P}
N 30 -510 30 -460 {lab=COMMON_P}
N 100 -640 100 -540 {lab=VDD}
N 100 -480 100 -450 {lab=#net4}
N 100 -390 100 -320 {lab=#net5}
N 100 -260 100 -90 {lab=#net1}
N -30 -460 -30 -420 {lab=COMMON_P}
N -30 -420 60 -420 {lab=COMMON_P}
N -30 -420 -30 -380 {lab=COMMON_P}
N -30 -320 -30 -300 {lab=0}
N 100 -640 380 -640 {lab=VDD}
N 900 -640 980 -640 {lab=VDD}
N 730 -640 730 -540 {lab=VDD}
N 900 -640 900 -540 {lab=VDD}
N 380 -250 380 -220 {lab=#net6}
N 380 -220 550 -220 {lab=#net6}
N 550 -250 550 -220 {lab=#net6}
N 250 -220 250 -210 {lab=#net6}
N 250 -220 380 -220 {lab=#net6}
N 220 -360 300 -360 {lab=INP}
N 300 -360 300 -280 {lab=INP}
N 300 -280 340 -280 {lab=INP}
N 590 -280 620 -280 {lab=LOAD}
N 620 -360 620 -280 {lab=LOAD}
N -30 -480 -30 -460 {lab=COMMON_P}
N 10 -510 30 -510 {lab=COMMON_P}
N 730 -640 900 -640 {lab=VDD}
N -30 -640 100 -640 {lab=VDD}
N 660 -430 730 -430 {lab=LEFT}
N 730 -480 730 -430 {lab=LEFT}
N 900 -430 970 -430 {lab=RIGHT}
N 900 -480 900 -430 {lab=RIGHT}
N 220 -290 220 -270 {lab=0}
N 220 -360 220 -350 {lab=INP}
N 470 -510 860 -510 {lab=COMMON_P}
N 380 -640 730 -640 {lab=VDD}
N 380 -430 380 -310 {lab=LEFT}
N 380 -430 660 -430 {lab=LEFT}
N 550 -390 550 -310 {lab=RIGHT}
N 550 -390 900 -390 {lab=RIGHT}
N 900 -430 900 -390 {lab=RIGHT}
N 730 -430 730 -200 {lab=LEFT}
N 690 -510 690 -170 {lab=COMMON_P}
N 900 -390 900 -210 {lab=RIGHT}
N 860 -510 860 -180 {lab=COMMON_P}
N 860 -180 860 -170 {lab=COMMON_P}
N 900 70 900 100 {lab=0}
N 800 -20 800 40 {lab=#net7}
N 730 -20 730 10 {lab=#net7}
N 770 40 800 40 {lab=#net7}
N 800 40 840 40 {lab=#net7}
N 730 -20 800 -20 {lab=#net7}
N 730 70 730 100 {lab=0}
N 730 -140 730 -20 {lab=#net7}
N 900 -140 900 0 {lab=#net8}
N 840 40 860 40 {lab=#net7}
N 30 -510 470 -510 {lab=COMMON_P}
N 900 -210 900 -200 {lab=RIGHT}
N 860 -510 1040 -510 {lab=COMMON_P}
N 1080 -640 1080 -540 {lab=VDD}
N 980 -640 1110 -640 {lab=VDD}
N 1080 -480 1080 -300 {lab=LOAD}
N 900 -30 1040 -30 {lab=#net8}
N 1080 0 1080 100 {lab=0}
N 1080 -300 1080 -60 {lab=LOAD}
N 1080 -290 1090 -290 {lab=LOAD}
N 1090 -290 1170 -290 {lab=LOAD}
N 900 -0 900 10 {lab=#net8}
N 620 -700 620 -360 {lab=LOAD}
N 630 -700 1180 -700 {lab=LOAD}
N 1180 -700 1180 -290 {lab=LOAD}
N 1170 -290 1180 -290 {lab=LOAD}
N 620 -700 630 -700 {lab=LOAD}
N 900 -290 960 -290 {lab=RIGHT}
N 1020 -290 1080 -290 {lab=LOAD}
C {gnd.sym} 250 140 0 0 {name=l1 lab=0}
C {gnd.sym} 100 140 0 0 {name=l2 lab=0}
C {res.sym} -30 -350 0 0 {name=R1
value=36k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -410 -280 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -410 -200 0 0 {name=l3 lab=0}
C {devices/launcher.sym} -1075 -545 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -1140 40 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/launcher.sym} -1075 -505 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {simulator_commands_shown.sym} -1150 -350 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
	tran 25n 1m
	save all
	write ex_amplifier.raw
	quit
.endc
"}
C {ammeter.sym} 250 -180 0 0 {name=Vmeas savecurrent=false spice_ignore=0}
C {symbols/pfet3_03v3.sym} -10 -510 0 1 {name=M1
L=1.0u
W=1.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} -380 -640 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {symbols/nfet3_03v3.sym} 230 -90 0 0 {name=M2
L=0.5u
W=5.0u
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
C {symbols/nfet3_03v3.sym} 230 80 0 0 {name=M3
L=1.0u
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
C {symbols/nfet3_03v3.sym} 120 80 0 1 {name=M4
L=1.0u
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
C {symbols/pfet3_03v3.sym} 80 -510 0 0 {name=M5
L=2.0u
W=1.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet3_03v3.sym} 80 -420 0 0 {name=M6
L=0.5u
W=5.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {ammeter.sym} 100 -290 0 0 {name=Vmeas1 savecurrent=false spice_ignore=0}
C {gnd.sym} -30 -300 0 0 {name=l5 lab=0}
C {symbols/pfet3_03v3.sym} 710 -510 0 0 {name=M7
L=2.0u
W=1.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet3_03v3.sym} 880 -510 0 0 {name=M9
L=2.0u
W=1.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet3_03v3.sym} 360 -280 0 0 {name=M11
L=1.5u
W=5.0u
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
C {symbols/nfet3_03v3.sym} 570 -280 0 1 {name=M12
L=1.5u
W=5.0u
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
C {lab_wire.sym} 660 -430 0 1 {name=p1 sig_type=std_logic lab=LEFT}
C {lab_wire.sym} 920 -430 0 1 {name=p2 sig_type=std_logic lab=RIGHT}
C {lab_wire.sym} 230 -510 0 1 {name=p3 sig_type=std_logic lab=COMMON_P}
C {vsource.sym} 220 -320 0 0 {name=V2 value=2.0 savecurrent=false}
C {gnd.sym} 220 -270 0 0 {name=l4 lab=0}
C {symbols/pfet3_03v3.sym} 710 -170 0 0 {name=M8
L=0.5u
W=5.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet3_03v3.sym} 880 -170 0 0 {name=M10
L=0.5u
W=5.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {gnd.sym} 900 100 0 0 {name=l7 lab=0}
C {gnd.sym} 730 100 0 0 {name=l8 lab=0}
C {symbols/nfet3_03v3.sym} 880 40 0 0 {name=M13
L=1.0u
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
C {symbols/nfet3_03v3.sym} 750 40 0 1 {name=M14
L=1.0u
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
C {symbols/pfet3_03v3.sym} 1060 -510 0 0 {name=M15
L=1.0u
W=10u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet3_03v3.sym} 1060 -30 0 0 {name=M16
L=1.0u
W=10.0u
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
C {gnd.sym} 1080 100 0 0 {name=l9 lab=0}
C {lab_wire.sym} 1120 -290 0 1 {name=p4 sig_type=std_logic lab=LOAD}
C {lab_wire.sym} 260 -360 0 1 {name=p6 sig_type=std_logic lab=INP}
C {capa-2.sym} 990 -290 1 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
