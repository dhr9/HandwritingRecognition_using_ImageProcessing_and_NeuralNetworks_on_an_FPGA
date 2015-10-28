`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:21:34 10/24/2015 
// Design Name: 
// Module Name:    ThreeInputOrGate 
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
module ThreeInputOrGate(
    input i1,
    input i2,
    input i3,
    output gateOutput
    );

or(gateOutput, i1 , i2 , i3);
endmodule
