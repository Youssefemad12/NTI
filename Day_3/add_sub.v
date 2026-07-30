module add_sub(
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire        sub,
    output wire [31:0] sum
);
    wire [15:0] sum1,sum2 ;
    wire cout1, cout2;
    wire [31:0] xor1;
    wire [31:0] sub1 = {32{sub}};
    
    add16 ( .a(a[15:0]), .b(xor1[15:0]), .cin(sub), .sum(sum[15:0]) , .cout(cout1) );
    add16 ( .a(a[31:16]), .b(xor1[31:16]), .cin(cout1), .sum(sum[31:16]) , .cout(cout2));
    
    assign xor1 = b ^ sub1;

    
endmodule
