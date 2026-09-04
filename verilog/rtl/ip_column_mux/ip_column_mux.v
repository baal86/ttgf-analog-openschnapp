module ip_column_mux (
    input  wire clk,
    input  wire [4:0]  A,
    output reg  [20:0] Y
);
    always @(posedge clk) begin
        Y <= 21'b1 << A; 
    end

endmodule