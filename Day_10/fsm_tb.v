`timescale 1ns/1ps

module fsm_tb;

    reg clk;
    reg rst;
    reg a;
    reg b;
    wire y0;
    wire y1;

    fsm dut (
        .clk(clk),
        .rst(rst),
        .a(a),
        .b(b),
        .y0(y0),
        .y1(y1)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 0;
        a   = 0;
        b   = 0;
        #0;
        rst = 1;
        @(posedge clk);
        a = 0;
        b = 0;
        @(posedge clk);
        a = 1;
        b = 0;
        @(posedge clk);
        a = 0;
        b = 0;
        @(posedge clk);
        a = 1;
        b = 0;
        @(posedge clk);
        a = 1;
        b = 1;
        @(posedge clk);
        a = 0;
        b = 0;
        @(posedge clk);
        a = 1;
        b = 1;
        @(posedge clk);
        a = 0;
        b = 0;
        @(posedge clk);
        rst = 0;
        @(posedge clk);
        rst = 1;
        a = 0;
        b = 0;
        #20;
        $stop;
    end

    initial begin
        $monitor("%4t    %b   %b  %b    %b%b     %b  %b",
                 $time, rst, a, b, dut.cs[1], dut.cs[0], y1, y0);
    end

endmodule
