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
N -140 160 -80 160 {lab=vsubs}
N 0 -60 0 0 {lab=vsubs}
C {symbols/nfet_03v3.sym} 0 20 3 0 {name=M1
L=0.3u
W=1.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} -90 160 0 0 {name=p1 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} -110 0 0 0 {name=p2 sig_type=std_logic lab=cl}
C {lab_wire.sym} 110 0 0 0 {name=p3 sig_type=std_logic lab=bus}
C {lab_wire.sym} -110 100 0 0 {name=p4 sig_type=std_logic lab=en}
C {lab_wire.sym} 0 -60 3 0 {name=p5 sig_type=std_logic lab=vsubs}
C {ipin.sym} -140 0 0 0 {name=p6 lab=cl}
C {ipin.sym} -140 100 0 0 {name=p7 lab=en}
C {iopin.sym} -140 160 2 0 {name=p8 lab=vsubs}
C {opin.sym} 140 0 0 0 {name=p9 lab=bus}
