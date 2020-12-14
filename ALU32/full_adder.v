//The Full Adder module 
module full_adder(sum, cout, a, b, cin); 

input a, b, cin;
output sum, cout; 
wire w1,w2,w3;

xormodule xor1(w1,a,b);
xormodule xor2(sum,cin,w1); 	//Sum
andmodule and1(w2,w1,cin);
andmodule and2(w3,a,b);
ormodule or1(cout,w2,w3); 	  //Carry Out

endmodule


