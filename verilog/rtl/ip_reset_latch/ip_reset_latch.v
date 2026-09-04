module ip_reset_latch (
    input  wire clk,
    input  wire A,
    output reg  Y
);
    always @(posedge clk) begin
        Y <= A;
    end
endmodule