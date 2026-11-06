module Dflipflop(
    input data, clock,
    output reg Q, wire notQ
    );
    
    initial begin
       Q <= 0;
    end
    
    always @(posedge clock)
        Q <= data;
     
        
        assign notQ = ~Q;
endmodule
