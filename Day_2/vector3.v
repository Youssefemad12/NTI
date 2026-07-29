module vector3 (
    input  wire [4:0] a, b, c, d, e, f,
    output wire [7:0] w, x, y, z       );


    wire [31:0] w1;

    assign w1 = {a,b,c,d,e,f,2'b11};
    assign z = w1[7:0];
    assign y = w1[15:8];
    assign x = w1[23:16];
    assign w = w1[31:24];
endmodule
