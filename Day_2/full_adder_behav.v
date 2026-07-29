module full_adder_behav (
    input wire A,
    input wire B,
    input wire Cin,
    output reg OUT,
    output reg Cout
);


always@(*) begin

{Cout,OUT} = A + B + Cin;

end


endmodule
