module ip_row_mux (
    input  wire [4:0]  A,
    output wire [16:0] Y
);

    assign Y = 17'b1 << A;

endmodule