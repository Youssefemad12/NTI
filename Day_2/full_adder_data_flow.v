module full_adder_data_flow (
    input wire A,
    input wire B,
    input wire Cin,
    output wire OUT,
    output wire Cout
);


assign OUT = A ^ B ^ Cin;
assign Cout = ( A & B) | (B & Cin) | (A & Cin);


endmodule
