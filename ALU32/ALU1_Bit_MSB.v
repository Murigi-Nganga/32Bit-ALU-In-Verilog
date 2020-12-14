//The 1Bit MSB Arithmetic Logic Unit

module ALU1_Bit_MSB(a,b,lessinp,cin,ainv,binv,opcodeA,opcodeB,cout,result, overflow,slt); 				//"Whole opcode" is from ainv, binv, and 2-bit opcode

input a,b,lessinp,cin,ainv,binv,opcodeA,opcodeB;
output cout, result,overflow,slt;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9;
//AND - 0000
//OR - 0001
//XOR - 0010
//ADD - 0011
//SUBTRACT - 0111 (Uses Adder)     
//SLT - 0110 (Use Mux to choose between XOR and SLT)
//NOR - 1100 (Uses AND)
notmodule not1(w1, a);
notmodule not2(w2, b);   

mux2x1module smallmux1(w3, a, w1,ainv); 		//If ainv=0 take a																	//module mux2x1module(result, x, y, sel);
mux2x1module smallmux2(w4, b, w2,binv);     //If binv=0 take b

andmodule and1(w5, w3, w4); 										//AND      or     NOR Operation
ormodule or1(w6, w3, w4);    										//OR
xormodule xor1(w7, w3, w4);    									//XOR

full_adder full_adder1(.sum(slt), .cout(cout), .a(w3), .b(w4), .cin(cin));    //Sum is in w8  			//module full_adder(sum, cout, a, b, cin);
//The above computes for addition or subtraction.

mux2x1module smallmux3(w9, w7, lessinp, binv);
mux4x1module largemux1(.result(result), .inp0(w5), .inp1(w6), .inp2(w9), .inp3(slt), .sel1(opcodeA), .sel0(opcodeB)); 
xormodule xor2(overflow, cin, cout);

//module mux4x1module(result, inp0, inp1, inp2, inp3, sel1, sel0);
endmodule
