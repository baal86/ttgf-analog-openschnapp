v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=-7.6	
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
y2=-3.8}
N 170 -400 180 -400 {lab=OUT}
N 420 -380 510 -380 {lab=OUT}
N 490 -500 490 -380 {lab=OUT}
N 130 -360 130 -330 {lab=#net1}
N 150 -500 150 -400 {lab=OUT}
N 150 -400 170 -400 {lab=OUT}
N 150 -540 150 -500 {lab=OUT}
N 300 -290 300 -280 {lab=0}
N 300 -470 300 -460 {lab=VDD}
N 180 -400 230 -400 {lab=OUT}
N 370 -380 420 -380 {lab=OUT}
N 490 -540 490 -500 {lab=OUT}
N 130 -360 230 -360 {lab=#net1}
N 150 -570 150 -540 {lab=OUT}
N 150 -570 290 -570 {lab=OUT}
N 350 -570 490 -570 {lab=OUT}
N 490 -570 490 -540 {lab=OUT}
N 290 -570 350 -570 {lab=OUT}
N 510 -380 710 -380 {lab=OUT}
C {devices/launcher.sym} -1105 -395 0 0 {name=h1
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
C {vsource.sym} 130 -300 0 0 {name=V2 value="DC 1.0 AC 1" savecurrent=false}
C {ip_amplifier.sym} 300 -380 0 0 {name=x2}
C {gnd.sym} 300 -280 0 0 {name=l4 lab=0}
C {lab_wire.sym} 680 -380 0 0 {name=p2 sig_type=std_logic lab=OUT}
C {gnd.sym} 130 -270 0 0 {name=l9 lab=0}
C {vdd.sym} 300 -470 0 0 {name=l11 lab=VDD}
