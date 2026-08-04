module sipo #(parameter WIDTH = 4) (
    input wire             clk,
    input wire             rst_n,
    input wire             serial_in,
    output reg [WIDTH-1:0] q
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        q <= {WIDTH{1'b0}};
    else
        q <= {q[WIDTH-2:0], serial_in};
end

endmodule
