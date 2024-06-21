transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/microblaze_v11_0_13
vlib riviera/xil_defaultlib
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_pkg_v1_0_4
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/lib_cdc_v1_0_3
vlib riviera/axi_uartlite_v2_0_35
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_33
vlib riviera/axi_bram_ctrl_v4_1_10
vlib riviera/lmb_v10_v3_0_14
vlib riviera/lmb_bram_if_cntlr_v4_0_24
vlib riviera/blk_mem_gen_v8_4_8
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_31
vlib riviera/fifo_generator_v13_2_10
vlib riviera/axi_data_fifo_v2_1_30
vlib riviera/axi_crossbar_v2_1_32
vlib riviera/axi_intc_v4_1_19
vlib riviera/xlconcat_v2_1_6
vlib riviera/mdm_v3_2_26
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/util_vector_logic_v2_0_4
vlib riviera/axi_protocol_converter_v2_1_31

vmap xpm riviera/xpm
vmap microblaze_v11_0_13 riviera/microblaze_v11_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap axi_uartlite_v2_0_35 riviera/axi_uartlite_v2_0_35
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_33 riviera/axi_gpio_v2_0_33
vmap axi_bram_ctrl_v4_1_10 riviera/axi_bram_ctrl_v4_1_10
vmap lmb_v10_v3_0_14 riviera/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_24 riviera/lmb_bram_if_cntlr_v4_0_24
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 riviera/axi_register_slice_v2_1_31
vmap fifo_generator_v13_2_10 riviera/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 riviera/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 riviera/axi_crossbar_v2_1_32
vmap axi_intc_v4_1_19 riviera/axi_intc_v4_1_19
vmap xlconcat_v2_1_6 riviera/xlconcat_v2_1_6
vmap mdm_v3_2_26 riviera/mdm_v3_2_26
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap util_vector_logic_v2_0_4 riviera/util_vector_logic_v2_0_4
vmap axi_protocol_converter_v2_1_31 riviera/axi_protocol_converter_v2_1_31

vlog -work xpm  -incr "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_13 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/aa1c/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_microblaze_0_0/sim/system_microblaze_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_35 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/2959/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_axi_uartlite_0_0/sim/system_axi_uartlite_0_0.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_33 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/4208/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_10 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/14fa/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_axi_bram_ctrl_0_0/sim/system_axi_bram_ctrl_0_0.vhd" \
"../../../bd/system/ip/system_axi_bram_ctrl_1_0/sim/system_axi_bram_ctrl_1_0.vhd" \

vcom -work lmb_v10_v3_0_14 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_dlmb_v10_0/sim/system_dlmb_v10_0.vhd" \
"../../../bd/system/ip/system_ilmb_v10_0/sim/system_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_24 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3eb2/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_dlmb_bram_if_cntlr_0/sim/system_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/system/ip/system_ilmb_bram_if_cntlr_0/sim/system_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../bd/system/ip/system_lmb_bram_0/sim/system_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vcom -work axi_intc_v4_1_19 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/558f/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_microblaze_0_axi_intc_0/sim/system_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_6  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../bd/system/ip/system_microblaze_0_xlconcat_0/sim/system_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_26 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/feb7/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_mdm_1_0/sim/system_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_rst_clk_wiz_1_100M_0/sim/system_rst_clk_wiz_1_100M_0.vhd" \

vlog -work util_vector_logic_v2_0_4  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../bd/system/ip/system_reset_inv_0_0/sim/system_reset_inv_0_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work axi_protocol_converter_v2_1_31  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoC_06_21_userMap.gen/sources_1/bd/system/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l axi_bram_ctrl_v4_1_10 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l util_vector_logic_v2_0_4 -l axi_protocol_converter_v2_1_31 \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

