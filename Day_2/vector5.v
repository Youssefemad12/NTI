module vector5 (
    input  wire        a, b, c, d, e,
    output wire [24:0] out           );


    wire [24:0] w1;
    wire [24:0] w2;
    assign w1 = {{5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}};
    assign w2 = {5{a,b,c,d,e}};

    assign out = ~w1 ^ w2;

endmodule
