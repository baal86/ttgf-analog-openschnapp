v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -410 -640 -30 -640 {lab=VDD}
N -450 160 -130 160 {lab=VSUBS}
N -430 -640 -410 -640 {lab=VDD}
N -130 160 1170 160 {lab=VSUBS}
N -120 -370 -80 -370 {lab=INP}
N -150 -370 -120 -370 {lab=INP}
N 210 -370 240 -370 {lab=INN}
N 240 -370 270 -370 {lab=INN}
N 1170 160 1320 160 {lab=VSUBS}
N -30 -640 490 -640 {lab=VDD}
N -40 -440 -40 -400 {lab=#net1}
N 170 -440 170 -400 {lab=#net2}
N -40 -250 -40 160 {lab=VSUBS}
N 170 -240 170 160 {lab=VSUBS}
N 170 -340 170 -300 {lab=OUTP}
N -40 -340 -40 -320 {lab=OUTN}
N -40 -320 -40 -310 {lab=OUTN}
N 170 -320 270 -320 {lab=OUTP}
N -40 -320 60 -320 {lab=OUTN}
N 70 -640 70 -600 {lab=VDD}
N -40 -450 -40 -440 {lab=#net1}
N -40 -530 -40 -510 {lab=#net3}
N -40 -530 170 -530 {lab=#net3}
N 170 -530 170 -510 {lab=#net3}
N 170 -450 170 -440 {lab=#net2}
N 70 -540 70 -530 {lab=#net3}
C {iopin.sym} -430 -640 2 0 {name=p8 lab=VDD}
C {iopin.sym} -450 160 2 0 {name=p9 lab=VSUBS}
C {ipin.sym} -150 -370 0 0 {name=p6 lab=INP}
C {ipin.sym} 270 -370 2 0 {name=p7 lab=INN}
C {symbols/pfet3_03v3.sym} -60 -370 0 0 {name=M1
L=0.5u
W=15.0u
body=VDD
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet3_03v3.sym} 190 -370 0 1 {name=M2
L=0.5u
W=15.0u
body=VDD
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {res.sym} -40 -280 2 0 {name=R2
value=36k
footprint=1206
device=resistor
m=1}
C {res.sym} 170 -270 2 0 {name=R3
value=36k
footprint=1206
device=resistor
m=1}
C {isource.sym} 70 -570 0 0 {name=I1 value=50u}
C {opin.sym} 270 -320 0 0 {name=p3 lab=OUTP}
C {lab_wire.sym} 30 -320 0 0 {name=p1 sig_type=std_logic lab=OUTN}
C {res.sym} 170 -480 2 0 {name=R4
value=4.5k
footprint=1206
device=resistor
m=1}
C {res.sym} -40 -480 2 0 {name=R1
value=400
footprint=1206
device=resistor
m=1}
