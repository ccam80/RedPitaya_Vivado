onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dds_compiler_1_opt

do {wave.do}

view wave
view structure
view signals

do {dds_compiler_1.udo}

run -all

quit -force
