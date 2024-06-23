//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Sun Jun 23 13:44:46 2024
//Host        : Park running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (reset,
    sys_clk,
    uart_rxd,
    uart_txd);
  input reset;
  input sys_clk;
  input uart_rxd;
  output uart_txd;

  wire reset;
  wire sys_clk;
  wire uart_rxd;
  wire uart_txd;

  system system_i
       (.reset(reset),
        .sys_clk(sys_clk),
        .uart_rxd(uart_rxd),
        .uart_txd(uart_txd));
endmodule
