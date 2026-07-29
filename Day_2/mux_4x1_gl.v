module mux_4x1_gl (
    input  wire       in0, in1, in2, in3,
    input  wire [1:0] sel,
    output wire       out
);

wire s0_n;
wire s1_n;

wire w1,w2,w3,w4;

not n0 (sel0_n, sel[0]);
not n1 (sel1_n, sel[1]);

and a0 (w1, in0, sel1_n, sel0_n);
and a1 (w2, in1, sel1_n, sel[0]);
and a2 (w3, in2, sel[1], sel0_n);
and a3 (w4, in3, sel[1], sel[0]);

or o0 (out, w1, w2, w3, w4);

endmodule
