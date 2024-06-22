onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib fifo_16x8_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fifo_16x8.udo}

run 1000ns

quit -force
