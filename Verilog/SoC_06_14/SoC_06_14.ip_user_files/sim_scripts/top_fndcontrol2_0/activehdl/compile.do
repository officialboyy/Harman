transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib \
"../../../../SoC_06_14.gen/sources_1/ip/top_fndcontrol2_0/src/clockdivider.v" \
"../../../../SoC_06_14.gen/sources_1/ip/top_fndcontrol2_0/src/counter.v" \
"../../../../SoC_06_14.gen/sources_1/ip/top_fndcontrol2_0/src/datamux4x1.v" \
"../../../../SoC_06_14.gen/sources_1/ip/top_fndcontrol2_0/src/fnddecoder.v" \
"../../../../SoC_06_14.gen/sources_1/ip/top_fndcontrol2_0/src/mux4x1.v" \
"../../../../SoC_06_14.gen/sources_1/ip/top_fndcontrol2_0/src/spi_task.v" \
"../../../../SoC_06_14.gen/sources_1/ip/top_fndcontrol2_0/src/top_fndcontrol2.v" \
"../../../../SoC_06_14.gen/sources_1/ip/top_fndcontrol2_0/sim/top_fndcontrol2_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

