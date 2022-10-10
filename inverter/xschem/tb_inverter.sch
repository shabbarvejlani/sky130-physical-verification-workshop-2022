v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -91890 -69970 -91890 -69830 { lab=#net1}
N -91890 -69970 -91390 -69970 { lab=#net1}
N -91820 -69900 -91820 -69830 { lab=vin}
N -91820 -69900 -91710 -69900 { lab=vin}
N -91820 -69770 -91820 -69730 { lab=GND}
N -91890 -69730 -91820 -69730 { lab=GND}
N -91890 -69770 -91890 -69730 { lab=GND}
N -91410 -69860 -91390 -69860 { lab=GND}
N -91390 -69860 -91390 -69730 { lab=GND}
N -91820 -69730 -91390 -69730 { lab=GND}
N -91780 -69940 -91760 -69940 { lab=vin}
N -91780 -69940 -91780 -69900 { lab=vin}
N -91410 -69880 -91390 -69880 { lab=vout}
N -91390 -69970 -91390 -69900 { lab=#net1}
N -91410 -69900 -91390 -69900 { lab=#net1}
N -91860 -69730 -91860 -69710 { lab=GND}
C {inverter.sym} -91560 -69880 0 0 {name=x1}
C {devices/vsource.sym} -91890 -69800 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} -91820 -69800 0 0 {name=V2 value="PWL(0 0 20n 0 900n 1.8)" }
C {devices/gnd.sym} -91860 -69710 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -91330 -69940 0 0 {name=s1 only_toplevel=false value=".lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code_shown.sym} -91330 -69830 0 0 {name=s2 only_toplevel=false value=".control
tran 1n 1u
plot V(vout) V(vin)
.endc"}
C {devices/opin.sym} -91760 -69940 0 0 {name=p1 lab=vin}
C {devices/opin.sym} -91390 -69880 0 0 {name=p2 lab=vout}
