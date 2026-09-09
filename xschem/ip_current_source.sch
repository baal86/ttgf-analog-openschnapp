v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -1100 290 -1100 {lab=vdd}
N 150 -430 290 -430 {lab=src_a}
N 70 -160 70 -100 {lab=refin}
N 150 -0 290 -0 {lab=vsubs}
N 150 -70 150 -0 {lab=vsubs}
N 0 -160 70 -160 {lab=refin}
N 0 0 150 -0 {lab=vsubs}
N -0 -180 -0 -160 {lab=refin}
N -70 -350 -30 -350 {lab=vsubs}
N -30 -350 -20 -350 {lab=vsubs}
N 150 -240 150 -130 {lab=#net1}
N 150 -430 150 -400 {lab=src_a}
N -0 -320 -0 -180 {lab=refin}
N -70 -420 -30 -420 {lab=vsubs}
N -30 -420 -20 -420 {lab=vsubs}
N -70 -490 -30 -490 {lab=vsubs}
N -30 -490 -20 -490 {lab=vsubs}
N -0 -460 0 -450 {lab=#net2}
N -0 -390 -0 -380 {lab=#net3}
N 0 -590 0 -520 {lab=#net4}
N -70 -620 -30 -620 {lab=vsubs}
N -30 -620 -20 -620 {lab=vsubs}
N -70 -690 -30 -690 {lab=vsubs}
N -30 -690 -20 -690 {lab=vsubs}
N -70 -760 -30 -760 {lab=vsubs}
N -30 -760 -20 -760 {lab=vsubs}
N 0 -730 0 -720 {lab=#net5}
N 0 -660 0 -650 {lab=#net6}
N -0 -840 0 -790 {lab=#net7}
N 150 -220 260 -220 {lab=#net1}
N 260 -240 260 -220 {lab=#net1}
N 150 -320 150 -300 {lab=src_a}
N 150 -320 260 -320 {lab=src_a}
N 260 -320 260 -300 {lab=src_a}
N 150 -400 150 -320 {lab=src_a}
N 100 -270 220 -270 {lab=refin}
N 0 -270 100 -270 {lab=refin}
N 520 -430 520 -400 {lab=src_b}
N 520 -220 630 -220 {lab=#net8}
N 630 -240 630 -220 {lab=#net8}
N 520 -320 520 -300 {lab=src_b}
N 520 -320 630 -320 {lab=src_b}
N 630 -320 630 -300 {lab=src_b}
N 520 -400 520 -320 {lab=src_b}
N 290 0 930 0 {lab=vsubs}
N 520 -430 630 -430 {lab=src_b}
N 630 -430 660 -430 {lab=src_b}
N 220 -270 590 -270 {lab=refin}
N 70 -100 100 -100 {lab=refin}
N 40 -100 70 -100 {lab=refin}
N -0 -70 -0 -0 {lab=vsubs}
N 0 -160 0 -130 {lab=refin}
N 520 -70 520 -0 {lab=vsubs}
N 100 -100 480 -100 {lab=refin}
N 520 -240 520 -130 {lab=#net8}
N -0 -1100 0 -1060 {lab=vdd}
N -70 -880 -30 -880 {lab=vsubs}
N -30 -880 -20 -880 {lab=vsubs}
N 0 -850 0 -840 {lab=#net7}
N -0 -1060 -0 -910 {lab=vdd}
C {iopin.sym} 290 -1100 2 1 {name=p0 lab=vdd}
C {iopin.sym} 930 0 2 1 {name=p2 lab=vsubs}
C {ipin.sym} 290 -430 0 1 {name=p3 lab=src_a}
C {lab_wire.sym} -70 -350 0 1 {name=p7 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} -70 -420 0 1 {name=p8 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} -70 -490 0 1 {name=p9 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} -70 -620 0 1 {name=p10 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} -70 -690 0 1 {name=p11 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} -70 -760 0 1 {name=p12 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 50 -270 0 0 {name=p13 sig_type=std_logic lab=refin}
C {ipin.sym} 660 -430 0 1 {name=p1 lab=src_b}
C {symbols/nfet3_06v0.sym} 20 -100 0 1 {name=M8
L=1u
W=5u
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
C {symbols/nfet3_06v0.sym} 130 -270 0 0 {name=M5
L=0.7u
W=5u
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
C {symbols/nfet3_06v0.sym} 240 -270 0 0 {name=M2
L=0.7u
W=5u
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
C {symbols/nfet3_06v0.sym} 500 -270 0 0 {name=M3
L=0.7u
W=5u
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
C {symbols/nfet3_06v0.sym} 610 -270 0 0 {name=M6
L=0.7u
W=5u
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
C {symbols/nfet3_06v0.sym} 130 -100 0 0 {name=M4
L=5u
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
C {symbols/nfet3_06v0.sym} 500 -100 0 0 {name=M7
L=5u
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
C {symbols/ppolyf_u_1k_6p0.sym} 0 -490 0 0 {name=R3
W=1e-6
L=6e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 0 -420 0 0 {name=R4
W=1e-6
L=6e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 0 -350 0 0 {name=R5
W=1e-6
L=6e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 0 -620 0 0 {name=R1
W=1e-6
L=6e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 0 -690 0 0 {name=R2
W=1e-6
L=6e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 0 -760 0 0 {name=R6
W=1e-6
L=6e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_wire.sym} -70 -880 0 1 {name=p4 sig_type=std_logic lab=vsubs}
C {symbols/ppolyf_u_1k_6p0.sym} 0 -880 0 0 {name=R7
W=1e-6
L=6e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
