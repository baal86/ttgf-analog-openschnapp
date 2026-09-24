v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 250 -80 320 -80 {lab=ref}
N -160 -100 -70 -100 {lab=sig}
N 460 -100 540 -100 {lab=s2_out}
N 390 -10 390 0 {lab=vsubs}
N -150 0 390 0 {lab=vsubs}
N 70 -120 150 -120 {lab=s1_out}
N 210 -120 320 -120 {lab=s2_fb}
N 280 -290 280 -120 {lab=s2_fb}
N 430 -290 460 -290 {lab=s2_out}
N 520 -290 520 -100 {lab=s2_out}
N 600 -100 660 -100 {lab=outp}
N 180 -140 240 -140 {lab=vsubs}
N 400 -310 460 -310 {lab=vsubs}
N -120 -140 -70 -140 {lab=s1_out}
N -120 -250 -120 -140 {lab=s1_out}
N -120 -250 80 -250 {lab=s1_out}
N 80 -250 80 -120 {lab=s1_out}
N 570 -120 630 -120 {lab=vsubs}
N 220 -220 390 -220 {lab=vdd}
N 280 -290 370 -290 {lab=s2_fb}
N 460 -290 520 -290 {lab=s2_out}
N 390 -220 390 -180 {lab=vdd}
N -160 -220 220 -220 {lab=vdd}
N 0 -30 0 0 {lab=vsubs}
N 0 -220 0 -200 {lab=vdd}
C {ip_amplifier.sym} 0 -120 0 0 {name=x1}
C {ip_amplifier.sym} 390 -100 0 0 {name=x2}
C {ipin.sym} -160 -100 0 0 {name=p1 lab=sig}
C {ipin.sym} 250 -80 0 0 {name=p2 lab=ref}
C {iopin.sym} -160 -220 2 0 {name=p3 lab=vdd}
C {iopin.sym} -150 0 2 0 {name=p4 lab=vsubs}
C {opin.sym} 660 -100 0 0 {name=p5 lab=outp}
C {lab_wire.sym} 240 -140 0 0 {name=p6 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 460 -310 0 0 {name=p7 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 630 -120 0 0 {name=p8 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 70 -250 0 0 {name=p9 sig_type=std_logic lab=s1_out}
C {lab_wire.sym} 340 -290 0 0 {name=p10 sig_type=std_logic lab=s2_fb}
C {lab_wire.sym} 510 -290 0 0 {name=p11 sig_type=std_logic lab=s2_out}
C {symbols/ppolyf_u_1k.sym} 180 -120 1 0 {name=R4
W=1e-6
L=15e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 400 -290 1 0 {name=R1
W=1e-6
L=150e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 570 -100 1 0 {name=R2
W=10e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
