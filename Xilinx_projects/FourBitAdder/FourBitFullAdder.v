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
    input [0:3]A,B,
    output [0:3]Sum,
    output Cout
    );
/*/*wire Cin;
assign Cin = 1'b0;*/ 
wire carry0;
wire carry1;
wire carry2;
 
FullAdder1Bit s1	(.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(carry0) );
FullAdder1Bit s2	(.A(A[1]), .B(B[1]), .Cin(carry0), .Sum(Sum[1]), .Cout(carry1) );
FullAdder1Bit s3	(.A(A[2]), .B(B[2]), .Cin(carry1), .Sum(Sum[2]), .Cout(carry2) );
FullAdder1Bit s4	(.A(A[3]), .B(B[3]), .Cin(carry2), .Sum(Sum[3]),.Cout(Cout) );
endmodule
