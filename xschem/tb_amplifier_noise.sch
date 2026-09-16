v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=-35	
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=-1
x2=5.699
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=1
logy=1
color=4
node=onoise_spectrum
hcursor2_y=1.8627841
y2=-34}
N -140 -300 -140 -260 {lab=0}
N -140 -400 -140 -360 {lab=SIG}
N 510 -380 720 -380 {lab=OUTB}
N 170 -400 180 -400 {lab=#net1}
N 420 -380 510 -380 {lab=OUTB}
N 450 -540 490 -540 {lab=OUTB}
N 490 -500 490 -380 {lab=OUTB}
N 390 -540 450 -540 {lab=OUTB}
N 620 -380 620 -350 {lab=OUTB}
N 620 -290 620 -250 {lab=0}
N 550 -380 550 -350 {lab=OUTB}
N 550 -290 550 -250 {lab=0}
N 150 -360 150 -330 {lab=#net2}
N 150 -360 180 -360 {lab=#net2}
N 280 -540 390 -540 {lab=OUTB}
N 150 -540 220 -540 {lab=#net1}
N 150 -500 150 -400 {lab=#net1}
N 150 -400 170 -400 {lab=#net1}
N 90 -400 150 -400 {lab=#net1}
N -20 -400 30 -400 {lab=SIG}
N 150 -540 150 -500 {lab=#net1}
N 490 -540 490 -500 {lab=OUTB}
N 300 -290 300 -280 {lab=0}
N 300 -470 300 -460 {lab=VDD}
N 180 -400 230 -400 {lab=#net1}
N 180 -360 230 -360 {lab=#net2}
N 370 -380 420 -380 {lab=OUTB}
N -130 -400 -20 -400 {lab=SIG}
N -140 -400 -130 -400 {lab=SIG}
C {devices/launcher.sym} -1095 -395 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
set v [xschem raw value total_rms_noise 0]
puts [format \{Total RMS Noise = %.4g uV\} $v]
"
}
C {devices/code_shown.sym} -1150 180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::180MCU_MODELS/sm141064.ngspice statistical
.lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {simulator_commands_shown.sym} -1160 -300 0 0 {name=COMMANDS
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
	repeat 10
		mc_source
		noise V(out) V2 dec 1000 0.1 500e3
                setplot noise1
		let manual_integral = integ(onoise_spectrum * onoise_spectrum)
		let total_rms_noise = sqrt(manual_integral[length(manual_integral)-1])*1e6
		write tb_amplifier_noise.raw
		set appendwrite
		reset
	end
	quit
.endc
"}
C {vsource.sym} -140 -330 0 0 {name=V2 value="DC 1.25 AC 1" savecurrent=false}
C {gnd.sym} -140 -260 0 0 {name=l2 lab=0}
C {lab_wire.sym} -90 -400 0 1 {name=p3 sig_type=std_logic lab=SIG}
C {ip_amplifier.sym} 300 -380 0 0 {name=x2}
C {gnd.sym} 300 -280 0 0 {name=l4 lab=0}
C {lab_wire.sym} 680 -380 0 0 {name=p2 sig_type=std_logic lab=OUT}
C {res.sym} 620 -320 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 620 -250 0 0 {name=l7 lab=0}
C {capa.sym} 550 -320 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 550 -250 0 0 {name=l8 lab=0}
C {vsource.sym} 150 -300 0 0 {name=V3 value=1.0 savecurrent=false}
C {gnd.sym} 150 -270 0 0 {name=l9 lab=0}
C {res.sym} 60 -400 1 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 250 -540 1 0 {name=R4
value=30k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 300 -470 0 0 {name=l11 lab=VDD}
