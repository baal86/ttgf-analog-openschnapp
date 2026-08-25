v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 -100 0 -100 {lab=vsubs}
N 150 -100 210 -100 {lab=vsubs}
N 0 -450 290 -450 {lab=vdd}
N 150 -330 290 -330 {lab=src}
N 0 -450 0 -380 {lab=vdd}
N 20 -350 80 -350 {lab=vsubs}
N 70 -160 70 -100 {lab=#net1}
N 150 -330 150 -130 {lab=src}
N 150 -0 290 -0 {lab=vsubs}
N 150 -70 150 -0 {lab=vsubs}
N 0 -160 0 -130 {lab=#net1}
N 0 -320 0 -160 {lab=#net1}
N 40 -100 70 -100 {lab=#net1}
N 70 -100 110 -100 {lab=#net1}
N 0 -160 70 -160 {lab=#net1}
N 0 -70 0 0 {lab=vsubs}
N 0 0 150 -0 {lab=vsubs}
C {symbols/nfet_03v3.sym} 20 -100 0 1 {name=M1
L=1u
W=3u
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
C {symbols/nfet_03v3.sym} 130 -100 0 0 {name=M2
L=2u
W=0.3u
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
C {lab_wire.sym} -40 -100 0 1 {name=p1 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 170 -100 0 1 {name=p2 sig_type=std_logic lab=vsubs}
C {iopin.sym} 290 -450 2 1 {name=p3 lab=vdd}
C {iopin.sym} 290 0 2 1 {name=p4 lab=vsubs}
C {ipin.sym} 290 -330 0 1 {name=p5 lab=src}
C {lab_wire.sym} 40 -350 0 1 {name=p6 sig_type=std_logic lab=vsubs}
C {symbols/ppolyf_u_3k.sym} 0 -350 0 1 {name=R2
W=1e-6
L=6e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
