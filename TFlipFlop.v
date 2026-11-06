
module TFlipFlop(
    input T, clock,
    output Q, notQ
    );
    
    JKFlipFlop flopper (
        .J(T),
        .K(T),
        .clock(clock),
        .Q(Q),
        .notQ(notQ)
    );
    
endmodule
