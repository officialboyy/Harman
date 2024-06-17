//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Mon Jun 17 10:20:08 2024
//Host        : ST04 running 64-bit major release  (build 9200)
//Command     : generate_target mb1_wrapper.bd
//Design      : mb1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb1_wrapper
   (resetn,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  input resetn;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire resetn;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  mb1 mb1_i
       (.resetn(resetn),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
