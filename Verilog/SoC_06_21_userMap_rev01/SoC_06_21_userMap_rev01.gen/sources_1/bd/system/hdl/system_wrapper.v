//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Fri Jun 21 16:12:31 2024
//Host        : ST04 running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (BRAM1_addr,
    BRAM1_clk,
    BRAM1_din,
    BRAM1_dout,
    BRAM1_en,
    BRAM1_rst,
    BRAM1_we,
    BRAM2_addr,
    BRAM2_clk,
    BRAM2_din,
    BRAM2_dout,
    BRAM2_en,
    BRAM2_rst,
    BRAM2_we,
    gpio_tri_o,
    mclk,
    reset,
    sys_clock,
    uart_rxd,
    uart_txd);
  output [12:0]BRAM1_addr;
  output BRAM1_clk;
  output [31:0]BRAM1_din;
  input [31:0]BRAM1_dout;
  output BRAM1_en;
  output BRAM1_rst;
  output [3:0]BRAM1_we;
  output [12:0]BRAM2_addr;
  output BRAM2_clk;
  output [31:0]BRAM2_din;
  input [31:0]BRAM2_dout;
  output BRAM2_en;
  output BRAM2_rst;
  output [3:0]BRAM2_we;
  output [3:0]gpio_tri_o;
  output mclk;
  input reset;
  input sys_clock;
  input uart_rxd;
  output uart_txd;

  wire [12:0]BRAM1_addr;
  wire BRAM1_clk;
  wire [31:0]BRAM1_din;
  wire [31:0]BRAM1_dout;
  wire BRAM1_en;
  wire BRAM1_rst;
  wire [3:0]BRAM1_we;
  wire [12:0]BRAM2_addr;
  wire BRAM2_clk;
  wire [31:0]BRAM2_din;
  wire [31:0]BRAM2_dout;
  wire BRAM2_en;
  wire BRAM2_rst;
  wire [3:0]BRAM2_we;
  wire [3:0]gpio_tri_o;
  wire mclk;
  wire reset;
  wire sys_clock;
  wire uart_rxd;
  wire uart_txd;

  system system_i
       (.BRAM1_addr(BRAM1_addr),
        .BRAM1_clk(BRAM1_clk),
        .BRAM1_din(BRAM1_din),
        .BRAM1_dout(BRAM1_dout),
        .BRAM1_en(BRAM1_en),
        .BRAM1_rst(BRAM1_rst),
        .BRAM1_we(BRAM1_we),
        .BRAM2_addr(BRAM2_addr),
        .BRAM2_clk(BRAM2_clk),
        .BRAM2_din(BRAM2_din),
        .BRAM2_dout(BRAM2_dout),
        .BRAM2_en(BRAM2_en),
        .BRAM2_rst(BRAM2_rst),
        .BRAM2_we(BRAM2_we),
        .gpio_tri_o(gpio_tri_o),
        .mclk(mclk),
        .reset(reset),
        .sys_clock(sys_clock),
        .uart_rxd(uart_rxd),
        .uart_txd(uart_txd));
endmodule
