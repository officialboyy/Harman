//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Sun Jun 16 16:35:58 2024
//Host        : Park running 64-bit major release  (build 9200)
//Command     : generate_target spi_con_exam_IP.bd
//Design      : spi_con_exam_IP
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "spi_con_exam_IP,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=spi_con_exam_IP,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=4,da_clkrst_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "spi_con_exam_IP.hwdef" *) 
module spi_con_exam_IP
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN spi_con_exam_IP_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;

  wire [3:0]btn_0_1;
  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire mode_0_1;
  wire reset_1;
  wire [0:0]reset_inv_0_Res;
  wire [0:0]rst_clk_wiz_100M_peripheral_aresetn;
  wire sys_clock_1;
  wire [6:0]top_fndcontrol2_0_fnd;
  wire [3:0]top_fndcontrol2_0_fndsel;
  wire [7:0]top_fndcontrol2_0_led_out;

  assign btn_0_1 = btn_0[3:0];
  assign fnd_0[6:0] = top_fndcontrol2_0_fnd;
  assign fndsel_0[3:0] = top_fndcontrol2_0_fndsel;
  assign led_out_0[7:0] = top_fndcontrol2_0_led_out;
  assign mode_0_1 = mode_0;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  spi_con_exam_IP_clk_wiz_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .resetn(reset_inv_0_Res));
  spi_con_exam_IP_reset_inv_0_0 reset_inv_0
       (.Op1(reset_1),
        .Res(reset_inv_0_Res));
  spi_con_exam_IP_rst_clk_wiz_100M_0 rst_clk_wiz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_out1));
  spi_con_exam_IP_top_fndcontrol2_0_0 top_fndcontrol2_0
       (.btn(btn_0_1),
        .clk(clk_wiz_clk_out1),
        .fnd(top_fndcontrol2_0_fnd),
        .fndsel(top_fndcontrol2_0_fndsel),
        .led_out(top_fndcontrol2_0_led_out),
        .mode(mode_0_1),
        .reset(rst_clk_wiz_100M_peripheral_aresetn));
endmodule
