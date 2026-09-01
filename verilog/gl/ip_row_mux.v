module ip_row_mux (A,
    Y);
 input [3:0] A;
 output [11:0] Y;

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
 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;

 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_0_2 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_0_31 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_33 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_4 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_0_64 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_66 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_2 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_1_39 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_41 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_60 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_3_32 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_3_42 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_3_50 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_54 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_0_Left_4 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_0_Right_0 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_1_Left_5 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_1_Right_1 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_2_Left_6 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_2_Right_2 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_3_Left_7 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_3_Right_3 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_0_8 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_2_9 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_3_10 ();
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _05_ (.I(net2),
    .ZN(_00_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _06_ (.I(net1),
    .ZN(_01_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _07_ (.I(net3),
    .ZN(_02_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _08_ (.I(net4),
    .ZN(_03_));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _09_ (.A1(net2),
    .A2(net1),
    .A3(net3),
    .A4(net4),
    .ZN(net5));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _10_ (.A1(net2),
    .A2(_01_),
    .A3(net3),
    .A4(net4),
    .ZN(net8));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _11_ (.A1(_00_),
    .A2(net1),
    .A3(net3),
    .A4(net4),
    .ZN(net9));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _12_ (.A1(net2),
    .A2(net1),
    .ZN(_04_));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _13_ (.A1(net3),
    .A2(net4),
    .A3(_04_),
    .ZN(net10));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _14_ (.A1(net2),
    .A2(net1),
    .A3(_02_),
    .A4(net4),
    .ZN(net11));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _15_ (.A1(net2),
    .A2(_01_),
    .A3(_02_),
    .A4(net4),
    .ZN(net12));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _16_ (.A1(_00_),
    .A2(net1),
    .A3(_02_),
    .A4(net4),
    .ZN(net13));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _17_ (.A1(_02_),
    .A2(net4),
    .A3(_04_),
    .ZN(net14));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _18_ (.A1(net2),
    .A2(net1),
    .A3(net3),
    .A4(_03_),
    .ZN(net15));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _19_ (.A1(net2),
    .A2(_01_),
    .A3(net3),
    .A4(_03_),
    .ZN(net16));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _20_ (.A1(_00_),
    .A2(net1),
    .A3(net3),
    .A4(_03_),
    .ZN(net6));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _21_ (.A1(net3),
    .A2(_03_),
    .A3(_04_),
    .ZN(net7));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 input1 (.I(A[0]),
    .Z(net1));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 input2 (.I(A[1]),
    .Z(net2));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 input3 (.I(A[2]),
    .Z(net3));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 input4 (.I(A[3]),
    .Z(net4));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output10 (.I(net10),
    .Z(Y[3]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output11 (.I(net11),
    .Z(Y[4]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output12 (.I(net12),
    .Z(Y[5]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output13 (.I(net13),
    .Z(Y[6]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output14 (.I(net14),
    .Z(Y[7]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output15 (.I(net15),
    .Z(Y[8]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output16 (.I(net16),
    .Z(Y[9]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output5 (.I(net5),
    .Z(Y[0]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output6 (.I(net6),
    .Z(Y[10]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output7 (.I(net7),
    .Z(Y[11]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output8 (.I(net8),
    .Z(Y[1]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output9 (.I(net9),
    .Z(Y[2]));
endmodule
