v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -91600 -69930 -91580 -69930 { lab=vin}
N -91600 -69930 -91600 -69840 { lab=vin}
N -91600 -69840 -91580 -69840 { lab=vin}
N -91540 -69900 -91540 -69870 { lab=vout}
N -91690 -69890 -91600 -69890 { lab=vin}
N -91540 -69890 -91440 -69890 { lab=vout}
N -91540 -69790 -91510 -69790 { lab=vss}
N -91510 -69840 -91510 -69790 { lab=vss}
N -91540 -69840 -91510 -69840 { lab=vss}
N -91540 -69930 -91520 -69930 { lab=vdd}
N -91520 -69980 -91520 -69930 { lab=vdd}
N -91540 -69980 -91520 -69980 { lab=vdd}
N -91540 -69980 -91540 -69960 { lab=vdd}
N -91550 -69790 -91540 -69790 { lab=vss}
N -91540 -69810 -91540 -69790 { lab=vss}
N -91570 -69980 -91540 -69980 { lab=vdd}
N -91570 -70000 -91570 -69980 { lab=vdd}
N -91570 -70000 -91560 -70000 { lab=vdd}
N -91570 -69790 -91550 -69790 { lab=vss}
N -91570 -69790 -91570 -69780 { lab=vss}
N -91570 -69780 -91560 -69780 { lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} -91560 -69840 0 0 {name=M3
L=0.18
W=4.5
nf=3 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -91560 -69930 0 0 {name=M1
L=0.18
W=3
nf=3
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -91680 -69890 0 0 {name=p1 lab=vin}
C {devices/iopin.sym} -91560 -70000 0 0 {name=p2 lab=vdd}
C {devices/iopin.sym} -91560 -69780 0 0 {name=p3 lab=vss}
C {devices/opin.sym} -91450 -69890 0 0 {name=p4 lab=vout}
