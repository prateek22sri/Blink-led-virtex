# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xcvu9p-flga2104-2L-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/prateek/vivado/led_vcu/led_vcu.cache/wt [current_project]
set_property parent.project_path /home/prateek/vivado/led_vcu/led_vcu.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:vcu118:part0:2.0 [current_project]
set_property ip_output_repo /home/prateek/vivado/led_vcu/led_vcu.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /home/prateek/vivado/led_vcu/led_vcu.srcs/sources_1/new/led.v
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/prateek/vivado/led_vcu/led_vcu.srcs/constrs_1/new/led_constraint.xdc
set_property used_in_implementation false [get_files /home/prateek/vivado/led_vcu/led_vcu.srcs/constrs_1/new/led_constraint.xdc]


synth_design -top led -part xcvu9p-flga2104-2L-e


write_checkpoint -force -noxdef led.dcp

catch { report_utilization -file led_utilization_synth.rpt -pb led_utilization_synth.pb }
