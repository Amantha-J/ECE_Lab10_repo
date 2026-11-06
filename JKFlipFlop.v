
module JKFlipFlop(
    input J, K, clock,
    output Q, notQ
    );
        
//        wire QnotOutput;
//        wire QOutput;
        
        wire D = ((J&notQ) + ((~K)&Q));
        
        Dflipflop flooper (
          .data(D),
          .clock(clock),
          .Q(Q),
          .notQ(notQ)
        );
   
endmodule
