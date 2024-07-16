//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Mon Jul 15 21:09:21 2024
//Host        : Park running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (bram1_addr,
    bram1_clk,
    bram1_din,
    bram1_dout,
    bram1_en,
    bram1_rst,
    bram1_we,
    bram2_addr,
    bram2_clk,
    bram2_din,
    bram2_dout,
    bram2_en,
    bram2_rst,
    bram2_we,
    gpio_tri_o,
    mclk,
    reset,
    sys_clock,
    uart_rxd,
    uart_txd);
  output [12:0]bram1_addr;
  output bram1_clk;
  output [31:0]bram1_din;
  input [31:0]bram1_dout;
  output bram1_en;
  output bram1_rst;
  output [3:0]bram1_we;
  output [12:0]bram2_addr;
  output bram2_clk;
  output [31:0]bram2_din;
  input [31:0]bram2_dout;
  output bram2_en;
  output bram2_rst;
  output [3:0]bram2_we;
  output [3:0]gpio_tri_o;
  output mclk;
  input reset;
  input sys_clock;
  input uart_rxd;
  output uart_txd;

  wire [12:0]bram1_addr;
  wire bram1_clk;
  wire [31:0]bram1_din;
  wire [31:0]bram1_dout;
  wire bram1_en;
  wire bram1_rst;
  wire [3:0]bram1_we;
  wire [12:0]bram2_addr;
  wire bram2_clk;
  wire [31:0]bram2_din;
  wire [31:0]bram2_dout;
  wire bram2_en;
  wire bram2_rst;
  wire [3:0]bram2_we;
  wire [3:0]gpio_tri_o;
  wire mclk;
  wire reset;
  wire sys_clock;
  wire uart_rxd;
  wire uart_txd;

  system system_i
       (.bram1_addr(bram1_addr),
        .bram1_clk(bram1_clk),
        .bram1_din(bram1_din),
        .bram1_dout(bram1_dout),
        .bram1_en(bram1_en),
        .bram1_rst(bram1_rst),
        .bram1_we(bram1_we),
        .bram2_addr(bram2_addr),
        .bram2_clk(bram2_clk),
        .bram2_din(bram2_din),
        .bram2_dout(bram2_dout),
        .bram2_en(bram2_en),
        .bram2_rst(bram2_rst),
        .bram2_we(bram2_we),
        .gpio_tri_o(gpio_tri_o),
        .mclk(mclk),
        .reset(reset),
        .sys_clock(sys_clock),
        .uart_rxd(uart_rxd),
        .uart_txd(uart_txd));
endmodule
