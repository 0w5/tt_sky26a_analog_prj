v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 845 -360 845 -300 {
lab=AIO}
N 785 -360 785 -300 {
lab=A0}
N 705 -360 705 -300 {
lab=AIO}
N 645 -360 645 -300 {
lab=A1}
N 100 -540 1200 -540 {
lab=VDD}
N 100 -80 1210 -80 {
lab=GND}
N 705 -330 735 -330 {
lab=AIO}
N 765 -330 785 -330 {
lab=A0}
N 625 -330 645 -330 {
lab=A1}
N 625 -320 625 -150 {
lab=A1}
N 625 -330 625 -320 {
lab=A1}
N 765 -330 765 -320 {
lab=A0}
N 80 -170 560 -170 {
lab=A0}
N 80 -150 560 -150 {
lab=A1}
N 735 -420 735 -330 {
lab=AIO}
N 875 -420 875 -330 {
lab=AIO}
N 280 -320 300 -320 {
lab=ASEL}
N 280 -320 280 -260 {
lab=ASEL}
N 280 -260 300 -260 {
lab=ASEL}
N 100 -300 280 -300 {
lab=ASEL}
N 340 -230 340 -80 {
lab=GND}
N 340 -540 340 -350 {
lab=VDD}
N 260 -300 260 -200 {
lab=ASEL}
N 260 -200 560 -200 {
lab=ASEL}
N 340 -290 550 -290 {
lab=XASEL0}
N 675 -260 675 -200 {
lab=ASEL}
N 550 -290 550 -220 {
lab=XASEL0}
N 815 -260 815 -220 {
lab=XASEL0}
N 685 -400 685 -220 {
lab=XASEL0}
N 675 -400 685 -400 {
lab=XASEL0}
N 825 -400 825 -200 {
lab=ASEL}
N 815 -400 825 -400 {
lab=ASEL}
N 765 -320 765 -170 {
lab=A0}
N 735 -420 875 -420 {
lab=AIO}
N 845 -330 875 -330 {
lab=AIO}
N 550 -220 815 -220 {
lab=XASEL0}
N 560 -200 825 -200 {
lab=ASEL}
N 560 -170 765 -170 {
lab=A0}
N 560 -150 625 -150 {
lab=A1}
N 875 -420 925 -420 {
lab=AIO}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 815 -280 3 0 {name=MNIO0
L=0.5
W=10
body=GND
nf=1 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 815 -380 1 0 {name=MPIO0
L=0.5
W=10
body=VDD
nf=1 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/ipin.sym} 100 -540 2 1 {name=p9 lab=VDD}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 675 -280 3 0 {name=MNIO1
L=0.5
W=10
body=GND
nf=1 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 675 -380 1 0 {name=MPIO1
L=0.5
W=10
body=VDD
nf=1 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 925 -420 0 0 {name=p1 lab=AIO}
C {devices/lab_pin.sym} 610 -170 0 0 {name=p6 sig_type=std_logic lab=A0}
C {devices/lab_pin.sym} 610 -150 0 0 {name=p2 sig_type=std_logic lab=A1}
C {devices/ipin.sym} 100 -300 2 1 {name=p12 lab=ASEL}
C {devices/iopin.sym} 80 -170 0 1 {name=p7 lab=A0}
C {devices/iopin.sym} 80 -150 0 1 {name=p8 lab=A1}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 320 -320 0 0 {name=MP0
L=0.5
W=1
body=VDD
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 320 -260 0 0 {name=MN0
L=0.5
W=1
body=GND
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 530 -290 0 0 {name=p14 sig_type=std_logic lab=xasel}
C {devices/lab_pin.sym} 530 -200 0 0 {name=p15 sig_type=std_logic lab=ASEL}
C {devices/ipin.sym} 100 -80 2 1 {name=p3 lab=GND}
