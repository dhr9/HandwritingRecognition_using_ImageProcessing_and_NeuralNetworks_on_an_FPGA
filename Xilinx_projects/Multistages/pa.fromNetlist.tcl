
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Multistages -dir "D:/GitHub/Handwriting_recognition_using_neural_nets_on_FPGA/Xilinx_projects/Multistages/planAhead_run_1" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/GitHub/Handwriting_recognition_using_neural_nets_on_FPGA/Xilinx_projects/Multistages/Multistages.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/GitHub/Handwriting_recognition_using_neural_nets_on_FPGA/Xilinx_projects/Multistages} }
set_property target_constrs_file "Multistages.ucf" [current_fileset -constrset]
add_files [list {Multistages.ucf}] -fileset [get_property constrset [current_run]]
link_design
