# 退出上次仿真
quit -sim

#
# Create work library
#
vlib work
#
# Compile sources
#
vlog  "../hdl/verilog/top.v"
vlog  "tb.v"
vlog  "E:/Xilinx/13.4/ISE_DS/ISE//verilog/src/glbl.v"
#
# Call vsim to invoke simulator
#
vsim -voptargs="+acc" -t 1ps  -L xilinxcorelib_ver -L unisims_ver -L unimacro_ver -L secureip -lib work work.tb glbl
#
# Source the wave do file
#
do {tb_wave.do}
#
# Set the window types
#
view wave
#
# Run simulation for this time
#
run 1us
#
# End
#
