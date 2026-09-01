module ip_column_mux (A,
    Y);
 input [2:0] A;
 output [6:0] Y;

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
 wire _00_;
 wire _01_;
 wire _02_;

 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_100 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_16 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_0_2 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_36 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_53 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_0_65 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_67 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_90 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_1_100 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_102 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_1_18 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_1_2 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_1_26 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_1_66 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_1_72 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_1_88 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_1_96 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_2_100 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_102 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_2_2 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_34 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_2_37 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_2_45 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_47 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_2_52 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_2_84 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_3_10 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_100 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_3_14 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_3_2 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_3_22 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_3_30 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_3_36 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_3_58 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_3_66 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_3_70 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_3_86 ();
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_3_94 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_3_98 ();
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
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_3_13 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_3_14 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_3_15 ();
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _03_ (.I(net1),
    .ZN(_00_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _04_ (.I(net2),
    .ZN(_01_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _05_ (.I(net3),
    .ZN(_02_));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _06_ (.A1(_00_),
    .A2(net2),
    .A3(net3),
    .ZN(net5));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _07_ (.A1(net1),
    .A2(_01_),
    .A3(net3),
    .ZN(net6));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _08_ (.A1(_00_),
    .A2(_01_),
    .A3(net3),
    .ZN(net7));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _09_ (.A1(net1),
    .A2(net2),
    .A3(_02_),
    .ZN(net8));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _10_ (.A1(_00_),
    .A2(net2),
    .A3(_02_),
    .ZN(net9));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _11_ (.A1(net1),
    .A2(_01_),
    .A3(_02_),
    .ZN(net10));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _12_ (.A1(net1),
    .A2(net2),
    .A3(net3),
    .ZN(net4));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 input1 (.I(A[0]),
    .Z(net1));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 input2 (.I(A[1]),
    .Z(net2));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 input3 (.I(A[2]),
    .Z(net3));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output10 (.I(net10),
    .Z(Y[6]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output4 (.I(net4),
    .Z(Y[0]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output5 (.I(net5),
    .Z(Y[1]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output6 (.I(net6),
    .Z(Y[2]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output7 (.I(net7),
    .Z(Y[3]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output8 (.I(net8),
    .Z(Y[4]));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output9 (.I(net9),
    .Z(Y[5]));
endmodule
