v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -420 -990 380 -590 {flags=graph
y1=-130	
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
y2=180}
B 2 -423.0622682802731 -1410 376.9377317197269 -1010 {flags=graph
y1=-1.1
y2=4.7
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
N 0 -240 0 -220 {lab=SIG}
N 0 -220 0 -210 {lab=SIG}
N 0 -150 0 -130 {lab=0}
N 0 -280 0 -240 {lab=SIG}
N 0 -300 0 -280 {lab=SIG}
N 630 -320 840 -320 {lab=OUT}
N 290 -340 300 -340 {lab=FB}
N 540 -320 630 -320 {lab=OUT}
N 570 -480 610 -480 {lab=FB}
N 510 -480 570 -480 {lab=FB}
N 740 -320 740 -290 {lab=OUT}
N 740 -230 740 -190 {lab=0}
N 400 -480 510 -480 {lab=FB}
N 270 -480 340 -480 {lab=FB}
N 270 -440 270 -340 {lab=FB}
N 270 -340 290 -340 {lab=FB}
N 270 -480 270 -440 {lab=FB}
N 610 -480 610 -440 {lab=FB}
N 420 -230 420 -220 {lab=0}
N 420 -410 420 -400 {lab=VDD}
N 490 -320 540 -320 {lab=OUT}
N 250 -300 290 -300 {lab=SIG}
N 320 -300 350 -300 {lab=SIG}
N 120 -300 250 -300 {lab=SIG}
N 300 -340 350 -340 {lab=FB}
N 610 -380 610 -320 {lab=OUT}
N 290 -300 320 -300 {lab=SIG}
N 340 -480 400 -480 {lab=FB}
N 0 -300 120 -300 {lab=SIG}
N 630 100 840 100 {lab=OUT_PARAX}
N 290 80 300 80 {lab=FB_PARAX}
N 540 100 630 100 {lab=OUT_PARAX}
N 570 -60 610 -60 {lab=FB_PARAX}
N 510 -60 570 -60 {lab=FB_PARAX}
N 740 100 740 130 {lab=OUT_PARAX}
N 740 190 740 230 {lab=0}
N 400 -60 510 -60 {lab=FB_PARAX}
N 270 -60 340 -60 {lab=FB_PARAX}
N 270 -20 270 80 {lab=FB_PARAX}
N 270 80 290 80 {lab=FB_PARAX}
N 270 -60 270 -20 {lab=FB_PARAX}
N 610 -60 610 -20 {lab=FB_PARAX}
N 420 190 420 200 {lab=0}
N 420 10 420 20 {lab=VDD}
N 490 100 540 100 {lab=OUT_PARAX}
N 250 120 290 120 {lab=SIG}
N 320 120 350 120 {lab=SIG}
N 300 80 350 80 {lab=FB_PARAX}
N 610 40 610 100 {lab=OUT_PARAX}
N 290 120 320 120 {lab=SIG}
N 340 -60 400 -60 {lab=FB_PARAX}
N 160 -300 160 120 {lab=SIG}
N 160 120 250 120 {lab=SIG}
C {devices/launcher.sym} -815 -465 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -880 240 0 0 {name=MODELS only_toplevel=true
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
	write tb_amplifier_x1_ac.op.raw
  	foreach v_bias 0.5 1.0 1.5 2.0
    		alterparam bias=$v_bias
		repeat 10
			mc_source
			ac dec 1000 1000 1e9
			let oltf = v(out) / v(fb)
			let oltf_parax = v(out_parax) / v(fb_parax)
			write tb_amplifier_x1_ac.raw
			set appendwrite
			reset
		end
	end
	quit
.endc
"}
C {vsource.sym} 0 -180 0 0 {name=V2 value="DC \{bias\}" savecurrent=false}
C {gnd.sym} 0 -130 0 0 {name=l2 lab=0}
C {lab_wire.sym} 20 -300 0 1 {name=p3 sig_type=std_logic lab=SIG}
C {devices/launcher.sym} -815 -425 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].op.raw
"
}
C {ip_amplifier.sym} 420 -320 0 0 {name=x2}
C {gnd.sym} 420 -220 0 0 {name=l4 lab=0}
C {lab_wire.sym} 800 -320 0 0 {name=p2 sig_type=std_logic lab=OUT}
C {res.sym} 740 -260 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 740 -190 0 0 {name=l7 lab=0}
C {vdd.sym} 420 -410 0 0 {name=l11 lab=VDD}
C {ngspice_probe.sym} 270 -300 0 0 {name=r1}
C {vsource.sym} 610 -410 0 0 {name=V1 value="AC 1" savecurrent=false}
C {lab_wire.sym} 570 -480 0 0 {name=p1 sig_type=std_logic lab=FB}
C {ip_amplifier.sym} 420 100 0 0 {name=x1
schematic=ip_amplifier_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_amplifier.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_amplifier.sim.spice]"}
C {gnd.sym} 420 200 0 0 {name=l3 lab=0}
C {lab_wire.sym} 800 100 0 0 {name=p5 sig_type=std_logic lab=OUT_PARAX}
C {res.sym} 740 160 0 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 740 230 0 0 {name=l5 lab=0}
C {vdd.sym} 420 10 0 0 {name=l6 lab=VDD}
C {ngspice_probe.sym} 270 120 0 0 {name=r4}
C {vsource.sym} 610 10 0 0 {name=V4 value="AC 1" savecurrent=false}
C {lab_wire.sym} 570 -60 0 0 {name=p6 sig_type=std_logic lab=FB_PARAX}
