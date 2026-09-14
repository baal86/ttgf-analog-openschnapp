`default_nettype none
`include "../ip_row_mux/ip_row_mux.v"
`include "../ip_column_mux/ip_column_mux.v"
`include "../ip_reset_latch/ip_reset_latch.v"

module aux_total_digital (
    input  wire         clk,
    input  wire [4:0]   CA,
    output wire [20:0]  CY,
    input  wire [4:0]   RA,
    output wire [16:0]  RY,
    input  wire         reset_a,
    output wire         reset_y
);

    ip_column_mux columnmux(
        .clk(clk),
        .A(CA),
        .Y(CY)
    );

    ip_row_mux rowmux(
        .clk(clk),
        .A(RA),
        .Y(RY)
    );

    ip_reset_latch reset_latch(
        .A(reset_a),
        .Y(reset_y),
        .clk(clk)
    );


endmodule