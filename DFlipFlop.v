module DFlipFlop(
input D, clk, btnC,
output reg Q, 
output Q_NOT
);




initial begin 
    Q = 1'b0; 
 end 
 
always @(posedge clk)begin
    Q <= D;
end 
 
assign Q_NOT = ~Q; 
  

endmodule 
