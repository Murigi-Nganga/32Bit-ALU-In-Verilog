//The 1 Bit ALU Testbench
`timescale 1ns/1ps
module ALU1_Bit_testbench();
reg a,b,lessinp,cin,ainv,binv,opcodeA,opcodeB;
wire cout,result;

ALU1_Bit dut(a,b,lessinp,cin,ainv,binv,opcodeA,opcodeB,cout,result); 

initial begin
//Expected output is in form of {cout, result}
a = 1'b1; b = 1'b0; lessinp = 1'b0; cin = 1'b0; ainv = 1'b0; binv = 1'b0; opcodeA = 1'b0; opcodeB = 1'b0;//AND  Expected Output = {0,0}---correct
#0.1;
a = 1'b1; b = 1'b0; lessinp = 1'b0; cin = 1'b0; ainv = 1'b0; binv = 1'b0; opcodeA = 1'b0; opcodeB = 1'b1;//OR    Expected Output = {0,1}---correct
#0.1;
a = 1'b0; b = 1'b1; lessinp = 1'b0; cin = 1'b0; ainv = 1'b0; binv = 1'b0; opcodeA = 1'b1; opcodeB = 1'b0; //XOR  Expected Output = {0,1}---correct
#0.1;
a = 1'b1; b = 1'b0; lessinp = 1'b0; cin = 1'b1; ainv = 1'b0; binv = 1'b0; opcodeA = 1'b1; opcodeB = 1'b1;//ADD    Expected Output = {1,0}---correct
#0.1;
a = 1'b0; b = 1'b1; lessinp = 1'b0; cin = 1'b0; ainv = 1'b0; binv = 1'b1; opcodeA = 1'b1; opcodeB = 1'b0; //SLT     Expected Output = {0,0}---correct
#0.1;
a = 1'b1; b = 1'b1; lessinp = 1'b0; cin = 1'b1; ainv = 1'b0; binv = 1'b1; opcodeA = 1'b1; opcodeB = 1'b1; //SUB    Expected Output = {1,0}---correct
#0.1;
a = 1'b0; b = 1'b1; lessinp = 1'b0; cin = 1'b0; ainv = 1'b1; binv = 1'b1; opcodeA = 1'b0; opcodeB = 1'b0; //NOR   Expected Output = {0,0}---correct
#0.1;
end
 
 
initial
begin
$monitor("Simulation Time = %g, a=%1b, b=%1b, lessinp=%1b, cin=%1b, ainv =%1b, binv=%1b, opcodeA=%1b, opcodeB=%1b, cout=%1b, result=%1b", $time, a,b,lessinp,cin,ainv,binv,opcodeA,opcodeB,cout,result);
end
 
endmodule
