//The mux2x1 Module

module mux2x1module(result, a, b, sel);
input a,b,sel;
output result;

assign result = (sel==0 ? a : b); //Ternary Operator ? :

endmodule


/*
The 2X1 MUX Truth Table
sel      a     b
0        1     x	
1         x    1	 
*/