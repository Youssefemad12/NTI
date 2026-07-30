module b_to_grey_encoder_data_flow (
    input  wire [3:0] binary,
    output reg  [3:0] grey
);

assign grey[3] = binary[3];
assign grey[2] = binary[3] ^ binary[2];
assign grey[1] = binary[2] ^ binary[1];
assign grey[0] = binary[1] ^ binary[0];

endmodule
 