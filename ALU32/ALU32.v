//The 32 Bit ALU
module ALU32(a,b,opcode,result, cout, overflow);

input [31:0]a;	
input [31:0]b; 
input [3:0]opcode;
output [31:0] result;
output cout;
output overflow;

wire w1, w2, w3, w4, w5; 
wire w6, w7, w8, w9, w10;
wire w11, w12, w13, w14, w15; 
wire w16, w17, w18, w19, w20;
wire w21, w22, w23, w24, w25; 
wire w26, w27, w28, w29, w30, w31;
	
wire slttofirstless;

/*for digit in range(0,32):
    print(f"ALU1_Bit ALU{digit+1}(.a(a[{digit}]),.b(b[{digit}]),.lessinp(1'b0),.cin(w{digit}),\n.ainv(opcode[3]),.binv(opcode[2]),\n.opcodeA(opcode[1]),.opcodeB(opcode[0]),\n.cout(w{digit+1}),.result(result[{digit}])\n);\n\n" )*/
	 
	 
ALU1_Bit ALU1(.a(a[0]),.b(b[0]),
							.lessinp(slttofirstless),.cin(opcode[2]),
							.ainv(opcode[3]),.binv(opcode[2]),
							.opcodeA(opcode[1]),.opcodeB(opcode[0]),
							.cout(w1),.result(result[0])
);

ALU1_Bit ALU2(.a(a[1]),.b(b[1]),
							.lessinp(1'b0),.cin(w1),
							.ainv(opcode[3]),.binv(opcode[2]),
							.opcodeA(opcode[1]),.opcodeB(opcode[0]),.
							cout(w2),.result(result[1])
);       

ALU1_Bit ALU3(.a(a[2]),.b(b[2]),
							.lessinp(1'b0),.cin(w2),
							.ainv(opcode[3]),.binv(opcode[2]),
							.opcodeA(opcode[1]),.opcodeB(opcode[0]),
							.cout(w3),.result(result[2])
);       

ALU1_Bit ALU4(.a(a[3]),.b(b[3]),
							.lessinp(1'b0),.cin(w3),
							.ainv(opcode[3]),.binv(opcode[2]),
							.opcodeA(opcode[1]),.opcodeB(opcode[0]),
							.cout(w4),.result(result[3])
);       

ALU1_Bit ALU5(.a(a[4]),.b(b[4]),
							.lessinp(1'b0),.cin(w4),
							.ainv(opcode[3]),.binv(opcode[2]),
							.opcodeA(opcode[1]),.opcodeB(opcode[0]),
							.cout(w5),.result(result[4])
);       

ALU1_Bit ALU6(.a(a[5]),.b(b[5]),
							.lessinp(1'b0),.cin(w5),
							.ainv(opcode[3]),.binv(opcode[2]),
							.opcodeA(opcode[1]),.opcodeB(opcode[0]),
							.cout(w6),.result(result[5])
);       

ALU1_Bit ALU7(.a(a[6]),.b(b[6]),
							.lessinp(1'b0),.cin(w6),
							.ainv(opcode[3]),.binv(opcode[2]),
							.opcodeA(opcode[1]),.opcodeB(opcode[0]),
							.cout(w7),.result(result[6])
);       

ALU1_Bit ALU8(.a(a[7]),.b(b[7]),
							.lessinp(1'b0),.cin(w7),
							.ainv(opcode[3]),.binv(opcode[2]),
							.opcodeA(opcode[1]),.opcodeB(opcode[0]),
							.cout(w8),.result(result[7])
);       

ALU1_Bit ALU9(.a(a[8]),.b(b[8]),
							.lessinp(1'b0),.cin(w8),
							.ainv(opcode[3]),.binv(opcode[2]),
							.opcodeA(opcode[1]),.opcodeB(opcode[0]),
							.cout(w9),.result(result[8])
);       

ALU1_Bit ALU10(.a(a[9]),.b(b[9]),
								.lessinp(1'b0),.cin(w9),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w10),.result(result[9])
);     

ALU1_Bit ALU11(.a(a[10]),.b(b[10]),
								.lessinp(1'b0),.cin(w10),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w11),.result(result[10])
); 

ALU1_Bit ALU12(.a(a[11]),.b(b[11]),
								.lessinp(1'b0),.cin(w11),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w12),.result(result[11])
);

ALU1_Bit ALU13(.a(a[12]),.b(b[12]),
								.lessinp(1'b0),.cin(w12),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w13),.result(result[12])
);

ALU1_Bit ALU14(.a(a[13]),.b(b[13]),
								.lessinp(1'b0),.cin(w13),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w14),.result(result[13])
);

ALU1_Bit ALU15(.a(a[14]),.b(b[14]),
								.lessinp(1'b0),.cin(w14),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w15),.result(result[14])
);

ALU1_Bit ALU16(.a(a[15]),.b(b[15]),
								.lessinp(1'b0),.cin(w15),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w16),.result(result[15])
);

ALU1_Bit ALU17(.a(a[16]),.b(b[16]),
								.lessinp(1'b0),.cin(w16),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w17),.result(result[16])
);

ALU1_Bit ALU18(.a(a[17]),.b(b[17]),
								.lessinp(1'b0),.cin(w17),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w18),.result(result[17])
);

ALU1_Bit ALU19(.a(a[18]),.b(b[18]),
								.lessinp(1'b0),.cin(w18),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w19),.result(result[18])
);

ALU1_Bit ALU20(.a(a[19]),.b(b[19]),
								.lessinp(1'b0),.cin(w19),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w20),.result(result[19])
);

ALU1_Bit ALU21(.a(a[20]),.b(b[20]),
								.lessinp(1'b0),.cin(w20),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w21),.result(result[20])
);

ALU1_Bit ALU22(.a(a[21]),.b(b[21]),
								.lessinp(1'b0),.cin(w21),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w22),.result(result[21])
);

ALU1_Bit ALU23(.a(a[22]),.b(b[22]),
								.lessinp(1'b0),.cin(w22),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w23),.result(result[22])
);

ALU1_Bit ALU24(.a(a[23]),.b(b[23]),
								.lessinp(1'b0),.cin(w23),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w24),.result(result[23])
);

ALU1_Bit ALU25(.a(a[24]),.b(b[24]),
								.lessinp(1'b0),.cin(w24),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w25),.result(result[24])
);

ALU1_Bit ALU26(.a(a[25]),.b(b[25]),
								.lessinp(1'b0),.cin(w25),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w26),.result(result[25])
);

ALU1_Bit ALU27(.a(a[26]),.b(b[26]),
								.lessinp(1'b0),.cin(w26),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w27),.result(result[26])
);

ALU1_Bit ALU28(.a(a[27]),.b(b[27]),
								.lessinp(1'b0),.cin(w27),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w28),.result(result[27])
);

ALU1_Bit ALU29(.a(a[28]),.b(b[28]),
								.lessinp(1'b0),.cin(w28),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w29),.result(result[28])
);

ALU1_Bit ALU30(.a(a[29]),.b(b[29]),
								.lessinp(1'b0),.cin(w29),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w30),.result(result[29])
);

ALU1_Bit ALU31(.a(a[30]),.b(b[30]),
								.lessinp(1'b0),.cin(w30),
								.ainv(opcode[3]),.binv(opcode[2]),
								.opcodeA(opcode[1]),.opcodeB(opcode[0]),
								.cout(w31), .result(result[30])
);

ALU1_Bit_MSB ALU32(.a(a[31]),.b(b[31]),
										.lessinp(1'b0),.cin(w31),
										.ainv(opcode[3]),.binv(opcode[2]),
										.opcodeA(opcode[1]),.opcodeB(opcode[0]),
										.cout(cout),.result(result[31]), 
										.overflow(overflow),.slt(slttofirstless)
);

endmodule
