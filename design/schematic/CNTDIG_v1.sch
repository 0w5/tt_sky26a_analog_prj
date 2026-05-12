v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 470 -360 590 -360 {
lab=#net1}
N 470 -320 560 -320 {
lab=#net2}
N 560 -340 560 -320 {
lab=#net2}
N 560 -340 590 -340 {
lab=#net2}
N 590 -320 590 -300 {
lab=BITSEL}
N 130 -300 590 -300 {
lab=BITSEL}
N 470 -260 590 -260 {
lab=#net3}
N 470 -240 590 -240 {
lab=#net4}
N 470 -220 590 -220 {
lab=#net5}
N 470 -200 590 -200 {
lab=#net6}
N 470 -180 590 -180 {
lab=#net7}
N 470 -160 590 -160 {
lab=#net8}
N 470 -140 590 -140 {
lab=#net9}
N 470 -120 590 -120 {
lab=#net10}
N 470 -100 590 -100 {
lab=#net11}
N 470 -80 590 -80 {
lab=#net12}
N 540 -60 590 -60 {
lab=DVDD}
N 540 -40 590 -40 {
lab=GND}
N 540 -20 590 -20 {
lab=DCK_pre}
N 540 0 590 0 {
lab=EN}
N 890 -420 950 -420 {
lab=DCK_pre}
N 890 -440 950 -440 {
lab=XCNTRST}
N 120 -260 170 -260 {
lab=DVDD}
N 120 -240 170 -240 {
lab=GND}
N 120 -220 170 -220 {
lab=CNTIN}
N 120 -500 170 -500 {
lab=DVDD}
N 120 -480 170 -480 {
lab=GND}
N 120 -460 170 -460 {
lab=CK}
N 540 -440 590 -440 {
lab=DVDD}
N 540 -420 590 -420 {
lab=GND}
N 540 -400 590 -400 {
lab=CK}
N 540 -380 590 -380 {
lab=EN}
N 30 -220 120 -220 {
lab=CNTIN}
N 40 -300 130 -300 {
lab=BITSEL}
N 950 -420 950 10 {
lab=DCK_pre}
N 950 10 950 40 {
lab=DCK_pre}
N 510 40 950 40 {
lab=DCK_pre}
N 510 -10 510 40 {
lab=DCK_pre}
N 510 -20 510 -10 {
lab=DCK_pre}
N 510 -20 540 -20 {
lab=DCK_pre}
N 140 -440 140 -200 {
lab=XCNTRST}
N 140 -440 170 -440 {
lab=XCNTRST}
N 140 -200 170 -200 {
lab=XCNTRST}
N 140 -550 140 -440 {
lab=XCNTRST}
N 140 -550 970 -550 {
lab=XCNTRST}
N 970 -550 970 -440 {
lab=XCNTRST}
N 950 -440 970 -440 {
lab=XCNTRST}
C {/home/ttuser/TT_WORK/rel/PLSGEN_v1.sym} 740 -380 0 0 {name=x2}
C {/home/ttuser/TT_WORK/rel/LATARRY_v1.sym} 740 -130 0 0 {name=x3}
C {devices/ipin.sym} 70 -70 0 0 {name=p1 lab=CK}
C {devices/ipin.sym} 70 -50 0 0 {name=p3 lab=EN}
C {devices/ipin.sym} 70 -110 0 0 {name=p10 lab=DVDD}
C {devices/ipin.sym} 70 -90 0 0 {name=p12 lab=GND}
C {/home/ttuser/TT_WORK/rel/RC10b_v1.sym} 320 -170 0 0 {name=x1}
C {/home/ttuser/TT_WORK/rel/RC10b_v1.sym} 320 -410 0 0 {name=x4}
C {devices/lab_pin.sym} 540 -20 0 0 {name=p5 sig_type=std_logic lab=DCK_pre}
C {devices/lab_pin.sym} 540 0 0 0 {name=p2 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 540 -60 0 0 {name=p4 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} 540 -40 0 0 {name=p6 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 120 -260 0 0 {name=p9 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} 120 -240 0 0 {name=p11 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 120 -460 0 0 {name=p13 sig_type=std_logic lab=CK}
C {devices/lab_pin.sym} 120 -500 0 0 {name=p15 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} 120 -480 0 0 {name=p16 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 540 -400 0 0 {name=p17 sig_type=std_logic lab=CK}
C {devices/lab_pin.sym} 540 -380 0 0 {name=p18 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 540 -440 0 0 {name=p19 sig_type=std_logic lab=DVDD}
C {devices/lab_pin.sym} 540 -420 0 0 {name=p20 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 950 -420 0 1 {name=p21 sig_type=std_logic lab=DCK_pre}
C {devices/lab_pin.sym} 950 -440 0 1 {name=p22 sig_type=std_logic lab=XCNTRST}
C {devices/ipin.sym} 30 -220 0 0 {name=p7 lab=CNTIN}
C {devices/ipin.sym} 40 -300 0 0 {name=p23 lab=BITSEL}
C {sky130_stdcells/bufbuf_8.sym} 930 -260 0 0 {name=x162 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 970 -260 0 0 {name=p25 lab=OUT0

}
C {sky130_stdcells/bufbuf_8.sym} 930 -240 0 0 {name=x5 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 970 -240 0 0 {name=p8 lab=OUT1

}
C {sky130_stdcells/bufbuf_8.sym} 930 -220 0 0 {name=x6 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 970 -220 0 0 {name=p14 lab=OUT2

}
C {sky130_stdcells/bufbuf_8.sym} 930 -200 0 0 {name=x7 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 970 -200 0 0 {name=p24 lab=OUT3

}
C {sky130_stdcells/bufbuf_8.sym} 930 -180 0 0 {name=x8 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 970 -180 0 0 {name=p26 lab=OUT4

}
C {sky130_stdcells/bufbuf_8.sym} 930 -160 0 0 {name=x9 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 970 -160 0 0 {name=p27 lab=OUT5

}
C {sky130_stdcells/bufbuf_8.sym} 930 -140 0 0 {name=x10 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 970 -140 0 0 {name=p28 lab=OUT6

}
C {sky130_stdcells/bufbuf_8.sym} 930 -120 0 0 {name=x11 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 970 -120 0 0 {name=p29 lab=OUT7

}
C {sky130_stdcells/bufbuf_8.sym} 930 -100 0 0 {name=x12 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 970 -100 0 0 {name=p30 lab=OUT8

}
C {sky130_stdcells/bufbuf_8.sym} 930 -80 0 0 {name=x13 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 970 -80 0 0 {name=p31 lab=OUT9

}
C {sky130_stdcells/bufbuf_8.sym} 990 -370 0 0 {name=x14 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 1030 -370 0 0 {name=p32 lab=DCK

}
