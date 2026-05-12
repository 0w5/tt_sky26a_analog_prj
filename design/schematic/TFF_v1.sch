v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -180 130 -180 {
lab=CK}
N 100 -140 130 -140 {
lab=XRST}
N 100 -140 100 -120 {
lab=XRST}
N 310 -160 340 -160 {
lab=XQ}
N 310 -180 410 -180 {
lab=Q}
N 340 -230 340 -160 {
lab=XQ}
N 120 -230 340 -230 {
lab=XQ}
N 120 -230 120 -160 {
lab=XQ}
N 120 -160 130 -160 {
lab=XQ}
C {sky130_stdcells/dfrbp_1.sym} 220 -160 0 0 {name=x0 VGND=GND VNB=GND VPB=DVDD VPWR=DVDD prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 50 -180 0 0 {name=p1 lab=CK}
C {devices/ipin.sym} 100 -120 0 0 {name=p3 lab=XRST}
C {devices/opin.sym} 340 -230 0 0 {name=p8 lab=XQ}
C {devices/opin.sym} 410 -180 0 0 {name=p34 lab=Q}
C {devices/ipin.sym} 60 -260 0 0 {name=p2 lab=DVDD}
C {devices/ipin.sym} 60 -230 0 0 {name=p4 lab=GND}
