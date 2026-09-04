module ip_row_mux (
    input  wire clk,
    input  wire [4:0]  A,
    output reg  [16:0] Y
);
    always @(posedge clk) begin
        Y <= 17'b1 << A;
    end
endmodule