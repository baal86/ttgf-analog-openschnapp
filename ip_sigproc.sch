v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 90 20 170 {lab=vsubs}
N 610 120 610 170 {lab=vsubs}
N -180 170 420 170 {lab=vsubs}
N 20 -140 20 -80 {lab=vdd}
N -180 -140 20 -140 {lab=vdd}
N 20 -140 420 -140 {lab=vdd}
N 610 -140 610 -60 {lab=vdd}
N 690 20 770 20 {lab=outp}
N 680 20 690 20 {lab=outp}
N 450 40 540 40 {lab=ref}
N -100 -20 -50 -20 {lab=#net1}
N -100 -110 -100 -20 {lab=#net1}
N -100 -110 120 -110 {lab=#net1}
N 120 -110 120 -0 {lab=#net1}
N 90 -0 120 -0 {lab=#net1}
N -180 20 -50 20 {lab=sig}
N 770 20 800 20 {lab=outp}
N 430 -140 610 -140 {lab=vdd}
N 420 -140 430 -140 {lab=vdd}
N 420 170 600 170 {lab=vsubs}
N 600 170 610 170 {lab=vsubs}
N 120 0 240 -0 {lab=#net1}
N 300 -0 540 -0 {lab=#net2}
N 410 -260 410 -0 {lab=#net2}
N 410 -260 460 -260 {lab=#net2}
N 520 -260 530 -260 {lab=#net3}
N 590 -260 600 -260 {lab=#net4}
N 660 -260 670 -260 {lab=#net5}
N 730 -260 760 -260 {lab=outp}
N 760 -260 760 20 {lab=outp}
N 410 -360 490 -360 {lab=#net2}
N 410 -360 410 -260 {lab=#net2}
N 550 -360 760 -360 {lab=outp}
N 760 -360 760 -260 {lab=outp}
N 630 -320 760 -320 {lab=outp}
N 410 -320 570 -320 {lab=#net2}
C {xschem/ip_amplifier.sym} 20 0 0 0 {name=x1}
C {xschem/ip_amplifier.sym} 610 20 0 0 {name=x2}
C {ipin.sym} -180 20 0 0 {name=p1 lab=sig}
C {ipin.sym} 450 40 0 0 {name=p2 lab=ref}
C {iopin.sym} -180 -140 2 0 {name=p3 lab=vdd}
C {iopin.sym} -180 170 2 0 {name=p4 lab=vsubs}
C {opin.sym} 800 20 0 0 {name=p5 lab=outp}
C {symbols/ppolyf_u_1k.sym} 270 0 1 0 {name=R1
W=1e-6
L=10e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 490 -260 1 0 {name=R2
W=1e-6
L=10e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 560 -260 1 0 {name=R3
W=1e-6
L=10e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 630 -260 1 0 {name=R4
W=1e-6
L=10e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 700 -260 1 0 {name=R5
W=1e-6
L=10e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_pmos_03v3.sym} 600 -320 3 0 {name=C1
W=12e-6
L=12e-6
model=cap_pmos_03v3
spiceprefix=X
m=1}
C {symbols/cap_pmos_03v3.sym} 520 -360 1 0 {name=C2
W=12e-6
L=12e-6
model=cap_pmos_03v3
spiceprefix=X
m=1}
