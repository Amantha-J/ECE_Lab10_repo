

module top(
    input [3:0]sw,
    input btnC,
    output [5:0]led
    );
    
    Dflipflop dflop(
        .data(sw[0]),
        .clock(btnC),
        .Q(led[0]),
        .notQ(led[1])
    );
    
    JKFlipFlop JustKidding (
        .J(sw[1]),
        .K(sw[2]),
        .clock(btnC),
        .Q(led[2]),
        .notQ(led[3])
    );
    
    TFlipFlop topper( 
        .T(sw[3]),
        .clock(btnC),
        .Q(led[4]),
        .notQ(led[5])
    );
    
    
endmodule
