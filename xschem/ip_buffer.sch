v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 0 -0 90 {lab=vsubs}
N -270 90 -0 90 {lab=vsubs}
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
N -110 70 -110 90 {lab=vsubs}
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
N -320 90 -270 90 {lab=vsubs}
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
C {iopin.sym} -320 90 2 0 {name=p1 lab=vsubs}
C {iopin.sym} -270 -260 2 0 {name=p2 lab=vdd}
C {ipin.sym} -320 -30 0 0 {name=p3 lab=INP}
C {opin.sym} 90 -80 0 0 {name=p4 lab=OUTP}
C {res.sym} -110 40 0 0 {name=R1
value=36k
footprint=1206
device=resistor
m=1}
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
