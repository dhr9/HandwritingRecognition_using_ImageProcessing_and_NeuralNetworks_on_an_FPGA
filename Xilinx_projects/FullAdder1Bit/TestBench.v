`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:43:07 10/25/2015
// Design Name:   FullAdder1Bit
// Module Name:   D:/Xilinx_projects/FullAdder1Bit/TestBench.v
// Project Name:  FullAdder1Bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullAdder1Bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestBench;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	FullAdder1Bit uut (
		.A(A),
		.B(B),
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		//A = 0; B = 0; Cin = 0;
		//#50 A = 1; B = 1; Cin = 0;
		//#50 A = 1; B = 1; Cin = 1;
		A = 1'b0;
		B = 1'b0;
		Cin = 1'b0;
		#16 $finish;
	end
	always #8 Cin = ~Cin;
	always #4 A = ~A;
	always #2 B = ~B;
	
	always @ (Sum,Cout)
		$display( "time =%0t \tINPUT VALUES: \t A =%b B =%b CIN =%b \t output value SUM=%b COUT =%b ",$time,A,B,Cin,Sum,Cout);
		// Wait 100 ns for global reset to finish
		//always #100;
      
		// Add stimulus here

	
endmodule
