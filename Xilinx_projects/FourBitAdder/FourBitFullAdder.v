`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:30:43 10/25/2015 
// Design Name: 
// Module Name:    FourBitFullAdder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FourBitFullAdder(
    input [3:0]A,B,
	 input Cin,
    output [3:0]Sum,
    output Cout
    );
wire carry0;
wire carry1;
wire carry2;
 
FullAdder1Bit s1	(
		.A(A[0]), 
		.B(B[0]), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(carry0),
	);
FullAdder1Bit s2	(
		.A(A[1]), 
		.B(B[1]), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(carry1),
	);
FullAdder1Bit s3	(
		.A(A[2]), 
		.B(B[2]), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(carry2),
	);
FullAdder1Bit s4	(
		.A(A[3]), 
		.B(B[3]), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(Cout),
	);
endmodule
