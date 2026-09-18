v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 390 110 390 280 {lab=vsubs}
N -0 90 -0 290 {lab=vsubs}
N -0 -280 -0 -80 {lab=vdd}
N 20 -490 220 -490 {lab=vdd}
N -160 -490 20 -490 {lab=vdd}
N 250 40 320 40 {lab=ref}
N -160 20 -70 20 {lab=sig}
N 460 20 540 20 {lab=#net1}
N 390 280 390 290 {lab=vsubs}
N -150 290 390 290 {lab=vsubs}
N 70 0 150 0 {lab=#net2}
N 210 0 320 0 {lab=#net3}
N 280 -170 280 -0 {lab=#net3}
N 430 -170 460 -170 {lab=#net1}
N 520 -170 520 20 {lab=#net1}
N 600 20 660 20 {lab=outp}
N 120 -20 180 -20 {lab=vsubs}
N 400 -190 460 -190 {lab=vsubs}
N -120 -20 -70 -20 {lab=#net2}
N -120 -130 -120 -20 {lab=#net2}
N -120 -130 80 -130 {lab=#net2}
N 80 -130 80 -0 {lab=#net2}
N 570 0 630 0 {lab=vsubs}
N 0 -490 0 -280 {lab=vdd}
N 220 -100 390 -100 {lab=vdd}
N 220 -490 220 -100 {lab=vdd}
N 280 -170 370 -170 {lab=#net3}
N 460 -170 520 -170 {lab=#net1}
N 390 -100 390 -60 {lab=vdd}
C {ip_amplifier.sym} 0 0 0 0 {name=x1}
C {ip_amplifier.sym} 390 20 0 0 {name=x2}
C {ipin.sym} -160 20 0 0 {name=p1 lab=sig}
C {ipin.sym} 250 40 0 0 {name=p2 lab=ref}
C {iopin.sym} -160 -490 2 0 {name=p3 lab=vdd}
C {iopin.sym} -150 290 2 0 {name=p4 lab=vsubs}
C {opin.sym} 660 20 0 0 {name=p5 lab=outp}
C {symbols/ppolyf_u_1k_6p0.sym} 180 0 1 0 {name=R1
W=1e-6
L=15e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 400 -170 1 0 {name=R2
W=1e-6
L=60e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 570 20 1 0 {name=R3
W=2e-6
L=1e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_wire.sym} 160 -20 0 0 {name=p6 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 460 -190 0 0 {name=p7 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 630 0 0 0 {name=p8 sig_type=std_logic lab=vsubs}
