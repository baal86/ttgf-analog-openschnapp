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
N 0 -90 0 -50 {lab=#net1}
N 210 10 210 50 {lab=OUTP}
N 0 10 0 30 {lab=OUTN}
N 0 30 0 40 {lab=OUTN}
N 210 30 310 30 {lab=OUTP}
N 0 30 100 30 {lab=OUTN}
N 0 -100 0 -90 {lab=#net1}
N 0 -180 0 -160 {lab=#net2}
N 0 -180 210 -180 {lab=#net2}
N 210 -180 210 -160 {lab=#net2}
N -240 -640 -240 -570 {lab=VDD}
N -70 -20 -40 -20 {lab=INP}
N -240 -510 -240 -400 {lab=TCOM}
N 110 -640 110 -570 {lab=VDD}
N 110 -410 110 -350 {lab=#net3}
N 110 -510 110 -410 {lab=#net3}
N -120 -540 70 -540 {lab=TCOM}
N -240 -480 -170 -480 {lab=TCOM}
N -170 -540 -170 -480 {lab=TCOM}
N -240 -180 -240 -160 {lab=#net4}
N -240 -260 -240 -240 {lab=#net5}
N -240 -340 -240 -320 {lab=#net6}
N -320 -370 -270 -370 {lab=VSUBS}
N -320 -290 -260 -290 {lab=VSUBS}
N -270 -370 -260 -370 {lab=VSUBS}
N -320 -210 -260 -210 {lab=VSUBS}
N -320 -130 -260 -130 {lab=VSUBS}
N -240 -100 -240 20 {lab=#net7}
N -240 80 -240 160 {lab=VSUBS}
N 110 -290 110 -180 {lab=#net2}
N 210 -100 210 -50 {lab=#net8}
N 230 -130 280 -130 {lab=VSUBS}
N 280 -130 320 -130 {lab=VSUBS}
N -200 -540 -120 -540 {lab=TCOM}
N -60 -130 -20 -130 {lab=VSUBS}
N -100 -130 -60 -130 {lab=VSUBS}
N 0 40 0 60 {lab=OUTN}
N -240 160 -240 270 {lab=VSUBS}
N -240 390 -240 400 {lab=VSUBS}
N -240 270 -240 390 {lab=VSUBS}
N -120 340 -120 400 {lab=VSUBS}
N -120 250 -120 280 {lab=#net9}
N -120 160 -120 190 {lab=#net10}
N -120 70 -120 100 {lab=#net11}
N -120 70 -60 70 {lab=#net11}
N -60 70 -60 360 {lab=#net11}
N -60 360 -0 360 {lab=#net11}
N 0 340 0 360 {lab=#net11}
N -0 250 0 280 {lab=#net12}
N 0 160 0 190 {lab=#net13}
N -0 60 -0 100 {lab=OUTN}
N -200 220 -20 220 {lab=VSUBS}
N -200 130 -20 130 {lab=VSUBS}
N -200 310 -20 310 {lab=VSUBS}
N 330 340 330 400 {lab=VSUBS}
N 330 250 330 280 {lab=#net14}
N 330 160 330 190 {lab=#net15}
N 330 70 330 100 {lab=#net16}
N 270 70 330 70 {lab=#net16}
N 270 70 270 360 {lab=#net16}
N 210 360 270 360 {lab=#net16}
N 210 340 210 360 {lab=#net16}
N 210 250 210 280 {lab=#net17}
N 210 160 210 190 {lab=#net18}
N 210 60 210 100 {lab=OUTP}
N 210 50 210 60 {lab=OUTP}
N 230 130 410 130 {lab=VSUBS}
N 230 220 410 220 {lab=VSUBS}
N 230 310 410 310 {lab=VSUBS}
N -130 400 500 400 {lab=VSUBS}
C {iopin.sym} -430 -640 2 0 {name=p8 lab=VDD}
C {iopin.sym} -450 400 2 0 {name=p9 lab=VSUBS}
C {ipin.sym} -70 -20 0 0 {name=p6 lab=INP}
C {ipin.sym} 280 -20 2 0 {name=p7 lab=INN}
C {symbols/pfet3_03v3.sym} -20 -20 0 0 {name=M1
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
C {symbols/pfet3_03v3.sym} 230 -20 0 1 {name=M2
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
C {opin.sym} 310 30 0 0 {name=p3 lab=OUTP}
C {lab_wire.sym} 70 30 0 0 {name=p1 sig_type=std_logic lab=OUTN}
C {symbols/pfet3_03v3.sym} 90 -540 0 0 {name=M5
L=0.5u
W=15.0u
body=VDD
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet3_03v3.sym} -220 -540 0 1 {name=M3
L=0.5u
W=15.0u
body=VDD
nf=1
m=6
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} -190 -480 0 0 {name=p2 sig_type=std_logic lab=TCOM}
C {symbols/ppolyf_u_1k.sym} -240 -370 0 0 {name=R6
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -240 -290 0 0 {name=R5
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -240 -210 0 0 {name=R7
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -240 -130 0 0 {name=R8
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} -270 -370 0 0 {name=p4 sig_type=std_logic lab=VSUBS}
C {lab_wire.sym} -270 -290 0 0 {name=p5 sig_type=std_logic lab=VSUBS}
C {lab_wire.sym} -270 -210 0 0 {name=p10 sig_type=std_logic lab=VSUBS}
C {lab_wire.sym} -270 -130 0 0 {name=p11 sig_type=std_logic lab=VSUBS}
C {ammeter.sym} -240 50 0 0 {name=Vmeas savecurrent=false spice_ignore=0}
C {ammeter.sym} 110 -320 0 0 {name=Vmeas1 savecurrent=false spice_ignore=0}
C {symbols/ppolyf_u_1k.sym} 210 -130 0 1 {name=R9
W=1e-6
L=4.5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 300 -130 0 0 {name=p12 sig_type=std_logic lab=VSUBS}
C {symbols/ppolyf_u_1k.sym} 0 -130 0 0 {name=R1
W=2e-6
L=1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} -40 -130 0 0 {name=p13 sig_type=std_logic lab=VSUBS}
C {symbols/ppolyf_u_1k.sym} -120 130 0 0 {name=R4
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -120 220 0 0 {name=R2
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 0 130 0 0 {name=R10
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 0 220 0 0 {name=R11
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -120 310 0 0 {name=R12
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 0 310 0 0 {name=R13
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} -150 130 0 0 {name=p14 sig_type=std_logic lab=VSUBS}
C {lab_wire.sym} -150 220 0 0 {name=p15 sig_type=std_logic lab=VSUBS}
C {lab_wire.sym} -150 310 0 0 {name=p16 sig_type=std_logic lab=VSUBS}
C {symbols/ppolyf_u_1k.sym} 330 130 0 1 {name=R3
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 330 220 0 1 {name=R14
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 210 130 0 1 {name=R15
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 210 220 0 1 {name=R16
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 330 310 0 1 {name=R17
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 210 310 0 1 {name=R18
W=1e-6
L=6e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 360 130 0 1 {name=p17 sig_type=std_logic lab=VSUBS}
C {lab_wire.sym} 360 220 0 1 {name=p18 sig_type=std_logic lab=VSUBS}
C {lab_wire.sym} 360 310 0 1 {name=p19 sig_type=std_logic lab=VSUBS}
