module full_adder_gate_level (
    input wire A,
    input wire B,
    input wire Cin,
    output wire OUT,
    output wire Cout
);

wire w1,w2,w3;

half_adder u0 (
    .A(A),
    .B(B),
    .OUT(w1),
    .Carry(w2)
);

half_adder u1 (
    .A(w1),
    .B(Cin),
    .OUT(OUT),
    .Carry(w3)
);

or (Cout, w2,w2);

endmodule
