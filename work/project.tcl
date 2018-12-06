set projDir "C:/Users/user/Documents/mojo/demo/work/planAhead"
set projName "demo"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/user/Documents/mojo/demo/work/verilog/mojo_top_0.v" "C:/Users/user/Documents/mojo/demo/work/verilog/reset_conditioner_1.v" "C:/Users/user/Documents/mojo/demo/work/verilog/vga_2.v" "C:/Users/user/Documents/mojo/demo/work/verilog/menu_3.v" "C:/Users/user/Documents/mojo/demo/work/verilog/level1_4.v" "C:/Users/user/Documents/mojo/demo/work/verilog/level2_5.v" "C:/Users/user/Documents/mojo/demo/work/verilog/level6_6.v" "C:/Users/user/Documents/mojo/demo/work/verilog/level4_7.v" "C:/Users/user/Documents/mojo/demo/work/verilog/level5_8.v" "C:/Users/user/Documents/mojo/demo/work/verilog/selection_square_9.v" "C:/Users/user/Documents/mojo/demo/work/verilog/ball_10.v" "C:/Users/user/Documents/mojo/demo/work/verilog/spike_11.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/expanding_square_15.v" "C:/Users/user/Documents/mojo/demo/work/verilog/grid_16.v" "C:/Users/user/Documents/mojo/demo/work/verilog/ball_10.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/grid_16.v" "C:/Users/user/Documents/mojo/demo/work/verilog/ball_10.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/expanding_square_15.v" "C:/Users/user/Documents/mojo/demo/work/verilog/grid_16.v" "C:/Users/user/Documents/mojo/demo/work/verilog/ball_10.v" "C:/Users/user/Documents/mojo/demo/work/verilog/ball_10.v" "C:/Users/user/Documents/mojo/demo/work/verilog/ball_10.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/expanding_square_15.v" "C:/Users/user/Documents/mojo/demo/work/verilog/expanding_square_15.v" "C:/Users/user/Documents/mojo/demo/work/verilog/expanding_square_15.v" "C:/Users/user/Documents/mojo/demo/work/verilog/grid_16.v" "C:/Users/user/Documents/mojo/demo/work/verilog/ball_10.v" "C:/Users/user/Documents/mojo/demo/work/verilog/ball_10.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/star_12.v" "C:/Users/user/Documents/mojo/demo/work/verilog/grid_16.v" "C:/Users/user/Documents/mojo/demo/work/verilog/umovingsquare_56.v" "C:/Users/user/Documents/mojo/demo/work/verilog/alu_57.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_58.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/umovingsquare_64.v" "C:/Users/user/Documents/mojo/demo/work/verilog/umovingsquare_64.v" "C:/Users/user/Documents/mojo/demo/work/verilog/alu_57.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_58.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/umovingsquare_64.v" "C:/Users/user/Documents/mojo/demo/work/verilog/umovingsquare_64.v" "C:/Users/user/Documents/mojo/demo/work/verilog/alu_57.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_58.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/umovingsquare_64.v" "C:/Users/user/Documents/mojo/demo/work/verilog/umovingsquare_64.v" "C:/Users/user/Documents/mojo/demo/work/verilog/alu_57.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_58.v" "C:/Users/user/Documents/mojo/demo/work/verilog/alu_57.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_58.v" "C:/Users/user/Documents/mojo/demo/work/verilog/alu_57.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_58.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/umovingsquare_64.v" "C:/Users/user/Documents/mojo/demo/work/verilog/umovingsquare_64.v" "C:/Users/user/Documents/mojo/demo/work/verilog/alu_57.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_58.v" "C:/Users/user/Documents/mojo/demo/work/verilog/alu_57.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_58.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/singleunmovingsquare_59.v" "C:/Users/user/Documents/mojo/demo/work/verilog/umovingsquare_64.v" "C:/Users/user/Documents/mojo/demo/work/verilog/umovingsquare_64.v" "C:/Users/user/Documents/mojo/demo/work/verilog/adder_116.v" "C:/Users/user/Documents/mojo/demo/work/verilog/boolean_117.v" "C:/Users/user/Documents/mojo/demo/work/verilog/compare_118.v" "C:/Users/user/Documents/mojo/demo/work/verilog/shifter16_119.v" "C:/Users/user/Documents/mojo/demo/work/verilog/adder_116.v" "C:/Users/user/Documents/mojo/demo/work/verilog/boolean_117.v" "C:/Users/user/Documents/mojo/demo/work/verilog/compare_118.v" "C:/Users/user/Documents/mojo/demo/work/verilog/shifter16_119.v" "C:/Users/user/Documents/mojo/demo/work/verilog/adder_116.v" "C:/Users/user/Documents/mojo/demo/work/verilog/boolean_117.v" "C:/Users/user/Documents/mojo/demo/work/verilog/compare_118.v" "C:/Users/user/Documents/mojo/demo/work/verilog/shifter16_119.v" "C:/Users/user/Documents/mojo/demo/work/verilog/adder_116.v" "C:/Users/user/Documents/mojo/demo/work/verilog/boolean_117.v" "C:/Users/user/Documents/mojo/demo/work/verilog/compare_118.v" "C:/Users/user/Documents/mojo/demo/work/verilog/shifter16_119.v" "C:/Users/user/Documents/mojo/demo/work/verilog/adder_116.v" "C:/Users/user/Documents/mojo/demo/work/verilog/boolean_117.v" "C:/Users/user/Documents/mojo/demo/work/verilog/compare_118.v" "C:/Users/user/Documents/mojo/demo/work/verilog/shifter16_119.v" "C:/Users/user/Documents/mojo/demo/work/verilog/adder_116.v" "C:/Users/user/Documents/mojo/demo/work/verilog/boolean_117.v" "C:/Users/user/Documents/mojo/demo/work/verilog/compare_118.v" "C:/Users/user/Documents/mojo/demo/work/verilog/shifter16_119.v" "C:/Users/user/Documents/mojo/demo/work/verilog/adder_116.v" "C:/Users/user/Documents/mojo/demo/work/verilog/boolean_117.v" "C:/Users/user/Documents/mojo/demo/work/verilog/compare_118.v" "C:/Users/user/Documents/mojo/demo/work/verilog/shifter16_119.v" "C:/Users/user/Documents/mojo/demo/work/verilog/adder_116.v" "C:/Users/user/Documents/mojo/demo/work/verilog/boolean_117.v" "C:/Users/user/Documents/mojo/demo/work/verilog/compare_118.v" "C:/Users/user/Documents/mojo/demo/work/verilog/shifter16_119.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/user/Documents/mojo/demo/constraint/custom.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
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
