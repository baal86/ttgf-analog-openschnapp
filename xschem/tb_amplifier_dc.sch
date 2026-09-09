v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=0	
y2=2.0
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
node="out
x1.outn"
hcursor1_y=1.0011979
hcursor2_y=1.8627841}
N -410 -640 -30 -640 {lab=VDD}
N -410 -250 -410 -200 {lab=0}
N -410 -640 -410 -310 {lab=VDD}
N -30 -640 210 -640 {lab=VDD}
N 210 -640 210 -500 {lab=VDD}
N 210 -330 210 -300 {lab=0}
N 330 -420 370 -420 {lab=OUT}
N 370 -420 480 -420 {lab=OUT}
N -10 -360 -10 -340 {lab=DUMMY}
N -10 -340 -10 -330 {lab=DUMMY}
N -10 -270 -10 -250 {lab=0}
N 480 -420 510 -420 {lab=OUT}
N 510 -420 550 -420 {lab=OUT}
N -10 -400 -10 -360 {lab=DUMMY}
N -10 -400 80 -400 {lab=DUMMY}
N 80 -400 90 -400 {lab=DUMMY}
N 70 -440 90 -440 {lab=SIG}
N -140 -360 -140 -340 {lab=SIG}
N -140 -340 -140 -330 {lab=SIG}
N -140 -270 -140 -250 {lab=0}
N -140 -400 -140 -360 {lab=SIG}
N -140 -440 -140 -400 {lab=SIG}
N -140 -440 70 -440 {lab=SIG}
C {vsource.sym} -410 -280 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -410 -200 0 0 {name=l3 lab=0}
C {devices/launcher.sym} -1085 -545 0 0 {name=h1
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
		dc V2 0.0 2.0 0.01
		write tb_amplifier_dc.raw
		set appendwrite
		reset
	end
	quit
.endc
"}
C {lab_wire.sym} -380 -640 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {ip_amplifier.sym} 210 -420 0 0 {name=x1}
C {gnd.sym} 210 -300 0 0 {name=l1 lab=0}
C {lab_wire.sym} 500 -420 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {vsource.sym} -10 -300 0 0 {name=V3 value=1.25 savecurrent=false}
C {gnd.sym} -10 -250 0 0 {name=l4 lab=0}
C {vsource.sym} -140 -300 0 0 {name=V2 value=1.25 savecurrent=false}
C {gnd.sym} -140 -250 0 0 {name=l2 lab=0}
C {lab_wire.sym} 20 -400 0 1 {name=p2 sig_type=std_logic lab=DUMMY}
C {lab_wire.sym} -90 -440 0 1 {name=p3 sig_type=std_logic lab=SIG}
