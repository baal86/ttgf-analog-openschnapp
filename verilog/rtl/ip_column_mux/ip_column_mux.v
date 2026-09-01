module ip_column_mux (
    input  wire [4:0]  A,
    output wire [19:0] Y
);

    assign Y = 20'b1 << A;

endmodule