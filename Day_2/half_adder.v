module half_adder (
    input wire A,
    input wire B,
    output wire OUT,
    output wire Carry
);


assign OUT = A ^ B;
assign Carry = A & B;


endmodule
