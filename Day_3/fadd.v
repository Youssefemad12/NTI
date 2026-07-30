module fadd (
    input  wire [31:0] a,
    input  wire [31:0] b,
    output wire [31:0] sum
);

    wire lower_cout;
    wire upper_cout;

    // Lower 16-bit addition
    add16 lower_adder (
        .a    (a[15:0]),
        .b    (b[15:0]),
        .cin  (1'b0),
        .sum  (sum[15:0]),
        .cout (lower_cout)
    );

    // Upper 16-bit addition
    add16 upper_adder (
        .a    (a[31:16]),
        .b    (b[31:16]),
        .cin  (lower_cout),
        .sum  (sum[31:16]),
        .cout (upper_cout)
    );

endmodule


module add1 (
    input  wire a,
    input  wire b,
    input  wire cin,
    output wire sum,
    output wire cout
);

    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule