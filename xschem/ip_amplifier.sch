v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -410 -640 -30 -640 {lab=VDD}
N -450 400 -130 400 {lab=VSUBS}
N -430 -640 -410 -640 {lab=VDD}
N 250 -20 280 -20 {lab=INN}
N -30 -640 490 -640 {lab=VDD}
N -70 -20 -40 -20 {lab=INP}
N -130 400 500 400 {lab=VSUBS}
N -390 340 -390 400 {lab=VSUBS}
N -250 340 -250 400 {lab=VSUBS}
N -350 200 -290 200 {lab=NBIAS}
N -250 230 -250 270 {lab=#net1}
N -250 270 -250 280 {lab=#net1}
N -390 230 -390 280 {lab=#net2}
N -320 200 -320 310 {lab=NBIAS}
N -320 120 -320 200 {lab=NBIAS}
N -390 120 -320 120 {lab=NBIAS}
N -390 120 -390 160 {lab=NBIAS}
N -390 160 -390 170 {lab=NBIAS}
N -390 -50 -390 120 {lab=NBIAS}
N -250 150 -250 170 {lab=#net3}
N -250 -640 -250 -600 {lab=VDD}
N -250 -540 -250 -500 {lab=#net4}
N -120 -640 -120 -600 {lab=VDD}
N -120 -540 -120 -500 {lab=#net5}
N -200 -470 -160 -470 {lab=PBIAS}
N -210 -470 -200 -470 {lab=PBIAS}
N -180 -570 -180 -470 {lab=PBIAS}
N -180 -570 -160 -570 {lab=PBIAS}
N -210 -570 -180 -570 {lab=PBIAS}
N -180 -470 -180 -410 {lab=PBIAS}
N -250 -410 -180 -410 {lab=PBIAS}
N -120 -440 -120 -410 {lab=COMMON}
N -120 -410 110 -410 {lab=COMMON}
N 210 330 210 360 {lab=VSUBS}
N 0 100 0 180 {lab=COMP}
N 210 100 210 140 {lab=#net6}
N 0 10 0 40 {lab=COMP}
N 210 10 210 40 {lab=#net6}
N 210 40 210 100 {lab=#net6}
N 0 40 -0 100 {lab=COMP}
N 210 140 210 160 {lab=#net6}
N 0 250 0 270 {lab=COMP}
N 0 -180 210 -180 {lab=COMMON_}
N 210 -180 210 -150 {lab=COMMON_}
N -0 -180 -0 -150 {lab=COMMON_}
N -0 -90 -0 -50 {lab=COMMON_}
N 210 -90 210 -50 {lab=COMMON_}
N 0 330 0 340 {lab=VSUBS}
N 210 -150 210 -90 {lab=COMMON_}
N -0 -150 -0 -90 {lab=COMMON_}
N 110 -250 110 -180 {lab=COMMON_}
N 110 -410 110 -320 {lab=COMMON}
N 210 360 210 400 {lab=VSUBS}
N 0 340 0 400 {lab=VSUBS}
N 460 -640 460 -600 {lab=VDD}
N 410 180 420 180 {lab=COMP}
N 460 -240 460 150 {lab=OUTP}
N 460 210 460 400 {lab=VSUBS}
N -390 -120 -390 -110 {lab=#net7}
N -390 -390 -390 -320 {lab=#net7}
N -390 -640 -390 -450 {lab=VDD}
N -250 130 -250 150 {lab=#net3}
N -250 -440 -250 70 {lab=PBIAS}
N 490 -160 600 -160 {lab=OUTP}
N 380 180 410 180 {lab=COMP}
N 460 -160 490 -160 {lab=OUTP}
N 110 -320 110 -310 {lab=COMMON}
N -0 180 0 250 {lab=COMP}
N 210 160 210 270 {lab=#net6}
N 40 300 170 300 {lab=#net6}
N 150 240 150 300 {lab=#net6}
N 150 240 210 240 {lab=#net6}
N -350 310 -300 310 {lab=NBIAS}
N -180 -520 360 -520 {lab=PBIAS}
N -300 310 -290 310 {lab=NBIAS}
N 0 180 380 180 {lab=COMP}
N 460 -600 460 -550 {lab=VDD}
N 360 -520 420 -520 {lab=PBIAS}
N 460 -490 460 -430 {lab=#net8}
N 460 -430 460 -300 {lab=#net8}
N 790 -20 1020 -20 {lab=COMP}
N 610 270 690 270 {lab=OUTP}
N 630 -20 700 -20 {lab=COMP}
N 610 -20 630 -20 {lab=COMP}
N 700 -20 790 -20 {lab=COMP}
N 690 270 770 270 {lab=OUTP}
N 770 270 900 270 {lab=OUTP}
N 880 -20 880 30 {lab=COMP}
N 880 250 880 270 {lab=OUTP}
N 880 90 880 190 {lab=#net9}
N 850 130 880 130 {lab=#net9}
N 790 130 850 130 {lab=#net9}
N 620 130 730 130 {lab=VDD}
N 700 110 760 110 {lab=vdd}
N -390 -320 -390 -120 {lab=#net7}
N -410 -170 -410 -80 {lab=vsubs}
N 900 270 1020 270 {lab=OUTP}
C {iopin.sym} -430 -640 2 0 {name=p8 lab=VDD}
C {iopin.sym} -450 400 2 0 {name=p9 lab=VSUBS}
C {ipin.sym} -70 -20 0 0 {name=p6 lab=INP}
C {ipin.sym} 280 -20 2 0 {name=p7 lab=INN}
C {opin.sym} 600 -160 0 0 {name=p3 lab=OUTP}
C {symbols/pfet3_03v3.sym} -20 -20 0 0 {name=M1
L=5u
W=18.0u
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
C {symbols/pfet3_03v3.sym} 230 -20 0 1 {name=M2
L=5u
W=18.0u
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
C {symbols/nfet3_03v3.sym} -370 310 0 1 {name=M3
L=2u
W=6u
body=vsubs
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet3_03v3.sym} -270 310 0 0 {name=M4
L=2u
W=6u
body=vsubs
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
C {symbols/nfet3_03v3.sym} -370 200 0 1 {name=M7
L=0.5u
W=6u
body=vsubs
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet3_03v3.sym} -270 200 0 0 {name=M8
L=0.5u
W=6u
body=vsubs
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet3_03v3.sym} -230 -570 0 1 {name=M9
L=2u
W=6u
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
C {symbols/pfet3_03v3.sym} -140 -570 0 0 {name=M10
L=2u
W=6u
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
C {symbols/pfet3_03v3.sym} -230 -470 0 1 {name=M11
L=0.5u
W=6u
body=VDD
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet3_03v3.sym} -140 -470 0 0 {name=M12
L=0.5u
W=6u
body=VDD
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet3_03v3.sym} 20 300 0 1 {name=M13
L=5u
W=6u
body=vsubs
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
C {symbols/nfet3_03v3.sym} 190 300 0 0 {name=M14
L=5u
W=6u
body=vsubs
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
C {ngspice_probe.sym} -230 -410 0 0 {name=r5}
C {symbols/pfet3_03v3.sym} 440 -520 0 0 {name=M17
L=0.5u
W=12u
body=VDD
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet3_03v3.sym} 440 180 0 0 {name=M18
L=0.5u
W=12u
body=vsubs
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {ngspice_probe.sym} -320 120 0 0 {name=r1}
C {symbols/ppolyf_u_1k.sym} -390 -80 0 0 {name=R3
W=1e-6
L=48e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {ammeter.sym} -390 -420 0 0 {name=Vmeas savecurrent=false spice_ignore=0}
C {ammeter.sym} -250 100 0 0 {name=Vmeas1 savecurrent=false spice_ignore=0}
C {ngspice_probe.sym} 460 -90 0 0 {name=r10}
C {lab_wire.sym} 660 270 0 0 {name=p5 sig_type=std_logic lab=OUTP}
C {lab_wire.sym} -330 120 0 0 {name=p12 sig_type=std_logic lab=NBIAS}
C {lab_wire.sym} 50 -410 0 0 {name=p13 sig_type=std_logic lab=COMMON}
C {symbols/cap_pmos_03v3.sym} 880 220 0 0 {name=C1
W=13e-6
L=18e-6
model=cap_pmos_03v3
spiceprefix=X
m=1}
C {symbols/cap_pmos_03v3.sym} 880 60 2 0 {name=C2
W=13e-6
L=18e-6
model=cap_pmos_03v3
spiceprefix=X
m=1}
C {ammeter.sym} 110 -280 0 0 {name=Vmeas2 savecurrent=false spice_ignore=0}
C {lab_wire.sym} 330 180 0 0 {name=p2 sig_type=std_logic lab=COMP}
C {lab_wire.sym} 660 -20 0 0 {name=p4 sig_type=std_logic lab=COMP}
C {ammeter.sym} 460 -270 0 0 {name=Vmeas3 savecurrent=false spice_ignore=0}
C {symbols/ppolyf_u_1k.sym} 760 130 1 0 {name=R2
W=1e-6
L=80e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 670 130 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 730 110 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -410 -150 3 0 {name=p1 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 100 -520 0 0 {name=p15 sig_type=std_logic lab=PBIAS}
C {lab_wire.sym} 80 -180 0 0 {name=p16 sig_type=std_logic lab=COMMON_}
