vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../SoC_06_17_NEWIP.gen/sources_1/ip/top_fndcontrol2_0/src/btn_in.v" \
"../../../../SoC_06_17_NEWIP.gen/sources_1/ip/top_fndcontrol2_0/src/clockdivider.v" \
"../../../../SoC_06_17_NEWIP.gen/sources_1/ip/top_fndcontrol2_0/src/counter.v" \
"../../../../SoC_06_17_NEWIP.gen/sources_1/ip/top_fndcontrol2_0/src/datamux4x1.v" \
"../../../../SoC_06_17_NEWIP.gen/sources_1/ip/top_fndcontrol2_0/src/fnddecoder.v" \
"../../../../SoC_06_17_NEWIP.gen/sources_1/ip/top_fndcontrol2_0/src/mux4x1.v" \
"../../../../SoC_06_17_NEWIP.gen/sources_1/ip/top_fndcontrol2_0/src/spi_master.v" \
"../../../../SoC_06_17_NEWIP.gen/sources_1/ip/top_fndcontrol2_0/src/spi_slave.v" \
"../../../../SoC_06_17_NEWIP.gen/sources_1/ip/top_fndcontrol2_0/src/spi_task.v" \
"../../../../SoC_06_17_NEWIP.gen/sources_1/ip/top_fndcontrol2_0/src/top_fndcontrol2.v" \
"../../../../SoC_06_17_NEWIP.gen/sources_1/ip/top_fndcontrol2_0/sim/top_fndcontrol2_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

