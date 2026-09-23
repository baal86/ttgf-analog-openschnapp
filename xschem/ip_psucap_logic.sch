v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -0 -0 40 {lab=VSUBS}
N -60 40 -10 40 {lab=VSUBS}
N -10 40 -0 40 {lab=VSUBS}
N -0 -90 0 -60 {lab=VDD}
N -60 -90 0 -90 {lab=VDD}
C {symbols/cap_nmos_03v3.sym} 0 -30 0 0 {name=C1
W=17.5e-6
L=2.4e-6
model=cap_nmos_03v3
spiceprefix=X
m=1}
C {iopin.sym} -60 -90 2 0 {name=p1 lab=VDD}
C {iopin.sym} -60 40 2 0 {name=p2 lab=VSUBS}
