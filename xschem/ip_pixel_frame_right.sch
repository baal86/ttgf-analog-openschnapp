v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 0 0 20 {lab=vsubs}
N 0 20 190 20 {lab=vsubs}
N 190 0 190 20 {lab=vsubs}
N -170 20 0 20 {lab=vsubs}
N -0 -90 -0 -60 {lab=reset}
N -170 -90 -0 -90 {lab=reset}
N 190 -130 190 -60 {lab=read}
N -170 -130 190 -130 {lab=read}
N -180 -220 270 -220 {lab=vdd}
N 270 -220 360 -220 {lab=vdd}
N 200 20 360 20 {lab=vsubs}
N 360 0 360 20 {lab=vsubs}
N 360 -220 360 -60 {lab=vdd}
N 190 20 200 20 {lab=vsubs}
C {ipin.sym} -170 -130 0 0 {name=p1 lab=read}
C {ipin.sym} -170 -90 0 0 {name=p2 lab=reset}
C {iopin.sym} -170 20 2 0 {name=p3 lab=vsubs}
C {symbols/diode_nd2ps_06v0.sym} 0 -30 2 0 {name=D1
model=diode_nd2ps_06v0
r_w=0.5u
r_l=0.5u
m=1}
C {symbols/diode_nd2ps_06v0.sym} 190 -30 2 0 {name=D2
model=diode_nd2ps_06v0
r_w=0.5u
r_l=0.5u
m=1}
C {iopin.sym} -180 -220 2 0 {name=p4 lab=vdd}
C {symbols/cap_nmos_03v3.sym} 360 -30 0 0 {name=C1
W=8.5e-6
L=12.5e-6
model=cap_nmos_03v3
spiceprefix=X
m=1}
