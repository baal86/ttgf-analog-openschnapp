v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 250 110 250 140 {lab=VSUBS}
N -410 -640 -30 -640 {lab=VDD}
N 170 20 170 80 {lab=#net1}
N 100 20 100 50 {lab=#net1}
N 140 80 170 80 {lab=#net1}
N 170 80 210 80 {lab=#net1}
N 100 20 170 20 {lab=#net1}
N 100 -90 100 20 {lab=#net1}
N 250 -60 250 50 {lab=#net2}
N 100 -90 210 -90 {lab=#net1}
N 250 -150 250 -120 {lab=#net3}
N 100 110 100 140 {lab=VSUBS}
N -30 -640 -30 -540 {lab=VDD}
N -30 -460 30 -460 {lab=COM_P}
N 30 -510 30 -460 {lab=COM_P}
N 100 -640 100 -540 {lab=VDD}
N 100 -480 100 -450 {lab=#net4}
N 100 -390 100 -320 {lab=#net1}
N 100 -260 100 -90 {lab=#net1}
N -30 -460 -30 -420 {lab=COM_P}
N -30 -420 60 -420 {lab=COM_P}
N -30 -420 -30 -380 {lab=COM_P}
N 100 -640 380 -640 {lab=VDD}
N 900 -640 980 -640 {lab=VDD}
N 730 -640 730 -540 {lab=VDD}
N 900 -640 900 -540 {lab=VDD}
N 380 -250 380 -220 {lab=#net3}
N 380 -220 550 -220 {lab=#net3}
N 550 -250 550 -220 {lab=#net3}
N 250 -220 250 -210 {lab=#net3}
N 250 -220 380 -220 {lab=#net3}
N 300 -280 340 -280 {lab=INP}
N 590 -280 620 -280 {lab=INN}
N -30 -480 -30 -460 {lab=COM_P}
N 10 -510 30 -510 {lab=COM_P}
N 730 -640 900 -640 {lab=VDD}
N -30 -640 100 -640 {lab=VDD}
N 660 -460 730 -460 {lab=DIFF_L}
N 730 -480 730 -430 {lab=DIFF_L}
N 900 -480 900 -430 {lab=DIFF_R}
N 470 -510 860 -510 {lab=COM_P}
N 380 -640 730 -640 {lab=VDD}
N 380 -430 380 -310 {lab=DIFF_L}
N 380 -460 660 -460 {lab=DIFF_L}
N 550 -390 550 -310 {lab=DIFF_R}
N 550 -440 900 -440 {lab=DIFF_R}
N 900 70 900 100 {lab=VSUBS}
N 800 -20 800 40 {lab=#net5}
N 730 -20 730 10 {lab=#net5}
N 770 40 800 40 {lab=#net5}
N 800 40 840 40 {lab=#net5}
N 730 -20 800 -20 {lab=#net5}
N 730 70 730 100 {lab=VSUBS}
N 730 -140 730 -20 {lab=#net5}
N 900 -140 900 0 {lab=#net6}
N 840 40 860 40 {lab=#net5}
N 30 -510 470 -510 {lab=COM_P}
N 900 -210 900 -200 {lab=#net6}
N 860 -510 1040 -510 {lab=COM_P}
N 1080 -640 1080 -540 {lab=VDD}
N 980 -640 1110 -640 {lab=VDD}
N 1080 -480 1080 -300 {lab=OUTP}
N 900 -30 1040 -30 {lab=#net6}
N 1080 0 1080 100 {lab=VSUBS}
N 1080 -300 1080 -60 {lab=OUTP}
N 1080 -290 1090 -290 {lab=OUTP}
N 1090 -290 1170 -290 {lab=OUTP}
N 900 -0 900 10 {lab=#net6}
N 1170 -290 1180 -290 {lab=OUTP}
N -330 -230 -330 160 {lab=VSUBS}
N -450 160 -130 160 {lab=VSUBS}
N -430 -640 -410 -640 {lab=VDD}
N -130 160 1170 160 {lab=VSUBS}
N 100 140 100 160 {lab=VSUBS}
N 250 140 250 160 {lab=VSUBS}
N 730 100 730 160 {lab=VSUBS}
N 900 100 900 160 {lab=VSUBS}
N 1080 100 1080 160 {lab=VSUBS}
N 620 -280 650 -280 {lab=INN}
N 270 -280 300 -280 {lab=INP}
N 100 -320 100 -260 {lab=#net1}
N 250 -210 250 -150 {lab=#net3}
N 380 -460 380 -430 {lab=DIFF_L}
N 550 -440 550 -390 {lab=DIFF_R}
N 690 -510 690 -390 {lab=COM_P}
N 730 -360 730 -140 {lab=#net5}
N 730 -430 730 -420 {lab=DIFF_L}
N 900 -430 900 -420 {lab=DIFF_R}
N 860 -510 860 -390 {lab=COM_P}
N 900 -360 900 -210 {lab=#net6}
N 900 -200 900 -140 {lab=#net6}
N 1110 -640 1160 -640 {lab=VDD}
N 1170 160 1180 160 {lab=VSUBS}
N -30 -320 -30 -250 {lab=VSUBS}
N -330 -250 -30 -250 {lab=VSUBS}
N -330 -250 -330 -230 {lab=VSUBS}
C {symbols/pfet3_03v3.sym} -10 -510 0 1 {name=M1
L=1.0u
W=1.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet3_03v3.sym} 230 -90 0 0 {name=M2
L=0.5u
W=5.0u
body=VSUBS
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
C {symbols/nfet3_03v3.sym} 230 80 0 0 {name=M3
L=1.0u
W=1.0u
body=VSUBS
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
C {symbols/nfet3_03v3.sym} 120 80 0 1 {name=M4
L=1.0u
W=1.0u
body=VSUBS
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
C {symbols/pfet3_03v3.sym} 80 -510 0 0 {name=M5
L=2.0u
W=1.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet3_03v3.sym} 80 -420 0 0 {name=M6
L=0.5u
W=5.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet3_03v3.sym} 710 -510 0 0 {name=M7
L=2.0u
W=1.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet3_03v3.sym} 880 -510 0 0 {name=M9
L=2.0u
W=1.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet3_03v3.sym} 360 -280 0 0 {name=M11
L=1.5u
W=5.0u
body=VSUBS
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
C {symbols/nfet3_03v3.sym} 570 -280 0 1 {name=M12
L=1.5u
W=5.0u
body=VSUBS
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
C {symbols/pfet3_03v3.sym} 710 -390 0 0 {name=M8
L=0.5u
W=5.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet3_03v3.sym} 880 -390 0 0 {name=M10
L=0.5u
W=5.0u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet3_03v3.sym} 880 40 0 0 {name=M13
L=1.0u
W=1.0u
body=VSUBS
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
C {symbols/nfet3_03v3.sym} 750 40 0 1 {name=M14
L=1.0u
W=1.0u
body=VSUBS
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
C {symbols/pfet3_03v3.sym} 1060 -510 0 0 {name=M15
L=1.0u
W=10u
body=VDD
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet3_03v3.sym} 1060 -30 0 0 {name=M16
L=1.0u
W=10.0u
body=VSUBS
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
C {iopin.sym} -430 -640 2 0 {name=p8 lab=VDD}
C {iopin.sym} -450 160 2 0 {name=p9 lab=VSUBS}
C {ipin.sym} 270 -280 0 0 {name=p1 lab=INP}
C {ipin.sym} 650 -280 2 0 {name=p2 lab=INN}
C {opin.sym} 1180 -290 0 0 {name=p3 lab=OUTP}
C {lab_wire.sym} 430 -460 0 1 {name=p13 sig_type=std_logic lab=DIFF_L}
C {lab_wire.sym} 580 -440 0 1 {name=p14 sig_type=std_logic lab=DIFF_R}
C {lab_wire.sym} 210 -510 0 1 {name=p15 sig_type=std_logic lab=COM_P}
C {res.sym} -30 -350 0 0 {name=R1
value=36k
footprint=1206
device=resistor
m=1}
