//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Sun Jun 23 10:48:08 2024
//Host        : Park running 64-bit major release  (build 9200)
//Command     : generate_target mb1_wrapper.bd
//Design      : mb1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb1_wrapper
   (negreset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  input negreset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire negreset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  mb1 mb1_i
       (.negreset(negreset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
