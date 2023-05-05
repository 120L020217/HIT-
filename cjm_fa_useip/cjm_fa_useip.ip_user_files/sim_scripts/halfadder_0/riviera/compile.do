vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../../Vivado/2018.3/myworkplace/halfadder/halfadder.srcs/sources_1/new/halfadder.v" \
"../../../../cjm_fa_useip.srcs/sources_1/ip/halfadder_0/sim/halfadder_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

