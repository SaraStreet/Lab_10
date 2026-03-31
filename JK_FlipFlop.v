module JK_FlipFlop(
input J, K, clk,
output Q, 
output Q_NOT
);

//wire D, Q_inst, Q_inst_not; 

assign D = (J & Q_NOT) | ((~K) & Q); 

DFlipFlop JK_FlipFLop_jk(
    .D(D),
    .clk(clk),
    .Q(Q),
    .Q_NOT(Q_NOT)
);

 
  

endmodule 
