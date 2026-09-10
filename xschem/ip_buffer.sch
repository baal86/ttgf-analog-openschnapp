v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 0 -0 90 {lab=vsubs}
N -270 390 0 390 {lab=vsubs}
N -270 -260 0 -260 {lab=vdd}
N 0 -260 0 -240 {lab=vdd}
N -0 -30 10 -30 {lab=OUTP}
N -140 -30 -40 -30 {lab=INP}
N 0 -80 90 -80 {lab=OUTP}
N 10 -30 30 -30 {lab=OUTP}
N 0 -60 30 -60 {lab=OUTP}
N 30 -60 30 -30 {lab=OUTP}
N -70 -210 -40 -210 {lab=#net1}
N -60 -210 -60 -160 {lab=#net1}
N -110 -160 -60 -160 {lab=#net1}
N -110 -180 -110 -160 {lab=#net1}
N -110 -260 -110 -240 {lab=vdd}
N -110 -160 -110 -140 {lab=#net1}
N -120 -210 -110 -210 {lab=vdd}
N -120 -260 -120 -210 {lab=vdd}
N -0 -210 10 -210 {lab=vdd}
N 10 -260 10 -210 {lab=vdd}
N 0 -260 10 -260 {lab=vdd}
N -110 -40 -110 10 {lab=#net2}
N -110 -80 -110 -40 {lab=#net2}
N 0 -180 0 -160 {lab=OUTP}
N -0 -100 0 -60 {lab=OUTP}
N 0 -160 0 -100 {lab=OUTP}
N -250 -30 -140 -30 {lab=INP}
N -320 -30 -250 -30 {lab=INP}
N -320 390 -270 390 {lab=vsubs}
N 0 90 0 390 {lab=vsubs}
N -110 250 -110 280 {lab=#net3}
N -110 150 -110 190 {lab=#net4}
N -260 150 -260 190 {lab=#net5}
N -260 70 -260 100 {lab=#net6}
N -260 70 -170 70 {lab=#net6}
N -170 70 -170 350 {lab=#net6}
N -170 350 -110 350 {lab=#net6}
N -110 340 -110 350 {lab=#net6}
N -260 250 -260 390 {lab=vsubs}
N -280 130 -280 390 {lab=vsubs}
N -130 130 -130 390 {lab=vsubs}
N -110 10 -110 100 {lab=#net2}
C {symbols/pfet_06v0.sym} -20 -30 0 0 {name=M1
L=1u
W=10u
nf=1
m=15
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {iopin.sym} -320 390 2 0 {name=p1 lab=vsubs}
C {iopin.sym} -270 -260 2 0 {name=p2 lab=vdd}
C {ipin.sym} -320 -30 0 0 {name=p3 lab=INP}
C {opin.sym} 90 -80 0 0 {name=p4 lab=OUTP}
C {ammeter.sym} -110 -110 0 0 {name=Vmeas savecurrent=false spice_ignore=0}
C {symbols/pfet_06v0.sym} -20 -210 0 0 {name=M4
L=2u
W=10u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} -90 -210 0 1 {name=M2
L=2u
W=10u
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/ppolyf_u_1k_6p0.sym} -110 130 0 0 {name=R1
W=1e-6
L=6e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} -110 220 0 0 {name=R2
W=1e-6
L=6e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} -110 310 0 0 {name=R3
W=1e-6
L=6e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} -260 130 0 0 {name=R4
W=1e-6
L=6e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} -260 220 0 0 {name=R5
W=1e-6
L=6e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
