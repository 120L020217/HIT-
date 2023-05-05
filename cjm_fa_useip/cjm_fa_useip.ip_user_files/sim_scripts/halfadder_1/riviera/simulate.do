onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+halfadder_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.halfadder_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {halfadder_1.udo}

run -all

endsim

quit -force
