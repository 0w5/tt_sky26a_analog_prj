v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 -210 210 -190 {
lab=xout}
N 210 -160 230 -160 {
lab=GND}
N 230 -160 230 -90 {
lab=GND}
N 80 -20 230 -20 {
lab=GND}
N 210 -130 210 -90 {
lab=GND}
N 90 -320 210 -320 {
lab=DVDD}
N 210 -320 230 -320 {
lab=DVDD}
N 210 -240 230 -240 {
lab=DVDD}
N 80 -200 130 -200 {
lab=IN_A}
N 70 -320 90 -320 {
lab=DVDD}
N 210 -320 210 -270 {
lab=DVDD}
N 230 -320 230 -240 {
lab=DVDD}
N 130 -200 130 -170 {
lab=IN_A}
N 130 -110 130 -90 {
lab=#net1}
N 70 -200 80 -200 {
lab=IN_A}
N 130 -200 170 -200 {
lab=IN_A}
N 170 -240 170 -200 {
lab=IN_A}
N 170 -200 170 -160 {
lab=IN_A}
N 130 -140 140 -140 {
lab=GND}
N 140 -140 140 -90 {
lab=GND}
N 90 -320 90 -290 {
lab=DVDD}
N 90 -230 90 -140 {
lab=#net2}
N 70 -20 80 -20 {
lab=GND}
N 60 -20 70 -20 {
lab=GND}
N 50 -200 70 -200 {
lab=IN_A}
N 60 -260 70 -260 {
lab=GND}
N 60 -260 60 -90 {
lab=GND}
N 230 -320 290 -320 {
lab=DVDD}
N 290 -210 290 -200 {
lab=xout}
N 290 -320 310 -320 {
lab=DVDD}
N 60 -90 60 -20 {
lab=GND}
N 230 -90 230 -20 {
lab=GND}
N 210 -90 210 -20 {
lab=GND}
N 140 -90 140 -20 {
lab=GND}
N 130 -30 130 -20 {
lab=GND}
N 130 -60 140 -60 {
lab=GND}
N 90 -140 90 -60 {
lab=#net2}
N 290 -250 290 -210 {
lab=xout}
N 210 -200 290 -200 {
lab=xout}
N 330 -220 330 -200 {
lab=OUT_D}
N 330 -200 360 -200 {
lab=OUT_D}
N 330 -250 350 -250 {
lab=DVDD}
N 350 -320 350 -250 {
lab=DVDD}
N 310 -320 350 -320 {
lab=DVDD}
N 330 -320 330 -280 {
lab=DVDD}
N 290 -200 290 -170 {
lab=xout}
N 330 -170 350 -170 {
lab=GND}
N 350 -170 350 -20 {
lab=GND}
N 230 -20 350 -20 {
lab=GND}
N 330 -140 330 -20 {
lab=GND}
N 345 -20 370 -20 {
lab=GND}
N 370 -25 370 -20 {
lab=GND}
N 370 -85 370 -20 {
lab=GND}
N 370 -145 370 -80 {}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 190 -160 0 0 {name=MNI
L=0.5
W=2
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 190 -240 0 0 {name=MPI
L=0.5
W=4
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/ipin.sym} 50 -200 2 1 {name=p12 lab=IN_A}
C {devices/ipin.sym} 70 -320 2 1 {name=p1 lab=DVDD}
C {devices/ipin.sym} 60 -20 2 1 {name=p2 lab=GND}
C {devices/opin.sym} 360 -200 0 0 {name=p11 lab=OUT_D}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 110 -140 0 0 {name=MNR0
L=4
W=1
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 90 -260 0 0 {name=RTIEH
L=2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 110 -60 0 0 {name=MNR1
L=4
W=1
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 310 -250 0 0 {name=MPO
L=0.35
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 310 -170 0 0 {name=MNO
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 240 -200 0 1 {name=p6 sig_type=std_logic lab=xout}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 370 -55 0 0 {name=RTIEH1
L=2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 370 -115 0 0 {name=RTIEH2
L=2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
