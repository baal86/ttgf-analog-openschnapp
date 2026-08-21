v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1130 40 1930 440 {flags=graph
y1=-0.89
y2=-0.88
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 640 -200 640 -100 {lab=VDD}
N 540 -200 540 -190 {lab=VDD}
N 540 -200 640 -200 {lab=VDD}
N 680 -200 680 -100 {lab=VRESET}
N 680 -200 770 -200 {lab=VRESET}
N 770 -200 770 -190 {lab=VRESET}
N 600 180 600 200 {lab=VSS}
N 600 200 660 200 {lab=VSS}
N 660 100 660 200 {lab=VSS}
N 600 110 600 120 {lab=GND}
N 480 -0 560 -0 {lab=INJ}
N 750 0 840 0 {lab=OUT}
N 930 0 930 70 {lab=OUT}
N 930 130 930 140 {lab=GND}
N 420 -0 420 70 {lab=INJ}
N 420 -0 480 0 {lab=INJ}
N 420 130 420 140 {lab=GND}
N 540 -130 540 -120 {lab=GND}
N 770 -130 770 -120 {lab=GND}
N 550 -20 560 -20 {lab=VDD}
N 550 20 560 20 {lab=VDD}
N 840 -0 930 0 {lab=OUT}
C {devices/launcher.sym} -45 -105 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -120 320 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::GF180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {vsource.sym} 540 -160 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 770 -160 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 600 150 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 540 -120 0 0 {name=l1 lab=GND}
C {gnd.sym} 600 110 2 0 {name=l2 lab=GND}
C {gnd.sym} 770 -120 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 740 -200 0 0 {name=p1 sig_type=std_logic lab=VRESET}
C {lab_wire.sym} 580 -200 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 610 200 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 440 0 0 0 {name=p6 sig_type=std_logic lab=INJ}
C {lab_wire.sym} 820 0 0 0 {name=p8 sig_type=std_logic lab=OUT}
C {isource.sym} 930 100 0 0 {name=I0 value=100u}
C {gnd.sym} 930 140 0 0 {name=l4 lab=GND}
C {isource.sym} 420 100 0 0 {name=I1 value=1n}
C {gnd.sym} 420 140 0 0 {name=l5 lab=GND}
C {devices/launcher.sym} -45 -65 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {simulator_commands_shown.sym} -120 80 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
op
tran 100p 200n
save all
write tb_pixel_nw2ps.raw
.endc
"}
C {ip_pixel_nw2ps.sym} 660 0 0 0 {name=x1}
C {lab_wire.sym} 550 -20 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 550 20 0 0 {name=p3 sig_type=std_logic lab=VDD}
