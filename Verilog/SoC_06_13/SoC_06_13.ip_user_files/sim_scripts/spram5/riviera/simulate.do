transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+spram5  -L xpm -L blk_mem_gen_v8_4_7 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.spram5 xil_defaultlib.glbl

do {spram5.udo}

run 1000ns

endsim

quit -force
