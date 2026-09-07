v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1220 -1120 -420 -720 {flags=graph
y1=-7.5	
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
y2=-4.2}
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
N -140 -270 -140 -250 {lab=SIG}
N -140 -400 -140 -360 {lab=SIG}
N -140 -440 -140 -400 {lab=SIG}
N -140 -440 70 -440 {lab=SIG}
N -140 -250 -140 -200 {lab=SIG}
N -140 -330 -140 -270 {lab=SIG}
N -140 -140 -140 -100 {lab=0}
C {vsource.sym} -410 -280 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -410 -200 0 0 {name=l3 lab=0}
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
C {lab_wire.sym} -380 -640 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {ip_amplifier.sym} 210 -420 0 0 {name=x1}
C {gnd.sym} 210 -300 0 0 {name=l1 lab=0}
C {lab_wire.sym} 500 -420 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {vsource.sym} -10 -300 0 0 {name=V3 value=1.25 savecurrent=false}
C {gnd.sym} -10 -250 0 0 {name=l4 lab=0}
C {vsource.sym} -140 -170 0 0 {name=V2 value="DC 1.25 AC 1" savecurrent=false}
C {gnd.sym} -140 -100 0 0 {name=l2 lab=0}
C {lab_wire.sym} 20 -400 0 1 {name=p2 sig_type=std_logic lab=DUMMY}
C {lab_wire.sym} -90 -440 0 1 {name=p3 sig_type=std_logic lab=SIG}
