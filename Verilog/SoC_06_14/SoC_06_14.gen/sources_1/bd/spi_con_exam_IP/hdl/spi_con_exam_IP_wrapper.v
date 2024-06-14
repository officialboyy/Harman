//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Fri Jun 14 17:12:18 2024
//Host        : ST04 running 64-bit major release  (build 9200)
//Command     : generate_target spi_con_exam_IP_wrapper.bd
//Design      : spi_con_exam_IP_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module spi_con_exam_IP_wrapper
   (btn_0,
    fnd_0,
    fndsel_0,
    led_out_0,
    mode_0,
    reset,
    sys_clock);
  input [3:0]btn_0;
  output [6:0]fnd_0;
  output [3:0]fndsel_0;
  output [7:0]led_out_0;
  input mode_0;
  input reset;
  input sys_clock;

  wire [3:0]btn_0;
  wire [6:0]fnd_0;
  wire [3:0]fndsel_0;
  wire [7:0]led_out_0;
  wire mode_0;
  wire reset;
  wire sys_clock;

  spi_con_exam_IP spi_con_exam_IP_i
       (.btn_0(btn_0),
        .fnd_0(fnd_0),
        .fndsel_0(fndsel_0),
        .led_out_0(led_out_0),
        .mode_0(mode_0),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule