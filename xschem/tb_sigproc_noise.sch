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
color="4 5"
node="inoise_spectrum
onoise_spectrum"
hcursor2_y=1.8627841
y2=-3.8}
N 20 -420 240 -420 {lab=OUT}
N -490 -460 -490 -430 {lab=#net1}
N -120 -300 -120 -290 {lab=0}
N -120 -530 -120 -520 {lab=VDD}
N -490 -460 -390 -460 {lab=#net1}
N -390 -460 -260 -460 {lab=#net1}
N -330 -360 -330 -350 {lab=#net2}
N -330 -360 -260 -360 {lab=#net2}
N -330 -290 -330 -280 {lab=0}
C {devices/launcher.sym} -1105 -395 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
set vo [xschem raw value total_output_rms_noise 0]
set vi [xschem raw value total_input_rms_noise 0]
puts [format \{Total Output RMS Noise = %.4g uV\} $vo]
puts [format \{Total Input  RMS Noise = %.4g uV\} $vi]
"
}
C {devices/code_shown.sym} -1150 220 0 0 {name=MODELS only_toplevel=true
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
		let manual_integral_o = integ(onoise_spectrum * onoise_spectrum)
		let total_output_rms_noise = sqrt(manual_integral_o[length(manual_integral_o)-1])*1e6
		let manual_integral_i = integ(inoise_spectrum * inoise_spectrum)
		let total_input_rms_noise = sqrt(manual_integral_i[length(manual_integral_i)-1])*1e6
		write tb_sigproc_noise.raw
		set appendwrite
		reset
	end
	quit
.endc
"}
C {vsource.sym} -490 -400 0 0 {name=V2 value="DC 1.0 AC 1" savecurrent=false}
C {gnd.sym} -120 -290 0 0 {name=l4 lab=0}
C {lab_wire.sym} 210 -420 0 0 {name=p2 sig_type=std_logic lab=OUT}
C {gnd.sym} -490 -370 0 0 {name=l9 lab=0}
C {vdd.sym} -120 -530 0 0 {name=l11 lab=VDD}
C {ip_sigproc.sym} -120 -420 0 0 {name=x1}
C {vsource.sym} -330 -320 0 0 {name=V1 value="DC 1.0" savecurrent=false}
C {gnd.sym} -330 -280 0 0 {name=l1 lab=0}
