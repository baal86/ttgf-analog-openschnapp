module ip_column_mux (A,
    Y);
 input [4:0] A;
 output [20:0] Y;

 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;

 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_101 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_116 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_120 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_0_2 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_36 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_55 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_120 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_1_2 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_1_72 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_74 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_89 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_2_102 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_104 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_2_113 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_16 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_2_37 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_39 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_73 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_2_8 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_2_94 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_3_10 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_3_116 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_120 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_3_2 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_3_20 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_3_24 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_3_32 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_3_36 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_3_56 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_3_60 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_3_93 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_95 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_0_Left_4 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_0_Right_0 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_1_Left_5 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_1_Right_1 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_2_Left_6 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_2_Right_2 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_3_Left_7 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_3_Right_3 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_0_10 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_0_8 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_0_9 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_1_11 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_2_12 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_2_13 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_3_14 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_3_15 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_3_16 ();
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _14_ (.I(net2),
    .ZN(_00_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _15_ (.I(net1),
    .ZN(_01_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _16_ (.I(net5),
    .ZN(_02_));
 gf180mcu_fd_sc_mcu7t5v0__or3_1 _17_ (.A1(net2),
    .A2(net1),
    .A3(net3),
    .Z(_03_));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _18_ (.A1(net5),
    .A2(net4),
    .Z(_04_));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _19_ (.A1(_03_),
    .A2(_04_),
    .ZN(net6));
 gf180mcu_fd_sc_mcu7t5v0__or3_1 _20_ (.A1(net2),
    .A2(_01_),
    .A3(net3),
    .Z(_05_));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _21_ (.A1(_04_),
    .A2(_05_),
    .ZN(net17));
 gf180mcu_fd_sc_mcu7t5v0__or3_1 _22_ (.A1(_00_),
    .A2(net1),
    .A3(net3),
    .Z(_06_));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _23_ (.A1(_04_),
    .A2(_06_),
    .ZN(net19));
 gf180mcu_fd_sc_mcu7t5v0__or3_1 _24_ (.A1(_00_),
    .A2(_01_),
    .A3(net3),
    .Z(_07_));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _25_ (.A1(_04_),
    .A2(_07_),
    .ZN(net20));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _26_ (.A1(_00_),
    .A2(_01_),
    .A3(net3),
    .ZN(_08_));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _27_ (.A1(_04_),
    .A2(_08_),
    .ZN(net21));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _28_ (.A1(_00_),
    .A2(net1),
    .A3(net3),
    .ZN(_09_));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _29_ (.A1(_04_),
    .A2(_09_),
    .ZN(net22));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _30_ (.A1(net2),
    .A2(_01_),
    .A3(net3),
    .ZN(_10_));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _31_ (.A1(_04_),
    .A2(_10_),
    .ZN(net23));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _32_ (.A1(net2),
    .A2(net1),
    .A3(net3),
    .ZN(_11_));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _33_ (.A1(_04_),
    .A2(_11_),
    .ZN(net24));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _34_ (.A1(_02_),
    .A2(net4),
    .ZN(_12_));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _35_ (.A1(_03_),
    .A2(_12_),
    .ZN(net25));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _36_ (.A1(_05_),
    .A2(_12_),
    .ZN(net26));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _37_ (.A1(_06_),
    .A2(_12_),
    .ZN(net7));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _38_ (.A1(_07_),
    .A2(_12_),
    .ZN(net8));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _39_ (.A1(_08_),
    .A2(_12_),
    .ZN(net9));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _40_ (.A1(_09_),
    .A2(_12_),
    .ZN(net10));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _41_ (.A1(_10_),
    .A2(_12_),
    .ZN(net11));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _42_ (.A1(_11_),
    .A2(_12_),
    .ZN(net12));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _43_ (.A1(_02_),
    .A2(net4),
    .Z(_13_));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _44_ (.A1(_03_),
    .A2(_13_),
    .ZN(net13));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _45_ (.A1(_05_),
    .A2(_13_),
    .ZN(net14));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _46_ (.A1(_06_),
    .A2(_13_),
    .ZN(net15));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _47_ (.A1(_07_),
    .A2(_13_),
    .ZN(net16));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _48_ (.A1(_08_),
    .A2(_13_),
    .ZN(net18));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 input1 (.I(A[0]),
    .Z(net1));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 input2 (.I(A[1]),
    .Z(net2));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 input3 (.I(A[2]),
    .Z(net3));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 input4 (.I(A[3]),
    .Z(net4));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 input5 (.I(A[4]),
    .Z(net5));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output10 (.I(net10),
    .Z(Y[13]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output11 (.I(net11),
    .Z(Y[14]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output12 (.I(net12),
    .Z(Y[15]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output13 (.I(net13),
    .Z(Y[16]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output14 (.I(net14),
    .Z(Y[17]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output15 (.I(net15),
    .Z(Y[18]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output16 (.I(net16),
    .Z(Y[19]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output17 (.I(net17),
    .Z(Y[1]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output18 (.I(net18),
    .Z(Y[20]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output19 (.I(net19),
    .Z(Y[2]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output20 (.I(net20),
    .Z(Y[3]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output21 (.I(net21),
    .Z(Y[4]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output22 (.I(net22),
    .Z(Y[5]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output23 (.I(net23),
    .Z(Y[6]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output24 (.I(net24),
    .Z(Y[7]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output25 (.I(net25),
    .Z(Y[8]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output26 (.I(net26),
    .Z(Y[9]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output6 (.I(net6),
    .Z(Y[0]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output7 (.I(net7),
    .Z(Y[10]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output8 (.I(net8),
    .Z(Y[11]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output9 (.I(net9),
    .Z(Y[12]));
endmodule
