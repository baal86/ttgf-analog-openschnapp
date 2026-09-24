v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 250 40 320 40 {lab=ref}
N -160 20 -70 20 {lab=sig}
N 460 20 540 20 {lab=s2_out}
N 390 110 390 120 {lab=vsubs}
N -150 120 390 120 {lab=vsubs}
N 70 0 150 0 {lab=s1_out}
N 210 0 320 0 {lab=s2_fb}
N 280 -170 280 -0 {lab=s2_fb}
N 430 -170 460 -170 {lab=s2_out}
N 520 -170 520 20 {lab=s2_out}
N 600 20 660 20 {lab=outp}
N 180 -20 240 -20 {lab=vsubs}
N 400 -190 460 -190 {lab=vsubs}
N -120 -20 -70 -20 {lab=s1_out}
N -120 -130 -120 -20 {lab=s1_out}
N -120 -130 80 -130 {lab=s1_out}
N 80 -130 80 -0 {lab=s1_out}
N 570 0 630 0 {lab=vsubs}
N 220 -100 390 -100 {lab=vdd}
N 280 -170 370 -170 {lab=s2_fb}
N 460 -170 520 -170 {lab=s2_out}
N 390 -100 390 -60 {lab=vdd}
N -160 -100 220 -100 {lab=vdd}
N -0 90 0 120 {lab=vsubs}
C {ip_amplifier.sym} 0 0 0 0 {name=x1}
C {ip_amplifier.sym} 390 20 0 0 {name=x2}
C {ipin.sym} -160 20 0 0 {name=p1 lab=sig}
C {ipin.sym} 250 40 0 0 {name=p2 lab=ref}
C {iopin.sym} -160 -100 2 0 {name=p3 lab=vdd}
C {iopin.sym} -150 120 2 0 {name=p4 lab=vsubs}
C {opin.sym} 660 20 0 0 {name=p5 lab=outp}
C {lab_wire.sym} 240 -20 0 0 {name=p6 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 460 -190 0 0 {name=p7 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 630 0 0 0 {name=p8 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 70 -130 0 0 {name=p9 sig_type=std_logic lab=s1_out}
C {lab_wire.sym} 340 -170 0 0 {name=p10 sig_type=std_logic lab=s2_fb}
C {lab_wire.sym} 510 -170 0 0 {name=p11 sig_type=std_logic lab=s2_out}
C {symbols/ppolyf_u_1k.sym} 180 0 1 0 {name=R4
W=1e-6
L=15e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 400 -170 1 0 {name=R1
W=1e-6
L=150e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 570 20 1 0 {name=R2
W=10e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
