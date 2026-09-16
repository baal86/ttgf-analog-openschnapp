v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=3.9e-07	
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
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
N 20 -60 20 -40 {lab=SIG}
N 20 -40 20 -30 {lab=SIG}
N 20 30 20 50 {lab=0}
N 20 -100 20 -60 {lab=SIG}
N 20 -120 20 -100 {lab=SIG}
N 630 -100 840 -100 {lab=OUTB}
N 290 -120 300 -120 {lab=#net1}
N 540 -100 630 -100 {lab=OUTB}
N 570 -260 610 -260 {lab=OUTB}
N 610 -220 610 -100 {lab=OUTB}
N 510 -260 570 -260 {lab=OUTB}
N 740 -100 740 -70 {lab=OUTB}
N 740 -10 740 30 {lab=0}
N 670 -100 670 -70 {lab=OUTB}
N 670 -10 670 30 {lab=0}
N 270 -80 270 -50 {lab=#net2}
N 270 -80 300 -80 {lab=#net2}
N 400 -260 510 -260 {lab=OUTB}
N 270 -260 340 -260 {lab=#net1}
N 270 -220 270 -120 {lab=#net1}
N 270 -120 290 -120 {lab=#net1}
N 210 -120 270 -120 {lab=#net1}
N 100 -120 150 -120 {lab=SIG}
N 270 -260 270 -220 {lab=#net1}
N 610 -260 610 -220 {lab=OUTB}
N 420 -10 420 -0 {lab=0}
N 420 -190 420 -180 {lab=VDD}
N 300 -120 350 -120 {lab=#net1}
N 300 -80 350 -80 {lab=#net2}
N 490 -100 540 -100 {lab=OUTB}
N 20 -120 60 -120 {lab=SIG}
N 60 -120 100 -120 {lab=SIG}
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
V_DD VDD 0 3.3
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
		dc V2 0 1.5 0.01
		write tb_amplifier_dc.raw
		set appendwrite
		reset
	end
	quit
.endc
"}
C {vsource.sym} 20 0 0 0 {name=V2 value=1.0 savecurrent=false}
C {gnd.sym} 20 50 0 0 {name=l2 lab=0}
C {lab_wire.sym} 40 -120 0 1 {name=p3 sig_type=std_logic lab=SIG}
C {devices/launcher.sym} -1075 -505 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {ip_amplifier.sym} 420 -100 0 0 {name=x2}
C {gnd.sym} 420 0 0 0 {name=l4 lab=0}
C {lab_wire.sym} 800 -100 0 0 {name=p2 sig_type=std_logic lab=OUTB}
C {res.sym} 740 -40 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 740 30 0 0 {name=l7 lab=0}
C {capa.sym} 670 -40 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 670 30 0 0 {name=l8 lab=0}
C {vsource.sym} 270 -20 0 0 {name=V3 value=1.0 savecurrent=false}
C {gnd.sym} 270 10 0 0 {name=l9 lab=0}
C {res.sym} 180 -120 1 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 370 -260 1 0 {name=R4
value=30k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 420 -190 0 0 {name=l11 lab=VDD}
