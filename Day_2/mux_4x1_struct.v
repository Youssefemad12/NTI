module mux_4x1_struct (
    input  wire       in0, in1, in2, in3,
    input  wire [1:0] sel,
    output wire       out
);

wire out0;
wire out1;

mux2x1 mux0 (
    .in0 (in0),
    .in1 (in1),
    .sel (sel[0]),
    .out (out0)
);

mux2x1 mux1 (
    .in0 (in2),
    .in1 (in3),
    .sel (sel[0]),
    .out (out1)
);

mux2x1 mux2 (
    .in0 (out0),
    .in1 (out1),
    .sel (sel[1]),
    .out (out)
);

endmodule
