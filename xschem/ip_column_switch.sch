v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -140 -0 -30 -0 {lab=cl}
N 30 -0 140 0 {lab=bus}
N -0 40 0 100 {lab=en}
N -140 100 -0 100 {lab=en}
N -140 260 -80 260 {lab=vsubs}
N 0 100 0 150 {lab=en}
N -80 260 -0 260 {lab=vsubs}
N 0 210 0 260 {lab=vsubs}
N -60 40 -30 40 {lab=cl}
N -60 -0 -60 40 {lab=cl}
N 30 40 60 40 {lab=bus}
N 60 -0 60 40 {lab=bus}
C {lab_wire.sym} -90 260 0 0 {name=p1 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} -110 0 0 0 {name=p2 sig_type=std_logic lab=cl}
C {lab_wire.sym} 110 0 0 0 {name=p3 sig_type=std_logic lab=bus}
C {lab_wire.sym} -110 100 0 0 {name=p4 sig_type=std_logic lab=en}
C {ipin.sym} -140 0 0 0 {name=p6 lab=cl}
C {ipin.sym} -140 100 0 0 {name=p7 lab=en}
C {iopin.sym} -140 260 2 0 {name=p8 lab=vsubs}
C {opin.sym} 140 0 0 0 {name=p9 lab=bus}
C {symbols/nfet3_06v0.sym} 0 20 3 0 {name=M1
L=0.7u
W=0.5u
body=vsubs
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/diode_nd2ps_06v0.sym} 0 180 2 0 {name=D1
model=diode_nd2ps_06v0
r_w=0.5u
r_l=0.5u
m=1}
C {symbols/nfet3_06v0.sym} 0 60 3 0 {name=M2
L=0.7u
W=0.5u
body=vsubs
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
