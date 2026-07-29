module full_adder_structrual (
    input wire A,
    input wire B,
    input wire Cin,
    output wire OUT,
    output wire Cout
);

wire w1,w2,w3,w4;


xor(Sum , A, B, Cin);


and (w2, A, B);
and (w3, A, Cin);
and (w4, Cin, B);

or (Cout , w2,w3,w4);

endmodule
