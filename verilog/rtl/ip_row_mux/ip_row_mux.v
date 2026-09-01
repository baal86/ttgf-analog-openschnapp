module ip_row_mux (
    input  wire [3:0]  A,
    output wire [11:0] Y
);

    assign Y = 11'b1 << A;

endmodule