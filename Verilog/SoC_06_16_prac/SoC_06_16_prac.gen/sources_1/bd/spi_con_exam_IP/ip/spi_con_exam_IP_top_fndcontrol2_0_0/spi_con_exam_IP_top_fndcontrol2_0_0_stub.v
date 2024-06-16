// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Jun 16 16:36:50 2024
// Host        : Park running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Harman/Verilog/SoC_06_16_prac/SoC_06_16_prac.gen/sources_1/bd/spi_con_exam_IP/ip/spi_con_exam_IP_top_fndcontrol2_0_0/spi_con_exam_IP_top_fndcontrol2_0_0_stub.v
// Design      : spi_con_exam_IP_top_fndcontrol2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top_fndcontrol2,Vivado 2024.1" *)
module spi_con_exam_IP_top_fndcontrol2_0_0(clk, reset, mode, btn, fndsel, fnd, led_out)
/* synthesis syn_black_box black_box_pad_pin="reset,mode,btn[3:0],fndsel[3:0],fnd[6:0],led_out[7:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input mode;
  input [3:0]btn;
  output [3:0]fndsel;
  output [6:0]fnd;
  output [7:0]led_out;
endmodule
