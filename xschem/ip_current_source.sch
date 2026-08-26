v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 -100 0 -100 {lab=vsubs}
N 150 -100 210 -100 {lab=vsubs}
N 0 -590 290 -590 {lab=vdd}
N 150 -330 290 -330 {lab=src}
N 150 -270 210 -270 {lab=vsubs}
N 70 -160 70 -100 {lab=#net1}
N 150 -0 290 -0 {lab=vsubs}
N 150 -70 150 -0 {lab=vsubs}
N 0 -160 0 -130 {lab=#net1}
N 40 -100 70 -100 {lab=#net1}
N 70 -100 110 -100 {lab=#net1}
N 0 -160 70 -160 {lab=#net1}
N 0 -70 0 0 {lab=vsubs}
N 0 0 150 -0 {lab=vsubs}
N -0 -180 -0 -160 {lab=#net1}
N -70 -350 -30 -350 {lab=vsubs}
N -30 -350 -20 -350 {lab=vsubs}
N 150 -240 150 -130 {lab=#net2}
N 150 -330 150 -300 {lab=src}
N -0 -320 -0 -180 {lab=#net1}
N -0 -270 110 -270 {lab=#net1}
N -70 -420 -30 -420 {lab=vsubs}
N -30 -420 -20 -420 {lab=vsubs}
N -70 -490 -30 -490 {lab=vsubs}
N -30 -490 -20 -490 {lab=vsubs}
N -0 -460 0 -450 {lab=#net3}
N -0 -390 -0 -380 {lab=#net4}
N 0 -590 0 -520 {lab=vdd}
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
L=10u
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
C {iopin.sym} 290 -590 2 1 {name=p3 lab=vdd}
C {iopin.sym} 290 0 2 1 {name=p4 lab=vsubs}
C {ipin.sym} 290 -330 0 1 {name=p5 lab=src}
C {lab_wire.sym} 170 -270 0 1 {name=p6 sig_type=std_logic lab=vsubs}
C {symbols/nfet_03v3.sym} 130 -270 0 0 {name=M3
L=0.3u
W=10u
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
C {lab_wire.sym} -70 -350 0 1 {name=p7 sig_type=std_logic lab=vsubs}
C {symbols/ppolyf_u_1k.sym} 0 -350 0 0 {name=R1
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 0 -420 0 0 {name=R2
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 0 -490 0 0 {name=R3
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} -70 -420 0 1 {name=p8 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} -70 -490 0 1 {name=p9 sig_type=std_logic lab=vsubs}
