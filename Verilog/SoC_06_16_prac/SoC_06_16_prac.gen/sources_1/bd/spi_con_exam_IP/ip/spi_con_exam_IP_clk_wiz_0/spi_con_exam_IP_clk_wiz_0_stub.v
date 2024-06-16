// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Jun 16 16:36:47 2024
// Host        : Park running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Harman/Verilog/SoC_06_16_prac/SoC_06_16_prac.gen/sources_1/bd/spi_con_exam_IP/ip/spi_con_exam_IP_clk_wiz_0/spi_con_exam_IP_clk_wiz_0_stub.v
// Design      : spi_con_exam_IP_clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module spi_con_exam_IP_clk_wiz_0(clk_out1, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="resetn,locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_out1" */;
  output clk_out1 /* synthesis syn_isclock = 1 */;
  input resetn;
  output locked;
  input clk_in1;
endmodule
