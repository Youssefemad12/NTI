`timescale 1ns/1ps
module SIPO_tb;

    reg        clk;
    reg        rst_n;
    reg        serial_in;
    wire [3:0] q;

    sipo dut (
        .clk       (clk),
        .rst_n     (rst_n),
        .serial_in (serial_in),
        .q         (q)
    );


    always #5 clk = ~clk;

    initial begin

        clk       = 1'b0;
        rst_n     = 1'b0;
        serial_in = 1'b0;

        #10;
        rst_n = 1'b1;


        serial_in = 1'b1;
        #10;

        serial_in = 1'b0;
        #10;

        serial_in = 1'b1;
        #10;

        serial_in = 1'b1;
        #10;

        $stop;
    end

endmodule
