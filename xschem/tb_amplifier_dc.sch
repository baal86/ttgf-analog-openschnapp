v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=3	
y2=3.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
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
node="outa
outb"
}
N -80 -780 -80 -760 {lab=SIG}
N -80 -760 -80 -750 {lab=SIG}
N -80 -690 -80 -670 {lab=0}
N -80 -820 -80 -780 {lab=SIG}
N -80 -840 -80 -820 {lab=SIG}
N 550 -860 760 -860 {lab=OUTA}
N 210 -880 220 -880 {lab=OUTA}
N 460 -860 550 -860 {lab=OUTA}
N 490 -1020 530 -1020 {lab=OUTA}
N 430 -1020 490 -1020 {lab=OUTA}
N 660 -860 660 -830 {lab=OUTA}
N 660 -770 660 -730 {lab=0}
N 320 -1020 430 -1020 {lab=OUTA}
N 190 -1020 260 -1020 {lab=OUTA}
N 190 -980 190 -880 {lab=OUTA}
N 190 -880 210 -880 {lab=OUTA}
N 190 -1020 190 -980 {lab=OUTA}
N 530 -1020 530 -980 {lab=OUTA}
N 340 -770 340 -760 {lab=0}
N 340 -950 340 -940 {lab=VDD}
N 410 -860 460 -860 {lab=OUTA}
N 170 -840 210 -840 {lab=SIG}
N 240 -840 270 -840 {lab=SIG}
N 40 -840 170 -840 {lab=SIG}
N 220 -880 270 -880 {lab=OUTA}
N 530 -920 530 -860 {lab=OUTA}
N 210 -840 240 -840 {lab=SIG}
N 260 -1020 320 -1020 {lab=OUTA}
N -80 -840 40 -840 {lab=SIG}
N 530 -990 530 -920 {lab=OUTA}
C {devices/launcher.sym} -1075 -545 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -1160 70 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::180MCU_MODELS/sm141064.ngspice statistical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_statistical
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
		dc V2 0 1.8 0.01
		write tb_amplifier_dc.raw		
		set appendwrite
		reset
	end
	quit
.endc
"}
C {devices/launcher.sym} -1075 -505 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {gnd.sym} -80 -670 0 0 {name=l1 lab=0}
C {lab_wire.sym} -60 -840 0 1 {name=p1 sig_type=std_logic lab=SIG}
C {ip_amplifier.sym} 340 -860 0 0 {name=x1}
C {gnd.sym} 340 -760 0 0 {name=l3 lab=0}
C {lab_wire.sym} 720 -860 0 0 {name=p4 sig_type=std_logic lab=OUTA}
C {res.sym} 660 -800 0 0 {name=R6
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 660 -730 0 0 {name=l5 lab=0}
C {vdd.sym} 340 -950 0 0 {name=l6 lab=VDD}
C {ngspice_probe.sym} 190 -840 0 0 {name=r7}
C {vsource.sym} -80 -720 0 0 {name=V2 value="DC 1.0" savecurrent=false}
