module top_module (
    input  wire [3:0] g,
    output wire [3:0] b,
    output wire [6:0] seg
);

    grey_to_binary d0 (
        .g (g),
        .b (b)
    );

    decoder_7_segment d1 (
        .b (b),
        .seg (seg)
    );

endmodule
