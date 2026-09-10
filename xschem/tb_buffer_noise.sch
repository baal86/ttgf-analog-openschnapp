v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -160 200 640 600 {flags=graph
y1=-8.1
y2=-4.7
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
node=onoise_spectrum
color=4
dataset=-1
unitx=1
logx=1
logy=1
}
N 0 80 0 100 {lab=GND}
N -220 -220 -0 -220 {lab=VDD}
N 0 -220 0 -80 {lab=VDD}
N -160 0 -160 40 {lab=IN}
N -160 -0 -100 -0 {lab=IN}
N -160 100 -160 120 {lab=GND}
N 100 -0 180 -0 {lab=OUTP}
N 180 0 240 0 {lab=OUTP}
N 210 -0 210 40 {lab=OUTP}
N 210 100 210 120 {lab=GND}
N 300 -0 380 0 {lab=LOAD}
N 400 90 400 110 {lab=GND}
N 380 0 400 0 {lab=LOAD}
N 400 0 400 30 {lab=LOAD}
C {ip_buffer.sym} 0 0 0 0 {name=x1}
C {devices/launcher.sym} -1095 -165 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
set v [xschem raw value total_rms_noise 0]
puts [format \{Total RMS Noise = %.4g uV\} $v]
"
}
C {devices/code_shown.sym} -1170 400 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {gnd.sym} 0 100 0 0 {name=l8 lab=GND}
C {vsource.sym} -220 -190 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -220 -160 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -70 -220 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -160 70 0 0 {name=V1 value="DC \{bias\} AC 1" savecurrent=false}
C {gnd.sym} -160 120 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -110 0 0 0 {name=p2 sig_type=std_logic lab=IN}
C {lab_wire.sym} 140 0 0 0 {name=p3 sig_type=std_logic lab=OUTP}
C {res.sym} 270 0 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {capa.sym} 210 70 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 210 120 0 0 {name=l3 lab=GND}
C {res.sym} 400 60 2 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 400 110 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 370 0 0 0 {name=p4 sig_type=std_logic lab=LOAD}
C {simulator_commands_shown.sym} -1160 -30 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param bias=1.5
.control
	save all
	
	foreach bias 2.0 1.5 1.0 0.5 0.0
		alterparam bias = $bias
		reset
		destroy all
		reset
		set sparse
		noise V(outp) V1 dec 1000 0.1 500e3
		setplot noise1
		let manual_integral = integ(onoise_spectrum * onoise_spectrum)
		let total_rms_noise = sqrt(manual_integral[length(manual_integral)-1])*1e6	
		write tb_buffer_noise.raw
		set appendwrite

	end
	quit
.endc
"}
