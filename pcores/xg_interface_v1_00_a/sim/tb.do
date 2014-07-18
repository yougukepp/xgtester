# quit last sim
quit -sim

# Create work library
vlib work

# Compile sources
vlog  "../hdl/verilog/gtx_wrapper_gtx.v"
vlog  "xaui.v"
vlog  "data_path/small_ram_v1.v"
vlog  "../hdl/verilog/tx_sync.v"
vlog  "../hdl/verilog/small_fifo_v3.v"
vlog  "../hdl/verilog/small_async_fifo.v"
vlog  "../hdl/verilog/gtx_wrapper.v"
vlog  "../hdl/verilog/chanbond_monitor.v"
vlog  "xgmac.v"
vlog  "data_path/small_ram_loop_v1.v"
vlog  "../hdl/verilog/xaui_block.v"
vlog  "../hdl/verilog/tx_queue.v"
vlog  "../hdl/verilog/rx_queue.v"
vlog  "../hdl/verilog/fallthrough_small_fifo_v2.v"
vlog  "data_path/time_stamp_counter.v"
vlog  "data_path/pkt_count_tx.v"
vlog  "data_path/output_port_lookup.v"
vlog  "data_path/nf10_input_arbiter.v"
vlog  "data_path/bram_output_queues.v"
vlog  "../hdl/verilog/xgmac_top.v"
vlog  "../hdl/verilog/xaui_top.v"
vlog  "../hdl/verilog/nf10_axis_converter_tx.v"
vlog  "../hdl/verilog/nf10_axis_converter_rx.v"
vlog  "top/clk_module.v"
vlog  "data_path/data_path.v"
vlog  "../hdl/verilog/xg_interface.v"
vlog  "top/top.v"
vlog  "tb.v"
vlog  "E:/Xilinx/13.4/ISE_DS/ISE//verilog/src/glbl.v"

# Call vsim to invoke simulator
vsim -voptargs="+acc" -t 1ps  -L xilinxcorelib_ver -L unisims_ver -L unimacro_ver -L secureip -lib work work.tb glbl

# Source the wave do file
do {tb_wave.do}

# Set the window types
view wave

# Run simulation for this time
run 100us
