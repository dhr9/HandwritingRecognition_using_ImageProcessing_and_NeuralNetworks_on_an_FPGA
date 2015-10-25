`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:40:20 10/25/2015 
// Design Name: 
// Module Name:    FullAdder1Bit 
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
module FullAdder1Bit(
    input A,B,Cin,
    output Sum,Cout
    );
assign Sum = A ^ B ^ Cin ;
assign Cout= A & B | B & Cin | Cin & A ;
endmodule
