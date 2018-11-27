set projDir "/home/emrys/mojo/1D_version_1/work/planAhead"
set projName "1D_version_1"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/home/emrys/mojo/1D_version_1/work/verilog/mojo_top_0.v" "/home/emrys/mojo/1D_version_1/work/verilog/reset_conditioner_1.v" "/home/emrys/mojo/1D_version_1/work/verilog/edge_detector_2.v" "/home/emrys/mojo/1D_version_1/work/verilog/edge_detector_2.v" "/home/emrys/mojo/1D_version_1/work/verilog/edge_detector_2.v" "/home/emrys/mojo/1D_version_1/work/verilog/edge_detector_2.v" "/home/emrys/mojo/1D_version_1/work/verilog/edge_detector_2.v" "/home/emrys/mojo/1D_version_1/work/verilog/edge_detector_2.v" "/home/emrys/mojo/1D_version_1/work/verilog/edge_detector_2.v" "/home/emrys/mojo/1D_version_1/work/verilog/multi_seven_seg_9.v" "/home/emrys/mojo/1D_version_1/work/verilog/beta_10.v" "/home/emrys/mojo/1D_version_1/work/verilog/counter_11.v" "/home/emrys/mojo/1D_version_1/work/verilog/seven_seg_12.v" "/home/emrys/mojo/1D_version_1/work/verilog/decoder_13.v" "/home/emrys/mojo/1D_version_1/work/verilog/buttons_mux_14.v" "/home/emrys/mojo/1D_version_1/work/verilog/levels_mux_15.v" "/home/emrys/mojo/1D_version_1/work/verilog/alu_16.v" "/home/emrys/mojo/1D_version_1/work/verilog/register_17.v" "/home/emrys/mojo/1D_version_1/work/verilog/register_17.v" "/home/emrys/mojo/1D_version_1/work/verilog/register_17.v" "/home/emrys/mojo/1D_version_1/work/verilog/add_20.v" "/home/emrys/mojo/1D_version_1/work/verilog/cmp_21.v" "/home/emrys/mojo/1D_version_1/work/verilog/bol_22.v" "/home/emrys/mojo/1D_version_1/work/verilog/sft_23.v" "/home/emrys/mojo/1D_version_1/work/verilog/mul_24.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "/home/emrys/mojo/1D_version_1/constraint/custom.ucf" "/home/emrys/Desktop/mojo-ide-B1.3.6/library/components/mojo.ucf" "/home/emrys/Desktop/mojo-ide-B1.3.6/library/components/io_shield.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
