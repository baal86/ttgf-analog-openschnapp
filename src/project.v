/*
 * Copyright (c) 2026 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_baal86_openschnapp (
    input  wire       VGND,
    input  wire       VDPWR,    // 3.3v core power supply
    input  wire       VAPWR,    // second analog power supply (VAA)
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
    wire arow[9:0];

    ip_pixel_nd2ps pixel_0_0(
        .VDD(VDPWR),
        .VSUBS(VGND),
        .reset(reset),
        .read(arow[0]),
        .cl(column[0])
    );

    ip_current_source current_source(
        .VDD(VDPWR),
        .VSUBS(VGND),
        .src(bus)
    );

    ip_column_switch cswitch_0(
        .VSUBS(VGND),
        .bus(bus),
        .cl(column[0]),
        .en(acol[0])
    );

    ip_line_mux rowmux(
        .A(ui_in[3:0]),
        .Y(arow[6:0])
    );

endmodule
