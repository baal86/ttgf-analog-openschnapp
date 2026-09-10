module ip_row_mux (
    input  wire clk,
    input  wire [4:0]  A,
    output reg  [16:0] Y
);
    always @(posedge clk) begin
        if (A == 5'b00000)
            Y <= 17'b0;
        else
            Y <= 17'b1 << (A - 1);
    end
endmodule