module ip_column_mux (
    input  wire clk,
    input  wire [4:0]  A,
    output reg  [20:0] Y
);
    always @(posedge clk) begin
        if (A == 5'b00000)
            Y <= 21'b0;
        else
            Y <= 21'b1 << (A - 1);
    end
endmodule