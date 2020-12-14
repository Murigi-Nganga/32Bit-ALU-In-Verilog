//The mux4x1 Module

module mux4x1module(result, inp0, inp1, inp2, inp3, sel1, sel0);
input inp0,inp1,inp2,inp3,sel1,sel0;
output result;


assign result = ((sel1==0)&&(sel0==0)) ? inp0 : 
						   ((sel1==0)&&(sel0==1))? inp1 :
						   ((sel1==1)&&(sel0==0)) ? inp2 : inp3;

endmodule


/*
The 4X1 MUX Truth Table
sel1					sel2					inp0					inp1					inp2				inp3
0						  0                x                   x                   x                 1
0						  1                x                   x                   1                 x
1						  0                x                   1                   x                 x
1						  1                1                   x                   x                 x
*/