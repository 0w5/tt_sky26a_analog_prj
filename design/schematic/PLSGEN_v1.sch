v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 930 -260 1010 -260 {
lab=CK}
N 260 -260 330 -260 {
lab=#net1}
N 980 -220 1010 -220 {
lab=XRST}
N 1190 -260 1250 -260 {
lab=#net2}
N 1170 -160 1240 -160 {
lab=#net3}
N 1250 -220 1250 -160 {
lab=#net3}
N 1240 -160 1250 -160 {
lab=#net3}
N 510 -260 520 -260 {
lab=#net4}
N 860 -260 890 -260 {
lab=#net3}
N 890 -260 890 -240 {
lab=#net3}
N 890 -240 1010 -240 {
lab=#net3}
N 890 -240 890 -170 {
lab=#net3}
N 890 -170 890 -160 {
lab=#net3}
N 890 -160 1170 -160 {
lab=#net3}
N 300 -240 330 -240 {
lab=XRST}
N 1660 -240 1740 -240 {
lab=#net5}
N 110 -280 180 -280 {
lab=BITA}
N 120 -240 180 -240 {
lab=BITB}
N 300 -300 330 -300 {
lab=DVDD}
N 300 -280 330 -280 {
lab=GND}
N 330 -300 560 -300 {
lab=DVDD}
N 330 -280 560 -280 {
lab=GND}
N 330 -240 560 -240 {
lab=XRST}
N 560 -270 560 -260 {
lab=#net4}
N 1650 -240 1660 -240 {
lab=#net5}
N 1370 -240 1440 -240 {
lab=#net6}
N 1440 -240 1440 -220 {
lab=#net6}
N 1440 -220 1470 -220 {
lab=#net6}
N 1470 -260 1470 -240 {
lab=CK}
N 1470 -200 1470 -180 {
lab=XRST}
N 1400 -240 1400 -110 {
lab=#net6}
N 1480 -110 1570 -110 {
lab=LATPLS}
N 110 -240 120 -240 {
lab=BITB}
N 110 -200 180 -200 {
lab=BITSEL}
N 980 -300 980 -260 {
lab=CK}
N 980 -300 1470 -300 {
lab=CK}
N 1470 -300 1470 -260 {
lab=CK}
N 520 -260 560 -260 {
lab=#net4}
N 750 -270 860 -270 {
lab=#net3}
N 860 -270 860 -260 {
lab=#net3}
N 1750 -240 1760 -240 {
lab=#net5}
N 1740 -240 1750 -240 {
lab=#net5}
C {sky130_stdcells/dfrbp_1.sym} 1100 -240 0 0 {name=x8 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 940 -260 0 0 {name=p5 sig_type=std_logic lab=CK}
C {devices/lab_pin.sym} 980 -220 0 0 {name=p10 sig_type=std_logic lab=XRST
}
C {sky130_stdcells/xnor2_1.sym} 1310 -240 0 0 {name=x102 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 300 -240 0 0 {name=p12 sig_type=std_logic lab=XRST
}
C {devices/lab_pin.sym} 1470 -180 0 0 {name=p19 sig_type=std_logic lab=XRST
}
C {sky130_stdcells/mux2_1.sym} 220 -260 0 0 {name=x46 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {/home/ttuser/TT_WORK/rel/TFF_v1.sym} 480 -270 0 0 {name=x9}
C {devices/lab_pin.sym} 310 -300 0 0 {name=p26 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} 310 -280 0 0 {name=p27 sig_type=std_logic lab=GND}
C {/home/ttuser/TT_WORK/rel/TFF_v1.sym} 710 -270 0 0 {name=x11}
C {sky130_stdcells/dfrbp_1.sym} 1560 -220 0 0 {name=x12 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1440 -110 0 0 {name=x50 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 60 -320 0 0 {name=p1 lab=CK}
C {devices/ipin.sym} 60 -300 0 0 {name=p3 lab=XRST}
C {devices/ipin.sym} 60 -360 0 0 {name=p2 lab=DVDD}
C {devices/ipin.sym} 60 -340 0 0 {name=p4 lab=GND}
C {devices/ipin.sym} 110 -280 0 0 {name=p6 lab=BITA}
C {devices/ipin.sym} 110 -240 0 0 {name=p7 lab=BITB}
C {devices/ipin.sym} 110 -200 0 0 {name=p8 lab=BITSEL}
C {devices/opin.sym} 1760 -240 0 0 {name=p11 lab=XCNTRST

}
C {devices/opin.sym} 1570 -110 0 0 {name=p9 lab=LATPLS

}
