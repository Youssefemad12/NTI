`timescale 1ns/1ps
module decoder_2x4_tb;

    reg  [1:0] a;
    reg        en;
    wire [3:0] q;

    decoder_2x4 dut (
        .a  (a),
        .en (en),
        .q  (q)
    );

    initial begin
        en = 1'b0;
        a  = 2'b00;
        #10;
        a = 2'b01;
        #10;
        en = 1'b1;
        a = 2'b00;
        #10;
        a = 2'b01;
        #10;
        a = 2'b10;
        #10;
        a = 2'b11;
        #10;
        en = 1'b0;
        #10;

        $stop;
    end

endmodule
