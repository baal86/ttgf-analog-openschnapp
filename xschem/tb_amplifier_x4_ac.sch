v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -420 -990 380 -590 {flags=graph
y1=-180	
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=3
x2=9
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
sim_type=ac
color="7 15"
node="ph(oltf)
ph(oltf_parax)"
y2=180
hcursor2_y=67.671712
hcursor1_y=32.601201}
B 2 -423.0622682802731 -1410 376.9377317197269 -1010 {flags=graph
y1=-2.4
y2=4
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=3
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="oltf
oltf_parax"
color="4 14"
dataset=-1
unitx=1
logx=1
logy=1
x2=9}
N 0 -20 0 0 {lab=REF}
N 0 0 0 10 {lab=REF}
N 0 70 0 90 {lab=0}
N 0 -60 0 -20 {lab=REF}
N 0 -80 0 -60 {lab=REF}
N 540 -100 630 -100 {lab=OUT}
N 570 -260 610 -260 {lab=FB}
N 510 -260 570 -260 {lab=FB}
N 1140 -100 1140 -70 {lab=LOAD}
N 1140 -10 1140 30 {lab=0}
N 610 -260 610 -220 {lab=FB}
N 420 -10 420 -0 {lab=0}
N 420 -190 420 -180 {lab=VDD}
N 490 -100 540 -100 {lab=OUT}
N 250 -80 290 -80 {lab=REF}
N 320 -80 350 -80 {lab=REF}
N 120 -80 250 -80 {lab=REF}
N 610 -160 610 -100 {lab=OUT}
N 290 -80 320 -80 {lab=REF}
N 0 -80 120 -80 {lab=REF}
N 1140 -100 1240 -100 {lab=LOAD}
N 800 -100 830 -100 {lab=OUT}
N 890 -100 1010 -100 {lab=#net1}
N 940 -10 940 30 {lab=0}
N 250 -120 350 -120 {lab=#net2}
N 320 -260 320 -130 {lab=#net2}
N 320 -260 450 -260 {lab=#net2}
N 320 -130 320 -120 {lab=#net2}
N 120 -120 190 -120 {lab=SIG}
N 0 -120 60 -120 {lab=REF}
N 0 -120 0 -80 {lab=REF}
N 540 340 630 340 {lab=OUT_PARAX}
N 570 180 610 180 {lab=FB_PARAX}
N 510 180 570 180 {lab=FB_PARAX}
N 1140 340 1140 370 {lab=LOAD_PARAX}
N 1140 430 1140 470 {lab=0}
N 610 180 610 220 {lab=FB_PARAX}
N 420 430 420 440 {lab=0}
N 420 250 420 260 {lab=VDD}
N 490 340 540 340 {lab=OUT_PARAX}
N 250 360 290 360 {lab=REF}
N 320 360 350 360 {lab=REF}
N 610 280 610 340 {lab=OUT_PARAX}
N 290 360 320 360 {lab=REF}
N 1140 340 1240 340 {lab=LOAD_PARAX}
N 800 340 830 340 {lab=OUT_PARAX}
N 890 340 1010 340 {lab=#net3}
N 940 430 940 470 {lab=0}
N 250 320 350 320 {lab=#net4}
N 320 180 320 310 {lab=#net4}
N 320 180 450 180 {lab=#net4}
N 320 310 320 320 {lab=#net4}
N 630 -100 800 -100 {lab=OUT}
N 630 340 800 340 {lab=OUT_PARAX}
N 140 320 180 320 {lab=SIG}
N 140 -110 140 320 {lab=SIG}
N 140 -120 140 -110 {lab=SIG}
N 120 -80 120 360 {lab=REF}
N 120 360 250 360 {lab=REF}
N 940 -100 940 -70 {lab=#net1}
N 940 340 940 370 {lab=#net3}
N 1070 -100 1140 -100 {lab=LOAD}
N 1070 340 1140 340 {lab=LOAD_PARAX}
C {devices/launcher.sym} -815 -465 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -880 280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::180MCU_MODELS/sm141064.ngspice statistical
.lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {simulator_commands_shown.sym} -890 -320 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
V_DD VDD 0 3.3

# Global parameters typically sourced from design.ngspice
.param sw_stat_global   = 1
.param sw_stat_mismatch = 1
.param mc_skew          = 1
.param res_mc_skew=3
.param cap_mc_skew=3
.param fnoicor=0

.param bias=1.0

.control
	op
	write tb_amplifier_x4_ac.op.raw
  	foreach v_bias 0.5 1.0 1.5
    		alterparam bias=$v_bias
		repeat 10
			mc_source
			ac dec 1000 1000 1e9
			let oltf = v(out) / v(fb)
			let oltf_parax = v(out_parax) / v(fb_parax)
			write tb_amplifier_x4_ac.raw
			set appendwrite
			reset
		end
	end
	quit
.endc
"}
C {vsource.sym} 0 40 0 0 {name=V2 value="DC \{bias\}" savecurrent=false}
C {gnd.sym} 0 90 0 0 {name=l2 lab=0}
C {lab_wire.sym} 20 -80 0 1 {name=p3 sig_type=std_logic lab=REF}
C {devices/launcher.sym} -815 -425 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].op.raw
"
}
C {ip_amplifier.sym} 420 -100 0 0 {name=x2}
C {gnd.sym} 420 0 0 0 {name=l4 lab=0}
C {lab_wire.sym} 1200 -100 0 0 {name=p2 sig_type=std_logic lab=LOAD}
C {res.sym} 1140 -40 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1140 30 0 0 {name=l7 lab=0}
C {vdd.sym} 420 -190 0 0 {name=l11 lab=VDD}
C {ngspice_probe.sym} 270 -80 0 0 {name=r1}
C {vsource.sym} 610 -190 0 0 {name=V1 value="AC 1" savecurrent=false}
C {lab_wire.sym} 570 -260 0 0 {name=p1 sig_type=std_logic lab=FB}
C {res.sym} 860 -100 1 0 {name=R3
value=500
footprint=1206
device=resistor
m=1}
C {capa.sym} 940 -40 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 940 30 0 0 {name=l1 lab=0}
C {res.sym} 480 -260 1 0 {name=R4
value=60k
footprint=1206
device=resistor
m=1}
C {res.sym} 220 -120 1 0 {name=R5
value=15k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 90 -120 1 0 {name=V3 value="DC -0.2" savecurrent=false}
C {lab_wire.sym} 140 -120 0 1 {name=p4 sig_type=std_logic lab=SIG}
C {gnd.sym} 420 440 0 0 {name=l3 lab=0}
C {lab_wire.sym} 1200 340 0 0 {name=p5 sig_type=std_logic lab=LOAD_PARAX}
C {res.sym} 1140 400 0 0 {name=R6
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1140 470 0 0 {name=l5 lab=0}
C {vdd.sym} 420 250 0 0 {name=l6 lab=VDD}
C {ngspice_probe.sym} 270 360 0 0 {name=r7}
C {vsource.sym} 610 250 0 0 {name=V4 value="AC 1" savecurrent=false}
C {lab_wire.sym} 570 180 0 0 {name=p6 sig_type=std_logic lab=FB_PARAX}
C {res.sym} 860 340 1 0 {name=R8
value=500
footprint=1206
device=resistor
m=1}
C {capa.sym} 940 400 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 940 470 0 0 {name=l8 lab=0}
C {res.sym} 480 180 1 0 {name=R9
value=60k
footprint=1206
device=resistor
m=1}
C {res.sym} 220 320 1 0 {name=R10
value=15k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 740 340 0 0 {name=p7 sig_type=std_logic lab=OUT_PARAX}
C {lab_wire.sym} 690 -100 0 0 {name=p8 sig_type=std_logic lab=OUT}
C {ip_amplifier.sym} 420 340 0 0 {name=x3
schematic=ip_amplifier_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_amplifier.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_amplifier.sim.spice]"}
C {res.sym} 1040 -100 1 0 {name=R11
value=500
footprint=1206
device=resistor
m=1}
C {res.sym} 1040 340 1 0 {name=R12
value=500
footprint=1206
device=resistor
m=1}
