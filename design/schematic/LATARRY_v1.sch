v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -130 220 -130 {
lab=CK}
N 170 -110 220 -110 {
lab=D0}
N 180 -90 220 -90 {
lab=XRST}
N 400 -130 440 -130 {
lab=O0}
N 180 -240 220 -240 {
lab=CK}
N 170 -220 220 -220 {
lab=D1}
N 180 -200 220 -200 {
lab=XRST}
N 400 -240 440 -240 {
lab=O1}
N 180 -350 220 -350 {
lab=CK}
N 170 -330 220 -330 {
lab=D2}
N 180 -310 220 -310 {
lab=XRST}
N 400 -350 440 -350 {
lab=O2}
N 180 -450 220 -450 {
lab=CK}
N 170 -430 220 -430 {
lab=D3}
N 180 -410 220 -410 {
lab=XRST}
N 400 -450 440 -450 {
lab=O3}
N 180 -550 220 -550 {
lab=CK}
N 170 -530 220 -530 {
lab=D4}
N 180 -510 220 -510 {
lab=XRST}
N 400 -550 440 -550 {
lab=O4}
N 590 -140 630 -140 {
lab=CK}
N 580 -120 630 -120 {
lab=D5}
N 590 -100 630 -100 {
lab=XRST}
N 810 -140 850 -140 {
lab=O5}
N 590 -250 630 -250 {
lab=CK}
N 580 -230 630 -230 {
lab=D6}
N 590 -210 630 -210 {
lab=XRST}
N 810 -250 850 -250 {
lab=O6}
N 590 -360 630 -360 {
lab=CK}
N 580 -340 630 -340 {
lab=D7}
N 590 -320 630 -320 {
lab=XRST}
N 810 -360 850 -360 {
lab=O7}
N 590 -460 630 -460 {
lab=CK}
N 580 -440 630 -440 {
lab=D8}
N 590 -420 630 -420 {
lab=XRST}
N 810 -460 850 -460 {
lab=O8}
N 590 -560 630 -560 {
lab=CK}
N 580 -540 630 -540 {
lab=D9}
N 590 -520 630 -520 {
lab=XRST}
N 810 -560 850 -560 {
lab=O9}
C {devices/ipin.sym} 80 -70 0 0 {name=p1 lab=CK}
C {devices/ipin.sym} 80 -50 0 0 {name=p3 lab=XRST}
C {devices/ipin.sym} 80 -110 0 0 {name=p10 lab=DVDD}
C {devices/ipin.sym} 80 -90 0 0 {name=p12 lab=GND}
C {sky130_stdcells/dfrbp_1.sym} 310 -110 0 0 {name=x0 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 180 -130 0 0 {name=p5 sig_type=std_logic lab=CK}
C {devices/ipin.sym} 170 -110 0 0 {name=p2 lab=D0}
C {devices/opin.sym} 440 -130 0 0 {name=p11 lab=O0

}
C {sky130_stdcells/dfrbp_1.sym} 310 -220 0 0 {name=x1 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 180 -240 0 0 {name=p4 sig_type=std_logic lab=CK}
C {devices/ipin.sym} 170 -220 0 0 {name=p6 lab=D1}
C {devices/opin.sym} 440 -240 0 0 {name=p7 lab=O1

}
C {sky130_stdcells/dfrbp_1.sym} 310 -330 0 0 {name=x2 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 180 -350 0 0 {name=p8 sig_type=std_logic lab=CK}
C {devices/ipin.sym} 170 -330 0 0 {name=p9 lab=D2}
C {devices/opin.sym} 440 -350 0 0 {name=p13 lab=O2

}
C {sky130_stdcells/dfrbp_1.sym} 310 -430 0 0 {name=x3 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 180 -450 0 0 {name=p14 sig_type=std_logic lab=CK}
C {devices/ipin.sym} 170 -430 0 0 {name=p15 lab=D3}
C {devices/opin.sym} 440 -450 0 0 {name=p16 lab=O3

}
C {sky130_stdcells/dfrbp_1.sym} 310 -530 0 0 {name=x4 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 180 -550 0 0 {name=p17 sig_type=std_logic lab=CK}
C {devices/ipin.sym} 170 -530 0 0 {name=p18 lab=D4}
C {devices/opin.sym} 440 -550 0 0 {name=p19 lab=O4

}
C {sky130_stdcells/dfrbp_1.sym} 720 -120 0 0 {name=x5 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 590 -140 0 0 {name=p20 sig_type=std_logic lab=CK}
C {devices/ipin.sym} 580 -120 0 0 {name=p21 lab=D5}
C {devices/opin.sym} 850 -140 0 0 {name=p22 lab=O5

}
C {sky130_stdcells/dfrbp_1.sym} 720 -230 0 0 {name=x6 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 590 -250 0 0 {name=p23 sig_type=std_logic lab=CK}
C {devices/ipin.sym} 580 -340 0 0 {name=p24 lab=D7}
C {devices/opin.sym} 850 -360 0 0 {name=p25 lab=O7

}
C {sky130_stdcells/dfrbp_1.sym} 720 -340 0 0 {name=x7 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 590 -360 0 0 {name=p26 sig_type=std_logic lab=CK}
C {devices/ipin.sym} 580 -440 0 0 {name=p27 lab=D8}
C {devices/opin.sym} 850 -250 0 0 {name=p28 lab=O6

}
C {sky130_stdcells/dfrbp_1.sym} 720 -440 0 0 {name=x8 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 590 -460 0 0 {name=p29 sig_type=std_logic lab=CK}
C {devices/ipin.sym} 580 -230 0 0 {name=p30 lab=D6}
C {devices/opin.sym} 850 -460 0 0 {name=p31 lab=O8

}
C {sky130_stdcells/dfrbp_1.sym} 720 -540 0 0 {name=x9 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 590 -560 0 0 {name=p32 sig_type=std_logic lab=CK}
C {devices/ipin.sym} 580 -540 0 0 {name=p33 lab=D9}
C {devices/opin.sym} 850 -560 0 0 {name=p34 lab=O9

}
C {devices/lab_pin.sym} 180 -90 0 0 {name=p35 sig_type=std_logic lab=XRST
}
C {devices/lab_pin.sym} 180 -200 0 0 {name=p36 sig_type=std_logic lab=XRST
}
C {devices/lab_pin.sym} 180 -310 0 0 {name=p37 sig_type=std_logic lab=XRST
}
C {devices/lab_pin.sym} 180 -410 0 0 {name=p38 sig_type=std_logic lab=XRST
}
C {devices/lab_pin.sym} 180 -510 0 0 {name=p39 sig_type=std_logic lab=XRST
}
C {devices/lab_pin.sym} 590 -100 0 0 {name=p40 sig_type=std_logic lab=XRST
}
C {devices/lab_pin.sym} 590 -210 0 0 {name=p41 sig_type=std_logic lab=XRST
}
C {devices/lab_pin.sym} 590 -320 0 0 {name=p42 sig_type=std_logic lab=XRST
}
C {devices/lab_pin.sym} 590 -420 0 0 {name=p43 sig_type=std_logic lab=XRST
}
C {devices/lab_pin.sym} 590 -520 0 0 {name=p44 sig_type=std_logic lab=XRST
}
