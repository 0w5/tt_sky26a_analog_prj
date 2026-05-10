v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -740 450 -700 {
lab=VDD}
N 150 -740 180 -740 {
lab=VDD}
N 270 -740 450 -740 {
lab=VDD}
N 450 -740 480 -740 {
lab=VDD}
N 140 -320 620 -320 {
lab=GND}
N 180 -740 270 -740 {
lab=VDD}
N 220 -670 310 -670 {
lab=I30U}
N 60 -740 150 -740 {
lab=VDD}
N 360 -500 360 -460 {
lab=#net1}
N 520 -500 520 -460 {
lab=VOO}
N 400 -430 480 -430 {
lab=#net1}
N 360 -480 400 -480 {
lab=#net1}
N 400 -480 400 -430 {
lab=#net1}
N 360 -400 360 -320 {
lab=GND}
N 520 -400 520 -320 {
lab=GND}
N 360 -620 360 -560 {
lab=Va}
N 360 -620 520 -620 {
lab=Va}
N 520 -620 520 -560 {
lab=Va}
N 450 -640 450 -620 {
lab=Va}
N 520 -480 610 -480 {
lab=VOO}
N 570 -740 750 -740 {
lab=VDD}
N 750 -740 750 -700 {
lab=VDD}
N 520 -430 540 -430 {
lab=GND}
N 540 -430 540 -320 {
lab=GND}
N 340 -430 360 -430 {
lab=GND}
N 340 -430 340 -320 {
lab=GND}
N 270 -530 320 -530 {
lab=VINM}
N 560 -530 620 -530 {
lab=VINP}
N 480 -740 570 -740 {
lab=VDD}
N 750 -600 750 -510 {
lab=VO}
N 610 -480 710 -480 {
lab=VOO}
N 540 -320 750 -320 {
lab=GND}
N 750 -480 770 -480 {
lab=GND}
N 750 -320 770 -320 {
lab=GND}
N 750 -740 770 -740 {
lab=VDD}
N 750 -600 840 -600 {
lab=VO}
N 120 -320 140 -320 {
lab=GND}
N 380 -670 710 -670 {
lab=I30U}
N 750 -640 750 -600 {
lab=VO}
N 750 -450 750 -320 {
lab=GND}
N 770 -480 770 -320 {
lab=GND}
N 690 -610 750 -610 {
lab=VO}
N 690 -490 690 -480 {
lab=VOO}
N 40 -740 60 -740 {
lab=VDD}
N 40 -320 120 -320 {
lab=GND}
N 20 -320 40 -320 {
lab=GND}
N 770 -740 810 -740 {
lab=VDD}
N 810 -740 810 -700 {
lab=VDD}
N 750 -640 810 -640 {
lab=VO}
N 710 -670 770 -670 {
lab=I30U}
N 310 -670 380 -670 {
lab=I30U}
N 670 -520 670 -320 {
lab=GND}
N 840 -600 890 -600 {
lab=VO}
N 180 -670 220 -670 {
lab=I30U}
N 120 -670 180 -670 {
lab=I30U}
N 80 -740 80 -700 {
lab=VDD}
N 80 -640 80 -540 {
lab=I30U}
N 40 -540 80 -540 {
lab=I30U}
N 80 -620 140 -620 {
lab=I30U}
N 140 -670 140 -620 {
lab=I30U}
N 750 -510 830 -510 {
lab=VO}
N 830 -450 830 -320 {
lab=GND}
N 770 -320 830 -320 {
lab=GND}
N 830 -480 850 -480 {
lab=GND}
N 850 -480 850 -320 {
lab=GND}
N 830 -320 850 -320 {
lab=GND}
N 700 -490 700 -480 {
lab=VOO}
N 700 -490 790 -490 {
lab=VOO}
N 790 -490 790 -480 {
lab=VOO}
N 810 -740 940 -740 {
lab=VDD}
N 940 -740 940 -690 {
lab=VDD}
N 940 -690 940 -630 {
lab=VDD}
N 900 -740 900 -660 {
lab=VDD}
N 940 -740 1020 -740 {
lab=VDD}
N 1020 -740 1020 -630 {
lab=VDD}
N 980 -740 980 -660 {
lab=VDD}
N 160 -380 160 -320 {
lab=GND}
N 200 -350 200 -320 {
lab=GND}
N 200 -380 210 -380 {
lab=GND}
N 210 -380 210 -320 {
lab=GND}
N 200 -410 200 -350 {
lab=GND}
N 90 -410 90 -320 {
lab=GND}
N 90 -380 130 -380 {
lab=GND}
N 130 -380 130 -320 {
lab=GND}
N 850 -320 940 -320 {
lab=GND}
N 870 -350 870 -320 {
lab=GND}
N 890 -380 940 -380 {
lab=GND}
N 920 -380 920 -320 {
lab=GND}
C {devices/lab_pin.sym} 610 -480 0 1 {name=p3 sig_type=std_logic lab=VOO}
C {devices/lab_pin.sym} 840 -600 2 0 {name=p4 sig_type=std_logic lab=VO}
C {devices/lab_pin.sym} 380 -620 0 1 {name=p5 sig_type=std_logic lab=Va}
C {sky130_fd_pr/cap_mim_m3_1.sym} 690 -580 2 0 {name=CO model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 690 -520 0 0 {name=RO
L=1
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 430 -670 0 0 {name=MP_I
L=1
W=8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 340 -530 0 0 {name=MP_INM
L=2
W=8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 540 -530 0 1 {name=MP_INP
L=2
W=8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 380 -430 0 1 {name=MP_CM
L=2
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -430 0 0 {name=MP_CP
L=2
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 730 -480 0 0 {name=MN_O
L=1
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 730 -670 0 0 {name=MP_O0
L=1
W=8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 790 -670 0 0 {name=MP_O1
L=1
W=8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/ipin.sym} 40 -740 2 1 {name=p9 lab=VDD}
C {devices/ipin.sym} 20 -320 2 1 {name=p10 lab=GND}
C {devices/ipin.sym} 270 -530 0 0 {name=p1 lab=VINM}
C {devices/ipin.sym} 620 -530 0 1 {name=p2 lab=VINP}
C {devices/opin.sym} 890 -600 0 0 {name=p11 lab=VO}
C {devices/ipin.sym} 40 -540 2 1 {name=p12 lab=I30U}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 100 -670 0 1 {name=MP_IIN
L=1
W=8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 810 -480 0 0 {name=MN_O1
L=1
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 1000 -660 0 0 {name=MPDMY1
L=1
W=8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 110 -380 0 1 {name=MNDMY0
L=2
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 180 -380 0 0 {name=MNDMY1
L=1
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 890 -350 0 0 {name=RDMY0
L=1
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 940 -350 0 0 {name=RDMY1
L=1
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 920 -660 0 0 {name=MPDMY0
L=2
W=8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
