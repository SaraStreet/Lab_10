module top(
    input [3:0] sw, 
    input btnC, 
    output [5:0]led
    );
    
    
  
    DFlipFlop DFlipFlop_inst(
    .D(sw[0]),
    .clk(btnC),
    .Q(led[0]),
    .Q_NOT(led[1])
    );
    
    
    JK_FlipFlop JK_FlipFlop_inst(
    .J(sw[1]),
    .K(sw[2]),
    .clk(btnC),
    .Q(led[2]),
    .Q_NOT(led[3])
   
   );
    
    TFlipFlop TFlipFlop_inst(
    .T(sw[3]),
    .clk(btnC),
    .Q(led[4]),
    .Q_NOT(led[5])
    
    );
    
    
endmodule
