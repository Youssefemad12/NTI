module light_chaser (
    input  wire      clk,
    input  wire      rst,
    input  wire      hold,
    output reg [3:0] sr
);

always @(posedge clk or negedge rst) begin
        if(!rst) begin
            sr <= 4'b0111;
        end else if (hold) begin
            sr[0] <= sr[1];
            sr[1] <= sr[2];
            sr[2] <= sr[3];
            sr[3] <= sr[0];
        end else begin
            sr <= sr;
        end
end


endmodule
