vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../../Vivado/2018.3/myworkplace/halfadder/halfadder.srcs/sources_1/new/halfadder.v" \
"../../../../cjm_fa_useip.srcs/sources_1/ip/halfadder_1/sim/halfadder_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

