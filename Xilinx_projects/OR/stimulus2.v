`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:13:23 10/25/2015
// Design Name:   ThreeInputExorGate
// Module Name:   D:/Xilinx_projects/OR/stimulus2.v
// Project Name:  OR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ThreeInputExorGate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stimulus2;

	// Inputs
	reg i1;
	reg i2;
	reg i3;
	// Outputs
	wire Output;

	// Instantiate the Unit Under Test (UUT)
	ThreeInputExorGate uut (
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		i1 = 0;
		i2 = 0;
		i3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
   end 
	genvar i;
	generate for (i = 0; i < 8 ; i = i+1)
		begin : Xor_block
			always $monitor("i=%d",i);
			always #1 i1 = ~i1;
			always #2 i2 = ~i2;
			always #3 i3 = ~i3;
		end
	endgenerate
	// Add stimulus here
/*		#50 i1 = 1;
		#50 i1 = 0; 
		#60 i3 = 1; */
		
  
	initial begin
	genvar j;
		generate for (j=0 ; j<8 ; j=j+1)begin
		$monitor("Output=%d, i1=%d, i2=%d, i3=%d\n",Output,i1,i2,i3);
		end endgenerate
		end
endmodule

