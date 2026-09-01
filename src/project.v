/*
 * Copyright (c) 2026 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_baal86_openschnapp (
    input  wire       VGND,
    input  wire       VDPWR,    // 3.3v core power supply
    //input  wire     VAPWR,    // second analog power supply (VAA)
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    inout  wire [7:0] ua,       // Analog pins, only ua[5:0] can be used
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);
    wire column[6:0];
    wire bus;
    wire reset;
    wire acol[6:0];
    wire arow[10:0];

    // Pixel Column 0
    ip_pixel_nd2ps pixel_0_00(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 0]), .cl(column[0]));
    ip_pixel_nd2ps pixel_0_01(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 1]), .cl(column[0]));
    ip_pixel_nd2ps pixel_0_02(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 2]), .cl(column[0]));
    ip_pixel_nd2ps pixel_0_03(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 3]), .cl(column[0]));
    ip_pixel_nd2ps pixel_0_04(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 4]), .cl(column[0]));
    ip_pixel_nd2ps pixel_0_05(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 5]), .cl(column[0]));
    ip_pixel_nd2ps pixel_0_06(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 6]), .cl(column[0]));
    ip_pixel_nd2ps pixel_0_07(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 7]), .cl(column[0]));
    ip_pixel_nd2ps pixel_0_08(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 8]), .cl(column[0]));
    ip_pixel_nd2ps pixel_0_09(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 9]), .cl(column[0]));
    ip_pixel_nd2ps pixel_0_10(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[10]), .cl(column[0]));
    ip_column_switch cswitch_0(
        .VSUBS(VGND),
        .bus(bus),
        .cl(column[0]),
        .en(acol[0])
    );

    // Pixel Column 1
    ip_pixel_nd2ps pixel_1_00(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 0]), .cl(column[1]));
    ip_pixel_nd2ps pixel_1_01(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 1]), .cl(column[1]));
    ip_pixel_nd2ps pixel_1_02(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 2]), .cl(column[1]));
    ip_pixel_nd2ps pixel_1_03(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 3]), .cl(column[1]));
    ip_pixel_nd2ps pixel_1_04(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 4]), .cl(column[1]));
    ip_pixel_nd2ps pixel_1_05(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 5]), .cl(column[1]));
    ip_pixel_nd2ps pixel_1_06(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 6]), .cl(column[1]));
    ip_pixel_nd2ps pixel_1_07(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 7]), .cl(column[1]));
    ip_pixel_nd2ps pixel_1_08(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 8]), .cl(column[1]));
    ip_pixel_nd2ps pixel_1_09(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 9]), .cl(column[1]));
    ip_pixel_nd2ps pixel_1_10(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[10]), .cl(column[1]));
    ip_column_switch cswitch_1(
        .VSUBS(VGND),
        .bus(bus),
        .cl(column[1]),
        .en(acol[1])
    );

    // Pixel Column 2
    ip_pixel_nd2ps pixel_2_00(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 0]), .cl(column[2]));
    ip_pixel_nd2ps pixel_2_01(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 1]), .cl(column[2]));
    ip_pixel_nd2ps pixel_2_02(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 2]), .cl(column[2]));
    ip_pixel_nd2ps pixel_2_03(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 3]), .cl(column[2]));
    ip_pixel_nd2ps pixel_2_04(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 4]), .cl(column[2]));
    ip_pixel_nd2ps pixel_2_05(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 5]), .cl(column[2]));
    ip_pixel_nd2ps pixel_2_06(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 6]), .cl(column[2]));
    ip_pixel_nd2ps pixel_2_07(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 7]), .cl(column[2]));
    ip_pixel_nd2ps pixel_2_08(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 8]), .cl(column[2]));
    ip_pixel_nd2ps pixel_2_09(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 9]), .cl(column[2]));
    ip_pixel_nd2ps pixel_2_10(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[10]), .cl(column[2]));
    ip_column_switch cswitch_2(
        .VSUBS(VGND),
        .bus(bus),
        .cl(column[2]),
        .en(acol[2])
    );

    // Pixel Column 3
    ip_pixel_nd2ps pixel_3_00(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 0]), .cl(column[3]));
    ip_pixel_nd2ps pixel_3_01(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 1]), .cl(column[3]));
    ip_pixel_nd2ps pixel_3_02(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 2]), .cl(column[3]));
    ip_pixel_nd2ps pixel_3_03(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 3]), .cl(column[3]));
    ip_pixel_nd2ps pixel_3_04(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 4]), .cl(column[3]));
    ip_pixel_nd2ps pixel_3_05(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 5]), .cl(column[3]));
    ip_pixel_nd2ps pixel_3_06(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 6]), .cl(column[3]));
    ip_pixel_nd2ps pixel_3_07(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 7]), .cl(column[3]));
    ip_pixel_nd2ps pixel_3_08(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 8]), .cl(column[3]));
    ip_pixel_nd2ps pixel_3_09(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 9]), .cl(column[3]));
    ip_pixel_nd2ps pixel_3_10(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[10]), .cl(column[3]));
    ip_column_switch cswitch_3(
        .VSUBS(VGND),
        .bus(bus),
        .cl(column[3]),
        .en(acol[3])
    );

    // Pixel Column 4
    ip_pixel_nd2ps pixel_4_00(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 0]), .cl(column[4]));
    ip_pixel_nd2ps pixel_4_01(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 1]), .cl(column[4]));
    ip_pixel_nd2ps pixel_4_02(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 2]), .cl(column[4]));
    ip_pixel_nd2ps pixel_4_03(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 3]), .cl(column[4]));
    ip_pixel_nd2ps pixel_4_04(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 4]), .cl(column[4]));
    ip_pixel_nd2ps pixel_4_05(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 5]), .cl(column[4]));
    ip_pixel_nd2ps pixel_4_06(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 6]), .cl(column[4]));
    ip_pixel_nd2ps pixel_4_07(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 7]), .cl(column[4]));
    ip_pixel_nd2ps pixel_4_08(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 8]), .cl(column[4]));
    ip_pixel_nd2ps pixel_4_09(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 9]), .cl(column[4]));
    ip_pixel_nd2ps pixel_4_10(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[10]), .cl(column[4]));
    ip_column_switch cswitch_4(
        .VSUBS(VGND),
        .bus(bus),
        .cl(column[4]),
        .en(acol[4])
    );

    // Pixel Column 5
    ip_pixel_nd2ps pixel_5_00(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 0]), .cl(column[5]));
    ip_pixel_nd2ps pixel_5_01(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 1]), .cl(column[5]));
    ip_pixel_nd2ps pixel_5_02(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 2]), .cl(column[5]));
    ip_pixel_nd2ps pixel_5_03(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 3]), .cl(column[5]));
    ip_pixel_nd2ps pixel_5_04(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 4]), .cl(column[5]));
    ip_pixel_nd2ps pixel_5_05(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 5]), .cl(column[5]));
    ip_pixel_nd2ps pixel_5_06(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 6]), .cl(column[5]));
    ip_pixel_nd2ps pixel_5_07(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 7]), .cl(column[5]));
    ip_pixel_nd2ps pixel_5_08(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 8]), .cl(column[5]));
    ip_pixel_nd2ps pixel_5_09(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 9]), .cl(column[5]));
    ip_pixel_nd2ps pixel_5_10(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[10]), .cl(column[5]));
    ip_column_switch cswitch_5(
        .VSUBS(VGND),
        .bus(bus),
        .cl(column[5]),
        .en(acol[5])
    );

    // Pixel Column 6
    ip_pixel_nd2ps pixel_6_00(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 0]), .cl(column[6]));
    ip_pixel_nd2ps pixel_6_01(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 1]), .cl(column[6]));
    ip_pixel_nd2ps pixel_6_02(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 2]), .cl(column[6]));
    ip_pixel_nd2ps pixel_6_03(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 3]), .cl(column[6]));
    ip_pixel_nd2ps pixel_6_04(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 4]), .cl(column[6]));
    ip_pixel_nd2ps pixel_6_05(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 5]), .cl(column[6]));
    ip_pixel_nd2ps pixel_6_06(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 6]), .cl(column[6]));
    ip_pixel_nd2ps pixel_6_07(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 7]), .cl(column[6]));
    ip_pixel_nd2ps pixel_6_08(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 8]), .cl(column[6]));
    ip_pixel_nd2ps pixel_6_09(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 9]), .cl(column[6]));
    ip_pixel_nd2ps pixel_6_10(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[10]), .cl(column[6]));
    ip_column_switch cswitch_6(
        .VSUBS(VGND),
        .bus(bus),
        .cl(column[6]),
        .en(acol[6])
    );

    ip_current_source current_source(
        .VDD(VDPWR),
        .VSUBS(VGND),
        .src(bus)
    );


    ip_column_mux columnmux(
        .A(ui_in[6:4]),
        .Y(arow[6:0])
    );

    ip_row_mux rowmux(
        .A(ui_in[3:0]),
        .Y(arow[10:0])
    );

    assign uo_out  = 8'b0;
    assign uio_out = 8'b0;
    assign uio_oe  = 8'b0;

endmodule
