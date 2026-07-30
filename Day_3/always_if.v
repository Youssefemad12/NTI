module always_if(
    input  wire a,
    input  wire b,
    input  wire sel_b1,
    input  wire sel_b2,
    output wire out_assign,
    output reg  out_always   ); 

    always@(*) begin
        if (sel_b2 && sel_b1) begin
           out_always = b; 
        end else begin
           out_always = a; 
        end
        
    end
    
    assign out_assign = (sel_b2 && sel_b1) ? b : a;
    
endmodule
