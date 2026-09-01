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

 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_0_32 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_2 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_25 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_13 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_2_2 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_2_32 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_34 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_2_37 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_39 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_4 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_3_18 ();
 gf180mcu_fd_sc_mcu7t5v0__fill_2 FILLER_3_26 ();
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
