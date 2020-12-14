//The AND Module Testbench
`timescale 1ns/1ps

module andmodule_testbench();
reg a, b;
wire result;

andmodule dut(.a(a), .b(b), .result(result));

initial 
	begin
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
