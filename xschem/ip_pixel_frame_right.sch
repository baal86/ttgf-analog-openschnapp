v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 0 0 20 {lab=vsubst}
N 0 20 190 20 {lab=vsubst}
N 190 0 190 20 {lab=vsubst}
N -170 20 0 20 {lab=vsubst}
N -0 -90 -0 -60 {lab=reset}
N -170 -90 -0 -90 {lab=reset}
N 190 -130 190 -60 {lab=read}
N -170 -130 190 -130 {lab=read}
C {symbols/diode_nd2ps_03v3.sym} 0 -30 2 0 {name=D1
model=diode_nd2ps_03v3
r_w=5u
r_l=5u
m=1}
C {symbols/diode_nd2ps_03v3.sym} 190 -30 2 0 {name=D2
model=diode_nd2ps_03v3
r_w=5u
r_l=5u
m=1}
C {ipin.sym} -170 -130 0 0 {name=p1 lab=read}
C {ipin.sym} -170 -90 0 0 {name=p2 lab=reset}
C {iopin.sym} -170 20 2 0 {name=p3 lab=vsubs}
