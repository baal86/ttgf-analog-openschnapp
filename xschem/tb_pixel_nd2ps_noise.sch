v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 630 20 1430 420 {flags=graph
y1=-8
y2=-4
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=-1
x2=7
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=onoise_spectrum
color=4
dataset=-1
unitx=1
logx=1
logy=1
sim_type=noise
sweep=frequency}
T {Total RMS Noise = 67.46 uV} 630 430 0 0 0.5 0.5 {name=noise_rms}
N 320 -200 320 -100 {lab=VDD}
N 420 -200 420 -190 {lab=VDD}
N 320 -200 420 -200 {lab=VDD}
N 260 -200 260 -100 {lab=VRESET}
N 170 -200 260 -200 {lab=VRESET}
N 170 -200 170 -190 {lab=VRESET}
N 160 180 160 200 {lab=VSS}
N 290 100 290 200 {lab=VSS}
N 160 110 160 120 {lab=GND}
N 380 0 470 0 {lab=OUT}
N 420 -130 420 -120 {lab=GND}
N 170 -130 170 -120 {lab=GND}
N 130 -20 190 -20 {lab=VSS}
N 130 20 190 20 {lab=VDD}
N 290 200 530 200 {lab=VSS}
N 0 0 190 -0 {lab=INJ}
N -0 170 0 200 {lab=VSS}
N 160 200 290 200 {lab=VSS}
N 0 0 -0 110 {lab=INJ}
N 0 200 160 200 {lab=VSS}
N 420 -200 530 -200 {lab=VDD}
N 470 -0 470 10 {lab=OUT}
N 470 70 470 80 {lab=#net1}
N 530 70 530 80 {lab=#net2}
N 530 -200 530 10 {lab=VDD}
C {devices/launcher.sym} -515 -15 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
set v [xschem raw value total_rms_noise 0]
xschem setprop text noise_rms txt_ptr [format \{Total RMS Noise = %.4g uV\} $v]
xschem redraw
"
}
C {devices/code_shown.sym} -580 480 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {vsource.sym} 420 -160 0 1 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 170 -160 0 1 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 160 150 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 420 -120 0 1 {name=l1 lab=GND}
C {gnd.sym} 160 110 2 0 {name=l2 lab=GND}
C {gnd.sym} 170 -120 0 1 {name=l3 lab=GND}
C {lab_wire.sym} 200 -200 0 1 {name=p1 sig_type=std_logic lab=VRESET}
C {lab_wire.sym} 380 -200 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 170 200 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 30 0 0 0 {name=p6 sig_type=std_logic lab=INJ}
C {lab_wire.sym} 430 0 0 1 {name=p8 sig_type=std_logic lab=OUT}
C {devices/launcher.sym} -515 25 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {simulator_commands_shown.sym} -580 130 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
	shell rm -f tb_pixel_nd2ps_noise.raw
	reset
	set sparse
	save currents
	save all
	op
	noise V(out) V4 dec 1000 0.1 500e3
	setplot noise1
	let manual_integral = integ(onoise_spectrum * onoise_spectrum)
	let total_rms_noise = sqrt(manual_integral[length(manual_integral)-1])*1e6
	write tb_pixel_nd2ps_noise.raw
	print total_rms_noise
	quit
.endc
"}
C {ip_pixel_nd2ps.sym} 290 0 0 0 {name=x1}
C {lab_wire.sym} 160 -20 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 160 20 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {vsource.sym} 0 140 0 1 {name=V4 value="DC 2.6 AC 1" savecurrent=false}
C {ip_current_source.sym} 500 140 0 0 {name=x2}
C {ammeter.sym} 470 40 0 0 {name=viload savecurrent=true spice_ignore=0}
C {ammeter.sym} 530 40 0 0 {name=viref savecurrent=true spice_ignore=0}
