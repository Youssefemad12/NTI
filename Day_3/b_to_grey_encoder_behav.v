module b_to_grey_encoder_behav (
    input  wire [3:0] binary,
    output reg  [3:0] grey
);

always @(*) begin
    case (binary)
        4'b0000: grey = 4'b0000;
        4'b0001: grey = 4'b0001;
        4'b0010: grey = 4'b0011;
        4'b0011: grey = 4'b0010;
        4'b0100: grey = 4'b0110;
        4'b0101: grey = 4'b0111;
        4'b0110: grey = 4'b0101;
        4'b0111: grey = 4'b0100;
        4'b1000: grey = 4'b1100;
        4'b1001: grey = 4'b1101;
        4'b1010: grey = 4'b1111;
        4'b1011: grey = 4'b1110;
        4'b1100: grey = 4'b1010;
        4'b1101: grey = 4'b1011;
        4'b1110: grey = 4'b1001;
        4'b1111: grey = 4'b1000;
        default: grey = 4'b0000;
    endcase
end

endmodule
