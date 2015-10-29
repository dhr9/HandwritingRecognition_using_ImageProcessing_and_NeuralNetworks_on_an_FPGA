/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used solely      *
*     for design, simulation, implementation and creation of design files      *
*     limited to Xilinx devices or technologies. Use with non-Xilinx           *
*     devices or technologies is expressly prohibited and immediately          *
*     terminates your license.                                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY     *
*     FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY     *
*     PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE              *
*     IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS       *
*     MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY       *
*     CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY        *
*     RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY        *
*     DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE    *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A    *
*     PARTICULAR PURPOSE.                                                      *
*                                                                              *
*     Xilinx products are not intended for use in life support appliances,     *
*     devices, or systems.  Use in such applications are expressly             *
*     prohibited.                                                              *
*                                                                              *
*     (c) Copyright 1995-2015 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/

/*******************************************************************************
*     Generated from core with identifier: xilinx.com:ip:c_addsub:11.0         *
*                                                                              *
*     The Xilinx LogiCORE Adder Subtracter can create adders, subtracters,     *
*     and adders/subtracters that operate on signed or unsigned data. In       *
*     fabric, the module supports inputs ranging from 1 to 256 bits wide,      *
*     and outputs ranging from 1 to 258 bits wide.  I/O widths are family      *
*     dependent for dsp48 implementations.                                     *
*******************************************************************************/

// Interfaces:
//    a_intf
//    clk_intf
//    sclr_intf
//    ce_intf
//    b_intf
//    add_intf
//    c_in_intf
//    bypass_intf
//    sset_intf
//    sinit_intf
//    c_out_intf
//    s_intf

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
c_addsub_v11_0_0 your_instance_name (
  .a(a), // input [14 : 0] a
  .b(b), // input [14 : 0] b
  .clk(clk), // input clk
  .c_in(c_in), // input c_in
  .s(s) // output [15 : 0] s
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file c_addsub_v11_0_0.v when simulating
// the core, c_addsub_v11_0_0. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

