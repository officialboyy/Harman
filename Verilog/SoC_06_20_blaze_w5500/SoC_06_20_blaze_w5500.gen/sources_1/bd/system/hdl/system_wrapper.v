//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Jun 20 14:43:38 2024
//Host        : ST04 running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (gpio_tri_o,
    reset,
    spi_io0_io,
    spi_io1_io,
    spi_sck_io,
    spi_ss_io,
    sys_clock,
    uart_rxd,
    uart_txd);
  output [4:0]gpio_tri_o;
  input reset;
  inout spi_io0_io;
  inout spi_io1_io;
  inout spi_sck_io;
  inout [0:0]spi_ss_io;
  input sys_clock;
  input uart_rxd;
  output uart_txd;

  wire [4:0]gpio_tri_o;
  wire reset;
  wire spi_io0_i;
  wire spi_io0_io;
  wire spi_io0_o;
  wire spi_io0_t;
  wire spi_io1_i;
  wire spi_io1_io;
  wire spi_io1_o;
  wire spi_io1_t;
  wire spi_sck_i;
  wire spi_sck_io;
  wire spi_sck_o;
  wire spi_sck_t;
  wire [0:0]spi_ss_i_0;
  wire [0:0]spi_ss_io_0;
  wire [0:0]spi_ss_o_0;
  wire spi_ss_t;
  wire sys_clock;
  wire uart_rxd;
  wire uart_txd;

  IOBUF spi_io0_iobuf
       (.I(spi_io0_o),
        .IO(spi_io0_io),
        .O(spi_io0_i),
        .T(spi_io0_t));
  IOBUF spi_io1_iobuf
       (.I(spi_io1_o),
        .IO(spi_io1_io),
        .O(spi_io1_i),
        .T(spi_io1_t));
  IOBUF spi_sck_iobuf
       (.I(spi_sck_o),
        .IO(spi_sck_io),
        .O(spi_sck_i),
        .T(spi_sck_t));
  IOBUF spi_ss_iobuf_0
       (.I(spi_ss_o_0),
        .IO(spi_ss_io[0]),
        .O(spi_ss_i_0),
        .T(spi_ss_t));
  system system_i
       (.gpio_tri_o(gpio_tri_o),
        .reset(reset),
        .spi_io0_i(spi_io0_i),
        .spi_io0_o(spi_io0_o),
        .spi_io0_t(spi_io0_t),
        .spi_io1_i(spi_io1_i),
        .spi_io1_o(spi_io1_o),
        .spi_io1_t(spi_io1_t),
        .spi_sck_i(spi_sck_i),
        .spi_sck_o(spi_sck_o),
        .spi_sck_t(spi_sck_t),
        .spi_ss_i(spi_ss_i_0),
        .spi_ss_o(spi_ss_o_0),
        .spi_ss_t(spi_ss_t),
        .sys_clock(sys_clock),
        .uart_rxd(uart_rxd),
        .uart_txd(uart_txd));
endmodule
