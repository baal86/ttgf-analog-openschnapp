/*
 * Copyright (c) 2026 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_baal86_openschnapp (
    input  wire       VGND,
    input  wire       VDPWR,    // 3.3v core power supply
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
    wire [20:0] column;
    wire        bus;
    wire        reset;
    wire [20:0] acol;
    wire [16:0] arow;

    assign ui_in[5] = reset;
    assign ua[0] = bus;

    ip_column column00( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[ 0]),   .bus(bus)   );
    ip_column column01( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[ 1]),   .bus(bus)   );
    ip_column column02( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[ 2]),   .bus(bus)   );
    ip_column column03( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[ 3]),   .bus(bus)   );
    ip_column column04( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[ 4]),   .bus(bus)   );
    ip_column column05( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[ 5]),   .bus(bus)   );
    ip_column column06( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[ 6]),   .bus(bus)   );
    ip_column column07( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[ 7]),   .bus(bus)   );
    ip_column column08( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[ 8]),   .bus(bus)   );
    ip_column column09( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[ 9]),   .bus(bus)   );
    ip_column column10( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[10]),   .bus(bus)   );
    ip_column column11( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[11]),   .bus(bus)   );
    ip_column column12( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[12]),   .bus(bus)   );
    ip_column column13( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[13]),   .bus(bus)   );
    ip_column column14( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[14]),   .bus(bus)   );
    ip_column column15( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[15]),   .bus(bus)   );
    ip_column column16( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[16]),   .bus(bus)   );
    ip_column column17( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[17]),   .bus(bus)   );
    ip_column column18( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[18]),   .bus(bus)   );
    ip_column column19( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[19]),   .bus(bus)   );
    ip_column column20( .VGND(VGND),    .VDPWR(VDPWR),  .arow(arow[16:0]),  .reset(reset),  .enable(acol[20]),   .bus(bus)   );


    ip_current_source current_source(
        .VDD(VDPWR),
        .VSUBS(VGND),
        .src(bus)
    );

    ip_column_mux columnmux(
	.VDD(VDPWR),
	.VSS(VGND),
        .A(uio_in[4:0]),
        .Y(acol[20:0])
    );

    ip_row_mux rowmux(
	.VDD(VDPWR),
	.VSS(VGND),
        .A(ui_in[4:0]),
        .Y(arow[16:0])
    );
    
    assign uo_out[0] = VGND;
    assign uo_out[1] = VGND;
    assign uo_out[2] = VGND;
    assign uo_out[3] = VGND;
    assign uo_out[4] = VGND;
    assign uo_out[5] = VGND;
    assign uo_out[6] = VGND;
    assign uo_out[7] = VGND;

    assign uio_out[0] = VGND;
    assign uio_out[1] = VGND;
    assign uio_out[2] = VGND;
    assign uio_out[3] = VGND;
    assign uio_out[4] = VGND;
    assign uio_out[5] = VGND;
    assign uio_out[6] = VGND;
    assign uio_out[7] = VGND;

    assign uio_oe[0] = VGND;
    assign uio_oe[1] = VGND;
    assign uio_oe[2] = VGND;
    assign uio_oe[3] = VGND;
    assign uio_oe[4] = VGND;
    assign uio_oe[5] = VGND;
    assign uio_oe[6] = VGND;
    assign uio_oe[7] = VGND;

endmodule
