v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 360 280 1160 680 {flags=graph
y1=-7.7
y2=-4.6
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
node="onoise_spectrum % -1"
color=4
dataset=-1
unitx=1
logx=1
logy=1
sim_type=noise
sweep=frequency}
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
N 470 70 470 80 {lab=OUT}
N 530 70 530 80 {lab=VDD}
N 530 -200 530 10 {lab=VDD}
N 530 10 530 70 {lab=VDD}
N 470 10 470 70 {lab=OUT}
C {devices/launcher.sym} -515 215 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
set v [xschem raw value total_rms_noise 0]
puts [format \{Total RMS Noise = %.4g uV\} $v]
"
}
C {devices/code_shown.sym} -570 740 0 0 {name=MODELS only_toplevel=true
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
C {simulator_commands_shown.sym} -580 310 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param bias=1.5
.control
	shell rm -f tb_pixel_nd2ps_noise.raw
	set appendwrite
	
	foreach bias 2.5 2.0 1.5
		alterparam bias = $bias
		reset
		destroy all
		print @V4[dc]
		set sparse
		noise V(out) V4 dec 1000 0.1 500e3
		setplot noise1
		let manual_integral = integ(onoise_spectrum * onoise_spectrum)
		let total_rms_noise = sqrt(manual_integral[length(manual_integral)-1])*1e6
		save all
		write tb_pixel_nd2ps_noise.raw
	end
	quit
.endc
"}
C {ip_pixel_nd2ps.sym} 290 0 0 0 {name=x1}
C {lab_wire.sym} 160 -20 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 160 20 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {vsource.sym} 0 140 0 1 {name=V4 value="DC \{bias\} AC 1" savecurrent=false}
C {ip_current_source.sym} 500 140 0 0 {name=x2}
