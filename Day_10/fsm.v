module fsm (
    input  wire clk,rst,
    input  wire a,
    input  wire b,
    output reg  y0,
    output reg  y1
);

localparam s0 = 00,
           s1 = 01,
           s2 = 10;

reg [1:0] cs,ns;

always @(posedge clk or negedge rst ) begin
    if (!rst) begin
        cs <= s0;
    end else begin
        cs <= ns;
    end
end

always @(*) begin
    y1 = 0;
    y0 = 0;
    case (cs)
    s0: begin
        y1 = 1;
        if (!a) begin
            ns = s0;
        end else if (a && b) begin
            y0 = 1;
            ns = s2;
        end else if (a && (~b)) begin
            ns = s1;
        end
    end
    s1:begin
        y1 = 1;
        if (!a) begin
            ns = s1;
        end else begin
            ns = s0;
        end
    end
    s2:begin
        ns = s0;
    end
    default : ns = s0;
    endcase
end



endmodule
