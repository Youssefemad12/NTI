module controller (
    input  wire       zero,
    input  wire [2:0] phase,
    input  wire [2:0] opcode,
    output reg        sel,
    output reg        rd,
    output reg        ld_ir,
    output reg        halt,
    output reg        inc_pc,
    output reg        ld_ac,
    output reg        ld_pc,
    output reg        wr,
    output reg        data_e
);

    localparam HLT = 3'b000, SKZ = 3'b001, ADD = 3'b010, AND = 3'b011,
               XOR = 3'b100, LDA = 3'b101, STO = 3'b110, JMP = 3'b111;


    localparam INST_ADDR  = 3'd0, INST_FETCH = 3'd1, INST_LOAD  = 3'd2, IDLE       = 3'd3,
               OP_ADDR    = 3'd4, OP_FETCH   = 3'd5, ALU_OP     = 3'd6, STORE      = 3'd7;

    always @(*) begin
        sel    = 1'b0;
        rd     = 1'b0;
        ld_ir  = 1'b0;
        halt   = 1'b0;
        inc_pc = 1'b0;
        ld_ac  = 1'b0;
        ld_pc  = 1'b0;
        wr     = 1'b0;
        data_e = 1'b0;
        case (phase)
            INST_ADDR: begin
                sel = 1'b1;
            end
            INST_FETCH: begin
                sel = 1'b1;
                rd  = 1'b1;
            end
            INST_LOAD: begin
                sel   = 1'b1;
                rd    = 1'b1;
                ld_ir = 1'b1;
            end
            IDLE: begin
                sel   = 1'b1;
                rd    = 1'b1;
                ld_ir = 1'b1;
            end
            OP_ADDR: begin
                inc_pc = 1'b1;
                halt   = (opcode == HLT);
            end
            OP_FETCH: begin
                rd = (opcode == ADD) ||(opcode == AND) ||(opcode == XOR) || (opcode == LDA);
            end
            ALU_OP: begin
                rd     = (opcode == ADD) ||(opcode == AND) ||(opcode == XOR) || (opcode == LDA);
                inc_pc = (opcode == SKZ) && zero;
                ld_pc  = (opcode == JMP);
                data_e = (opcode == STO);
            end
            STORE: begin
                rd     = (opcode == ADD) ||(opcode == AND) ||(opcode == XOR) || (opcode == LDA);
                ld_ac  = (opcode == ADD) ||(opcode == AND) ||(opcode == XOR) || (opcode == LDA);
                ld_pc  = (opcode == JMP);
                wr     = (opcode == STO);
                data_e = (opcode == STO);
            end
        endcase
    end

endmodule
