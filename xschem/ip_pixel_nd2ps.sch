v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 -80 20 -80 {lab=reset}
N 60 60 60 120 {lab=vsubs}
N 60 -50 60 0 {lab=siminj}
N -80 -30 60 -30 {lab=siminj}
N 60 -160 60 -110 {lab=vdd}
N 60 -80 100 -80 {lab=vsubs}
N 60 -30 160 -30 {lab=siminj}
N 200 -30 230 -30 {lab=vsubs}
N 200 -190 200 -60 {lab=vdd}
N 200 -0 200 20 {lab=sfout}
N 200 20 340 20 {lab=sfout}
N 400 20 440 20 {lab=cl}
N -80 80 370 80 {lab=read}
N 370 60 370 80 {lab=read}
N 370 -30 370 20 {lab=vsubs}
N 230 -30 240 -30 {lab=vsubs}
N -80 120 60 120 {lab=vsubs}
N -80 -190 200 -190 {lab=vdd}
N 60 -190 60 -160 {lab=vdd}
C {iopin.sym} -80 -190 2 0 {name=p1 lab=vdd}
C {iopin.sym} -80 120 2 0 {name=p2 lab=vsubs}
C {ipin.sym} -80 -30 0 0 {name=p3 lab=siminj}
C {ipin.sym} -80 -80 0 0 {name=p4 lab=reset}
C {ipin.sym} -80 80 0 0 {name=p5 lab=read}
C {symbols/nfet_03v3.sym} 40 -80 0 0 {name=M1
L=0.3u
W=0.3u
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
C {symbols/nfet_03v3.sym} 180 -30 0 0 {name=M2
L=1u	
W=1.5u
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
C {symbols/nfet_03v3.sym} 370 40 3 0 {name=M3
L=0.3u
W=0.3u
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
C {opin.sym} 440 20 0 0 {name=p7 lab=cl
}
C {lab_wire.sym} 240 -30 0 0 {name=p9 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 100 -80 0 0 {name=p10 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 370 -30 3 0 {name=p11 sig_type=std_logic lab=vsubs}
C {lab_wire.sym} 280 20 0 0 {name=p8 sig_type=std_logic lab=sfout}
C {symbols/diode_nd2ps_03v3.sym} 60 30 2 0 {name=D1
model=diode_nd2ps_03v3
r_w=13.5u
r_l=13.5u
area=0.166n
m=1}
