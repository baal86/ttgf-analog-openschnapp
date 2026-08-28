v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 110 140 910 620 {flags=graph
y1=-0.12
y2=3.6
ypos1=-0.12
ypos2=3.6
divy=5
subdivy=1
unity=1
x1=0
x2=0.00032
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=1
color="8 4"
node="OUTPUT;zz[16],zz[15],zz[14],zz[13],zz[12],zz[11],zz[10],zz[9],zz[8],zz[7],zz[6],zz[5],zz[4],zz[3],zz[2],zz[1]
INPUT;a[4],a[3],a[2],a[1]"}
N -10 30 -10 60 {lab=0}
N -200 -190 -10 -190 {lab=VDD}
N -200 -190 -200 -180 {lab=VDD}
N -200 -120 -200 -110 {lab=0}
N -10 -130 -10 -90 {lab=VDD}
N -130 -30 -110 -30 {lab=A[4:1]}
N 90 -30 190 -30 {lab=ZZ[16:1]}
N -170 -30 -130 -30 {lab=A[4:1]}
N -10 -190 -10 -130 {lab=VDD}
N -320 -30 -170 -30 {lab=A[4:1]}
N -300 -20 -300 60 {lab=A[4]}
N -270 -20 -270 60 {lab=A[3]}
N -240 -20 -240 60 {lab=A[2]}
N -210 -20 -210 60 {lab=A[1]}
C {devices/code_shown.sym} -850 300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice statistical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.include $::PDK_ROOT/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
"}
C {gnd.sym} -10 60 0 0 {name=l1 lab=0}
C {vsource.sym} -200 -150 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -200 -110 0 0 {name=l2 lab=0}
C {simulator_commands_shown.sym} -860 100 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
	save all
	tran 25n 320u
	write tb_line_mux.raw
	quit
.endc
"}
C {devices/launcher.sym} -795 -35 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/launcher.sym} -795 5 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {ip_line_mux.sym} -10 -30 0 0 {name=x3}
C {lab_wire.sym} -110 -190 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 170 -30 0 0 {name=p2 sig_type=std_logic lab=ZZ[16:1]}
C {lab_wire.sym} -120 -30 0 0 {name=p3 sig_type=std_logic lab=A[4:1]}
C {simulator_commands_shown.sym} -860 510 0 0 {name=SOURCE
simulator=ngspice
only_toplevel=false 
value="
vA1 A[1] 0 PULSE(0 3.3 0 100p 100p 10u  20u)     ; LSB, period T
vA2 A[2] 0 PULSE(0 3.3 0 100p 100p 20u  40u)     ; period 2T
vA3 A[3] 0 PULSE(0 3.3 0 100p 100p 40u  80u)     ; period 4T
vA4 A[4] 0 PULSE(0 3.3 0 100p 100p 80u 160u)     ; MSB, period 8T
"}
C {bus_tap.sym} -310 -30 1 0 {name=l3 lab=[4]}
C {bus_tap.sym} -280 -30 1 0 {name=l4 lab=[3]}
C {bus_tap.sym} -250 -30 1 0 {name=l5 lab=[2]}
C {bus_tap.sym} -220 -30 1 0 {name=l6 lab=[1]}
C {lab_wire.sym} -300 50 1 0 {name=p4 sig_type=std_logic lab=A[4]}
C {lab_wire.sym} -270 50 1 0 {name=p5 sig_type=std_logic lab=A[3]}
C {lab_wire.sym} -240 50 1 0 {name=p6 sig_type=std_logic lab=A[2]}
C {lab_wire.sym} -210 50 1 0 {name=p7 sig_type=std_logic lab=A[1]}
