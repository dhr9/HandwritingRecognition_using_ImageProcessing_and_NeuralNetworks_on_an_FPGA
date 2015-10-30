
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name OR -dir "D:/GitHub/Handwriting_recognition_using_neural_nets_on_FPGA/Xilinx_projects/OR/planAhead_run_1" -part xc3s100ecp132-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "D:/GitHub/Handwriting_recognition_using_neural_nets_on_FPGA/Xilinx_projects/OR/ThreeInputOrGate.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/GitHub/Handwriting_recognition_using_neural_nets_on_FPGA/Xilinx_projects/OR} }
set_property target_constrs_file "ThreeInputOrGate.ucf" [current_fileset -constrset]
add_files [list {ThreeInputOrGate.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "D:/GitHub/Handwriting_recognition_using_neural_nets_on_FPGA/Xilinx_projects/OR/ThreeInputOrGate.ncd"
if {[catch {read_twx -name results_1 -file "D:/GitHub/Handwriting_recognition_using_neural_nets_on_FPGA/Xilinx_projects/OR/ThreeInputOrGate.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"D:/GitHub/Handwriting_recognition_using_neural_nets_on_FPGA/Xilinx_projects/OR/ThreeInputOrGate.twx\": $eInfo"
}
