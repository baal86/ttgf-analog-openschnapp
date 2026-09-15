v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1950 550 -1150 950 {flags=graph
y1=-1.6e-06
y2=3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0052
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
B 2 -1950 120 -1150 520 {flags=graph
y1=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0052
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="clk
nra[4:0];nra4,nra3,nra2,nra1,nra0
nry[16:0];nry16,nry15,nry14,nry13,nry12,nry11,nry10,nry9,nry8,nry7,nry6,nry5,nry4,nry3,nry2,nry1,nry0
nca[4:0];nca4,nca3,nca2,nca1,nca0
ncy[20:0];ncy20,ncy19,ncy18,ncy17,ncy16,ncy15,ncy14,ncy13,ncy12,ncy11,ncy10,ncy9,ncy8,ncy7,ncy6,ncy5,ncy4,ncy3,ncy2,ncy1,ncy0
reset"
color="4 5 6 5 6 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=1
y2=2.7}
T {Analog Pin
Capacitor
Model} -1010 350 0 0 0.4 0.4 {}
T {Analog Pin
Capacitor
Model} 80 370 0 0 0.4 0.4 {}
N -730 550 -730 570 {lab=0}
N -790 320 -790 400 {lab=sf}
N -790 320 -590 320 {lab=sf}
N -590 320 -470 320 {lab=sf}
N -350 430 -350 450 {lab=0}
N -230 340 -150 340 {lab=AMP}
N -540 360 -470 360 {lab=ref}
N -770 380 -770 400 {lab=ref}
N -770 60 -450 60 {lab=ref}
N -770 60 -770 380 {lab=ref}
N -770 360 -540 360 {lab=ref}
N -350 -50 -350 -40 {lab=VDD}
N -250 40 -200 40 {lab=reset}
N -250 80 -230 80 {lab=VDD}
N -350 250 -350 260 {lab=VDD}
N -730 420 -730 430 {lab=VDD}
N -790 400 -790 430 {lab=sf}
N -770 400 -770 430 {lab=ref}
N -870 320 -870 340 {lab=sf}
N -870 340 -870 350 {lab=sf}
N -870 410 -870 430 {lab=0}
N 50 340 150 340 {lab=OUT}
N -50 420 -50 440 {lab=0}
N -50 250 -50 260 {lab=VDD}
N 210 340 210 360 {lab=OUT}
N 210 360 210 370 {lab=OUT}
N 210 430 210 450 {lab=0}
N 150 340 290 340 {lab=OUT}
N -970 320 -790 320 {lab=sf}
C {ip_current_source.sym} -760 490 0 0 {name=x21
schematic=ip_current_source_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_current_source.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_current_source.sim.spice]"}
C {gnd.sym} -730 570 0 0 {name=l21 lab=0}
C {ip_amplifier.sym} -350 340 0 0 {name=x22
schematic=ip_amplifier_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_amplifier.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_amplifier.sim.spice]"}
C {gnd.sym} -350 450 0 0 {name=l22 lab=0}
C {lab_wire.sym} -160 340 0 0 {name=p47 sig_type=std_logic lab=AMP}
C {lab_wire.sym} -930 320 0 0 {name=p48 sig_type=std_logic lab=sf}
C {lab_wire.sym} -500 360 0 0 {name=p49 sig_type=std_logic lab=ref}
C {devices/launcher.sym} -1985 -605 0 0 {name=h1
descr="Load Waveforms"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -2050 -770 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {devices/launcher.sym} -1985 -565 0 0 {name=h2
descr="Annotate"
tclcommand="
xschem annotate_op $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {simulator_commands_shown.sym} -2050 -460 0 0 {name=COMMANDS  
simulator=ngspice
only_toplevel=false 
value="
.option klu
.option reltol=0.05 
.option abstol=100u
.save none

.save V(nRA0) V(nRA1) V(nRA2) V(nRA3) V(nRA4)
.save V(nCA0) V(nCA1) V(nCA2) V(nCA3) V(nCA4)

.save V(ncy0) V(ncy1) V(ncy2) V(ncy3) V(ncy4) V(ncy5) V(ncy6) V(ncy7) V(ncy8)
.save V(ncy9) V(ncy10) V(ncy11) V(ncy12) V(ncy13) V(ncy14) V(ncy15) V(ncy16) 
.save V(ncy17) V(ncy18) V(ncy19) V(ncy20) 

.save V(nry0) V(nry1) V(nry2) V(nry3) V(nry4) V(nry5) V(nry6) V(nry7) V(nry8)
.save V(nry9) V(nry10) V(nry11) V(nry12) V(nry13) V(nry14) V(nry15) V(nry16) 

.save V(reset) V(clk)
.save V(out) V(sf) V(ref) V(amp)
.control
	reset
	tran 100n 5.2m 0 100n
	write tb_total_tran.raw
	quit
.endc
"}
C {devices/code_shown.sym} -1270 -770 0 0 {name=SETUP only_toplevel=true
value="

VVDD VDD 0 3.3
VCLK CLK 0 PULSE (0 3.3 0 1n 1n 2u 4u)

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
C {ip_pixel_nd2ps.sym} -350 60 0 1 {name=x99
schematic=ip_pixel_nd2ps_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_pixel_nd2ps.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_pixel_nd2ps.sim.spice]"}
C {gnd.sym} -350 160 0 0 {name=l34 lab=0}
C {vdd.sym} -350 -50 0 0 {name=l35 lab=VDD}
C {lab_wire.sym} -240 40 0 1 {name=p50 sig_type=std_logic lab=reset
}
C {vdd.sym} -230 80 0 0 {name=l37 lab=VDD}
C {vdd.sym} -350 250 0 0 {name=l54 lab=VDD}
C {vdd.sym} -730 420 0 0 {name=l55 lab=VDD}
C {capa.sym} -870 380 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -870 430 0 0 {name=l23 lab=0}
C {ip_buffer.sym} -50 340 0 0 {name=x23
schematic=ip_buffer_parax.sim
spice_sym_def="tcleval(.include [file normalize ./parax/ip_buffer.sim.spice])"
tclcommand="textwindow [file normalize ./parax/ip_buffer.sim.spice]"}
C {lab_wire.sym} 140 340 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {gnd.sym} -50 440 0 0 {name=l24 lab=0}
C {vdd.sym} -50 250 0 0 {name=l36 lab=VDD}
C {capa.sym} 210 400 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 210 450 0 0 {name=l56 lab=0}
C {noconn.sym} -200 40 2 0 {name=l1}
