module light_chaser_tb ();

reg clk;
reg rst;
reg hold;
wire [3:0] sr;


light_chaser l0 (
    .clk(clk),
    .rst(rst),
    .hold(hold),
    .sr(sr)
);


always #5 clk = ~clk;

initial begin
    rst = 0;
    hold = 1;
    clk = 0;
    #10
    rst = 1;
    #0;
    hold = 0;
    #10
    hold = 1;
    #50;
    $stop;
end

endmodule
