//The NOT Module Testbench

`timescale 1ns/1ps

module notmodule_testbench();
reg a;
wire result;

notmodule dut(.result(result), .a(a));
initial begin
		a =1'b0;
		#0.2;
		a =1'b1;
		#0.2;
	end
	
initial
	begin
		$monitor("Simulation Time = %g, a =%b, result =%b", $time,a,result);
	end
endmodule