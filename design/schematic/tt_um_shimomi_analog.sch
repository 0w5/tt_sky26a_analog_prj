v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -160 100 -160 {
lab=VAPWR}
N 60 -140 100 -140 {
lab=VDPWR}
N 60 -120 100 -120 {
lab=VGND}
N 60 -100 100 -100 {
lab=ui_in[0]}
N 60 -80 100 -80 {
lab=clk}
N 400 -160 440 -160 {
lab=ua[0]}
N 400 -140 440 -140 {
lab=uo_out[0]}
C {/home/ttuser/TT_WORK/rel/DSMANA_v1.sym} 250 -120 0 0 {name=x1}
C {devices/ipin.sym} 60 -160 0 0 {name=p1 lab=VAPWR}
C {devices/ipin.sym} 60 -140 0 0 {name=p2 lab=VDPWR}
C {devices/ipin.sym} 60 -120 0 0 {name=p3 lab=VGND}
C {devices/ipin.sym} 60 -100 0 0 {name=p4 lab=ui_in[0]}
C {devices/ipin.sym} 60 -80 0 0 {name=p5 lab=clk}
C {devices/opin.sym} 440 -140 0 0 {name=p6 lab=uo_out[0]}
C {devices/opin.sym} 440 -160 0 0 {name=p7 lab=ua[0]}
C {devices/ipin.sym} 40 -340 0 0 {name=p8 lab=ena}
C {devices/ipin.sym} 40 -300 0 0 {name=p9 lab=rst_n}
C {devices/ipin.sym} 150 -450 0 0 {name=p10 lab=ua[7]}
C {devices/ipin.sym} 260 -450 0 0 {name=p11 lab=ui_in[7]}
C {devices/ipin.sym} 520 -460 0 0 {name=p12 lab=uio_in[7]}
C {devices/ipin.sym} 800 -460 0 0 {name=p13 lab=uio_out[7]}
C {devices/ipin.sym} 660 -460 0 0 {name=p14 lab=uio_oe[7]}
C {devices/ipin.sym} 390 -460 0 0 {name=p15 lab=uo_out[7]}
C {devices/ipin.sym} 150 -400 0 0 {name=p16 lab=ua[6]}
C {devices/ipin.sym} 150 -360 0 0 {name=p17 lab=ua[5]}
C {devices/ipin.sym} 150 -320 0 0 {name=p18 lab=ua[4]}
C {devices/ipin.sym} 150 -280 0 0 {name=p19 lab=ua[3]}
C {devices/ipin.sym} 150 -240 0 0 {name=p20 lab=ua[2]}
C {devices/ipin.sym} 150 -200 0 0 {name=p21 lab=ua[1]}
C {devices/ipin.sym} 260 -410 0 0 {name=p22 lab=ui_in[6]}
C {devices/ipin.sym} 260 -370 0 0 {name=p23 lab=ui_in[5]}
C {devices/ipin.sym} 260 -330 0 0 {name=p24 lab=ui_in[4]}
C {devices/ipin.sym} 260 -290 0 0 {name=p25 lab=ui_in[3]}
C {devices/ipin.sym} 260 -250 0 0 {name=p26 lab=ui_in[2]}
C {devices/ipin.sym} 260 -210 0 0 {name=p27 lab=ui_in[1]}
C {devices/ipin.sym} 390 -410 0 0 {name=p28 lab=uo_out[6]}
C {devices/ipin.sym} 390 -370 0 0 {name=p29 lab=uo_out[5]}
C {devices/ipin.sym} 380 -330 0 0 {name=p30 lab=uo_out[4]}
C {devices/ipin.sym} 380 -290 0 0 {name=p31 lab=uo_out[3]}
C {devices/ipin.sym} 380 -250 0 0 {name=p32 lab=uo_out[2]}
C {devices/ipin.sym} 380 -210 0 0 {name=p33 lab=uo_out[1]}
C {devices/ipin.sym} 520 -410 0 0 {name=p34 lab=uio_in[6]}
C {devices/ipin.sym} 520 -370 0 0 {name=p35 lab=uio_in[5]}
C {devices/ipin.sym} 510 -330 0 0 {name=p36 lab=uio_in[4]}
C {devices/ipin.sym} 520 -290 0 0 {name=p37 lab=uio_in[3]}
C {devices/ipin.sym} 520 -250 0 0 {name=p38 lab=uio_in[2]}
C {devices/ipin.sym} 520 -220 0 0 {name=p39 lab=uio_in[1]}
C {devices/ipin.sym} 520 -190 0 0 {name=p40 lab=uio_in[0]}
C {devices/ipin.sym} 650 -410 0 0 {name=p41 lab=uio_oe[6]}
C {devices/ipin.sym} 650 -370 0 0 {name=p42 lab=uio_oe[5]}
C {devices/ipin.sym} 650 -330 0 0 {name=p43 lab=uio_oe[4]}
C {devices/ipin.sym} 650 -290 0 0 {name=p44 lab=uio_oe[3]}
C {devices/ipin.sym} 650 -250 0 0 {name=p45 lab=uio_oe[2]}
C {devices/ipin.sym} 650 -220 0 0 {name=p46 lab=uio_oe[1]}
C {devices/ipin.sym} 650 -190 0 0 {name=p47 lab=uio_oe[0]}
C {devices/ipin.sym} 800 -410 0 0 {name=p48 lab=uio_out[6]}
C {devices/ipin.sym} 800 -370 0 0 {name=p49 lab=uio_out[5]}
C {devices/ipin.sym} 790 -330 0 0 {name=p50 lab=uio_out[4]}
C {devices/ipin.sym} 790 -290 0 0 {name=p51 lab=uio_out[3]}
C {devices/ipin.sym} 790 -250 0 0 {name=p52 lab=uio_out[2]}
C {devices/ipin.sym} 790 -210 0 0 {name=p53 lab=uio_out[1]}
C {devices/ipin.sym} 790 -180 0 0 {name=p54 lab=uio_out[0]}
