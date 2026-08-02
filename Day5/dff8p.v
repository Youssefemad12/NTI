module top_module (
    input  wire      clk,
    input  wire      reset,
    input  reg [7:0] d,
    output reg [7:0] q
);


    always @(negedge clk) begin
        if (reset) begin
           q <= 'h034;
        end else begin
           q <= d;
        end
    end
endmodule
