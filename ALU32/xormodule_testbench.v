//The XOR Module Testbench

`timescale 1ns/1ps

module xormodule_testbench();
reg a,b;
wire result;

xormodule dut(.result(result), .a(a), .b(b));
initial begin
		a =1'b0; b=1'b0;
		#0.1;
		a =1'b0; b=1'b1;
		#0.1;
		a =1'b1; b=1'b0;
		#0.1;
		a =1'b1; b=1'b1;
		#0.1;
	end
	
initial
	begin
		$monitor("Simulation Time = %g, a =%b, b =%b, result =%b", $time,a,b,result);
	end
endmodule