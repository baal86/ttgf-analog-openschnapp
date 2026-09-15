v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1950 400 -1150 800 {flags=graph
y1=-1.6e-06
y2=3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0018
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="out
sf
ref
amp"
color="4 5 6 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -1950 -60 -1150 340 {flags=graph
y1=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0018
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="clk
nry[3:0];nry7,nry6,nry5,nry4,nry3,nry2,nry1,nry0
ncy[5:0];ncy5,ncy4,ncy3,ncy2,ncy1,ncy0
reset"
color="4 6 6 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=1
y2=4}
T {Analog Pin
Capacitor
Model} -380 550 0 0 0.4 0.4 {}
T {Analog Pin
Capacitor
Model} 710 570 0 0 0.4 0.4 {}
N -100 750 -100 770 {lab=0}
N -160 520 -160 600 {lab=sf}
N -160 520 40 520 {lab=sf}
N 40 520 160 520 {lab=sf}
N 280 630 280 650 {lab=0}
N 400 540 480 540 {lab=AMP}
N 90 560 160 560 {lab=ref}
N -140 580 -140 600 {lab=ref}
N -140 260 180 260 {lab=ref}
N -140 260 -140 580 {lab=ref}
N -140 560 90 560 {lab=ref}
N 280 150 280 160 {lab=VDD}
N 380 240 430 240 {lab=reset}
N 380 280 400 280 {lab=VDD}
N 280 450 280 460 {lab=VDD}
N -100 620 -100 630 {lab=VDD}
N -160 600 -160 630 {lab=sf}
N -140 600 -140 630 {lab=ref}
N -240 520 -240 540 {lab=sf}
N -240 540 -240 550 {lab=sf}
N -240 610 -240 630 {lab=0}
N 680 540 780 540 {lab=OUT}
N 580 620 580 640 {lab=0}
N 580 450 580 460 {lab=VDD}
N 840 540 840 560 {lab=OUT}
N 840 560 840 570 {lab=OUT}
N 840 630 840 650 {lab=0}
N 780 540 920 540 {lab=OUT}
N -340 520 -160 520 {lab=sf}
C {ip_current_source.sym} -130 690 0 0 {name=x21
schematic=ip_current_source_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_current_source.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_current_source.sim.spice]"}
C {gnd.sym} -100 770 0 0 {name=l21 lab=0}
C {ip_amplifier.sym} 280 540 0 0 {name=x22
schematic=ip_amplifier_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_amplifier.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_amplifier.sim.spice]"}
C {gnd.sym} 280 650 0 0 {name=l22 lab=0}
C {lab_wire.sym} 470 540 0 0 {name=p47 sig_type=std_logic lab=AMP}
C {lab_wire.sym} -300 520 0 0 {name=p48 sig_type=std_logic lab=sf}
C {lab_wire.sym} 130 560 0 0 {name=p49 sig_type=std_logic lab=ref}
C {devices/launcher.sym} -1845 -445 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -1910 -610 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {devices/launcher.sym} -1845 -405 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {simulator_commands_shown.sym} -1920 -280 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.options reltol=0.005 vntol=10u abstol=10n
.control
	reset
	tran 1u 1.8m
	write tb_total_tran.raw
	quit
.endc
"}
C {devices/code_shown.sym} -1020 -780 0 0 {name=SETUP only_toplevel=true
value="

VVDD VDD 0 3.3
VCLK CLK 0 PULSE (0 3.3 5u 1n 1n 5u 10u)

astim [RESETA 
+      dRA4 dRA3 dRA2 dRA1 dRA0 
+      dCA4 dCA3 dCA2 dCA1 dCA0] stim
.model stim d_source input_file=\\"../st_total.txt\\"

acosim[CLK 
+      dCA4 dCA3 dCA2 dCA1 dCA0 
+      dRA4 dRA3 dRA2 dRA1 dRA0 
+      RESETA] 
+      [dreset
+       dCY20 dCY19 dCY18 dCY17 dCY16 dCY15
+       dCY14 dCY13 dCY12 dCY11 dCY10 dCY9 
+       dCY8  dCY7  dCY6  dCY5  dCY4  dCY3 
+       dCY2  dCY1  dCY0 
+       dRY16 dRY15 dRY14 dRY13 dRY12 dRY11 
+       dRY10 dRY9  dRY8  dRY7  dRY6  dRY5
+       dRY4  dRY3  dRY2  dRY1  dRY0 
+      ] null dut
.model dut d_cosim simulation=\\"../../verilog/rtl/aux_total_digital/aux_total_digital.so\\"

.include pixels.spice
"}
C {ip_pixel_nd2ps.sym} 280 260 0 1 {name=x99
schematic=ip_pixel_nd2ps_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_pixel_nd2ps.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_pixel_nd2ps.sim.spice]"}
C {gnd.sym} 280 360 0 0 {name=l34 lab=0}
C {vdd.sym} 280 150 0 0 {name=l35 lab=VDD}
C {lab_wire.sym} 390 240 0 1 {name=p50 sig_type=std_logic lab=reset
}
C {vdd.sym} 400 280 0 0 {name=l37 lab=VDD}
C {vdd.sym} 280 450 0 0 {name=l54 lab=VDD}
C {vdd.sym} -100 620 0 0 {name=l55 lab=VDD}
C {capa.sym} -240 580 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -240 630 0 0 {name=l23 lab=0}
C {ip_buffer.sym} 580 540 0 0 {name=x23
schematic=ip_buffer_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_buffer.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_buffer.sim.spice]"}
C {lab_wire.sym} 770 540 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {gnd.sym} 580 640 0 0 {name=l24 lab=0}
C {vdd.sym} 580 450 0 0 {name=l36 lab=VDD}
C {capa.sym} 840 600 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 840 650 0 0 {name=l56 lab=0}
C {noconn.sym} 430 240 2 0 {name=l1}
