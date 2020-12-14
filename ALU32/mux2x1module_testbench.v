//The mux2x1 Module Testbench

`timescale 1ns/1ps

module mux2x1module_testbench();
reg x,y,sel;
wire result;

mux2x1module dut(.a(x), .b(y), .sel(sel), .result(result));
initial begin
		x =1'b0; y=1'b0; sel=1'b0;
		#0.1;
		x =1'b0; y=1'b0; sel=1'b1;
		#0.1;
		x =1'b0; y=1'b1; sel=1'b0;
		#0.1; 
		x =1'b0; y=1'b1; sel=1'b1;
		#0.1;
		x =1'b1; y=1'b0; sel=1'b0;
		#0.1;
		x =1'b1; y=1'b0; sel=1'b1;
		#0.1;
		x =1'b1; y=1'b1; sel=1'b0;
		#0.1;
		x =1'b1; y=1'b1; sel=1'b1;		
		#0.1;
	end
	
initial
	begin
		$monitor("Simulation Time = %g, x =%b, y =%b, sel = %b, result = %b", $time,x,y,sel,result);
	end
endmodule