module alu #(
    parameter WIDTH = 8
)(
    input  wire [WIDTH-1:0] a,
    input  wire [WIDTH-1:0] b,
    input  wire [2:0]       opcode,
    output wire             zero,
    output reg  [WIDTH-1:0] alu_out
);

    assign zero = (in_a == 0);


    always @(*) begin
        case (opcode)
            3'b000: alu_out = a;
            3'b001: alu_out = a;
            3'b010: alu_out = a + b;
            3'b011: alu_out = a & b;
            3'b100: alu_out = a ^ b;
            3'b101: alu_out = b;
            3'b110: alu_out = a;
            3'b111: alu_out = a;
            default: alu_out = {WIDTH{1'b0}};
        endcase
    end

endmodule
