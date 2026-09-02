module ip_column_mux (
    input  wire [4:0]  A,
    output wire [20:0] Y
);

    assign Y = 21'b1 << A;

endmodule