module ip_column_mux (
    input  wire [2:0]  A,
    output wire [6:0] Y
);

    assign Y = 6'b1 << A;

endmodule