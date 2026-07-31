`timescale 1ns/1ps

module top_tb;

    reg  [3:0] g_tb;
    wire [3:0] b_tb;
    wire [6:0] seg_tb;

    top_module dut (
        .g (g_tb),
        .b (b_tb),
        .seg (seg_tb)
    );

    initial begin
        g_tb = 4'b0000;  // Binary 0
        #10;

        g_tb = 4'b0001;  // Binary 1
        #10;

        g_tb = 4'b0011;  // Binary 2
        #10;

        g_tb = 4'b0010;  // Binary 3
        #10;

        g_tb = 4'b0110;  // Binary 4
        #10;

        g_tb = 4'b0111;  // Binary 5
        #10;

        g_tb = 4'b0101;  // Binary 6
        #10;

        g_tb = 4'b0100;  // Binary 7
        #10;

        $stop;
    end

endmodule
