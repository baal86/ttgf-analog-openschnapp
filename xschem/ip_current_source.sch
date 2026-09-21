v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 -430 290 -430 {lab=src_a}
N 70 -160 70 -100 {lab=refin}
N 150 -0 290 -0 {lab=vsubs}
N 150 -70 150 -0 {lab=vsubs}
N 0 -160 70 -160 {lab=refin}
N 0 0 150 -0 {lab=vsubs}
N -0 -180 -0 -160 {lab=refin}
N -70 -520 -30 -520 {lab=vsubs}
N -30 -520 -20 -520 {lab=vsubs}
N 150 -240 150 -130 {lab=#net1}
N 150 -430 150 -400 {lab=src_a}
N -0 -320 -0 -180 {lab=refin}
N 150 -320 150 -300 {lab=src_a}
N 150 -400 150 -320 {lab=src_a}
N 100 -270 220 -270 {lab=refin}
N 0 -270 100 -270 {lab=refin}
N 520 -430 520 -400 {lab=src_b}
N 520 -320 520 -300 {lab=src_b}
N 520 -400 520 -320 {lab=src_b}
N 290 0 930 0 {lab=vsubs}
N 520 -430 630 -430 {lab=src_b}
N 630 -430 660 -430 {lab=src_b}
N 220 -270 480 -270 {lab=refin}
N 70 -100 100 -100 {lab=refin}
N 40 -100 70 -100 {lab=refin}
N -0 -70 -0 -0 {lab=vsubs}
N 0 -160 0 -130 {lab=refin}
N 520 -70 520 -0 {lab=vsubs}
N 100 -100 480 -100 {lab=refin}
N 520 -240 520 -130 {lab=#net2}
N 0 -580 0 -550 {lab=vdd}
N 0 -490 -0 -320 {lab=refin}
C {iopin.sym} 0 -580 1 1 {name=p0 lab=vdd}
C {iopin.sym} 930 0 2 1 {name=p2 lab=vsubs}
C {ipin.sym} 290 -430 0 1 {name=p3 lab=src_a}
C {lab_wire.sym} -70 -520 0 1 {name=p7 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 60 -270 0 0 {name=p13 sig_type=std_logic lab=refin}
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
m=2
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
m=2
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
C {symbols/ppolyf_u_1k_6p0.sym} 0 -520 0 0 {name=R5
W=1e-6
L=42e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
