module if2 (
    input  wire cpu_overheated,
    output reg  shut_off_computer,
    input  wire arrived,
    input  wire gas_tank_empty,
    output reg  keep_driving  );

    always @(*) begin
        keep_driving = 0;
         shut_off_computer = 0;
        if (cpu_overheated)
           shut_off_computer = 1;
        if (~arrived)
           keep_driving = ~gas_tank_empty;
    end

endmodule
