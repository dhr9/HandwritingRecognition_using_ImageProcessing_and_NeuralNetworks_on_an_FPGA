//
// PlanAhead(TM)
// rundef.js: a PlanAhead-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
//

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
  PathVal = "C:/Xilinx/14.7/ISE_DS/EDK/bin/nt64;C:/Xilinx/14.7/ISE_DS/EDK/lib/nt64;C:/Xilinx/14.7/ISE_DS/ISE/bin/nt64;C:/Xilinx/14.7/ISE_DS/ISE/lib/nt64;C:/Xilinx/14.7/ISE_DS/common/bin/nt64;C:/Xilinx/14.7/ISE_DS/common/lib/nt64;C:/Xilinx/14.7/ISE_DS/PlanAhead/bin;";
} else {
  PathVal = "C:/Xilinx/14.7/ISE_DS/EDK/bin/nt64;C:/Xilinx/14.7/ISE_DS/EDK/lib/nt64;C:/Xilinx/14.7/ISE_DS/ISE/bin/nt64;C:/Xilinx/14.7/ISE_DS/ISE/lib/nt64;C:/Xilinx/14.7/ISE_DS/common/bin/nt64;C:/Xilinx/14.7/ISE_DS/common/lib/nt64;C:/Xilinx/14.7/ISE_DS/PlanAhead/bin;" + PathVal;
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


ISEStep( "ngdbuild",
         "-intstyle ise -p xc3s100ecp132-4 -dd _ngo -uc \"FullAdder1Bit.ucf\" \"FullAdder1Bit.edf\"" );
ISEStep( "map",
         "-intstyle pa -w  -ntd \"FullAdder1Bit.ngd\"" );
ISEStep( "par",
         "-intstyle pa \"FullAdder1Bit.ncd\" -w \"FullAdder1Bit_routed.ncd\" -ol high" );
ISEStep( "trce",
         "-intstyle ise -o \"FullAdder1Bit.twr\" -v 3 -l 30 -nodatasheet -fastpaths \"FullAdder1Bit_routed.ncd\" \"FullAdder1Bit.pcf\"" );
ISEStep( "xdl",
         "-secure -ncd2xdl -nopips \"FullAdder1Bit_routed.ncd\" \"FullAdder1Bit_routed.xdl\"" );



function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
