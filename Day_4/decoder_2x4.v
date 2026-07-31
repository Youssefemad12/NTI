module decoder_2x4 (
    input      [1:0] a,
    input            en,
    output reg [3:0] q
);

always@(*) begin

    if(en) begin
        case (a)
            2'b00: q = 4'b0001;
            2'b01: q = 4'b0010;
            2'b10: q = 4'b0100;
            2'b11: q = 4'b1000;
        endcase
    end else begin
        q = 4'b0000;
    end
end

endmodule
