module DFF32 (input[31:0] data,input clock,output reg[31:0] q);
always @(negedge clock) q[31:0] <=data[31:0];
endmodule 