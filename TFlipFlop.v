module TFlipFlop(
input T,clk,
output Q,
output Q_NOT
);

//wire D, Q_inst, Q_inst_not; 

assign D = T ? Q_NOT : Q; 

DFlipFlop DFlopFlop_T(
    .D(D),
    .clk(clk),
    .Q(Q),
    .Q_NOT(Q_NOT)

);



endmodule 
