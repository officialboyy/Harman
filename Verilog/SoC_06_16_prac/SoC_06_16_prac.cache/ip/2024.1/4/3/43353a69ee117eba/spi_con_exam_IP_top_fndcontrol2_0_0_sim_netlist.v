// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Jun 16 16:36:50 2024
// Host        : Park running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ spi_con_exam_IP_top_fndcontrol2_0_0_sim_netlist.v
// Design      : spi_con_exam_IP_top_fndcontrol2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_btn_in
   (btn_out,
    clk,
    btn2_reg_0,
    btn);
  output btn_out;
  input clk;
  input btn2_reg_0;
  input [0:0]btn;

  wire [0:0]btn;
  wire btn1_i_1_n_0;
  wire btn1_i_2_n_0;
  wire btn1_reg_n_0;
  wire btn2_i_1_n_0;
  wire btn2_reg_0;
  wire btn2_reg_n_0;
  wire btn_1d_reg_n_0;
  wire btn_2d_reg_n_0;
  wire btn_out;
  wire btn_out_i_1_n_0;
  wire btn_out_i_2_n_0;
  wire btn_out_i_3_n_0;
  wire btn_out_i_4_n_0;
  wire clk;
  wire [19:0]cnt;
  wire cnt1_carry__0_n_0;
  wire cnt1_carry__0_n_1;
  wire cnt1_carry__0_n_2;
  wire cnt1_carry__0_n_3;
  wire cnt1_carry__1_n_0;
  wire cnt1_carry__1_n_1;
  wire cnt1_carry__1_n_2;
  wire cnt1_carry__1_n_3;
  wire cnt1_carry__2_n_0;
  wire cnt1_carry__2_n_1;
  wire cnt1_carry__2_n_2;
  wire cnt1_carry__2_n_3;
  wire cnt1_carry__3_n_2;
  wire cnt1_carry__3_n_3;
  wire cnt1_carry_n_0;
  wire cnt1_carry_n_1;
  wire cnt1_carry_n_2;
  wire cnt1_carry_n_3;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[10]_i_1_n_0 ;
  wire \cnt[11]_i_1_n_0 ;
  wire \cnt[12]_i_1_n_0 ;
  wire \cnt[13]_i_1_n_0 ;
  wire \cnt[14]_i_1_n_0 ;
  wire \cnt[15]_i_1_n_0 ;
  wire \cnt[16]_i_1_n_0 ;
  wire \cnt[17]_i_1_n_0 ;
  wire \cnt[18]_i_1_n_0 ;
  wire \cnt[19]_i_1_n_0 ;
  wire \cnt[19]_i_2_n_0 ;
  wire \cnt[19]_i_3_n_0 ;
  wire \cnt[19]_i_4_n_0 ;
  wire \cnt[19]_i_5_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt[6]_i_1_n_0 ;
  wire \cnt[7]_i_1_n_0 ;
  wire \cnt[8]_i_1_n_0 ;
  wire \cnt[9]_i_1_n_0 ;
  wire [19:1]data0;
  wire [3:2]NLW_cnt1_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_cnt1_carry__3_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFB08)) 
    btn1_i_1
       (.I0(btn_2d_reg_n_0),
        .I1(btn_out_i_2_n_0),
        .I2(btn1_i_2_n_0),
        .I3(btn1_reg_n_0),
        .O(btn1_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    btn1_i_2
       (.I0(cnt[5]),
        .I1(cnt[4]),
        .I2(cnt[11]),
        .I3(cnt[10]),
        .I4(cnt[7]),
        .I5(cnt[6]),
        .O(btn1_i_2_n_0));
  FDCE btn1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn1_i_1_n_0),
        .Q(btn1_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    btn2_i_1
       (.I0(btn1_reg_n_0),
        .I1(btn_out_i_2_n_0),
        .I2(btn1_i_2_n_0),
        .I3(btn2_reg_n_0),
        .O(btn2_i_1_n_0));
  FDCE btn2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn2_i_1_n_0),
        .Q(btn2_reg_n_0));
  FDCE btn_1d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn),
        .Q(btn_1d_reg_n_0));
  FDCE btn_2d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn_1d_reg_n_0),
        .Q(btn_2d_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    btn_out_i_1
       (.I0(btn_out_i_2_n_0),
        .I1(btn2_reg_n_0),
        .I2(btn1_reg_n_0),
        .I3(btn_out_i_3_n_0),
        .O(btn_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    btn_out_i_2
       (.I0(btn_out_i_4_n_0),
        .I1(cnt[12]),
        .I2(cnt[13]),
        .I3(cnt[0]),
        .I4(\cnt[19]_i_4_n_0 ),
        .O(btn_out_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    btn_out_i_3
       (.I0(cnt[6]),
        .I1(cnt[7]),
        .I2(cnt[10]),
        .I3(cnt[11]),
        .I4(cnt[4]),
        .O(btn_out_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    btn_out_i_4
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[5]),
        .I3(cnt[17]),
        .I4(cnt[16]),
        .O(btn_out_i_4_n_0));
  FDCE btn_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn_out_i_1_n_0),
        .Q(btn_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry
       (.CI(1'b0),
        .CO({cnt1_carry_n_0,cnt1_carry_n_1,cnt1_carry_n_2,cnt1_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__0
       (.CI(cnt1_carry_n_0),
        .CO({cnt1_carry__0_n_0,cnt1_carry__0_n_1,cnt1_carry__0_n_2,cnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__1
       (.CI(cnt1_carry__0_n_0),
        .CO({cnt1_carry__1_n_0,cnt1_carry__1_n_1,cnt1_carry__1_n_2,cnt1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__2
       (.CI(cnt1_carry__1_n_0),
        .CO({cnt1_carry__2_n_0,cnt1_carry__2_n_1,cnt1_carry__2_n_2,cnt1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__3
       (.CI(cnt1_carry__2_n_0),
        .CO({NLW_cnt1_carry__3_CO_UNCONNECTED[3:2],cnt1_carry__3_n_2,cnt1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt1_carry__3_O_UNCONNECTED[3],data0[19:17]}),
        .S({1'b0,cnt[19:17]}));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[10]_i_1 
       (.I0(data0[10]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[11]_i_1 
       (.I0(data0[11]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[12]_i_1 
       (.I0(data0[12]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[13]_i_1 
       (.I0(data0[13]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[14]_i_1 
       (.I0(data0[14]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[15]_i_1 
       (.I0(data0[15]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[16]_i_1 
       (.I0(data0[16]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[17]_i_1 
       (.I0(data0[17]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[18]_i_1 
       (.I0(data0[18]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[19]_i_1 
       (.I0(data0[19]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cnt[19]_i_2 
       (.I0(cnt[0]),
        .I1(cnt[13]),
        .I2(cnt[12]),
        .I3(\cnt[19]_i_3_n_0 ),
        .I4(\cnt[19]_i_4_n_0 ),
        .I5(btn1_i_2_n_0),
        .O(\cnt[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \cnt[19]_i_3 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .I2(cnt[17]),
        .I3(cnt[16]),
        .O(\cnt[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cnt[19]_i_4 
       (.I0(\cnt[19]_i_5_n_0 ),
        .I1(cnt[3]),
        .I2(cnt[9]),
        .I3(cnt[15]),
        .O(\cnt[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt[19]_i_5 
       (.I0(cnt[19]),
        .I1(cnt[18]),
        .I2(cnt[14]),
        .I3(cnt[8]),
        .O(\cnt[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[1]_i_1 
       (.I0(data0[1]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[2]_i_1 
       (.I0(data0[2]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[3]_i_1 
       (.I0(data0[3]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[4]_i_1 
       (.I0(data0[4]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[5]_i_1 
       (.I0(data0[5]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[6]_i_1 
       (.I0(data0[6]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[7]_i_1 
       (.I0(data0[7]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[8]_i_1 
       (.I0(data0[8]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[9]_i_1 
       (.I0(data0[9]),
        .I1(\cnt[19]_i_2_n_0 ),
        .O(\cnt[9]_i_1_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]));
  FDCE \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[10]_i_1_n_0 ),
        .Q(cnt[10]));
  FDCE \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[11]_i_1_n_0 ),
        .Q(cnt[11]));
  FDCE \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[12]_i_1_n_0 ),
        .Q(cnt[12]));
  FDCE \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[13]_i_1_n_0 ),
        .Q(cnt[13]));
  FDCE \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[14]_i_1_n_0 ),
        .Q(cnt[14]));
  FDCE \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[15]_i_1_n_0 ),
        .Q(cnt[15]));
  FDCE \cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[16]_i_1_n_0 ),
        .Q(cnt[16]));
  FDCE \cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[17]_i_1_n_0 ),
        .Q(cnt[17]));
  FDCE \cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[18]_i_1_n_0 ),
        .Q(cnt[18]));
  FDCE \cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[19]_i_1_n_0 ),
        .Q(cnt[19]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(cnt[4]));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[5]_i_1_n_0 ),
        .Q(cnt[5]));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[6]_i_1_n_0 ),
        .Q(cnt[6]));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[7]_i_1_n_0 ),
        .Q(cnt[7]));
  FDCE \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[8]_i_1_n_0 ),
        .Q(cnt[8]));
  FDCE \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[9]_i_1_n_0 ),
        .Q(cnt[9]));
endmodule

(* ORIG_REF_NAME = "btn_in" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_btn_in_0
   (btn_out,
    clk,
    btn2_reg_0,
    btn);
  output btn_out;
  input clk;
  input btn2_reg_0;
  input [0:0]btn;

  wire [0:0]btn;
  wire btn1_i_1__0_n_0;
  wire btn1_i_2__0_n_0;
  wire btn1_reg_n_0;
  wire btn2_i_1__0_n_0;
  wire btn2_reg_0;
  wire btn2_reg_n_0;
  wire btn_1d_reg_n_0;
  wire btn_2d_reg_n_0;
  wire btn_out;
  wire btn_out_i_1__0_n_0;
  wire btn_out_i_2__0_n_0;
  wire btn_out_i_3__0_n_0;
  wire btn_out_i_4__0_n_0;
  wire clk;
  wire [19:0]cnt;
  wire cnt1_carry__0_n_0;
  wire cnt1_carry__0_n_1;
  wire cnt1_carry__0_n_2;
  wire cnt1_carry__0_n_3;
  wire cnt1_carry__1_n_0;
  wire cnt1_carry__1_n_1;
  wire cnt1_carry__1_n_2;
  wire cnt1_carry__1_n_3;
  wire cnt1_carry__2_n_0;
  wire cnt1_carry__2_n_1;
  wire cnt1_carry__2_n_2;
  wire cnt1_carry__2_n_3;
  wire cnt1_carry__3_n_2;
  wire cnt1_carry__3_n_3;
  wire cnt1_carry_n_0;
  wire cnt1_carry_n_1;
  wire cnt1_carry_n_2;
  wire cnt1_carry_n_3;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[10]_i_1__0_n_0 ;
  wire \cnt[11]_i_1__0_n_0 ;
  wire \cnt[12]_i_1__0_n_0 ;
  wire \cnt[13]_i_1__0_n_0 ;
  wire \cnt[14]_i_1__0_n_0 ;
  wire \cnt[15]_i_1__0_n_0 ;
  wire \cnt[16]_i_1__0_n_0 ;
  wire \cnt[17]_i_1__0_n_0 ;
  wire \cnt[18]_i_1__0_n_0 ;
  wire \cnt[19]_i_1__0_n_0 ;
  wire \cnt[19]_i_2__0_n_0 ;
  wire \cnt[19]_i_3__0_n_0 ;
  wire \cnt[19]_i_4__0_n_0 ;
  wire \cnt[19]_i_5__0_n_0 ;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \cnt[4]_i_1__0_n_0 ;
  wire \cnt[5]_i_1__0_n_0 ;
  wire \cnt[6]_i_1__0_n_0 ;
  wire \cnt[7]_i_1__0_n_0 ;
  wire \cnt[8]_i_1__0_n_0 ;
  wire \cnt[9]_i_1__0_n_0 ;
  wire [19:1]data0;
  wire [3:2]NLW_cnt1_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_cnt1_carry__3_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFB08)) 
    btn1_i_1__0
       (.I0(btn_2d_reg_n_0),
        .I1(btn_out_i_2__0_n_0),
        .I2(btn1_i_2__0_n_0),
        .I3(btn1_reg_n_0),
        .O(btn1_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    btn1_i_2__0
       (.I0(cnt[5]),
        .I1(cnt[4]),
        .I2(cnt[11]),
        .I3(cnt[10]),
        .I4(cnt[7]),
        .I5(cnt[6]),
        .O(btn1_i_2__0_n_0));
  FDCE btn1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn1_i_1__0_n_0),
        .Q(btn1_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    btn2_i_1__0
       (.I0(btn1_reg_n_0),
        .I1(btn_out_i_2__0_n_0),
        .I2(btn1_i_2__0_n_0),
        .I3(btn2_reg_n_0),
        .O(btn2_i_1__0_n_0));
  FDCE btn2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn2_i_1__0_n_0),
        .Q(btn2_reg_n_0));
  FDCE btn_1d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn),
        .Q(btn_1d_reg_n_0));
  FDCE btn_2d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn_1d_reg_n_0),
        .Q(btn_2d_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    btn_out_i_1__0
       (.I0(btn_out_i_2__0_n_0),
        .I1(btn2_reg_n_0),
        .I2(btn1_reg_n_0),
        .I3(btn_out_i_3__0_n_0),
        .O(btn_out_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    btn_out_i_2__0
       (.I0(btn_out_i_4__0_n_0),
        .I1(cnt[12]),
        .I2(cnt[13]),
        .I3(cnt[0]),
        .I4(\cnt[19]_i_4__0_n_0 ),
        .O(btn_out_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    btn_out_i_3__0
       (.I0(cnt[6]),
        .I1(cnt[7]),
        .I2(cnt[10]),
        .I3(cnt[11]),
        .I4(cnt[4]),
        .O(btn_out_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    btn_out_i_4__0
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[5]),
        .I3(cnt[17]),
        .I4(cnt[16]),
        .O(btn_out_i_4__0_n_0));
  FDCE btn_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn_out_i_1__0_n_0),
        .Q(btn_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry
       (.CI(1'b0),
        .CO({cnt1_carry_n_0,cnt1_carry_n_1,cnt1_carry_n_2,cnt1_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__0
       (.CI(cnt1_carry_n_0),
        .CO({cnt1_carry__0_n_0,cnt1_carry__0_n_1,cnt1_carry__0_n_2,cnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__1
       (.CI(cnt1_carry__0_n_0),
        .CO({cnt1_carry__1_n_0,cnt1_carry__1_n_1,cnt1_carry__1_n_2,cnt1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__2
       (.CI(cnt1_carry__1_n_0),
        .CO({cnt1_carry__2_n_0,cnt1_carry__2_n_1,cnt1_carry__2_n_2,cnt1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__3
       (.CI(cnt1_carry__2_n_0),
        .CO({NLW_cnt1_carry__3_CO_UNCONNECTED[3:2],cnt1_carry__3_n_2,cnt1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt1_carry__3_O_UNCONNECTED[3],data0[19:17]}),
        .S({1'b0,cnt[19:17]}));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt[0]_i_1__0 
       (.I0(cnt[0]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[10]_i_1__0 
       (.I0(data0[10]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[11]_i_1__0 
       (.I0(data0[11]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[12]_i_1__0 
       (.I0(data0[12]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[13]_i_1__0 
       (.I0(data0[13]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[14]_i_1__0 
       (.I0(data0[14]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[15]_i_1__0 
       (.I0(data0[15]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[16]_i_1__0 
       (.I0(data0[16]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[17]_i_1__0 
       (.I0(data0[17]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[18]_i_1__0 
       (.I0(data0[18]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[19]_i_1__0 
       (.I0(data0[19]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[19]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cnt[19]_i_2__0 
       (.I0(cnt[0]),
        .I1(cnt[13]),
        .I2(cnt[12]),
        .I3(\cnt[19]_i_3__0_n_0 ),
        .I4(\cnt[19]_i_4__0_n_0 ),
        .I5(btn1_i_2__0_n_0),
        .O(\cnt[19]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \cnt[19]_i_3__0 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .I2(cnt[17]),
        .I3(cnt[16]),
        .O(\cnt[19]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cnt[19]_i_4__0 
       (.I0(\cnt[19]_i_5__0_n_0 ),
        .I1(cnt[3]),
        .I2(cnt[9]),
        .I3(cnt[15]),
        .O(\cnt[19]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt[19]_i_5__0 
       (.I0(cnt[19]),
        .I1(cnt[18]),
        .I2(cnt[14]),
        .I3(cnt[8]),
        .O(\cnt[19]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[1]_i_1__0 
       (.I0(data0[1]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[2]_i_1__0 
       (.I0(data0[2]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[3]_i_1__0 
       (.I0(data0[3]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[4]_i_1__0 
       (.I0(data0[4]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[5]_i_1__0 
       (.I0(data0[5]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[6]_i_1__0 
       (.I0(data0[6]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[7]_i_1__0 
       (.I0(data0[7]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[8]_i_1__0 
       (.I0(data0[8]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[9]_i_1__0 
       (.I0(data0[9]),
        .I1(\cnt[19]_i_2__0_n_0 ),
        .O(\cnt[9]_i_1__0_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(cnt[0]));
  FDCE \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[10]_i_1__0_n_0 ),
        .Q(cnt[10]));
  FDCE \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[11]_i_1__0_n_0 ),
        .Q(cnt[11]));
  FDCE \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[12]_i_1__0_n_0 ),
        .Q(cnt[12]));
  FDCE \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[13]_i_1__0_n_0 ),
        .Q(cnt[13]));
  FDCE \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[14]_i_1__0_n_0 ),
        .Q(cnt[14]));
  FDCE \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[15]_i_1__0_n_0 ),
        .Q(cnt[15]));
  FDCE \cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[16]_i_1__0_n_0 ),
        .Q(cnt[16]));
  FDCE \cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[17]_i_1__0_n_0 ),
        .Q(cnt[17]));
  FDCE \cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[18]_i_1__0_n_0 ),
        .Q(cnt[18]));
  FDCE \cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[19]_i_1__0_n_0 ),
        .Q(cnt[19]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[1]_i_1__0_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[3]_i_1__0_n_0 ),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[4]_i_1__0_n_0 ),
        .Q(cnt[4]));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[5]_i_1__0_n_0 ),
        .Q(cnt[5]));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[6]_i_1__0_n_0 ),
        .Q(cnt[6]));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[7]_i_1__0_n_0 ),
        .Q(cnt[7]));
  FDCE \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[8]_i_1__0_n_0 ),
        .Q(cnt[8]));
  FDCE \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[9]_i_1__0_n_0 ),
        .Q(cnt[9]));
endmodule

(* ORIG_REF_NAME = "btn_in" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_btn_in_1
   (\m_state_reg[0] ,
    btn_out,
    btn_out_reg_0,
    btn_out_reg_1,
    m_state,
    \btn_id_reg[1] ,
    \btn_id_reg[1]_0 ,
    \btn_id_reg[1]_1 ,
    btn_id,
    clk,
    btn2_reg_0,
    btn);
  output \m_state_reg[0] ;
  output btn_out;
  output btn_out_reg_0;
  output btn_out_reg_1;
  input [2:0]m_state;
  input \btn_id_reg[1] ;
  input \btn_id_reg[1]_0 ;
  input \btn_id_reg[1]_1 ;
  input [1:0]btn_id;
  input clk;
  input btn2_reg_0;
  input [0:0]btn;

  wire [0:0]btn;
  wire btn1_i_1__1_n_0;
  wire btn1_i_2__1_n_0;
  wire btn1_reg_n_0;
  wire btn2_i_1__1_n_0;
  wire btn2_reg_0;
  wire btn2_reg_n_0;
  wire btn_1d_reg_n_0;
  wire btn_2d_reg_n_0;
  wire [1:0]btn_id;
  wire \btn_id_reg[1] ;
  wire \btn_id_reg[1]_0 ;
  wire \btn_id_reg[1]_1 ;
  wire btn_out;
  wire btn_out_i_1__1_n_0;
  wire btn_out_i_2__1_n_0;
  wire btn_out_i_3__1_n_0;
  wire btn_out_i_4__1_n_0;
  wire btn_out_reg_0;
  wire btn_out_reg_1;
  wire clk;
  wire [19:0]cnt;
  wire cnt1_carry__0_n_0;
  wire cnt1_carry__0_n_1;
  wire cnt1_carry__0_n_2;
  wire cnt1_carry__0_n_3;
  wire cnt1_carry__1_n_0;
  wire cnt1_carry__1_n_1;
  wire cnt1_carry__1_n_2;
  wire cnt1_carry__1_n_3;
  wire cnt1_carry__2_n_0;
  wire cnt1_carry__2_n_1;
  wire cnt1_carry__2_n_2;
  wire cnt1_carry__2_n_3;
  wire cnt1_carry__3_n_2;
  wire cnt1_carry__3_n_3;
  wire cnt1_carry_n_0;
  wire cnt1_carry_n_1;
  wire cnt1_carry_n_2;
  wire cnt1_carry_n_3;
  wire \cnt[0]_i_1__1_n_0 ;
  wire \cnt[10]_i_1__1_n_0 ;
  wire \cnt[11]_i_1__1_n_0 ;
  wire \cnt[12]_i_1__1_n_0 ;
  wire \cnt[13]_i_1__1_n_0 ;
  wire \cnt[14]_i_1__1_n_0 ;
  wire \cnt[15]_i_1__1_n_0 ;
  wire \cnt[16]_i_1__1_n_0 ;
  wire \cnt[17]_i_1__1_n_0 ;
  wire \cnt[18]_i_1__1_n_0 ;
  wire \cnt[19]_i_1__1_n_0 ;
  wire \cnt[19]_i_2__1_n_0 ;
  wire \cnt[19]_i_3__1_n_0 ;
  wire \cnt[19]_i_4__1_n_0 ;
  wire \cnt[19]_i_5__1_n_0 ;
  wire \cnt[1]_i_1__1_n_0 ;
  wire \cnt[2]_i_1__1_n_0 ;
  wire \cnt[3]_i_1__1_n_0 ;
  wire \cnt[4]_i_1__1_n_0 ;
  wire \cnt[5]_i_1__1_n_0 ;
  wire \cnt[6]_i_1__1_n_0 ;
  wire \cnt[7]_i_1__1_n_0 ;
  wire \cnt[8]_i_1__1_n_0 ;
  wire \cnt[9]_i_1__1_n_0 ;
  wire [19:1]data0;
  wire [2:0]m_state;
  wire \m_state[0]_i_4_n_0 ;
  wire \m_state_reg[0] ;
  wire [3:2]NLW_cnt1_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_cnt1_carry__3_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFB08)) 
    btn1_i_1__1
       (.I0(btn_2d_reg_n_0),
        .I1(btn_out_i_2__1_n_0),
        .I2(btn1_i_2__1_n_0),
        .I3(btn1_reg_n_0),
        .O(btn1_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    btn1_i_2__1
       (.I0(cnt[5]),
        .I1(cnt[4]),
        .I2(cnt[11]),
        .I3(cnt[10]),
        .I4(cnt[7]),
        .I5(cnt[6]),
        .O(btn1_i_2__1_n_0));
  FDCE btn1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn1_i_1__1_n_0),
        .Q(btn1_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    btn2_i_1__1
       (.I0(btn1_reg_n_0),
        .I1(btn_out_i_2__1_n_0),
        .I2(btn1_i_2__1_n_0),
        .I3(btn2_reg_n_0),
        .O(btn2_i_1__1_n_0));
  FDCE btn2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn2_i_1__1_n_0),
        .Q(btn2_reg_n_0));
  FDCE btn_1d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn),
        .Q(btn_1d_reg_n_0));
  FDCE btn_2d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn_1d_reg_n_0),
        .Q(btn_2d_reg_n_0));
  LUT5 #(
    .INIT(32'h00F500F4)) 
    \btn_id[0]_i_1 
       (.I0(btn_out),
        .I1(\btn_id_reg[1] ),
        .I2(\btn_id_reg[1]_0 ),
        .I3(\btn_id_reg[1]_1 ),
        .I4(btn_id[0]),
        .O(btn_out_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h000F000E)) 
    \btn_id[1]_i_1 
       (.I0(btn_out),
        .I1(\btn_id_reg[1] ),
        .I2(\btn_id_reg[1]_0 ),
        .I3(\btn_id_reg[1]_1 ),
        .I4(btn_id[1]),
        .O(btn_out_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    btn_out_i_1__1
       (.I0(btn_out_i_2__1_n_0),
        .I1(btn2_reg_n_0),
        .I2(btn1_reg_n_0),
        .I3(btn_out_i_3__1_n_0),
        .O(btn_out_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    btn_out_i_2__1
       (.I0(btn_out_i_4__1_n_0),
        .I1(cnt[12]),
        .I2(cnt[13]),
        .I3(cnt[0]),
        .I4(\cnt[19]_i_4__1_n_0 ),
        .O(btn_out_i_2__1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    btn_out_i_3__1
       (.I0(cnt[6]),
        .I1(cnt[7]),
        .I2(cnt[10]),
        .I3(cnt[11]),
        .I4(cnt[4]),
        .O(btn_out_i_3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    btn_out_i_4__1
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[5]),
        .I3(cnt[17]),
        .I4(cnt[16]),
        .O(btn_out_i_4__1_n_0));
  FDCE btn_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn_out_i_1__1_n_0),
        .Q(btn_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry
       (.CI(1'b0),
        .CO({cnt1_carry_n_0,cnt1_carry_n_1,cnt1_carry_n_2,cnt1_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__0
       (.CI(cnt1_carry_n_0),
        .CO({cnt1_carry__0_n_0,cnt1_carry__0_n_1,cnt1_carry__0_n_2,cnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__1
       (.CI(cnt1_carry__0_n_0),
        .CO({cnt1_carry__1_n_0,cnt1_carry__1_n_1,cnt1_carry__1_n_2,cnt1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__2
       (.CI(cnt1_carry__1_n_0),
        .CO({cnt1_carry__2_n_0,cnt1_carry__2_n_1,cnt1_carry__2_n_2,cnt1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__3
       (.CI(cnt1_carry__2_n_0),
        .CO({NLW_cnt1_carry__3_CO_UNCONNECTED[3:2],cnt1_carry__3_n_2,cnt1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt1_carry__3_O_UNCONNECTED[3],data0[19:17]}),
        .S({1'b0,cnt[19:17]}));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt[0]_i_1__1 
       (.I0(cnt[0]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[10]_i_1__1 
       (.I0(data0[10]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[10]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[11]_i_1__1 
       (.I0(data0[11]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[11]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[12]_i_1__1 
       (.I0(data0[12]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[12]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[13]_i_1__1 
       (.I0(data0[13]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[13]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[14]_i_1__1 
       (.I0(data0[14]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[14]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[15]_i_1__1 
       (.I0(data0[15]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[15]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[16]_i_1__1 
       (.I0(data0[16]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[16]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[17]_i_1__1 
       (.I0(data0[17]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[17]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[18]_i_1__1 
       (.I0(data0[18]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[18]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[19]_i_1__1 
       (.I0(data0[19]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[19]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cnt[19]_i_2__1 
       (.I0(cnt[0]),
        .I1(cnt[13]),
        .I2(cnt[12]),
        .I3(\cnt[19]_i_3__1_n_0 ),
        .I4(\cnt[19]_i_4__1_n_0 ),
        .I5(btn1_i_2__1_n_0),
        .O(\cnt[19]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \cnt[19]_i_3__1 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .I2(cnt[17]),
        .I3(cnt[16]),
        .O(\cnt[19]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cnt[19]_i_4__1 
       (.I0(\cnt[19]_i_5__1_n_0 ),
        .I1(cnt[3]),
        .I2(cnt[9]),
        .I3(cnt[15]),
        .O(\cnt[19]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt[19]_i_5__1 
       (.I0(cnt[19]),
        .I1(cnt[18]),
        .I2(cnt[14]),
        .I3(cnt[8]),
        .O(\cnt[19]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[1]_i_1__1 
       (.I0(data0[1]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[2]_i_1__1 
       (.I0(data0[2]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[3]_i_1__1 
       (.I0(data0[3]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[4]_i_1__1 
       (.I0(data0[4]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[5]_i_1__1 
       (.I0(data0[5]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[6]_i_1__1 
       (.I0(data0[6]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[7]_i_1__1 
       (.I0(data0[7]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[8]_i_1__1 
       (.I0(data0[8]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[9]_i_1__1 
       (.I0(data0[9]),
        .I1(\cnt[19]_i_2__1_n_0 ),
        .O(\cnt[9]_i_1__1_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[0]_i_1__1_n_0 ),
        .Q(cnt[0]));
  FDCE \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[10]_i_1__1_n_0 ),
        .Q(cnt[10]));
  FDCE \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[11]_i_1__1_n_0 ),
        .Q(cnt[11]));
  FDCE \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[12]_i_1__1_n_0 ),
        .Q(cnt[12]));
  FDCE \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[13]_i_1__1_n_0 ),
        .Q(cnt[13]));
  FDCE \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[14]_i_1__1_n_0 ),
        .Q(cnt[14]));
  FDCE \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[15]_i_1__1_n_0 ),
        .Q(cnt[15]));
  FDCE \cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[16]_i_1__1_n_0 ),
        .Q(cnt[16]));
  FDCE \cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[17]_i_1__1_n_0 ),
        .Q(cnt[17]));
  FDCE \cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[18]_i_1__1_n_0 ),
        .Q(cnt[18]));
  FDCE \cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[19]_i_1__1_n_0 ),
        .Q(cnt[19]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[1]_i_1__1_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[2]_i_1__1_n_0 ),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[3]_i_1__1_n_0 ),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[4]_i_1__1_n_0 ),
        .Q(cnt[4]));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[5]_i_1__1_n_0 ),
        .Q(cnt[5]));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[6]_i_1__1_n_0 ),
        .Q(cnt[6]));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[7]_i_1__1_n_0 ),
        .Q(cnt[7]));
  FDCE \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[8]_i_1__1_n_0 ),
        .Q(cnt[8]));
  FDCE \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[9]_i_1__1_n_0 ),
        .Q(cnt[9]));
  LUT4 #(
    .INIT(16'h0002)) 
    \m_state[0]_i_3 
       (.I0(\m_state[0]_i_4_n_0 ),
        .I1(m_state[0]),
        .I2(m_state[2]),
        .I3(m_state[1]),
        .O(\m_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_state[0]_i_4 
       (.I0(btn_out),
        .I1(\btn_id_reg[1] ),
        .I2(\btn_id_reg[1]_0 ),
        .I3(\btn_id_reg[1]_1 ),
        .O(\m_state[0]_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "btn_in" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_btn_in_2
   (btn_out,
    clk,
    btn2_reg_0,
    btn);
  output btn_out;
  input clk;
  input btn2_reg_0;
  input [0:0]btn;

  wire [0:0]btn;
  wire btn1_i_1__2_n_0;
  wire btn1_i_2__2_n_0;
  wire btn1_reg_n_0;
  wire btn2_i_1__2_n_0;
  wire btn2_reg_0;
  wire btn2_reg_n_0;
  wire btn_1d_reg_n_0;
  wire btn_2d_reg_n_0;
  wire btn_out;
  wire btn_out_i_1__2_n_0;
  wire btn_out_i_2__2_n_0;
  wire btn_out_i_3__2_n_0;
  wire btn_out_i_4__2_n_0;
  wire clk;
  wire [19:0]cnt;
  wire cnt1_carry__0_n_0;
  wire cnt1_carry__0_n_1;
  wire cnt1_carry__0_n_2;
  wire cnt1_carry__0_n_3;
  wire cnt1_carry__1_n_0;
  wire cnt1_carry__1_n_1;
  wire cnt1_carry__1_n_2;
  wire cnt1_carry__1_n_3;
  wire cnt1_carry__2_n_0;
  wire cnt1_carry__2_n_1;
  wire cnt1_carry__2_n_2;
  wire cnt1_carry__2_n_3;
  wire cnt1_carry__3_n_2;
  wire cnt1_carry__3_n_3;
  wire cnt1_carry_n_0;
  wire cnt1_carry_n_1;
  wire cnt1_carry_n_2;
  wire cnt1_carry_n_3;
  wire \cnt[0]_i_1__2_n_0 ;
  wire \cnt[10]_i_1__2_n_0 ;
  wire \cnt[11]_i_1__2_n_0 ;
  wire \cnt[12]_i_1__2_n_0 ;
  wire \cnt[13]_i_1__2_n_0 ;
  wire \cnt[14]_i_1__2_n_0 ;
  wire \cnt[15]_i_1__2_n_0 ;
  wire \cnt[16]_i_1__2_n_0 ;
  wire \cnt[17]_i_1__2_n_0 ;
  wire \cnt[18]_i_1__2_n_0 ;
  wire \cnt[19]_i_1__2_n_0 ;
  wire \cnt[19]_i_2__2_n_0 ;
  wire \cnt[19]_i_3__2_n_0 ;
  wire \cnt[19]_i_4__2_n_0 ;
  wire \cnt[19]_i_5__2_n_0 ;
  wire \cnt[1]_i_1__2_n_0 ;
  wire \cnt[2]_i_1__2_n_0 ;
  wire \cnt[3]_i_1__2_n_0 ;
  wire \cnt[4]_i_1__2_n_0 ;
  wire \cnt[5]_i_1__2_n_0 ;
  wire \cnt[6]_i_1__2_n_0 ;
  wire \cnt[7]_i_1__2_n_0 ;
  wire \cnt[8]_i_1__2_n_0 ;
  wire \cnt[9]_i_1__2_n_0 ;
  wire [19:1]data0;
  wire [3:2]NLW_cnt1_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_cnt1_carry__3_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFB08)) 
    btn1_i_1__2
       (.I0(btn_2d_reg_n_0),
        .I1(btn_out_i_2__2_n_0),
        .I2(btn1_i_2__2_n_0),
        .I3(btn1_reg_n_0),
        .O(btn1_i_1__2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    btn1_i_2__2
       (.I0(cnt[5]),
        .I1(cnt[4]),
        .I2(cnt[11]),
        .I3(cnt[10]),
        .I4(cnt[7]),
        .I5(cnt[6]),
        .O(btn1_i_2__2_n_0));
  FDCE btn1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn1_i_1__2_n_0),
        .Q(btn1_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    btn2_i_1__2
       (.I0(btn1_reg_n_0),
        .I1(btn_out_i_2__2_n_0),
        .I2(btn1_i_2__2_n_0),
        .I3(btn2_reg_n_0),
        .O(btn2_i_1__2_n_0));
  FDCE btn2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn2_i_1__2_n_0),
        .Q(btn2_reg_n_0));
  FDCE btn_1d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn),
        .Q(btn_1d_reg_n_0));
  FDCE btn_2d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn_1d_reg_n_0),
        .Q(btn_2d_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    btn_out_i_1__2
       (.I0(btn_out_i_2__2_n_0),
        .I1(btn2_reg_n_0),
        .I2(btn1_reg_n_0),
        .I3(btn_out_i_3__2_n_0),
        .O(btn_out_i_1__2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    btn_out_i_2__2
       (.I0(btn_out_i_4__2_n_0),
        .I1(cnt[12]),
        .I2(cnt[13]),
        .I3(cnt[0]),
        .I4(\cnt[19]_i_4__2_n_0 ),
        .O(btn_out_i_2__2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    btn_out_i_3__2
       (.I0(cnt[6]),
        .I1(cnt[7]),
        .I2(cnt[10]),
        .I3(cnt[11]),
        .I4(cnt[4]),
        .O(btn_out_i_3__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    btn_out_i_4__2
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[5]),
        .I3(cnt[17]),
        .I4(cnt[16]),
        .O(btn_out_i_4__2_n_0));
  FDCE btn_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(btn_out_i_1__2_n_0),
        .Q(btn_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry
       (.CI(1'b0),
        .CO({cnt1_carry_n_0,cnt1_carry_n_1,cnt1_carry_n_2,cnt1_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__0
       (.CI(cnt1_carry_n_0),
        .CO({cnt1_carry__0_n_0,cnt1_carry__0_n_1,cnt1_carry__0_n_2,cnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__1
       (.CI(cnt1_carry__0_n_0),
        .CO({cnt1_carry__1_n_0,cnt1_carry__1_n_1,cnt1_carry__1_n_2,cnt1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__2
       (.CI(cnt1_carry__1_n_0),
        .CO({cnt1_carry__2_n_0,cnt1_carry__2_n_1,cnt1_carry__2_n_2,cnt1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt1_carry__3
       (.CI(cnt1_carry__2_n_0),
        .CO({NLW_cnt1_carry__3_CO_UNCONNECTED[3:2],cnt1_carry__3_n_2,cnt1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt1_carry__3_O_UNCONNECTED[3],data0[19:17]}),
        .S({1'b0,cnt[19:17]}));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt[0]_i_1__2 
       (.I0(cnt[0]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[10]_i_1__2 
       (.I0(data0[10]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[10]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[11]_i_1__2 
       (.I0(data0[11]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[11]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[12]_i_1__2 
       (.I0(data0[12]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[12]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[13]_i_1__2 
       (.I0(data0[13]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[13]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[14]_i_1__2 
       (.I0(data0[14]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[14]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[15]_i_1__2 
       (.I0(data0[15]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[15]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[16]_i_1__2 
       (.I0(data0[16]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[16]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[17]_i_1__2 
       (.I0(data0[17]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[17]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[18]_i_1__2 
       (.I0(data0[18]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[18]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[19]_i_1__2 
       (.I0(data0[19]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[19]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cnt[19]_i_2__2 
       (.I0(cnt[0]),
        .I1(cnt[13]),
        .I2(cnt[12]),
        .I3(\cnt[19]_i_3__2_n_0 ),
        .I4(\cnt[19]_i_4__2_n_0 ),
        .I5(btn1_i_2__2_n_0),
        .O(\cnt[19]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \cnt[19]_i_3__2 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .I2(cnt[17]),
        .I3(cnt[16]),
        .O(\cnt[19]_i_3__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cnt[19]_i_4__2 
       (.I0(\cnt[19]_i_5__2_n_0 ),
        .I1(cnt[3]),
        .I2(cnt[9]),
        .I3(cnt[15]),
        .O(\cnt[19]_i_4__2_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt[19]_i_5__2 
       (.I0(cnt[19]),
        .I1(cnt[18]),
        .I2(cnt[14]),
        .I3(cnt[8]),
        .O(\cnt[19]_i_5__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[1]_i_1__2 
       (.I0(data0[1]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[2]_i_1__2 
       (.I0(data0[2]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[3]_i_1__2 
       (.I0(data0[3]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[4]_i_1__2 
       (.I0(data0[4]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[5]_i_1__2 
       (.I0(data0[5]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[6]_i_1__2 
       (.I0(data0[6]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[7]_i_1__2 
       (.I0(data0[7]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[8]_i_1__2 
       (.I0(data0[8]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[8]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[9]_i_1__2 
       (.I0(data0[9]),
        .I1(\cnt[19]_i_2__2_n_0 ),
        .O(\cnt[9]_i_1__2_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[0]_i_1__2_n_0 ),
        .Q(cnt[0]));
  FDCE \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[10]_i_1__2_n_0 ),
        .Q(cnt[10]));
  FDCE \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[11]_i_1__2_n_0 ),
        .Q(cnt[11]));
  FDCE \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[12]_i_1__2_n_0 ),
        .Q(cnt[12]));
  FDCE \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[13]_i_1__2_n_0 ),
        .Q(cnt[13]));
  FDCE \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[14]_i_1__2_n_0 ),
        .Q(cnt[14]));
  FDCE \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[15]_i_1__2_n_0 ),
        .Q(cnt[15]));
  FDCE \cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[16]_i_1__2_n_0 ),
        .Q(cnt[16]));
  FDCE \cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[17]_i_1__2_n_0 ),
        .Q(cnt[17]));
  FDCE \cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[18]_i_1__2_n_0 ),
        .Q(cnt[18]));
  FDCE \cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[19]_i_1__2_n_0 ),
        .Q(cnt[19]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[1]_i_1__2_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[2]_i_1__2_n_0 ),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[3]_i_1__2_n_0 ),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[4]_i_1__2_n_0 ),
        .Q(cnt[4]));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[5]_i_1__2_n_0 ),
        .Q(cnt[5]));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[6]_i_1__2_n_0 ),
        .Q(cnt[6]));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[7]_i_1__2_n_0 ),
        .Q(cnt[7]));
  FDCE \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[8]_i_1__2_n_0 ),
        .Q(cnt[8]));
  FDCE \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(btn2_reg_0),
        .D(\cnt[9]_i_1__2_n_0 ),
        .Q(cnt[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clockdivider
   (CLK,
    clk,
    reset,
    \cnt_reg[0]_0 );
  output CLK;
  input clk;
  input reset;
  input \cnt_reg[0]_0 ;

  wire CLK;
  wire clk;
  wire clk1000Hz_i_1_n_0;
  wire [25:0]cnt;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__2_n_0;
  wire cnt0_carry__2_n_1;
  wire cnt0_carry__2_n_2;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry__3_n_0;
  wire cnt0_carry__3_n_1;
  wire cnt0_carry__3_n_2;
  wire cnt0_carry__3_n_3;
  wire cnt0_carry__4_n_0;
  wire cnt0_carry__4_n_1;
  wire cnt0_carry__4_n_2;
  wire cnt0_carry__4_n_3;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire \cnt[25]_i_2_n_0 ;
  wire \cnt[25]_i_3_n_0 ;
  wire \cnt[25]_i_4_n_0 ;
  wire \cnt[25]_i_5_n_0 ;
  wire \cnt[25]_i_6_n_0 ;
  wire \cnt[25]_i_7_n_0 ;
  wire [25:0]cnt_0;
  wire \cnt_reg[0]_0 ;
  wire [25:1]data0;
  wire reset;
  wire [3:0]NLW_cnt0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_cnt0_carry__5_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h78)) 
    clk1000Hz_i_1
       (.I0(reset),
        .I1(\cnt[25]_i_2_n_0 ),
        .I2(CLK),
        .O(clk1000Hz_i_1_n_0));
  FDRE clk1000Hz_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk1000Hz_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({cnt0_carry__2_n_0,cnt0_carry__2_n_1,cnt0_carry__2_n_2,cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__3
       (.CI(cnt0_carry__2_n_0),
        .CO({cnt0_carry__3_n_0,cnt0_carry__3_n_1,cnt0_carry__3_n_2,cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(cnt[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__4
       (.CI(cnt0_carry__3_n_0),
        .CO({cnt0_carry__4_n_0,cnt0_carry__4_n_1,cnt0_carry__4_n_2,cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(cnt[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__5
       (.CI(cnt0_carry__4_n_0),
        .CO(NLW_cnt0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt0_carry__5_O_UNCONNECTED[3:1],data0[25]}),
        .S({1'b0,1'b0,1'b0,cnt[25]}));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__3 
       (.I0(cnt[0]),
        .O(cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[10]_i_1__3 
       (.I0(data0[10]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[11]_i_1__3 
       (.I0(data0[11]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[12]_i_1__3 
       (.I0(data0[12]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[13]_i_1__3 
       (.I0(data0[13]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[14]_i_1__3 
       (.I0(data0[14]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[15]_i_1__3 
       (.I0(data0[15]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[16]_i_1__3 
       (.I0(data0[16]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[17]_i_1__3 
       (.I0(data0[17]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[18]_i_1__3 
       (.I0(data0[18]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[19]_i_1__3 
       (.I0(data0[19]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[1]_i_1__3 
       (.I0(data0[1]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[20]_i_1 
       (.I0(data0[20]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[21]_i_1 
       (.I0(data0[21]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[22]_i_1 
       (.I0(data0[22]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[23]_i_1 
       (.I0(data0[23]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[24]_i_1 
       (.I0(data0[24]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[24]));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[25]_i_1 
       (.I0(data0[25]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[25]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \cnt[25]_i_2 
       (.I0(\cnt[25]_i_3_n_0 ),
        .I1(cnt[11]),
        .I2(cnt[7]),
        .I3(cnt[5]),
        .I4(cnt[10]),
        .I5(\cnt[25]_i_4_n_0 ),
        .O(\cnt[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \cnt[25]_i_3 
       (.I0(cnt[12]),
        .I1(cnt[1]),
        .I2(cnt[24]),
        .I3(cnt[8]),
        .I4(\cnt[25]_i_5_n_0 ),
        .O(\cnt[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \cnt[25]_i_4 
       (.I0(\cnt[25]_i_6_n_0 ),
        .I1(\cnt[25]_i_7_n_0 ),
        .I2(cnt[9]),
        .I3(cnt[16]),
        .I4(cnt[6]),
        .I5(cnt[22]),
        .O(\cnt[25]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[25]_i_5 
       (.I0(cnt[23]),
        .I1(cnt[14]),
        .I2(cnt[21]),
        .I3(cnt[4]),
        .O(\cnt[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \cnt[25]_i_6 
       (.I0(cnt[17]),
        .I1(cnt[0]),
        .I2(cnt[18]),
        .I3(cnt[20]),
        .I4(cnt[15]),
        .I5(cnt[19]),
        .O(\cnt[25]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[25]_i_7 
       (.I0(cnt[13]),
        .I1(cnt[2]),
        .I2(cnt[25]),
        .I3(cnt[3]),
        .O(\cnt[25]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[2]_i_1__3 
       (.I0(data0[2]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[3]_i_1__3 
       (.I0(data0[3]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[4]_i_1__3 
       (.I0(data0[4]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[5]_i_1__3 
       (.I0(data0[5]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[6]_i_1__3 
       (.I0(data0[6]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[7]_i_1__3 
       (.I0(data0[7]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[8]_i_1__3 
       (.I0(data0[8]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[9]_i_1__3 
       (.I0(data0[9]),
        .I1(\cnt[25]_i_2_n_0 ),
        .O(cnt_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[0]),
        .Q(cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[10]),
        .Q(cnt[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[11]),
        .Q(cnt[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[12]),
        .Q(cnt[12]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[13]),
        .Q(cnt[13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[14]),
        .Q(cnt[14]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[15]),
        .Q(cnt[15]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[16]),
        .Q(cnt[16]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[17]),
        .Q(cnt[17]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[18]),
        .Q(cnt[18]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[19]),
        .Q(cnt[19]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[1]),
        .Q(cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[20]),
        .Q(cnt[20]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[21]),
        .Q(cnt[21]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[22]),
        .Q(cnt[22]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[23]),
        .Q(cnt[23]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[24]),
        .Q(cnt[24]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[25]),
        .Q(cnt[25]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[2]),
        .Q(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[3]),
        .Q(cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[4]),
        .Q(cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[5]),
        .Q(cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[6]),
        .Q(cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[7]),
        .Q(cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[8]),
        .Q(cnt[8]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(cnt_0[9]),
        .Q(cnt[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
   (Q,
    fndsel,
    CLK,
    \out_counter_reg[1]_0 );
  output [1:0]Q;
  output [3:0]fndsel;
  input CLK;
  input \out_counter_reg[1]_0 ;

  wire CLK;
  wire [1:0]Q;
  wire [3:0]fndsel;
  wire \out_counter_reg[1]_0 ;
  wire [1:0]p_0_in;

  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fndsel[0]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(fndsel[0]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fndsel[1]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(fndsel[1]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fndsel[2]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(fndsel[2]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \fndsel[3]_INST_0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(fndsel[3]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \out_counter[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out_counter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  FDCE \out_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\out_counter_reg[1]_0 ),
        .D(p_0_in[0]),
        .Q(Q[0]));
  FDCE \out_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\out_counter_reg[1]_0 ),
        .D(p_0_in[1]),
        .Q(Q[1]));
endmodule

(* CHECK_LICENSE_TYPE = "spi_con_exam_IP_top_fndcontrol2_0_0,top_fndcontrol2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "top_fndcontrol2,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    mode,
    btn,
    fndsel,
    fnd,
    led_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input mode;
  input [3:0]btn;
  output [3:0]fndsel;
  output [6:0]fnd;
  output [7:0]led_out;

  wire [3:0]btn;
  wire clk;
  wire [6:0]fnd;
  wire [3:0]fndsel;
  wire [7:0]led_out;
  wire mode;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_fndcontrol2 inst
       (.btn(btn),
        .clk(clk),
        .fnd(fnd),
        .fndsel(fndsel),
        .led_out(led_out),
        .mode(mode),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master
   (ss,
    sck,
    mosi,
    E,
    \m_state_reg[0]_0 ,
    done_reg_0,
    \m_state_reg[0]_1 ,
    D,
    start_r,
    clk,
    \done_cnt_reg[3]_0 ,
    start_w,
    Q,
    mosi_i_11_0,
    start_r0,
    \m_state_reg[0]_2 ,
    \m_state_reg[1]_0 ,
    m_state,
    \m_state_reg[1]_1 ,
    \m_state_reg[0]_3 ,
    \m_state_reg[1]_2 ,
    \led_reg[0] ,
    \led_reg[0]_0 ,
    \m_state_reg[2] ,
    miso);
  output ss;
  output sck;
  output mosi;
  output [0:0]E;
  output \m_state_reg[0]_0 ;
  output done_reg_0;
  output \m_state_reg[0]_1 ;
  output [7:0]D;
  input start_r;
  input clk;
  input \done_cnt_reg[3]_0 ;
  input start_w;
  input [7:0]Q;
  input [2:0]mosi_i_11_0;
  input start_r0;
  input \m_state_reg[0]_2 ;
  input \m_state_reg[1]_0 ;
  input [2:0]m_state;
  input \m_state_reg[1]_1 ;
  input [3:0]\m_state_reg[0]_3 ;
  input \m_state_reg[1]_2 ;
  input \led_reg[0] ;
  input [3:0]\led_reg[0]_0 ;
  input [1:0]\m_state_reg[2] ;
  input miso;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire clk;
  wire [3:0]done_cnt_reg;
  wire \done_cnt_reg[3]_0 ;
  wire done_i_1_n_0;
  wire done_mst;
  wire done_reg_0;
  wire \led_reg[0] ;
  wire [3:0]\led_reg[0]_0 ;
  wire [2:0]m_state;
  wire m_state0;
  wire m_state4;
  wire m_state4_carry_i_1_n_0;
  wire m_state4_carry_i_2_n_0;
  wire m_state4_carry_i_3_n_0;
  wire m_state4_carry_i_4_n_0;
  wire m_state4_carry_n_1;
  wire m_state4_carry_n_2;
  wire m_state4_carry_n_3;
  wire \m_state[0]_i_1_n_0 ;
  wire \m_state[0]_i_2__0_n_0 ;
  wire \m_state[0]_i_2_n_0 ;
  wire \m_state[1]_i_1_n_0 ;
  wire \m_state[1]_i_2_n_0 ;
  wire \m_state[1]_i_3_n_0 ;
  wire \m_state[1]_i_4_n_0 ;
  wire \m_state[2]_i_3_n_0 ;
  wire [1:0]m_state_0;
  wire \m_state_reg[0]_0 ;
  wire \m_state_reg[0]_1 ;
  wire \m_state_reg[0]_2 ;
  wire [3:0]\m_state_reg[0]_3 ;
  wire \m_state_reg[1]_0 ;
  wire \m_state_reg[1]_1 ;
  wire \m_state_reg[1]_2 ;
  wire [1:0]\m_state_reg[2] ;
  wire miso;
  wire mosi;
  wire mosi_i_10_n_0;
  wire [2:0]mosi_i_11_0;
  wire mosi_i_11_n_0;
  wire mosi_i_12_n_0;
  wire mosi_i_13_n_0;
  wire mosi_i_14_n_0;
  wire mosi_i_15_n_0;
  wire mosi_i_1_n_0;
  wire mosi_i_2_n_0;
  wire mosi_i_3_n_0;
  wire mosi_i_4_n_0;
  wire mosi_i_5_n_0;
  wire mosi_i_6_n_0;
  wire mosi_i_7_n_0;
  wire mosi_i_8_n_0;
  wire mosi_i_9_n_0;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire [1:0]p_0_in__2;
  wire \rdata[0]_i_1_n_0 ;
  wire \rdata[1]_i_1_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[2]_i_1_n_0 ;
  wire \rdata[3]_i_1_n_0 ;
  wire \rdata[4]_i_1_n_0 ;
  wire \rdata[5]_i_1_n_0 ;
  wire \rdata[6]_i_1_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[7]_i_1_n_0 ;
  wire \rdata[7]_i_2__0_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rdata[7]_i_4__0_n_0 ;
  wire \rdata[7]_i_5__0_n_0 ;
  wire \ready_cnt[2]_i_1_n_0 ;
  wire \ready_cnt[3]_i_1_n_0 ;
  wire \ready_cnt[4]_i_1_n_0 ;
  wire \ready_cnt[5]_i_1_n_0 ;
  wire \ready_cnt[5]_i_2_n_0 ;
  wire \ready_cnt[6]_i_1_n_0 ;
  wire \ready_cnt[7]_i_1_n_0 ;
  wire \ready_cnt[8]_i_1_n_0 ;
  wire \ready_cnt[9]_i_1_n_0 ;
  wire \ready_cnt[9]_i_2_n_0 ;
  wire \ready_cnt[9]_i_3_n_0 ;
  wire [9:0]ready_cnt_reg;
  wire rw_flag_i_1_n_0;
  wire rw_flag_reg_n_0;
  wire sck;
  wire sck_cnt3;
  wire sck_cnt3_carry_i_1_n_0;
  wire sck_cnt3_carry_i_2_n_0;
  wire sck_cnt3_carry_i_3_n_0;
  wire sck_cnt3_carry_i_4_n_0;
  wire sck_cnt3_carry_n_1;
  wire sck_cnt3_carry_n_2;
  wire sck_cnt3_carry_n_3;
  wire \sck_cnt[2]_i_1_n_0 ;
  wire \sck_cnt[3]_i_1_n_0 ;
  wire \sck_cnt[4]_i_1_n_0 ;
  wire \sck_cnt[4]_i_2_n_0 ;
  wire \sck_cnt[5]_i_1_n_0 ;
  wire \sck_cnt[5]_i_2_n_0 ;
  wire \sck_cnt[6]_i_1_n_0 ;
  wire \sck_cnt[7]_i_1_n_0 ;
  wire \sck_cnt[8]_i_1_n_0 ;
  wire \sck_cnt[8]_i_2_n_0 ;
  wire \sck_cnt[9]_i_1_n_0 ;
  wire \sck_cnt[9]_i_2_n_0 ;
  wire \sck_cnt[9]_i_3_n_0 ;
  wire \sck_cnt_reg_n_0_[0] ;
  wire \sck_cnt_reg_n_0_[1] ;
  wire \sck_cnt_reg_n_0_[2] ;
  wire \sck_cnt_reg_n_0_[3] ;
  wire \sck_cnt_reg_n_0_[4] ;
  wire \sck_cnt_reg_n_0_[5] ;
  wire \sck_cnt_reg_n_0_[6] ;
  wire \sck_cnt_reg_n_0_[7] ;
  wire \sck_cnt_reg_n_0_[8] ;
  wire \sck_cnt_reg_n_0_[9] ;
  wire sck_i_1_n_0;
  wire \sck_index[2]_i_1_n_0 ;
  wire \sck_index[3]_i_1_n_0 ;
  wire \sck_index[4]_i_1_n_0 ;
  wire \sck_index[5]_i_1_n_0 ;
  wire \sck_index[5]_i_2_n_0 ;
  wire \sck_index_reg_n_0_[0] ;
  wire \sck_index_reg_n_0_[1] ;
  wire \sck_index_reg_n_0_[2] ;
  wire \sck_index_reg_n_0_[3] ;
  wire \sck_index_reg_n_0_[4] ;
  wire \sck_index_reg_n_0_[5] ;
  wire ss;
  wire ss_i_1_n_0;
  wire ss_i_2_n_0;
  wire ss_i_3_n_0;
  wire ss_i_4_n_0;
  wire start_r;
  wire start_r0;
  wire start_w;
  wire startr_1d;
  wire startr_2d;
  wire startw_1d_reg_n_0;
  wire startw_2d_reg_n_0;
  wire [3:0]NLW_m_state4_carry_O_UNCONNECTED;
  wire [3:0]NLW_sck_cnt3_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \done_cnt[0]_i_1 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(done_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \done_cnt[1]_i_1 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(done_cnt_reg[1]),
        .I3(done_cnt_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h08888000)) 
    \done_cnt[2]_i_1 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(done_cnt_reg[0]),
        .I3(done_cnt_reg[1]),
        .I4(done_cnt_reg[2]),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \done_cnt[3]_i_1 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(done_cnt_reg[1]),
        .I3(done_cnt_reg[0]),
        .I4(done_cnt_reg[2]),
        .I5(done_cnt_reg[3]),
        .O(p_0_in__1[3]));
  FDCE \done_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(p_0_in__1[0]),
        .Q(done_cnt_reg[0]));
  FDCE \done_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(p_0_in__1[1]),
        .Q(done_cnt_reg[1]));
  FDCE \done_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(p_0_in__1[2]),
        .Q(done_cnt_reg[2]));
  FDCE \done_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(p_0_in__1[3]),
        .Q(done_cnt_reg[3]));
  LUT6 #(
    .INIT(64'hDD0DDD0DDD0D0000)) 
    done_i_1
       (.I0(startw_1d_reg_n_0),
        .I1(startw_2d_reg_n_0),
        .I2(startr_1d),
        .I3(startr_2d),
        .I4(\m_state[1]_i_3_n_0 ),
        .I5(done_mst),
        .O(done_i_1_n_0));
  FDCE done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(done_i_1_n_0),
        .Q(done_mst));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \led[7]_i_1 
       (.I0(\led_reg[0] ),
        .I1(done_mst),
        .I2(\led_reg[0]_0 [3]),
        .I3(\led_reg[0]_0 [1]),
        .I4(\led_reg[0]_0 [0]),
        .I5(\led_reg[0]_0 [2]),
        .O(E));
  CARRY4 m_state4_carry
       (.CI(1'b0),
        .CO({m_state4,m_state4_carry_n_1,m_state4_carry_n_2,m_state4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_state4_carry_O_UNCONNECTED[3:0]),
        .S({m_state4_carry_i_1_n_0,m_state4_carry_i_2_n_0,m_state4_carry_i_3_n_0,m_state4_carry_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    m_state4_carry_i_1
       (.I0(ready_cnt_reg[9]),
        .O(m_state4_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    m_state4_carry_i_2
       (.I0(ready_cnt_reg[8]),
        .I1(ready_cnt_reg[7]),
        .I2(ready_cnt_reg[6]),
        .O(m_state4_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    m_state4_carry_i_3
       (.I0(ready_cnt_reg[3]),
        .I1(ready_cnt_reg[4]),
        .I2(ready_cnt_reg[5]),
        .O(m_state4_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    m_state4_carry_i_4
       (.I0(ready_cnt_reg[2]),
        .I1(ready_cnt_reg[0]),
        .I2(ready_cnt_reg[1]),
        .O(m_state4_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAFAFFAABBFA)) 
    \m_state[0]_i_1 
       (.I0(\m_state[1]_i_2_n_0 ),
        .I1(m_state4),
        .I2(\m_state[0]_i_2_n_0 ),
        .I3(m_state_0[0]),
        .I4(m_state_0[1]),
        .I5(\m_state[1]_i_3_n_0 ),
        .O(\m_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFABFFAAFFAA)) 
    \m_state[0]_i_1__0 
       (.I0(\m_state[0]_i_2__0_n_0 ),
        .I1(\m_state_reg[1]_0 ),
        .I2(start_r0),
        .I3(\m_state_reg[0]_2 ),
        .I4(E),
        .I5(m_state[0]),
        .O(\m_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_state[0]_i_2 
       (.I0(startr_2d),
        .I1(startr_1d),
        .I2(startw_2d_reg_n_0),
        .I3(startw_1d_reg_n_0),
        .O(\m_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \m_state[0]_i_2__0 
       (.I0(\m_state_reg[0]_3 [2]),
        .I1(\m_state_reg[0]_3 [1]),
        .I2(\m_state_reg[0]_3 [0]),
        .I3(\m_state_reg[0]_3 [3]),
        .I4(\m_state_reg[1]_2 ),
        .I5(done_mst),
        .O(\m_state[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAFFEA)) 
    \m_state[1]_i_1 
       (.I0(\m_state[1]_i_2_n_0 ),
        .I1(m_state4),
        .I2(m_state_0[0]),
        .I3(m_state_0[1]),
        .I4(\m_state[1]_i_3_n_0 ),
        .O(\m_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAA0000)) 
    \m_state[1]_i_1__0 
       (.I0(\m_state_reg[1]_0 ),
        .I1(done_mst),
        .I2(\m_state_reg[1]_2 ),
        .I3(\m_state_reg[1]_1 ),
        .I4(m_state0),
        .I5(m_state[1]),
        .O(done_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \m_state[1]_i_2 
       (.I0(\sck_index_reg_n_0_[3] ),
        .I1(\sck_index_reg_n_0_[2] ),
        .I2(\sck_index_reg_n_0_[1] ),
        .I3(\sck_index_reg_n_0_[4] ),
        .I4(\m_state[1]_i_4_n_0 ),
        .I5(\rdata[1]_i_2_n_0 ),
        .O(\m_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \m_state[1]_i_3 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(done_cnt_reg[1]),
        .I3(done_cnt_reg[0]),
        .I4(done_cnt_reg[2]),
        .I5(done_cnt_reg[3]),
        .O(\m_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \m_state[1]_i_4 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(\sck_index_reg_n_0_[0] ),
        .I3(\sck_index_reg_n_0_[5] ),
        .O(\m_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF80000000)) 
    \m_state[2]_i_1 
       (.I0(m_state[0]),
        .I1(m_state[1]),
        .I2(\m_state_reg[2] [0]),
        .I3(\m_state_reg[2] [1]),
        .I4(m_state0),
        .I5(m_state[2]),
        .O(\m_state_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_state[2]_i_2 
       (.I0(\m_state[2]_i_3_n_0 ),
        .I1(start_r0),
        .I2(\m_state_reg[0]_2 ),
        .I3(E),
        .O(m_state0));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \m_state[2]_i_3 
       (.I0(\m_state_reg[1]_0 ),
        .I1(done_mst),
        .I2(m_state[0]),
        .I3(m_state[2]),
        .I4(m_state[1]),
        .I5(\m_state_reg[1]_1 ),
        .O(\m_state[2]_i_3_n_0 ));
  FDCE \m_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\m_state[0]_i_1_n_0 ),
        .Q(m_state_0[0]));
  FDCE \m_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\m_state[1]_i_1_n_0 ),
        .Q(m_state_0[1]));
  LUT6 #(
    .INIT(64'h00AEFFFF00AE0000)) 
    mosi_i_1
       (.I0(mosi_i_2_n_0),
        .I1(mosi_i_3_n_0),
        .I2(mosi_i_4_n_0),
        .I3(mosi_i_5_n_0),
        .I4(mosi_i_6_n_0),
        .I5(mosi),
        .O(mosi_i_1_n_0));
  LUT6 #(
    .INIT(64'h2F2F0F0FFF0F0F0F)) 
    mosi_i_10
       (.I0(Q[7]),
        .I1(rw_flag_reg_n_0),
        .I2(\sck_index_reg_n_0_[1] ),
        .I3(mosi_i_11_0[1]),
        .I4(\sck_index_reg_n_0_[3] ),
        .I5(\sck_index_reg_n_0_[2] ),
        .O(mosi_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF7F)) 
    mosi_i_11
       (.I0(\sck_index_reg_n_0_[3] ),
        .I1(\sck_index_reg_n_0_[2] ),
        .I2(rw_flag_reg_n_0),
        .I3(\sck_index_reg_n_0_[1] ),
        .I4(\sck_index_reg_n_0_[4] ),
        .I5(mosi_i_14_n_0),
        .O(mosi_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h11151111)) 
    mosi_i_12
       (.I0(m_state_0[1]),
        .I1(m_state_0[0]),
        .I2(ready_cnt_reg[0]),
        .I3(ss_i_4_n_0),
        .I4(mosi_i_15_n_0),
        .O(mosi_i_12_n_0));
  LUT6 #(
    .INIT(64'h33550F0033550FFF)) 
    mosi_i_13
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(\sck_index_reg_n_0_[1] ),
        .I4(\sck_index_reg_n_0_[2] ),
        .I5(Q[6]),
        .O(mosi_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000035FF0000)) 
    mosi_i_14
       (.I0(mosi_i_11_0[2]),
        .I1(mosi_i_11_0[0]),
        .I2(\sck_index_reg_n_0_[3] ),
        .I3(\sck_index_reg_n_0_[2] ),
        .I4(\sck_index_reg_n_0_[4] ),
        .I5(\sck_index_reg_n_0_[1] ),
        .O(mosi_i_14_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    mosi_i_15
       (.I0(ready_cnt_reg[9]),
        .I1(ready_cnt_reg[8]),
        .I2(ready_cnt_reg[3]),
        .I3(ready_cnt_reg[2]),
        .I4(ready_cnt_reg[1]),
        .O(mosi_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h1113)) 
    mosi_i_2
       (.I0(\sck_index_reg_n_0_[3] ),
        .I1(mosi_i_7_n_0),
        .I2(\sck_index_reg_n_0_[1] ),
        .I3(\sck_index_reg_n_0_[2] ),
        .O(mosi_i_2_n_0));
  LUT6 #(
    .INIT(64'h10FF10FFFFFF10FF)) 
    mosi_i_3
       (.I0(\sck_index_reg_n_0_[4] ),
        .I1(rw_flag_reg_n_0),
        .I2(mosi_i_8_n_0),
        .I3(\sck_index_reg_n_0_[5] ),
        .I4(\rdata[7]_i_2__0_n_0 ),
        .I5(mosi_i_9_n_0),
        .O(mosi_i_3_n_0));
  LUT6 #(
    .INIT(64'hDFDFDFDFFFFFDFFF)) 
    mosi_i_4
       (.I0(\sck_index_reg_n_0_[0] ),
        .I1(m_state_0[0]),
        .I2(m_state_0[1]),
        .I3(mosi_i_10_n_0),
        .I4(mosi_i_11_n_0),
        .I5(\sck_index_reg_n_0_[5] ),
        .O(mosi_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hEEEFEEEE)) 
    mosi_i_5
       (.I0(mosi_i_12_n_0),
        .I1(\rdata[1]_i_2_n_0 ),
        .I2(mosi_i_7_n_0),
        .I3(\sck_index_reg_n_0_[3] ),
        .I4(\sck_index_reg_n_0_[2] ),
        .O(mosi_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABABABA)) 
    mosi_i_6
       (.I0(mosi_i_12_n_0),
        .I1(\sck_cnt[9]_i_2_n_0 ),
        .I2(\sck_index_reg_n_0_[0] ),
        .I3(\sck_index_reg_n_0_[5] ),
        .I4(\sck_index_reg_n_0_[4] ),
        .I5(\rdata[1]_i_2_n_0 ),
        .O(mosi_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    mosi_i_7
       (.I0(\sck_index_reg_n_0_[5] ),
        .I1(m_state_0[1]),
        .I2(m_state_0[0]),
        .I3(\sck_index_reg_n_0_[0] ),
        .I4(\sck_index_reg_n_0_[4] ),
        .O(mosi_i_7_n_0));
  LUT6 #(
    .INIT(64'h1D111D1D1D111111)) 
    mosi_i_8
       (.I0(mosi_i_13_n_0),
        .I1(\sck_index_reg_n_0_[3] ),
        .I2(\sck_index_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\sck_index_reg_n_0_[1] ),
        .I5(Q[2]),
        .O(mosi_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    mosi_i_9
       (.I0(\sck_cnt[9]_i_2_n_0 ),
        .I1(\sck_index_reg_n_0_[0] ),
        .I2(\sck_index_reg_n_0_[4] ),
        .I3(Q[0]),
        .I4(rw_flag_reg_n_0),
        .I5(\rdata[1]_i_3_n_0 ),
        .O(mosi_i_9_n_0));
  FDCE mosi_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(mosi_i_1_n_0),
        .Q(mosi));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \rdata[0]_i_1 
       (.I0(miso),
        .I1(\rdata[6]_i_2_n_0 ),
        .I2(\sck_index_reg_n_0_[2] ),
        .I3(\sck_index_reg_n_0_[3] ),
        .I4(\rdata[7]_i_3_n_0 ),
        .I5(D[0]),
        .O(\rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \rdata[1]_i_1 
       (.I0(miso),
        .I1(\rdata[1]_i_2_n_0 ),
        .I2(\sck_index_reg_n_0_[1] ),
        .I3(\rdata[1]_i_3_n_0 ),
        .I4(\rdata[7]_i_3_n_0 ),
        .I5(D[1]),
        .O(\rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \rdata[1]_i_2 
       (.I0(\sck_cnt_reg_n_0_[9] ),
        .I1(\sck_cnt_reg_n_0_[4] ),
        .I2(\sck_cnt_reg_n_0_[3] ),
        .I3(\sck_cnt_reg_n_0_[5] ),
        .I4(\rdata[1]_i_4_n_0 ),
        .I5(\rdata[7]_i_4__0_n_0 ),
        .O(\rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[1]_i_3 
       (.I0(\sck_index_reg_n_0_[2] ),
        .I1(\sck_index_reg_n_0_[3] ),
        .O(\rdata[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rdata[1]_i_4 
       (.I0(\sck_cnt_reg_n_0_[2] ),
        .I1(\sck_cnt_reg_n_0_[0] ),
        .I2(\sck_cnt_reg_n_0_[1] ),
        .O(\rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \rdata[2]_i_1 
       (.I0(miso),
        .I1(\rdata[6]_i_2_n_0 ),
        .I2(\sck_index_reg_n_0_[2] ),
        .I3(\sck_index_reg_n_0_[3] ),
        .I4(\rdata[7]_i_3_n_0 ),
        .I5(D[2]),
        .O(\rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \rdata[3]_i_1 
       (.I0(miso),
        .I1(\rdata[7]_i_2__0_n_0 ),
        .I2(\sck_index_reg_n_0_[2] ),
        .I3(\sck_index_reg_n_0_[3] ),
        .I4(\rdata[7]_i_3_n_0 ),
        .I5(D[3]),
        .O(\rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \rdata[4]_i_1 
       (.I0(miso),
        .I1(\rdata[6]_i_2_n_0 ),
        .I2(\sck_index_reg_n_0_[3] ),
        .I3(\sck_index_reg_n_0_[2] ),
        .I4(\rdata[7]_i_3_n_0 ),
        .I5(D[4]),
        .O(\rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \rdata[5]_i_1 
       (.I0(miso),
        .I1(\rdata[7]_i_2__0_n_0 ),
        .I2(\sck_index_reg_n_0_[3] ),
        .I3(\sck_index_reg_n_0_[2] ),
        .I4(\rdata[7]_i_3_n_0 ),
        .I5(D[5]),
        .O(\rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \rdata[6]_i_1 
       (.I0(miso),
        .I1(\rdata[7]_i_3_n_0 ),
        .I2(\sck_index_reg_n_0_[2] ),
        .I3(\sck_index_reg_n_0_[3] ),
        .I4(\rdata[6]_i_2_n_0 ),
        .I5(D[6]),
        .O(\rdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata[6]_i_2 
       (.I0(\sck_index_reg_n_0_[1] ),
        .I1(\rdata[1]_i_2_n_0 ),
        .O(\rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \rdata[7]_i_1 
       (.I0(miso),
        .I1(\rdata[7]_i_2__0_n_0 ),
        .I2(\rdata[7]_i_3_n_0 ),
        .I3(\sck_index_reg_n_0_[2] ),
        .I4(\sck_index_reg_n_0_[3] ),
        .I5(D[7]),
        .O(\rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \rdata[7]_i_2__0 
       (.I0(\sck_index_reg_n_0_[1] ),
        .I1(\rdata[7]_i_4__0_n_0 ),
        .I2(\sck_cnt_reg_n_0_[1] ),
        .I3(\sck_cnt_reg_n_0_[0] ),
        .I4(\sck_cnt_reg_n_0_[2] ),
        .I5(\rdata[7]_i_5__0_n_0 ),
        .O(\rdata[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \rdata[7]_i_3 
       (.I0(\sck_index_reg_n_0_[4] ),
        .I1(\sck_index_reg_n_0_[5] ),
        .I2(\sck_index_reg_n_0_[0] ),
        .I3(m_state_0[1]),
        .I4(m_state_0[0]),
        .O(\rdata[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \rdata[7]_i_4__0 
       (.I0(\sck_cnt_reg_n_0_[6] ),
        .I1(\sck_cnt_reg_n_0_[7] ),
        .I2(\sck_cnt_reg_n_0_[8] ),
        .O(\rdata[7]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdata[7]_i_5__0 
       (.I0(\sck_cnt_reg_n_0_[9] ),
        .I1(\sck_cnt_reg_n_0_[4] ),
        .I2(\sck_cnt_reg_n_0_[3] ),
        .I3(\sck_cnt_reg_n_0_[5] ),
        .O(\rdata[7]_i_5__0_n_0 ));
  FDCE \rdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\rdata[0]_i_1_n_0 ),
        .Q(D[0]));
  FDCE \rdata_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\rdata[1]_i_1_n_0 ),
        .Q(D[1]));
  FDCE \rdata_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\rdata[2]_i_1_n_0 ),
        .Q(D[2]));
  FDCE \rdata_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\rdata[3]_i_1_n_0 ),
        .Q(D[3]));
  FDCE \rdata_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\rdata[4]_i_1_n_0 ),
        .Q(D[4]));
  FDCE \rdata_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\rdata[5]_i_1_n_0 ),
        .Q(D[5]));
  FDCE \rdata_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\rdata[6]_i_1_n_0 ),
        .Q(D[6]));
  FDCE \rdata_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\rdata[7]_i_1_n_0 ),
        .Q(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ready_cnt[0]_i_1 
       (.I0(m_state_0[1]),
        .I1(m_state_0[0]),
        .I2(ready_cnt_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \ready_cnt[1]_i_1 
       (.I0(ready_cnt_reg[0]),
        .I1(ready_cnt_reg[1]),
        .I2(m_state_0[0]),
        .I3(m_state_0[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \ready_cnt[2]_i_1 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(ready_cnt_reg[1]),
        .I3(ready_cnt_reg[0]),
        .I4(ready_cnt_reg[2]),
        .O(\ready_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \ready_cnt[3]_i_1 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(ready_cnt_reg[0]),
        .I3(ready_cnt_reg[1]),
        .I4(ready_cnt_reg[2]),
        .I5(ready_cnt_reg[3]),
        .O(\ready_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \ready_cnt[4]_i_1 
       (.I0(\ready_cnt[9]_i_2_n_0 ),
        .I1(ready_cnt_reg[2]),
        .I2(ready_cnt_reg[1]),
        .I3(ready_cnt_reg[0]),
        .I4(ready_cnt_reg[3]),
        .I5(ready_cnt_reg[4]),
        .O(\ready_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h2002)) 
    \ready_cnt[5]_i_1 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(\ready_cnt[5]_i_2_n_0 ),
        .I3(ready_cnt_reg[5]),
        .O(\ready_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \ready_cnt[5]_i_2 
       (.I0(ready_cnt_reg[3]),
        .I1(ready_cnt_reg[0]),
        .I2(ready_cnt_reg[1]),
        .I3(ready_cnt_reg[2]),
        .I4(ready_cnt_reg[4]),
        .O(\ready_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h2002)) 
    \ready_cnt[6]_i_1 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(\ready_cnt[9]_i_3_n_0 ),
        .I3(ready_cnt_reg[6]),
        .O(\ready_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h20220200)) 
    \ready_cnt[7]_i_1 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(\ready_cnt[9]_i_3_n_0 ),
        .I3(ready_cnt_reg[6]),
        .I4(ready_cnt_reg[7]),
        .O(\ready_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222022200002000)) 
    \ready_cnt[8]_i_1 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(ready_cnt_reg[7]),
        .I3(ready_cnt_reg[6]),
        .I4(\ready_cnt[9]_i_3_n_0 ),
        .I5(ready_cnt_reg[8]),
        .O(\ready_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4555555510000000)) 
    \ready_cnt[9]_i_1 
       (.I0(\ready_cnt[9]_i_2_n_0 ),
        .I1(\ready_cnt[9]_i_3_n_0 ),
        .I2(ready_cnt_reg[6]),
        .I3(ready_cnt_reg[7]),
        .I4(ready_cnt_reg[8]),
        .I5(ready_cnt_reg[9]),
        .O(\ready_cnt[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ready_cnt[9]_i_2 
       (.I0(m_state_0[1]),
        .I1(m_state_0[0]),
        .O(\ready_cnt[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ready_cnt[9]_i_3 
       (.I0(ready_cnt_reg[4]),
        .I1(ready_cnt_reg[2]),
        .I2(ready_cnt_reg[1]),
        .I3(ready_cnt_reg[0]),
        .I4(ready_cnt_reg[3]),
        .I5(ready_cnt_reg[5]),
        .O(\ready_cnt[9]_i_3_n_0 ));
  FDCE \ready_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(p_0_in__2[0]),
        .Q(ready_cnt_reg[0]));
  FDCE \ready_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(p_0_in__2[1]),
        .Q(ready_cnt_reg[1]));
  FDCE \ready_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\ready_cnt[2]_i_1_n_0 ),
        .Q(ready_cnt_reg[2]));
  FDCE \ready_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\ready_cnt[3]_i_1_n_0 ),
        .Q(ready_cnt_reg[3]));
  FDCE \ready_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\ready_cnt[4]_i_1_n_0 ),
        .Q(ready_cnt_reg[4]));
  FDCE \ready_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\ready_cnt[5]_i_1_n_0 ),
        .Q(ready_cnt_reg[5]));
  FDCE \ready_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\ready_cnt[6]_i_1_n_0 ),
        .Q(ready_cnt_reg[6]));
  FDCE \ready_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\ready_cnt[7]_i_1_n_0 ),
        .Q(ready_cnt_reg[7]));
  FDCE \ready_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\ready_cnt[8]_i_1_n_0 ),
        .Q(ready_cnt_reg[8]));
  FDCE \ready_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\ready_cnt[9]_i_1_n_0 ),
        .Q(ready_cnt_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hF0FF4044)) 
    rw_flag_i_1
       (.I0(startr_2d),
        .I1(startr_1d),
        .I2(startw_2d_reg_n_0),
        .I3(startw_1d_reg_n_0),
        .I4(rw_flag_reg_n_0),
        .O(rw_flag_i_1_n_0));
  FDCE rw_flag_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(rw_flag_i_1_n_0),
        .Q(rw_flag_reg_n_0));
  CARRY4 sck_cnt3_carry
       (.CI(1'b0),
        .CO({sck_cnt3,sck_cnt3_carry_n_1,sck_cnt3_carry_n_2,sck_cnt3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sck_cnt3_carry_O_UNCONNECTED[3:0]),
        .S({sck_cnt3_carry_i_1_n_0,sck_cnt3_carry_i_2_n_0,sck_cnt3_carry_i_3_n_0,sck_cnt3_carry_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sck_cnt3_carry_i_1
       (.I0(\sck_cnt_reg_n_0_[9] ),
        .O(sck_cnt3_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    sck_cnt3_carry_i_2
       (.I0(\sck_cnt_reg_n_0_[6] ),
        .I1(\sck_cnt_reg_n_0_[7] ),
        .I2(\sck_cnt_reg_n_0_[8] ),
        .O(sck_cnt3_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    sck_cnt3_carry_i_3
       (.I0(\sck_cnt_reg_n_0_[3] ),
        .I1(\sck_cnt_reg_n_0_[4] ),
        .I2(\sck_cnt_reg_n_0_[5] ),
        .O(sck_cnt3_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    sck_cnt3_carry_i_4
       (.I0(\sck_cnt_reg_n_0_[1] ),
        .I1(\sck_cnt_reg_n_0_[0] ),
        .I2(\sck_cnt_reg_n_0_[2] ),
        .O(sck_cnt3_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \sck_cnt[0]_i_1 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(sck_cnt3),
        .I3(\sck_cnt_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h00040400)) 
    \sck_cnt[1]_i_1 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(sck_cnt3),
        .I3(\sck_cnt_reg_n_0_[1] ),
        .I4(\sck_cnt_reg_n_0_[0] ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h0000000002202020)) 
    \sck_cnt[2]_i_1 
       (.I0(m_state_0[1]),
        .I1(m_state_0[0]),
        .I2(\sck_cnt_reg_n_0_[2] ),
        .I3(\sck_cnt_reg_n_0_[0] ),
        .I4(\sck_cnt_reg_n_0_[1] ),
        .I5(sck_cnt3),
        .O(\sck_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000014444444)) 
    \sck_cnt[3]_i_1 
       (.I0(\sck_cnt[9]_i_2_n_0 ),
        .I1(\sck_cnt_reg_n_0_[3] ),
        .I2(\sck_cnt_reg_n_0_[2] ),
        .I3(\sck_cnt_reg_n_0_[1] ),
        .I4(\sck_cnt_reg_n_0_[0] ),
        .I5(sck_cnt3),
        .O(\sck_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044144444)) 
    \sck_cnt[4]_i_1 
       (.I0(\sck_cnt[9]_i_2_n_0 ),
        .I1(\sck_cnt_reg_n_0_[4] ),
        .I2(\sck_cnt_reg_n_0_[3] ),
        .I3(\sck_cnt[4]_i_2_n_0 ),
        .I4(\sck_cnt_reg_n_0_[2] ),
        .I5(sck_cnt3),
        .O(\sck_cnt[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sck_cnt[4]_i_2 
       (.I0(\sck_cnt_reg_n_0_[1] ),
        .I1(\sck_cnt_reg_n_0_[0] ),
        .O(\sck_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h00002002)) 
    \sck_cnt[5]_i_1 
       (.I0(m_state_0[1]),
        .I1(m_state_0[0]),
        .I2(\sck_cnt_reg_n_0_[5] ),
        .I3(\sck_cnt[5]_i_2_n_0 ),
        .I4(sck_cnt3),
        .O(\sck_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sck_cnt[5]_i_2 
       (.I0(\sck_cnt_reg_n_0_[3] ),
        .I1(\sck_cnt_reg_n_0_[0] ),
        .I2(\sck_cnt_reg_n_0_[1] ),
        .I3(\sck_cnt_reg_n_0_[2] ),
        .I4(\sck_cnt_reg_n_0_[4] ),
        .O(\sck_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h00002002)) 
    \sck_cnt[6]_i_1 
       (.I0(m_state_0[1]),
        .I1(m_state_0[0]),
        .I2(\sck_cnt_reg_n_0_[6] ),
        .I3(\sck_cnt[8]_i_2_n_0 ),
        .I4(sck_cnt3),
        .O(\sck_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020200220)) 
    \sck_cnt[7]_i_1 
       (.I0(m_state_0[1]),
        .I1(m_state_0[0]),
        .I2(\sck_cnt_reg_n_0_[7] ),
        .I3(\sck_cnt_reg_n_0_[6] ),
        .I4(\sck_cnt[8]_i_2_n_0 ),
        .I5(sck_cnt3),
        .O(\sck_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000041444444)) 
    \sck_cnt[8]_i_1 
       (.I0(\sck_cnt[9]_i_2_n_0 ),
        .I1(\sck_cnt_reg_n_0_[8] ),
        .I2(\sck_cnt[8]_i_2_n_0 ),
        .I3(\sck_cnt_reg_n_0_[6] ),
        .I4(\sck_cnt_reg_n_0_[7] ),
        .I5(sck_cnt3),
        .O(\sck_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sck_cnt[8]_i_2 
       (.I0(\sck_cnt_reg_n_0_[4] ),
        .I1(\sck_cnt_reg_n_0_[2] ),
        .I2(\sck_cnt_reg_n_0_[1] ),
        .I3(\sck_cnt_reg_n_0_[0] ),
        .I4(\sck_cnt_reg_n_0_[3] ),
        .I5(\sck_cnt_reg_n_0_[5] ),
        .O(\sck_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044441444)) 
    \sck_cnt[9]_i_1 
       (.I0(\sck_cnt[9]_i_2_n_0 ),
        .I1(\sck_cnt_reg_n_0_[9] ),
        .I2(\sck_cnt_reg_n_0_[8] ),
        .I3(\sck_cnt_reg_n_0_[7] ),
        .I4(\sck_cnt[9]_i_3_n_0 ),
        .I5(sck_cnt3),
        .O(\sck_cnt[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sck_cnt[9]_i_2 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .O(\sck_cnt[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \sck_cnt[9]_i_3 
       (.I0(\sck_cnt_reg_n_0_[5] ),
        .I1(\sck_cnt_reg_n_0_[3] ),
        .I2(\sck_cnt[4]_i_2_n_0 ),
        .I3(\sck_cnt_reg_n_0_[2] ),
        .I4(\sck_cnt_reg_n_0_[4] ),
        .I5(\sck_cnt_reg_n_0_[6] ),
        .O(\sck_cnt[9]_i_3_n_0 ));
  FDCE \sck_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(p_0_in[0]),
        .Q(\sck_cnt_reg_n_0_[0] ));
  FDCE \sck_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(p_0_in[1]),
        .Q(\sck_cnt_reg_n_0_[1] ));
  FDCE \sck_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\sck_cnt[2]_i_1_n_0 ),
        .Q(\sck_cnt_reg_n_0_[2] ));
  FDCE \sck_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\sck_cnt[3]_i_1_n_0 ),
        .Q(\sck_cnt_reg_n_0_[3] ));
  FDCE \sck_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\sck_cnt[4]_i_1_n_0 ),
        .Q(\sck_cnt_reg_n_0_[4] ));
  FDCE \sck_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\sck_cnt[5]_i_1_n_0 ),
        .Q(\sck_cnt_reg_n_0_[5] ));
  FDCE \sck_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\sck_cnt[6]_i_1_n_0 ),
        .Q(\sck_cnt_reg_n_0_[6] ));
  FDCE \sck_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\sck_cnt[7]_i_1_n_0 ),
        .Q(\sck_cnt_reg_n_0_[7] ));
  FDCE \sck_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\sck_cnt[8]_i_1_n_0 ),
        .Q(\sck_cnt_reg_n_0_[8] ));
  FDCE \sck_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\sck_cnt[9]_i_1_n_0 ),
        .Q(\sck_cnt_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h2220202000020202)) 
    sck_i_1
       (.I0(m_state_0[1]),
        .I1(m_state_0[0]),
        .I2(\rdata[1]_i_2_n_0 ),
        .I3(\sck_index_reg_n_0_[4] ),
        .I4(\sck_index_reg_n_0_[5] ),
        .I5(sck),
        .O(sck_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sck_index[0]_i_1 
       (.I0(m_state_0[0]),
        .I1(m_state_0[1]),
        .I2(\sck_index_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \sck_index[1]_i_1 
       (.I0(\sck_index_reg_n_0_[1] ),
        .I1(\sck_index_reg_n_0_[0] ),
        .I2(m_state_0[1]),
        .I3(m_state_0[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \sck_index[2]_i_1 
       (.I0(m_state_0[1]),
        .I1(m_state_0[0]),
        .I2(\sck_index_reg_n_0_[0] ),
        .I3(\sck_index_reg_n_0_[1] ),
        .I4(\sck_index_reg_n_0_[2] ),
        .O(\sck_index[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \sck_index[3]_i_1 
       (.I0(m_state_0[1]),
        .I1(m_state_0[0]),
        .I2(\sck_index_reg_n_0_[1] ),
        .I3(\sck_index_reg_n_0_[0] ),
        .I4(\sck_index_reg_n_0_[2] ),
        .I5(\sck_index_reg_n_0_[3] ),
        .O(\sck_index[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \sck_index[4]_i_1 
       (.I0(\sck_cnt[9]_i_2_n_0 ),
        .I1(\sck_index_reg_n_0_[1] ),
        .I2(\sck_index_reg_n_0_[0] ),
        .I3(\sck_index_reg_n_0_[3] ),
        .I4(\sck_index_reg_n_0_[2] ),
        .I5(\sck_index_reg_n_0_[4] ),
        .O(\sck_index[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \sck_index[5]_i_1 
       (.I0(m_state_0[1]),
        .I1(m_state_0[0]),
        .I2(\rdata[1]_i_2_n_0 ),
        .O(\sck_index[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \sck_index[5]_i_2 
       (.I0(\sck_cnt[9]_i_2_n_0 ),
        .I1(\rdata[1]_i_3_n_0 ),
        .I2(\sck_index_reg_n_0_[0] ),
        .I3(\sck_index_reg_n_0_[1] ),
        .I4(\sck_index_reg_n_0_[4] ),
        .I5(\sck_index_reg_n_0_[5] ),
        .O(\sck_index[5]_i_2_n_0 ));
  FDCE \sck_index_reg[0] 
       (.C(clk),
        .CE(\sck_index[5]_i_1_n_0 ),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(p_0_in__0[0]),
        .Q(\sck_index_reg_n_0_[0] ));
  FDCE \sck_index_reg[1] 
       (.C(clk),
        .CE(\sck_index[5]_i_1_n_0 ),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(p_0_in__0[1]),
        .Q(\sck_index_reg_n_0_[1] ));
  FDCE \sck_index_reg[2] 
       (.C(clk),
        .CE(\sck_index[5]_i_1_n_0 ),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\sck_index[2]_i_1_n_0 ),
        .Q(\sck_index_reg_n_0_[2] ));
  FDCE \sck_index_reg[3] 
       (.C(clk),
        .CE(\sck_index[5]_i_1_n_0 ),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\sck_index[3]_i_1_n_0 ),
        .Q(\sck_index_reg_n_0_[3] ));
  FDCE \sck_index_reg[4] 
       (.C(clk),
        .CE(\sck_index[5]_i_1_n_0 ),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\sck_index[4]_i_1_n_0 ),
        .Q(\sck_index_reg_n_0_[4] ));
  FDCE \sck_index_reg[5] 
       (.C(clk),
        .CE(\sck_index[5]_i_1_n_0 ),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(\sck_index[5]_i_2_n_0 ),
        .Q(\sck_index_reg_n_0_[5] ));
  FDCE sck_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(sck_i_1_n_0),
        .Q(sck));
  LUT5 #(
    .INIT(32'hBBBFAAAF)) 
    ss_i_1
       (.I0(\m_state[1]_i_3_n_0 ),
        .I1(ss_i_2_n_0),
        .I2(m_state_0[1]),
        .I3(m_state_0[0]),
        .I4(ss),
        .O(ss_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    ss_i_2
       (.I0(ready_cnt_reg[3]),
        .I1(ready_cnt_reg[9]),
        .I2(ready_cnt_reg[8]),
        .I3(\ready_cnt[9]_i_2_n_0 ),
        .I4(ss_i_3_n_0),
        .I5(ss_i_4_n_0),
        .O(ss_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ss_i_3
       (.I0(ready_cnt_reg[2]),
        .I1(ready_cnt_reg[0]),
        .I2(ready_cnt_reg[1]),
        .O(ss_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ss_i_4
       (.I0(ready_cnt_reg[7]),
        .I1(ready_cnt_reg[6]),
        .I2(ready_cnt_reg[5]),
        .I3(ready_cnt_reg[4]),
        .O(ss_i_4_n_0));
  FDPE ss_reg
       (.C(clk),
        .CE(1'b1),
        .D(ss_i_1_n_0),
        .PRE(\done_cnt_reg[3]_0 ),
        .Q(ss));
  FDCE startr_1d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(start_r),
        .Q(startr_1d));
  FDCE startr_2d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(startr_1d),
        .Q(startr_2d));
  FDCE startw_1d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(start_w),
        .Q(startw_1d_reg_n_0));
  FDCE startw_2d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\done_cnt_reg[3]_0 ),
        .D(startw_1d_reg_n_0),
        .Q(startw_2d_reg_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_slave
   (reset_0,
    miso,
    ss,
    clk,
    sck,
    mosi,
    reset);
  output reset_0;
  output miso;
  input ss;
  input clk;
  input sck;
  input mosi;
  input reset;

  wire clk;
  wire \done_cnt[0]_i_1__0_n_0 ;
  wire \done_cnt[1]_i_1__0_n_0 ;
  wire \done_cnt_reg_n_0_[0] ;
  wire \done_cnt_reg_n_0_[1] ;
  wire miso;
  wire miso_i_1_n_0;
  wire miso_i_3_n_0;
  wire miso_i_4_n_0;
  wire miso_reg_i_2_n_0;
  wire mosi;
  wire mosi_1d_reg_n_0;
  wire mosi_2d_reg_n_0;
  wire [3:0]p_0_in__3;
  wire [3:0]p_0_in__4;
  wire [3:0]p_0_in__5;
  wire [3:0]p_0_in__6;
  wire [3:0]p_0_in__7;
  wire \ra_sckn_cnt[3]_i_1_n_0 ;
  wire \ra_sckn_cnt[3]_i_3_n_0 ;
  wire \ra_sckn_cnt_reg_n_0_[0] ;
  wire \ra_sckn_cnt_reg_n_0_[1] ;
  wire \ra_sckn_cnt_reg_n_0_[2] ;
  wire \ra_sckn_cnt_reg_n_0_[3] ;
  wire \raddr[0]_i_1_n_0 ;
  wire \raddr[0]_i_2_n_0 ;
  wire \raddr[1]_i_1_n_0 ;
  wire \raddr[2]_i_1_n_0 ;
  wire \raddr[3]_i_1_n_0 ;
  wire \raddr[3]_i_2_n_0 ;
  wire \raddr[4]_i_1_n_0 ;
  wire \raddr[4]_i_2_n_0 ;
  wire \raddr[5]_i_1_n_0 ;
  wire \raddr[5]_i_2_n_0 ;
  wire \raddr[6]_i_1_n_0 ;
  wire \raddr[6]_i_2_n_0 ;
  wire \raddr[7]_i_1_n_0 ;
  wire \raddr[7]_i_2_n_0 ;
  wire \raddr[7]_i_3_n_0 ;
  wire \raddr[7]_i_4_n_0 ;
  wire \raddr_reg_n_0_[0] ;
  wire \raddr_reg_n_0_[1] ;
  wire \raddr_reg_n_0_[2] ;
  wire \raddr_reg_n_0_[3] ;
  wire \raddr_reg_n_0_[4] ;
  wire \raddr_reg_n_0_[5] ;
  wire \raddr_reg_n_0_[6] ;
  wire \raddr_reg_n_0_[7] ;
  wire \rd_sckn_cnt[3]_i_1_n_0 ;
  wire \rd_sckn_cnt[3]_i_3_n_0 ;
  wire \rd_sckn_cnt_reg_n_0_[0] ;
  wire \rd_sckn_cnt_reg_n_0_[1] ;
  wire \rd_sckn_cnt_reg_n_0_[2] ;
  wire \rd_sckn_cnt_reg_n_0_[3] ;
  wire rdata0;
  wire \rdata[0]_i_1__0_n_0 ;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[1]_i_1__0_n_0 ;
  wire \rdata[1]_i_2__0_n_0 ;
  wire \rdata[2]_i_1__0_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[3]_i_1__0_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[4]_i_1__0_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[5]_i_1__0_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[6]_i_1__0_n_0 ;
  wire \rdata[6]_i_2__0_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_3__0_n_0 ;
  wire \rdata[7]_i_4_n_0 ;
  wire \rdata[7]_i_5_n_0 ;
  wire \rdata[7]_i_6_n_0 ;
  wire \rdata[7]_i_7_n_0 ;
  wire \rdata[7]_i_8_n_0 ;
  wire \rdata[7]_i_9_n_0 ;
  wire \rdata_reg_n_0_[0] ;
  wire \rdata_reg_n_0_[1] ;
  wire \rdata_reg_n_0_[2] ;
  wire \rdata_reg_n_0_[3] ;
  wire \rdata_reg_n_0_[4] ;
  wire \rdata_reg_n_0_[5] ;
  wire \rdata_reg_n_0_[6] ;
  wire \rdata_reg_n_0_[7] ;
  wire reset;
  wire reset_0;
  wire \s_state[0]_i_1_n_0 ;
  wire \s_state[0]_i_2_n_0 ;
  wire \s_state[0]_i_3_n_0 ;
  wire \s_state[0]_i_4_n_0 ;
  wire \s_state[1]_i_1_n_0 ;
  wire \s_state[1]_i_2_n_0 ;
  wire \s_state[1]_i_3_n_0 ;
  wire \s_state[1]_i_4_n_0 ;
  wire \s_state[1]_i_5_n_0 ;
  wire \s_state[1]_i_6_n_0 ;
  wire \s_state[2]_i_1_n_0 ;
  wire \s_state[2]_i_2_n_0 ;
  wire \s_state[2]_i_3_n_0 ;
  wire \s_state[2]_i_4_n_0 ;
  wire \s_state[2]_i_5_n_0 ;
  wire \s_state[2]_i_6_n_0 ;
  wire \s_state_reg_n_0_[0] ;
  wire \s_state_reg_n_0_[1] ;
  wire \s_state_reg_n_0_[2] ;
  wire sck;
  wire sck_1d;
  wire sck_2d;
  wire sck_nedge_1d_i_1_n_0;
  wire sck_nedge_1d_reg_n_0;
  wire sck_pedge_1d;
  wire sck_pedge_1d_i_1_n_0;
  wire \sid_sckn_cnt[3]_i_1_n_0 ;
  wire \sid_sckn_cnt[3]_i_3_n_0 ;
  wire \sid_sckn_cnt_reg_n_0_[0] ;
  wire \sid_sckn_cnt_reg_n_0_[1] ;
  wire \sid_sckn_cnt_reg_n_0_[2] ;
  wire \sid_sckn_cnt_reg_n_0_[3] ;
  wire \slave_id[0]_i_1_n_0 ;
  wire \slave_id[1]_i_1_n_0 ;
  wire \slave_id[2]_i_1_n_0 ;
  wire \slave_id[2]_i_2_n_0 ;
  wire \slave_id[3]_i_1_n_0 ;
  wire \slave_id[4]_i_1_n_0 ;
  wire \slave_id[4]_i_2_n_0 ;
  wire \slave_id[5]_i_1_n_0 ;
  wire \slave_id[5]_i_2_n_0 ;
  wire \slave_id[6]_i_1_n_0 ;
  wire \slave_id[6]_i_2_n_0 ;
  wire \slave_id[6]_i_3_n_0 ;
  wire \slave_id[6]_i_4_n_0 ;
  wire \slave_id[7]_i_1_n_0 ;
  wire \slave_id[7]_i_2_n_0 ;
  wire \slave_id[7]_i_3_n_0 ;
  wire \slave_id_reg_n_0_[0] ;
  wire \slave_id_reg_n_0_[1] ;
  wire \slave_id_reg_n_0_[2] ;
  wire \slave_id_reg_n_0_[3] ;
  wire \slave_id_reg_n_0_[4] ;
  wire \slave_id_reg_n_0_[5] ;
  wire \slave_id_reg_n_0_[6] ;
  wire \slave_id_reg_n_0_[7] ;
  wire ss;
  wire ss_1d;
  wire ss_2d;
  wire \user_reg1[7]_i_1_n_0 ;
  wire \user_reg1[7]_i_2_n_0 ;
  wire \user_reg1_reg_n_0_[0] ;
  wire \user_reg1_reg_n_0_[1] ;
  wire \user_reg1_reg_n_0_[2] ;
  wire \user_reg1_reg_n_0_[3] ;
  wire \user_reg1_reg_n_0_[4] ;
  wire \user_reg1_reg_n_0_[5] ;
  wire \user_reg1_reg_n_0_[6] ;
  wire \user_reg1_reg_n_0_[7] ;
  wire \user_reg2[7]_i_1_n_0 ;
  wire \user_reg2_reg_n_0_[0] ;
  wire \user_reg2_reg_n_0_[1] ;
  wire \user_reg2_reg_n_0_[2] ;
  wire \user_reg2_reg_n_0_[3] ;
  wire \user_reg2_reg_n_0_[4] ;
  wire \user_reg2_reg_n_0_[5] ;
  wire \user_reg2_reg_n_0_[6] ;
  wire \user_reg2_reg_n_0_[7] ;
  wire \user_reg3[7]_i_1_n_0 ;
  wire \user_reg3_reg_n_0_[0] ;
  wire \user_reg3_reg_n_0_[1] ;
  wire \user_reg3_reg_n_0_[2] ;
  wire \user_reg3_reg_n_0_[3] ;
  wire \user_reg3_reg_n_0_[4] ;
  wire \user_reg3_reg_n_0_[5] ;
  wire \user_reg3_reg_n_0_[6] ;
  wire \user_reg3_reg_n_0_[7] ;
  wire \user_reg4[7]_i_1_n_0 ;
  wire \user_reg4_reg_n_0_[0] ;
  wire \user_reg4_reg_n_0_[1] ;
  wire \user_reg4_reg_n_0_[2] ;
  wire \user_reg4_reg_n_0_[3] ;
  wire \user_reg4_reg_n_0_[4] ;
  wire \user_reg4_reg_n_0_[5] ;
  wire \user_reg4_reg_n_0_[6] ;
  wire \user_reg4_reg_n_0_[7] ;
  wire \wa_sckn_cnt[3]_i_1_n_0 ;
  wire \wa_sckn_cnt[3]_i_3_n_0 ;
  wire \wa_sckn_cnt_reg_n_0_[0] ;
  wire \wa_sckn_cnt_reg_n_0_[1] ;
  wire \wa_sckn_cnt_reg_n_0_[2] ;
  wire \wa_sckn_cnt_reg_n_0_[3] ;
  wire \waddr[0]_i_1_n_0 ;
  wire \waddr[1]_i_1_n_0 ;
  wire \waddr[2]_i_1_n_0 ;
  wire \waddr[3]_i_1_n_0 ;
  wire \waddr[3]_i_2_n_0 ;
  wire \waddr[4]_i_1_n_0 ;
  wire \waddr[4]_i_2_n_0 ;
  wire \waddr[5]_i_1_n_0 ;
  wire \waddr[5]_i_2_n_0 ;
  wire \waddr[6]_i_1_n_0 ;
  wire \waddr[6]_i_2_n_0 ;
  wire \waddr[7]_i_1_n_0 ;
  wire \waddr[7]_i_2_n_0 ;
  wire \waddr[7]_i_3_n_0 ;
  wire \waddr[7]_i_4_n_0 ;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire \waddr_reg_n_0_[7] ;
  wire \wd_sckn_cnt[3]_i_1_n_0 ;
  wire \wd_sckn_cnt[3]_i_3_n_0 ;
  wire \wd_sckn_cnt_reg_n_0_[0] ;
  wire \wd_sckn_cnt_reg_n_0_[1] ;
  wire \wd_sckn_cnt_reg_n_0_[2] ;
  wire \wd_sckn_cnt_reg_n_0_[3] ;
  wire \wdata[0]_i_1_n_0 ;
  wire \wdata[1]_i_1_n_0 ;
  wire \wdata[2]_i_1_n_0 ;
  wire \wdata[3]_i_1_n_0 ;
  wire \wdata[3]_i_2_n_0 ;
  wire \wdata[4]_i_1_n_0 ;
  wire \wdata[4]_i_2_n_0 ;
  wire \wdata[5]_i_1_n_0 ;
  wire \wdata[5]_i_2_n_0 ;
  wire \wdata[6]_i_1_n_0 ;
  wire \wdata[6]_i_2_n_0 ;
  wire \wdata[7]_i_1_n_0 ;
  wire \wdata[7]_i_2_n_0 ;
  wire \wdata[7]_i_3_n_0 ;
  wire \wdata[7]_i_4_n_0 ;
  wire \wdata_reg_n_0_[0] ;
  wire \wdata_reg_n_0_[1] ;
  wire \wdata_reg_n_0_[2] ;
  wire \wdata_reg_n_0_[3] ;
  wire \wdata_reg_n_0_[4] ;
  wire \wdata_reg_n_0_[5] ;
  wire \wdata_reg_n_0_[6] ;
  wire \wdata_reg_n_0_[7] ;

  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \done_cnt[0]_i_1__0 
       (.I0(\s_state_reg_n_0_[0] ),
        .I1(\s_state_reg_n_0_[2] ),
        .I2(\s_state_reg_n_0_[1] ),
        .I3(\done_cnt_reg_n_0_[0] ),
        .O(\done_cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h00404000)) 
    \done_cnt[1]_i_1__0 
       (.I0(\s_state_reg_n_0_[0] ),
        .I1(\s_state_reg_n_0_[2] ),
        .I2(\s_state_reg_n_0_[1] ),
        .I3(\done_cnt_reg_n_0_[0] ),
        .I4(\done_cnt_reg_n_0_[1] ),
        .O(\done_cnt[1]_i_1__0_n_0 ));
  FDCE \done_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\done_cnt[0]_i_1__0_n_0 ),
        .Q(\done_cnt_reg_n_0_[0] ));
  FDCE \done_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\done_cnt[1]_i_1__0_n_0 ),
        .Q(\done_cnt_reg_n_0_[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \led[7]_i_2 
       (.I0(reset),
        .O(reset_0));
  LUT5 #(
    .INIT(32'h32330200)) 
    miso_i_1
       (.I0(miso_reg_i_2_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\rd_sckn_cnt_reg_n_0_[3] ),
        .I3(sck_nedge_1d_reg_n_0),
        .I4(miso),
        .O(miso_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    miso_i_3
       (.I0(\rdata_reg_n_0_[4] ),
        .I1(\rdata_reg_n_0_[5] ),
        .I2(\rd_sckn_cnt_reg_n_0_[1] ),
        .I3(\rdata_reg_n_0_[6] ),
        .I4(\rd_sckn_cnt_reg_n_0_[0] ),
        .I5(\rdata_reg_n_0_[7] ),
        .O(miso_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    miso_i_4
       (.I0(\rdata_reg_n_0_[0] ),
        .I1(\rdata_reg_n_0_[1] ),
        .I2(\rd_sckn_cnt_reg_n_0_[1] ),
        .I3(\rdata_reg_n_0_[2] ),
        .I4(\rd_sckn_cnt_reg_n_0_[0] ),
        .I5(\rdata_reg_n_0_[3] ),
        .O(miso_i_4_n_0));
  FDCE miso_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(miso_i_1_n_0),
        .Q(miso));
  MUXF7 miso_reg_i_2
       (.I0(miso_i_3_n_0),
        .I1(miso_i_4_n_0),
        .O(miso_reg_i_2_n_0),
        .S(\rd_sckn_cnt_reg_n_0_[2] ));
  FDCE mosi_1d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(mosi),
        .Q(mosi_1d_reg_n_0));
  FDCE mosi_2d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(mosi_1d_reg_n_0),
        .Q(mosi_2d_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \ra_sckn_cnt[0]_i_1 
       (.I0(\ra_sckn_cnt_reg_n_0_[0] ),
        .I1(\s_state_reg_n_0_[0] ),
        .I2(\s_state_reg_n_0_[2] ),
        .I3(\s_state_reg_n_0_[1] ),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h00000600)) 
    \ra_sckn_cnt[1]_i_1 
       (.I0(\ra_sckn_cnt_reg_n_0_[0] ),
        .I1(\ra_sckn_cnt_reg_n_0_[1] ),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\s_state_reg_n_0_[2] ),
        .I4(\s_state_reg_n_0_[1] ),
        .O(p_0_in__3[1]));
  LUT6 #(
    .INIT(64'h0000000000780000)) 
    \ra_sckn_cnt[2]_i_1 
       (.I0(\ra_sckn_cnt_reg_n_0_[1] ),
        .I1(\ra_sckn_cnt_reg_n_0_[0] ),
        .I2(\ra_sckn_cnt_reg_n_0_[2] ),
        .I3(\s_state_reg_n_0_[0] ),
        .I4(\s_state_reg_n_0_[2] ),
        .I5(\s_state_reg_n_0_[1] ),
        .O(p_0_in__3[2]));
  LUT5 #(
    .INIT(32'hFFFFF4FF)) 
    \ra_sckn_cnt[3]_i_1 
       (.I0(sck_1d),
        .I1(sck_2d),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\s_state_reg_n_0_[2] ),
        .I4(\s_state_reg_n_0_[1] ),
        .O(\ra_sckn_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \ra_sckn_cnt[3]_i_2 
       (.I0(\ra_sckn_cnt_reg_n_0_[2] ),
        .I1(\ra_sckn_cnt_reg_n_0_[0] ),
        .I2(\ra_sckn_cnt_reg_n_0_[1] ),
        .I3(\ra_sckn_cnt_reg_n_0_[3] ),
        .I4(\ra_sckn_cnt[3]_i_3_n_0 ),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \ra_sckn_cnt[3]_i_3 
       (.I0(\s_state_reg_n_0_[1] ),
        .I1(\s_state_reg_n_0_[2] ),
        .I2(\s_state_reg_n_0_[0] ),
        .O(\ra_sckn_cnt[3]_i_3_n_0 ));
  FDCE \ra_sckn_cnt_reg[0] 
       (.C(clk),
        .CE(\ra_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__3[0]),
        .Q(\ra_sckn_cnt_reg_n_0_[0] ));
  FDCE \ra_sckn_cnt_reg[1] 
       (.C(clk),
        .CE(\ra_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__3[1]),
        .Q(\ra_sckn_cnt_reg_n_0_[1] ));
  FDCE \ra_sckn_cnt_reg[2] 
       (.C(clk),
        .CE(\ra_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__3[2]),
        .Q(\ra_sckn_cnt_reg_n_0_[2] ));
  FDCE \ra_sckn_cnt_reg[3] 
       (.C(clk),
        .CE(\ra_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__3[3]),
        .Q(\ra_sckn_cnt_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'h23332000)) 
    \raddr[0]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\raddr[7]_i_4_n_0 ),
        .I3(\raddr[0]_i_2_n_0 ),
        .I4(\raddr_reg_n_0_[0] ),
        .O(\raddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \raddr[0]_i_2 
       (.I0(\ra_sckn_cnt_reg_n_0_[0] ),
        .I1(\ra_sckn_cnt_reg_n_0_[1] ),
        .I2(\ra_sckn_cnt_reg_n_0_[2] ),
        .I3(\ra_sckn_cnt_reg_n_0_[3] ),
        .O(\raddr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \raddr[1]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\raddr[3]_i_2_n_0 ),
        .I3(\raddr[5]_i_2_n_0 ),
        .I4(\raddr[7]_i_4_n_0 ),
        .I5(\raddr_reg_n_0_[1] ),
        .O(\raddr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \raddr[2]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\raddr[3]_i_2_n_0 ),
        .I3(\raddr[6]_i_2_n_0 ),
        .I4(\raddr[7]_i_4_n_0 ),
        .I5(\raddr_reg_n_0_[2] ),
        .O(\raddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \raddr[3]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\raddr[3]_i_2_n_0 ),
        .I3(\raddr[7]_i_2_n_0 ),
        .I4(\raddr[7]_i_4_n_0 ),
        .I5(\raddr_reg_n_0_[3] ),
        .O(\raddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \raddr[3]_i_2 
       (.I0(\ra_sckn_cnt_reg_n_0_[3] ),
        .I1(\ra_sckn_cnt_reg_n_0_[2] ),
        .O(\raddr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3233333302000000)) 
    \raddr[4]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\raddr[7]_i_3_n_0 ),
        .I3(\raddr[4]_i_2_n_0 ),
        .I4(\raddr[7]_i_4_n_0 ),
        .I5(\raddr_reg_n_0_[4] ),
        .O(\raddr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \raddr[4]_i_2 
       (.I0(\ra_sckn_cnt_reg_n_0_[1] ),
        .I1(\ra_sckn_cnt_reg_n_0_[0] ),
        .O(\raddr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \raddr[5]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\raddr[5]_i_2_n_0 ),
        .I3(\raddr[7]_i_3_n_0 ),
        .I4(\raddr[7]_i_4_n_0 ),
        .I5(\raddr_reg_n_0_[5] ),
        .O(\raddr[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \raddr[5]_i_2 
       (.I0(\ra_sckn_cnt_reg_n_0_[0] ),
        .I1(\ra_sckn_cnt_reg_n_0_[1] ),
        .O(\raddr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \raddr[6]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\raddr[6]_i_2_n_0 ),
        .I3(\raddr[7]_i_3_n_0 ),
        .I4(\raddr[7]_i_4_n_0 ),
        .I5(\raddr_reg_n_0_[6] ),
        .O(\raddr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \raddr[6]_i_2 
       (.I0(\ra_sckn_cnt_reg_n_0_[1] ),
        .I1(\ra_sckn_cnt_reg_n_0_[0] ),
        .O(\raddr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \raddr[7]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\raddr[7]_i_2_n_0 ),
        .I3(\raddr[7]_i_3_n_0 ),
        .I4(\raddr[7]_i_4_n_0 ),
        .I5(\raddr_reg_n_0_[7] ),
        .O(\raddr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \raddr[7]_i_2 
       (.I0(\ra_sckn_cnt_reg_n_0_[1] ),
        .I1(\ra_sckn_cnt_reg_n_0_[0] ),
        .O(\raddr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \raddr[7]_i_3 
       (.I0(\ra_sckn_cnt_reg_n_0_[2] ),
        .I1(\ra_sckn_cnt_reg_n_0_[3] ),
        .O(\raddr[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \raddr[7]_i_4 
       (.I0(sck_2d),
        .I1(sck_1d),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\s_state_reg_n_0_[2] ),
        .I4(\s_state_reg_n_0_[1] ),
        .O(\raddr[7]_i_4_n_0 ));
  FDCE \raddr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\raddr[0]_i_1_n_0 ),
        .Q(\raddr_reg_n_0_[0] ));
  FDCE \raddr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\raddr[1]_i_1_n_0 ),
        .Q(\raddr_reg_n_0_[1] ));
  FDCE \raddr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\raddr[2]_i_1_n_0 ),
        .Q(\raddr_reg_n_0_[2] ));
  FDCE \raddr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\raddr[3]_i_1_n_0 ),
        .Q(\raddr_reg_n_0_[3] ));
  FDCE \raddr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\raddr[4]_i_1_n_0 ),
        .Q(\raddr_reg_n_0_[4] ));
  FDCE \raddr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\raddr[5]_i_1_n_0 ),
        .Q(\raddr_reg_n_0_[5] ));
  FDCE \raddr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\raddr[6]_i_1_n_0 ),
        .Q(\raddr_reg_n_0_[6] ));
  FDCE \raddr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\raddr[7]_i_1_n_0 ),
        .Q(\raddr_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \rd_sckn_cnt[0]_i_1 
       (.I0(\s_state_reg_n_0_[1] ),
        .I1(\s_state_reg_n_0_[2] ),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\rd_sckn_cnt_reg_n_0_[0] ),
        .O(p_0_in__6[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00404000)) 
    \rd_sckn_cnt[1]_i_1 
       (.I0(\s_state_reg_n_0_[1] ),
        .I1(\s_state_reg_n_0_[2] ),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\rd_sckn_cnt_reg_n_0_[1] ),
        .I4(\rd_sckn_cnt_reg_n_0_[0] ),
        .O(p_0_in__6[1]));
  LUT6 #(
    .INIT(64'h0040404040000000)) 
    \rd_sckn_cnt[2]_i_1 
       (.I0(\s_state_reg_n_0_[1] ),
        .I1(\s_state_reg_n_0_[2] ),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\rd_sckn_cnt_reg_n_0_[0] ),
        .I4(\rd_sckn_cnt_reg_n_0_[1] ),
        .I5(\rd_sckn_cnt_reg_n_0_[2] ),
        .O(p_0_in__6[2]));
  LUT5 #(
    .INIT(32'hF4FFFFFF)) 
    \rd_sckn_cnt[3]_i_1 
       (.I0(sck_1d),
        .I1(sck_2d),
        .I2(\s_state_reg_n_0_[1] ),
        .I3(\s_state_reg_n_0_[2] ),
        .I4(\s_state_reg_n_0_[0] ),
        .O(\rd_sckn_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rd_sckn_cnt[3]_i_2 
       (.I0(\rd_sckn_cnt[3]_i_3_n_0 ),
        .I1(\rd_sckn_cnt_reg_n_0_[2] ),
        .I2(\rd_sckn_cnt_reg_n_0_[1] ),
        .I3(\rd_sckn_cnt_reg_n_0_[0] ),
        .I4(\rd_sckn_cnt_reg_n_0_[3] ),
        .O(p_0_in__6[3]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rd_sckn_cnt[3]_i_3 
       (.I0(\s_state_reg_n_0_[0] ),
        .I1(\s_state_reg_n_0_[2] ),
        .I2(\s_state_reg_n_0_[1] ),
        .O(\rd_sckn_cnt[3]_i_3_n_0 ));
  FDCE \rd_sckn_cnt_reg[0] 
       (.C(clk),
        .CE(\rd_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__6[0]),
        .Q(\rd_sckn_cnt_reg_n_0_[0] ));
  FDCE \rd_sckn_cnt_reg[1] 
       (.C(clk),
        .CE(\rd_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__6[1]),
        .Q(\rd_sckn_cnt_reg_n_0_[1] ));
  FDCE \rd_sckn_cnt_reg[2] 
       (.C(clk),
        .CE(\rd_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__6[2]),
        .Q(\rd_sckn_cnt_reg_n_0_[2] ));
  FDCE \rd_sckn_cnt_reg[3] 
       (.C(clk),
        .CE(\rd_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__6[3]),
        .Q(\rd_sckn_cnt_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h5400FFFF54000000)) 
    \rdata[0]_i_1__0 
       (.I0(\slave_id[7]_i_2_n_0 ),
        .I1(\rdata[7]_i_5_n_0 ),
        .I2(\user_reg2_reg_n_0_[0] ),
        .I3(\rdata[0]_i_2_n_0 ),
        .I4(\rdata[7]_i_7_n_0 ),
        .I5(\user_reg1_reg_n_0_[0] ),
        .O(\rdata[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \rdata[0]_i_2 
       (.I0(\rdata[7]_i_8_n_0 ),
        .I1(\user_reg4_reg_n_0_[0] ),
        .I2(\rdata[7]_i_9_n_0 ),
        .I3(\user_reg3_reg_n_0_[0] ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5400FFFF54000000)) 
    \rdata[1]_i_1__0 
       (.I0(\slave_id[7]_i_2_n_0 ),
        .I1(\rdata[7]_i_5_n_0 ),
        .I2(\user_reg2_reg_n_0_[1] ),
        .I3(\rdata[1]_i_2__0_n_0 ),
        .I4(\rdata[7]_i_7_n_0 ),
        .I5(\user_reg1_reg_n_0_[1] ),
        .O(\rdata[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \rdata[1]_i_2__0 
       (.I0(\rdata[7]_i_8_n_0 ),
        .I1(\user_reg4_reg_n_0_[1] ),
        .I2(\rdata[7]_i_9_n_0 ),
        .I3(\user_reg3_reg_n_0_[1] ),
        .O(\rdata[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h5400FFFF54000000)) 
    \rdata[2]_i_1__0 
       (.I0(\slave_id[7]_i_2_n_0 ),
        .I1(\rdata[7]_i_5_n_0 ),
        .I2(\user_reg2_reg_n_0_[2] ),
        .I3(\rdata[2]_i_2_n_0 ),
        .I4(\rdata[7]_i_7_n_0 ),
        .I5(\user_reg1_reg_n_0_[2] ),
        .O(\rdata[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \rdata[2]_i_2 
       (.I0(\rdata[7]_i_8_n_0 ),
        .I1(\user_reg4_reg_n_0_[2] ),
        .I2(\rdata[7]_i_9_n_0 ),
        .I3(\user_reg3_reg_n_0_[2] ),
        .O(\rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5400FFFF54000000)) 
    \rdata[3]_i_1__0 
       (.I0(\slave_id[7]_i_2_n_0 ),
        .I1(\rdata[7]_i_5_n_0 ),
        .I2(\user_reg2_reg_n_0_[3] ),
        .I3(\rdata[3]_i_2_n_0 ),
        .I4(\rdata[7]_i_7_n_0 ),
        .I5(\user_reg1_reg_n_0_[3] ),
        .O(\rdata[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \rdata[3]_i_2 
       (.I0(\rdata[7]_i_8_n_0 ),
        .I1(\user_reg4_reg_n_0_[3] ),
        .I2(\rdata[7]_i_9_n_0 ),
        .I3(\user_reg3_reg_n_0_[3] ),
        .O(\rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5400FFFF54000000)) 
    \rdata[4]_i_1__0 
       (.I0(\slave_id[7]_i_2_n_0 ),
        .I1(\rdata[7]_i_5_n_0 ),
        .I2(\user_reg2_reg_n_0_[4] ),
        .I3(\rdata[4]_i_2_n_0 ),
        .I4(\rdata[7]_i_7_n_0 ),
        .I5(\user_reg1_reg_n_0_[4] ),
        .O(\rdata[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \rdata[4]_i_2 
       (.I0(\rdata[7]_i_8_n_0 ),
        .I1(\user_reg4_reg_n_0_[4] ),
        .I2(\rdata[7]_i_9_n_0 ),
        .I3(\user_reg3_reg_n_0_[4] ),
        .O(\rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5400FFFF54000000)) 
    \rdata[5]_i_1__0 
       (.I0(\slave_id[7]_i_2_n_0 ),
        .I1(\rdata[7]_i_5_n_0 ),
        .I2(\user_reg2_reg_n_0_[5] ),
        .I3(\rdata[5]_i_2_n_0 ),
        .I4(\rdata[7]_i_7_n_0 ),
        .I5(\user_reg1_reg_n_0_[5] ),
        .O(\rdata[5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \rdata[5]_i_2 
       (.I0(\rdata[7]_i_8_n_0 ),
        .I1(\user_reg4_reg_n_0_[5] ),
        .I2(\rdata[7]_i_9_n_0 ),
        .I3(\user_reg3_reg_n_0_[5] ),
        .O(\rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5400FFFF54000000)) 
    \rdata[6]_i_1__0 
       (.I0(\slave_id[7]_i_2_n_0 ),
        .I1(\rdata[7]_i_5_n_0 ),
        .I2(\user_reg2_reg_n_0_[6] ),
        .I3(\rdata[6]_i_2__0_n_0 ),
        .I4(\rdata[7]_i_7_n_0 ),
        .I5(\user_reg1_reg_n_0_[6] ),
        .O(\rdata[6]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \rdata[6]_i_2__0 
       (.I0(\rdata[7]_i_8_n_0 ),
        .I1(\user_reg4_reg_n_0_[6] ),
        .I2(\rdata[7]_i_9_n_0 ),
        .I3(\user_reg3_reg_n_0_[6] ),
        .O(\rdata[6]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h010101FF)) 
    \rdata[7]_i_1__0 
       (.I0(\s_state_reg_n_0_[2] ),
        .I1(\s_state_reg_n_0_[1] ),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\rdata[7]_i_3__0_n_0 ),
        .I4(\rdata[7]_i_4_n_0 ),
        .O(rdata0));
  LUT6 #(
    .INIT(64'h5400FFFF54000000)) 
    \rdata[7]_i_2 
       (.I0(\slave_id[7]_i_2_n_0 ),
        .I1(\rdata[7]_i_5_n_0 ),
        .I2(\user_reg2_reg_n_0_[7] ),
        .I3(\rdata[7]_i_6_n_0 ),
        .I4(\rdata[7]_i_7_n_0 ),
        .I5(\user_reg1_reg_n_0_[7] ),
        .O(\rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \rdata[7]_i_3__0 
       (.I0(\raddr_reg_n_0_[7] ),
        .I1(\raddr_reg_n_0_[2] ),
        .I2(\raddr_reg_n_0_[3] ),
        .I3(\raddr_reg_n_0_[5] ),
        .I4(\raddr_reg_n_0_[6] ),
        .I5(\raddr_reg_n_0_[4] ),
        .O(\rdata[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \rdata[7]_i_4 
       (.I0(sck_pedge_1d),
        .I1(\ra_sckn_cnt[3]_i_3_n_0 ),
        .I2(\ra_sckn_cnt_reg_n_0_[3] ),
        .I3(\ra_sckn_cnt_reg_n_0_[2] ),
        .I4(\ra_sckn_cnt_reg_n_0_[1] ),
        .I5(\ra_sckn_cnt_reg_n_0_[0] ),
        .O(\rdata[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \rdata[7]_i_5 
       (.I0(\rdata[7]_i_4_n_0 ),
        .I1(\raddr_reg_n_0_[0] ),
        .I2(\raddr_reg_n_0_[1] ),
        .I3(\rdata[7]_i_3__0_n_0 ),
        .O(\rdata[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \rdata[7]_i_6 
       (.I0(\rdata[7]_i_8_n_0 ),
        .I1(\user_reg4_reg_n_0_[7] ),
        .I2(\rdata[7]_i_9_n_0 ),
        .I3(\user_reg3_reg_n_0_[7] ),
        .O(\rdata[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdata[7]_i_7 
       (.I0(\rdata[7]_i_3__0_n_0 ),
        .I1(\raddr_reg_n_0_[1] ),
        .I2(\rdata[7]_i_4_n_0 ),
        .I3(\raddr_reg_n_0_[0] ),
        .O(\rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \rdata[7]_i_8 
       (.I0(sck_pedge_1d),
        .I1(\ra_sckn_cnt[3]_i_3_n_0 ),
        .I2(\raddr[0]_i_2_n_0 ),
        .I3(\raddr_reg_n_0_[0] ),
        .I4(\rdata[7]_i_3__0_n_0 ),
        .I5(\raddr_reg_n_0_[1] ),
        .O(\rdata[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \rdata[7]_i_9 
       (.I0(\rdata[7]_i_3__0_n_0 ),
        .I1(\raddr_reg_n_0_[1] ),
        .I2(sck_pedge_1d),
        .I3(\ra_sckn_cnt[3]_i_3_n_0 ),
        .I4(\raddr[0]_i_2_n_0 ),
        .I5(\raddr_reg_n_0_[0] ),
        .O(\rdata[7]_i_9_n_0 ));
  FDCE \rdata_reg[0] 
       (.C(clk),
        .CE(rdata0),
        .CLR(reset_0),
        .D(\rdata[0]_i_1__0_n_0 ),
        .Q(\rdata_reg_n_0_[0] ));
  FDCE \rdata_reg[1] 
       (.C(clk),
        .CE(rdata0),
        .CLR(reset_0),
        .D(\rdata[1]_i_1__0_n_0 ),
        .Q(\rdata_reg_n_0_[1] ));
  FDCE \rdata_reg[2] 
       (.C(clk),
        .CE(rdata0),
        .CLR(reset_0),
        .D(\rdata[2]_i_1__0_n_0 ),
        .Q(\rdata_reg_n_0_[2] ));
  FDCE \rdata_reg[3] 
       (.C(clk),
        .CE(rdata0),
        .CLR(reset_0),
        .D(\rdata[3]_i_1__0_n_0 ),
        .Q(\rdata_reg_n_0_[3] ));
  FDCE \rdata_reg[4] 
       (.C(clk),
        .CE(rdata0),
        .CLR(reset_0),
        .D(\rdata[4]_i_1__0_n_0 ),
        .Q(\rdata_reg_n_0_[4] ));
  FDCE \rdata_reg[5] 
       (.C(clk),
        .CE(rdata0),
        .CLR(reset_0),
        .D(\rdata[5]_i_1__0_n_0 ),
        .Q(\rdata_reg_n_0_[5] ));
  FDCE \rdata_reg[6] 
       (.C(clk),
        .CE(rdata0),
        .CLR(reset_0),
        .D(\rdata[6]_i_1__0_n_0 ),
        .Q(\rdata_reg_n_0_[6] ));
  FDCE \rdata_reg[7] 
       (.C(clk),
        .CE(rdata0),
        .CLR(reset_0),
        .D(\rdata[7]_i_2_n_0 ),
        .Q(\rdata_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'hFCFCFCFEFCFCFCFC)) 
    \s_state[0]_i_1 
       (.I0(\s_state[0]_i_2_n_0 ),
        .I1(\s_state[0]_i_3_n_0 ),
        .I2(\s_state[0]_i_4_n_0 ),
        .I3(\s_state[1]_i_2_n_0 ),
        .I4(\s_state[2]_i_5_n_0 ),
        .I5(\s_state_reg_n_0_[0] ),
        .O(\s_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \s_state[0]_i_2 
       (.I0(\sid_sckn_cnt[3]_i_3_n_0 ),
        .I1(\sid_sckn_cnt_reg_n_0_[2] ),
        .I2(\sid_sckn_cnt_reg_n_0_[3] ),
        .I3(\sid_sckn_cnt_reg_n_0_[1] ),
        .I4(\sid_sckn_cnt_reg_n_0_[0] ),
        .O(\s_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \s_state[0]_i_3 
       (.I0(\s_state[1]_i_4_n_0 ),
        .I1(ss_1d),
        .I2(ss_2d),
        .I3(\s_state_reg_n_0_[0] ),
        .I4(\s_state_reg_n_0_[1] ),
        .I5(\s_state_reg_n_0_[2] ),
        .O(\s_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \s_state[0]_i_4 
       (.I0(\ra_sckn_cnt_reg_n_0_[2] ),
        .I1(\ra_sckn_cnt_reg_n_0_[3] ),
        .I2(\ra_sckn_cnt_reg_n_0_[1] ),
        .I3(\ra_sckn_cnt_reg_n_0_[0] ),
        .I4(\ra_sckn_cnt[3]_i_3_n_0 ),
        .O(\s_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    \s_state[1]_i_1 
       (.I0(\s_state[1]_i_2_n_0 ),
        .I1(\s_state[1]_i_3_n_0 ),
        .I2(\s_state[1]_i_4_n_0 ),
        .I3(\s_state[2]_i_3_n_0 ),
        .I4(\s_state[1]_i_5_n_0 ),
        .I5(\s_state_reg_n_0_[1] ),
        .O(\s_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00404000)) 
    \s_state[1]_i_2 
       (.I0(ss_2d),
        .I1(ss_1d),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\s_state_reg_n_0_[1] ),
        .I4(\s_state_reg_n_0_[2] ),
        .O(\s_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \s_state[1]_i_3 
       (.I0(\slave_id_reg_n_0_[0] ),
        .I1(\slave_id_reg_n_0_[7] ),
        .I2(\slave_id_reg_n_0_[6] ),
        .I3(\slave_id_reg_n_0_[4] ),
        .I4(\s_state[2]_i_6_n_0 ),
        .I5(\s_state[0]_i_2_n_0 ),
        .O(\s_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_state[1]_i_4 
       (.I0(\wa_sckn_cnt_reg_n_0_[1] ),
        .I1(\wa_sckn_cnt_reg_n_0_[0] ),
        .I2(\wa_sckn_cnt_reg_n_0_[3] ),
        .I3(\wa_sckn_cnt_reg_n_0_[2] ),
        .I4(\wa_sckn_cnt[3]_i_3_n_0 ),
        .O(\s_state[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_state[1]_i_5 
       (.I0(\done_cnt_reg_n_0_[1] ),
        .I1(\done_cnt_reg_n_0_[0] ),
        .I2(\s_state[1]_i_6_n_0 ),
        .I3(\s_state[1]_i_2_n_0 ),
        .I4(\s_state[0]_i_4_n_0 ),
        .O(\s_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s_state[1]_i_6 
       (.I0(\s_state_reg_n_0_[1] ),
        .I1(\s_state_reg_n_0_[2] ),
        .I2(\s_state_reg_n_0_[0] ),
        .O(\s_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF44FF4FFF44FF40)) 
    \s_state[2]_i_1 
       (.I0(\s_state[2]_i_2_n_0 ),
        .I1(\slave_id_reg_n_0_[0] ),
        .I2(\s_state[2]_i_3_n_0 ),
        .I3(\s_state[2]_i_4_n_0 ),
        .I4(\s_state[2]_i_5_n_0 ),
        .I5(\s_state_reg_n_0_[2] ),
        .O(\s_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \s_state[2]_i_2 
       (.I0(\s_state[0]_i_2_n_0 ),
        .I1(\s_state[2]_i_6_n_0 ),
        .I2(\slave_id_reg_n_0_[4] ),
        .I3(\slave_id_reg_n_0_[6] ),
        .I4(\slave_id_reg_n_0_[7] ),
        .O(\s_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF08FFFF)) 
    \s_state[2]_i_3 
       (.I0(\slave_id[7]_i_2_n_0 ),
        .I1(ss_2d),
        .I2(ss_1d),
        .I3(\s_state[1]_i_4_n_0 ),
        .I4(\s_state[0]_i_2_n_0 ),
        .O(\s_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABEAAAAAA)) 
    \s_state[2]_i_4 
       (.I0(\s_state[0]_i_4_n_0 ),
        .I1(\s_state_reg_n_0_[2] ),
        .I2(\s_state_reg_n_0_[1] ),
        .I3(\s_state_reg_n_0_[0] ),
        .I4(ss_1d),
        .I5(ss_2d),
        .O(\s_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \s_state[2]_i_5 
       (.I0(\s_state_reg_n_0_[0] ),
        .I1(\s_state_reg_n_0_[2] ),
        .I2(\s_state_reg_n_0_[1] ),
        .I3(\done_cnt_reg_n_0_[0] ),
        .I4(\done_cnt_reg_n_0_[1] ),
        .O(\s_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \s_state[2]_i_6 
       (.I0(\slave_id_reg_n_0_[2] ),
        .I1(\slave_id_reg_n_0_[3] ),
        .I2(\slave_id_reg_n_0_[5] ),
        .I3(\slave_id_reg_n_0_[1] ),
        .O(\s_state[2]_i_6_n_0 ));
  FDCE \s_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\s_state[0]_i_1_n_0 ),
        .Q(\s_state_reg_n_0_[0] ));
  FDCE \s_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\s_state[1]_i_1_n_0 ),
        .Q(\s_state_reg_n_0_[1] ));
  FDCE \s_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\s_state[2]_i_1_n_0 ),
        .Q(\s_state_reg_n_0_[2] ));
  FDCE sck_1d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(sck),
        .Q(sck_1d));
  FDCE sck_2d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(sck_1d),
        .Q(sck_2d));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sck_nedge_1d_i_1
       (.I0(sck_2d),
        .I1(sck_1d),
        .O(sck_nedge_1d_i_1_n_0));
  FDCE sck_nedge_1d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(sck_nedge_1d_i_1_n_0),
        .Q(sck_nedge_1d_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sck_pedge_1d_i_1
       (.I0(sck_1d),
        .I1(sck_2d),
        .O(sck_pedge_1d_i_1_n_0));
  FDCE sck_pedge_1d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(sck_pedge_1d_i_1_n_0),
        .Q(sck_pedge_1d));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \sid_sckn_cnt[0]_i_1 
       (.I0(\sid_sckn_cnt_reg_n_0_[0] ),
        .I1(\s_state_reg_n_0_[0] ),
        .I2(\s_state_reg_n_0_[2] ),
        .I3(\s_state_reg_n_0_[1] ),
        .O(p_0_in__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00000060)) 
    \sid_sckn_cnt[1]_i_1 
       (.I0(\sid_sckn_cnt_reg_n_0_[0] ),
        .I1(\sid_sckn_cnt_reg_n_0_[1] ),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\s_state_reg_n_0_[2] ),
        .I4(\s_state_reg_n_0_[1] ),
        .O(p_0_in__5[1]));
  LUT6 #(
    .INIT(64'h0000000000007800)) 
    \sid_sckn_cnt[2]_i_1 
       (.I0(\sid_sckn_cnt_reg_n_0_[1] ),
        .I1(\sid_sckn_cnt_reg_n_0_[0] ),
        .I2(\sid_sckn_cnt_reg_n_0_[2] ),
        .I3(\s_state_reg_n_0_[0] ),
        .I4(\s_state_reg_n_0_[2] ),
        .I5(\s_state_reg_n_0_[1] ),
        .O(p_0_in__5[2]));
  LUT5 #(
    .INIT(32'hFFFFFF4F)) 
    \sid_sckn_cnt[3]_i_1 
       (.I0(sck_1d),
        .I1(sck_2d),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\s_state_reg_n_0_[2] ),
        .I4(\s_state_reg_n_0_[1] ),
        .O(\sid_sckn_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \sid_sckn_cnt[3]_i_2 
       (.I0(\sid_sckn_cnt_reg_n_0_[2] ),
        .I1(\sid_sckn_cnt_reg_n_0_[0] ),
        .I2(\sid_sckn_cnt_reg_n_0_[1] ),
        .I3(\sid_sckn_cnt_reg_n_0_[3] ),
        .I4(\sid_sckn_cnt[3]_i_3_n_0 ),
        .O(p_0_in__5[3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \sid_sckn_cnt[3]_i_3 
       (.I0(\s_state_reg_n_0_[1] ),
        .I1(\s_state_reg_n_0_[2] ),
        .I2(\s_state_reg_n_0_[0] ),
        .O(\sid_sckn_cnt[3]_i_3_n_0 ));
  FDCE \sid_sckn_cnt_reg[0] 
       (.C(clk),
        .CE(\sid_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__5[0]),
        .Q(\sid_sckn_cnt_reg_n_0_[0] ));
  FDCE \sid_sckn_cnt_reg[1] 
       (.C(clk),
        .CE(\sid_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__5[1]),
        .Q(\sid_sckn_cnt_reg_n_0_[1] ));
  FDCE \sid_sckn_cnt_reg[2] 
       (.C(clk),
        .CE(\sid_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__5[2]),
        .Q(\sid_sckn_cnt_reg_n_0_[2] ));
  FDCE \sid_sckn_cnt_reg[3] 
       (.C(clk),
        .CE(\sid_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__5[3]),
        .Q(\sid_sckn_cnt_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h2333333320000000)) 
    \slave_id[0]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\slave_id[4]_i_2_n_0 ),
        .I3(\slave_id[2]_i_2_n_0 ),
        .I4(\slave_id[6]_i_4_n_0 ),
        .I5(\slave_id_reg_n_0_[0] ),
        .O(\slave_id[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3233333302000000)) 
    \slave_id[1]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\slave_id[5]_i_2_n_0 ),
        .I3(\slave_id[2]_i_2_n_0 ),
        .I4(\slave_id[6]_i_4_n_0 ),
        .I5(\slave_id_reg_n_0_[1] ),
        .O(\slave_id[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3233333302000000)) 
    \slave_id[2]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\slave_id[6]_i_2_n_0 ),
        .I3(\slave_id[2]_i_2_n_0 ),
        .I4(\slave_id[6]_i_4_n_0 ),
        .I5(\slave_id_reg_n_0_[2] ),
        .O(\slave_id[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \slave_id[2]_i_2 
       (.I0(\sid_sckn_cnt_reg_n_0_[2] ),
        .I1(\sid_sckn_cnt_reg_n_0_[3] ),
        .O(\slave_id[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333323300000200)) 
    \slave_id[3]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\slave_id[7]_i_3_n_0 ),
        .I3(\sid_sckn_cnt_reg_n_0_[2] ),
        .I4(\sid_sckn_cnt_reg_n_0_[3] ),
        .I5(\slave_id_reg_n_0_[3] ),
        .O(\slave_id[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2333333320000000)) 
    \slave_id[4]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\slave_id[4]_i_2_n_0 ),
        .I3(\slave_id[6]_i_3_n_0 ),
        .I4(\slave_id[6]_i_4_n_0 ),
        .I5(\slave_id_reg_n_0_[4] ),
        .O(\slave_id[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slave_id[4]_i_2 
       (.I0(\sid_sckn_cnt_reg_n_0_[1] ),
        .I1(\sid_sckn_cnt_reg_n_0_[0] ),
        .O(\slave_id[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3233333302000000)) 
    \slave_id[5]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\slave_id[5]_i_2_n_0 ),
        .I3(\slave_id[6]_i_3_n_0 ),
        .I4(\slave_id[6]_i_4_n_0 ),
        .I5(\slave_id_reg_n_0_[5] ),
        .O(\slave_id[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slave_id[5]_i_2 
       (.I0(\sid_sckn_cnt_reg_n_0_[0] ),
        .I1(\sid_sckn_cnt_reg_n_0_[1] ),
        .O(\slave_id[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3233333302000000)) 
    \slave_id[6]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\slave_id[6]_i_2_n_0 ),
        .I3(\slave_id[6]_i_3_n_0 ),
        .I4(\slave_id[6]_i_4_n_0 ),
        .I5(\slave_id_reg_n_0_[6] ),
        .O(\slave_id[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slave_id[6]_i_2 
       (.I0(\sid_sckn_cnt_reg_n_0_[1] ),
        .I1(\sid_sckn_cnt_reg_n_0_[0] ),
        .O(\slave_id[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \slave_id[6]_i_3 
       (.I0(\sid_sckn_cnt_reg_n_0_[2] ),
        .I1(\sid_sckn_cnt_reg_n_0_[3] ),
        .O(\slave_id[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \slave_id[6]_i_4 
       (.I0(sck_2d),
        .I1(sck_1d),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\s_state_reg_n_0_[2] ),
        .I4(\s_state_reg_n_0_[1] ),
        .O(\slave_id[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3333333200000002)) 
    \slave_id[7]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\slave_id[7]_i_3_n_0 ),
        .I3(\sid_sckn_cnt_reg_n_0_[2] ),
        .I4(\sid_sckn_cnt_reg_n_0_[3] ),
        .I5(\slave_id_reg_n_0_[7] ),
        .O(\slave_id[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \slave_id[7]_i_2 
       (.I0(\s_state_reg_n_0_[0] ),
        .I1(\s_state_reg_n_0_[1] ),
        .I2(\s_state_reg_n_0_[2] ),
        .O(\slave_id[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \slave_id[7]_i_3 
       (.I0(\sid_sckn_cnt_reg_n_0_[0] ),
        .I1(\sid_sckn_cnt_reg_n_0_[1] ),
        .I2(\slave_id[6]_i_4_n_0 ),
        .O(\slave_id[7]_i_3_n_0 ));
  FDCE \slave_id_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\slave_id[0]_i_1_n_0 ),
        .Q(\slave_id_reg_n_0_[0] ));
  FDCE \slave_id_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\slave_id[1]_i_1_n_0 ),
        .Q(\slave_id_reg_n_0_[1] ));
  FDCE \slave_id_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\slave_id[2]_i_1_n_0 ),
        .Q(\slave_id_reg_n_0_[2] ));
  FDCE \slave_id_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\slave_id[3]_i_1_n_0 ),
        .Q(\slave_id_reg_n_0_[3] ));
  FDCE \slave_id_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\slave_id[4]_i_1_n_0 ),
        .Q(\slave_id_reg_n_0_[4] ));
  FDCE \slave_id_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\slave_id[5]_i_1_n_0 ),
        .Q(\slave_id_reg_n_0_[5] ));
  FDCE \slave_id_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\slave_id[6]_i_1_n_0 ),
        .Q(\slave_id_reg_n_0_[6] ));
  FDCE \slave_id_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\slave_id[7]_i_1_n_0 ),
        .Q(\slave_id_reg_n_0_[7] ));
  FDPE ss_1d_reg
       (.C(clk),
        .CE(1'b1),
        .D(ss),
        .PRE(reset_0),
        .Q(ss_1d));
  FDPE ss_2d_reg
       (.C(clk),
        .CE(1'b1),
        .D(ss_1d),
        .PRE(reset_0),
        .Q(ss_2d));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \user_reg1[7]_i_1 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\s_state_reg_n_0_[0] ),
        .I2(\s_state_reg_n_0_[2] ),
        .I3(\s_state_reg_n_0_[1] ),
        .I4(\user_reg1[7]_i_2_n_0 ),
        .I5(\waddr_reg_n_0_[1] ),
        .O(\user_reg1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \user_reg1[7]_i_2 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[6] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\waddr_reg_n_0_[3] ),
        .I5(\waddr_reg_n_0_[7] ),
        .O(\user_reg1[7]_i_2_n_0 ));
  FDCE \user_reg1_reg[0] 
       (.C(clk),
        .CE(\user_reg1[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[0] ),
        .Q(\user_reg1_reg_n_0_[0] ));
  FDCE \user_reg1_reg[1] 
       (.C(clk),
        .CE(\user_reg1[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[1] ),
        .Q(\user_reg1_reg_n_0_[1] ));
  FDCE \user_reg1_reg[2] 
       (.C(clk),
        .CE(\user_reg1[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[2] ),
        .Q(\user_reg1_reg_n_0_[2] ));
  FDCE \user_reg1_reg[3] 
       (.C(clk),
        .CE(\user_reg1[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[3] ),
        .Q(\user_reg1_reg_n_0_[3] ));
  FDCE \user_reg1_reg[4] 
       (.C(clk),
        .CE(\user_reg1[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[4] ),
        .Q(\user_reg1_reg_n_0_[4] ));
  FDCE \user_reg1_reg[5] 
       (.C(clk),
        .CE(\user_reg1[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[5] ),
        .Q(\user_reg1_reg_n_0_[5] ));
  FDCE \user_reg1_reg[6] 
       (.C(clk),
        .CE(\user_reg1[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[6] ),
        .Q(\user_reg1_reg_n_0_[6] ));
  FDCE \user_reg1_reg[7] 
       (.C(clk),
        .CE(\user_reg1[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[7] ),
        .Q(\user_reg1_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \user_reg2[7]_i_1 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\s_state_reg_n_0_[0] ),
        .I2(\s_state_reg_n_0_[2] ),
        .I3(\s_state_reg_n_0_[1] ),
        .I4(\user_reg1[7]_i_2_n_0 ),
        .I5(\waddr_reg_n_0_[1] ),
        .O(\user_reg2[7]_i_1_n_0 ));
  FDCE \user_reg2_reg[0] 
       (.C(clk),
        .CE(\user_reg2[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[0] ),
        .Q(\user_reg2_reg_n_0_[0] ));
  FDCE \user_reg2_reg[1] 
       (.C(clk),
        .CE(\user_reg2[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[1] ),
        .Q(\user_reg2_reg_n_0_[1] ));
  FDCE \user_reg2_reg[2] 
       (.C(clk),
        .CE(\user_reg2[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[2] ),
        .Q(\user_reg2_reg_n_0_[2] ));
  FDCE \user_reg2_reg[3] 
       (.C(clk),
        .CE(\user_reg2[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[3] ),
        .Q(\user_reg2_reg_n_0_[3] ));
  FDCE \user_reg2_reg[4] 
       (.C(clk),
        .CE(\user_reg2[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[4] ),
        .Q(\user_reg2_reg_n_0_[4] ));
  FDCE \user_reg2_reg[5] 
       (.C(clk),
        .CE(\user_reg2[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[5] ),
        .Q(\user_reg2_reg_n_0_[5] ));
  FDCE \user_reg2_reg[6] 
       (.C(clk),
        .CE(\user_reg2[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[6] ),
        .Q(\user_reg2_reg_n_0_[6] ));
  FDCE \user_reg2_reg[7] 
       (.C(clk),
        .CE(\user_reg2[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[7] ),
        .Q(\user_reg2_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \user_reg3[7]_i_1 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\s_state_reg_n_0_[2] ),
        .I4(\s_state_reg_n_0_[1] ),
        .I5(\user_reg1[7]_i_2_n_0 ),
        .O(\user_reg3[7]_i_1_n_0 ));
  FDCE \user_reg3_reg[0] 
       (.C(clk),
        .CE(\user_reg3[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[0] ),
        .Q(\user_reg3_reg_n_0_[0] ));
  FDCE \user_reg3_reg[1] 
       (.C(clk),
        .CE(\user_reg3[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[1] ),
        .Q(\user_reg3_reg_n_0_[1] ));
  FDCE \user_reg3_reg[2] 
       (.C(clk),
        .CE(\user_reg3[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[2] ),
        .Q(\user_reg3_reg_n_0_[2] ));
  FDCE \user_reg3_reg[3] 
       (.C(clk),
        .CE(\user_reg3[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[3] ),
        .Q(\user_reg3_reg_n_0_[3] ));
  FDCE \user_reg3_reg[4] 
       (.C(clk),
        .CE(\user_reg3[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[4] ),
        .Q(\user_reg3_reg_n_0_[4] ));
  FDCE \user_reg3_reg[5] 
       (.C(clk),
        .CE(\user_reg3[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[5] ),
        .Q(\user_reg3_reg_n_0_[5] ));
  FDCE \user_reg3_reg[6] 
       (.C(clk),
        .CE(\user_reg3[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[6] ),
        .Q(\user_reg3_reg_n_0_[6] ));
  FDCE \user_reg3_reg[7] 
       (.C(clk),
        .CE(\user_reg3[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[7] ),
        .Q(\user_reg3_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \user_reg4[7]_i_1 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\s_state_reg_n_0_[2] ),
        .I4(\s_state_reg_n_0_[1] ),
        .I5(\user_reg1[7]_i_2_n_0 ),
        .O(\user_reg4[7]_i_1_n_0 ));
  FDCE \user_reg4_reg[0] 
       (.C(clk),
        .CE(\user_reg4[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[0] ),
        .Q(\user_reg4_reg_n_0_[0] ));
  FDCE \user_reg4_reg[1] 
       (.C(clk),
        .CE(\user_reg4[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[1] ),
        .Q(\user_reg4_reg_n_0_[1] ));
  FDCE \user_reg4_reg[2] 
       (.C(clk),
        .CE(\user_reg4[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[2] ),
        .Q(\user_reg4_reg_n_0_[2] ));
  FDCE \user_reg4_reg[3] 
       (.C(clk),
        .CE(\user_reg4[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[3] ),
        .Q(\user_reg4_reg_n_0_[3] ));
  FDCE \user_reg4_reg[4] 
       (.C(clk),
        .CE(\user_reg4[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[4] ),
        .Q(\user_reg4_reg_n_0_[4] ));
  FDCE \user_reg4_reg[5] 
       (.C(clk),
        .CE(\user_reg4[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[5] ),
        .Q(\user_reg4_reg_n_0_[5] ));
  FDCE \user_reg4_reg[6] 
       (.C(clk),
        .CE(\user_reg4[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[6] ),
        .Q(\user_reg4_reg_n_0_[6] ));
  FDCE \user_reg4_reg[7] 
       (.C(clk),
        .CE(\user_reg4[7]_i_1_n_0 ),
        .CLR(reset_0),
        .D(\wdata_reg_n_0_[7] ),
        .Q(\user_reg4_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \wa_sckn_cnt[0]_i_1 
       (.I0(\wa_sckn_cnt_reg_n_0_[0] ),
        .I1(\s_state_reg_n_0_[2] ),
        .I2(\s_state_reg_n_0_[1] ),
        .I3(\s_state_reg_n_0_[0] ),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00000600)) 
    \wa_sckn_cnt[1]_i_1 
       (.I0(\wa_sckn_cnt_reg_n_0_[0] ),
        .I1(\wa_sckn_cnt_reg_n_0_[1] ),
        .I2(\s_state_reg_n_0_[2] ),
        .I3(\s_state_reg_n_0_[1] ),
        .I4(\s_state_reg_n_0_[0] ),
        .O(p_0_in__4[1]));
  LUT6 #(
    .INIT(64'h0000000000780000)) 
    \wa_sckn_cnt[2]_i_1 
       (.I0(\wa_sckn_cnt_reg_n_0_[1] ),
        .I1(\wa_sckn_cnt_reg_n_0_[0] ),
        .I2(\wa_sckn_cnt_reg_n_0_[2] ),
        .I3(\s_state_reg_n_0_[2] ),
        .I4(\s_state_reg_n_0_[1] ),
        .I5(\s_state_reg_n_0_[0] ),
        .O(p_0_in__4[2]));
  LUT5 #(
    .INIT(32'hFFFFF4FF)) 
    \wa_sckn_cnt[3]_i_1 
       (.I0(sck_1d),
        .I1(sck_2d),
        .I2(\s_state_reg_n_0_[2] ),
        .I3(\s_state_reg_n_0_[1] ),
        .I4(\s_state_reg_n_0_[0] ),
        .O(\wa_sckn_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \wa_sckn_cnt[3]_i_2 
       (.I0(\wa_sckn_cnt_reg_n_0_[2] ),
        .I1(\wa_sckn_cnt_reg_n_0_[0] ),
        .I2(\wa_sckn_cnt_reg_n_0_[1] ),
        .I3(\wa_sckn_cnt_reg_n_0_[3] ),
        .I4(\wa_sckn_cnt[3]_i_3_n_0 ),
        .O(p_0_in__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \wa_sckn_cnt[3]_i_3 
       (.I0(\s_state_reg_n_0_[0] ),
        .I1(\s_state_reg_n_0_[1] ),
        .I2(\s_state_reg_n_0_[2] ),
        .O(\wa_sckn_cnt[3]_i_3_n_0 ));
  FDCE \wa_sckn_cnt_reg[0] 
       (.C(clk),
        .CE(\wa_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__4[0]),
        .Q(\wa_sckn_cnt_reg_n_0_[0] ));
  FDCE \wa_sckn_cnt_reg[1] 
       (.C(clk),
        .CE(\wa_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__4[1]),
        .Q(\wa_sckn_cnt_reg_n_0_[1] ));
  FDCE \wa_sckn_cnt_reg[2] 
       (.C(clk),
        .CE(\wa_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__4[2]),
        .Q(\wa_sckn_cnt_reg_n_0_[2] ));
  FDCE \wa_sckn_cnt_reg[3] 
       (.C(clk),
        .CE(\wa_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__4[3]),
        .Q(\wa_sckn_cnt_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h3233333302000000)) 
    \waddr[0]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\waddr[3]_i_2_n_0 ),
        .I3(\waddr[4]_i_2_n_0 ),
        .I4(\waddr[7]_i_4_n_0 ),
        .I5(\waddr_reg_n_0_[0] ),
        .O(\waddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \waddr[1]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\waddr[3]_i_2_n_0 ),
        .I3(\waddr[5]_i_2_n_0 ),
        .I4(\waddr[7]_i_4_n_0 ),
        .I5(\waddr_reg_n_0_[1] ),
        .O(\waddr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \waddr[2]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\waddr[3]_i_2_n_0 ),
        .I3(\waddr[6]_i_2_n_0 ),
        .I4(\waddr[7]_i_4_n_0 ),
        .I5(\waddr_reg_n_0_[2] ),
        .O(\waddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \waddr[3]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\waddr[3]_i_2_n_0 ),
        .I3(\waddr[7]_i_2_n_0 ),
        .I4(\waddr[7]_i_4_n_0 ),
        .I5(\waddr_reg_n_0_[3] ),
        .O(\waddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \waddr[3]_i_2 
       (.I0(\wa_sckn_cnt_reg_n_0_[3] ),
        .I1(\wa_sckn_cnt_reg_n_0_[2] ),
        .O(\waddr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3233333302000000)) 
    \waddr[4]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\waddr[7]_i_3_n_0 ),
        .I3(\waddr[4]_i_2_n_0 ),
        .I4(\waddr[7]_i_4_n_0 ),
        .I5(\waddr_reg_n_0_[4] ),
        .O(\waddr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_2 
       (.I0(\wa_sckn_cnt_reg_n_0_[1] ),
        .I1(\wa_sckn_cnt_reg_n_0_[0] ),
        .O(\waddr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \waddr[5]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\waddr[5]_i_2_n_0 ),
        .I3(\waddr[7]_i_3_n_0 ),
        .I4(\waddr[7]_i_4_n_0 ),
        .I5(\waddr_reg_n_0_[5] ),
        .O(\waddr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \waddr[5]_i_2 
       (.I0(\wa_sckn_cnt_reg_n_0_[0] ),
        .I1(\wa_sckn_cnt_reg_n_0_[1] ),
        .O(\waddr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \waddr[6]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\waddr[6]_i_2_n_0 ),
        .I3(\waddr[7]_i_3_n_0 ),
        .I4(\waddr[7]_i_4_n_0 ),
        .I5(\waddr_reg_n_0_[6] ),
        .O(\waddr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \waddr[6]_i_2 
       (.I0(\wa_sckn_cnt_reg_n_0_[1] ),
        .I1(\wa_sckn_cnt_reg_n_0_[0] ),
        .O(\waddr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \waddr[7]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\waddr[7]_i_2_n_0 ),
        .I3(\waddr[7]_i_3_n_0 ),
        .I4(\waddr[7]_i_4_n_0 ),
        .I5(\waddr_reg_n_0_[7] ),
        .O(\waddr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \waddr[7]_i_2 
       (.I0(\wa_sckn_cnt_reg_n_0_[1] ),
        .I1(\wa_sckn_cnt_reg_n_0_[0] ),
        .O(\waddr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \waddr[7]_i_3 
       (.I0(\wa_sckn_cnt_reg_n_0_[2] ),
        .I1(\wa_sckn_cnt_reg_n_0_[3] ),
        .O(\waddr[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \waddr[7]_i_4 
       (.I0(sck_2d),
        .I1(sck_1d),
        .I2(\s_state_reg_n_0_[2] ),
        .I3(\s_state_reg_n_0_[1] ),
        .I4(\s_state_reg_n_0_[0] ),
        .O(\waddr[7]_i_4_n_0 ));
  FDCE \waddr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\waddr[0]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[0] ));
  FDCE \waddr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\waddr[1]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[1] ));
  FDCE \waddr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\waddr[2]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[2] ));
  FDCE \waddr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\waddr[3]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[3] ));
  FDCE \waddr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\waddr[4]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[4] ));
  FDCE \waddr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\waddr[5]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[5] ));
  FDCE \waddr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\waddr[6]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[6] ));
  FDCE \waddr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\waddr[7]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \wd_sckn_cnt[0]_i_1 
       (.I0(\s_state_reg_n_0_[2] ),
        .I1(\s_state_reg_n_0_[1] ),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\wd_sckn_cnt_reg_n_0_[0] ),
        .O(p_0_in__7[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00404000)) 
    \wd_sckn_cnt[1]_i_1 
       (.I0(\s_state_reg_n_0_[2] ),
        .I1(\s_state_reg_n_0_[1] ),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\wd_sckn_cnt_reg_n_0_[1] ),
        .I4(\wd_sckn_cnt_reg_n_0_[0] ),
        .O(p_0_in__7[1]));
  LUT6 #(
    .INIT(64'h0040404040000000)) 
    \wd_sckn_cnt[2]_i_1 
       (.I0(\s_state_reg_n_0_[2] ),
        .I1(\s_state_reg_n_0_[1] ),
        .I2(\s_state_reg_n_0_[0] ),
        .I3(\wd_sckn_cnt_reg_n_0_[1] ),
        .I4(\wd_sckn_cnt_reg_n_0_[0] ),
        .I5(\wd_sckn_cnt_reg_n_0_[2] ),
        .O(p_0_in__7[2]));
  LUT5 #(
    .INIT(32'hF4FFFFFF)) 
    \wd_sckn_cnt[3]_i_1 
       (.I0(sck_1d),
        .I1(sck_2d),
        .I2(\s_state_reg_n_0_[2] ),
        .I3(\s_state_reg_n_0_[1] ),
        .I4(\s_state_reg_n_0_[0] ),
        .O(\wd_sckn_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \wd_sckn_cnt[3]_i_2 
       (.I0(\wd_sckn_cnt[3]_i_3_n_0 ),
        .I1(\wd_sckn_cnt_reg_n_0_[2] ),
        .I2(\wd_sckn_cnt_reg_n_0_[0] ),
        .I3(\wd_sckn_cnt_reg_n_0_[1] ),
        .I4(\wd_sckn_cnt_reg_n_0_[3] ),
        .O(p_0_in__7[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \wd_sckn_cnt[3]_i_3 
       (.I0(\s_state_reg_n_0_[0] ),
        .I1(\s_state_reg_n_0_[1] ),
        .I2(\s_state_reg_n_0_[2] ),
        .O(\wd_sckn_cnt[3]_i_3_n_0 ));
  FDCE \wd_sckn_cnt_reg[0] 
       (.C(clk),
        .CE(\wd_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__7[0]),
        .Q(\wd_sckn_cnt_reg_n_0_[0] ));
  FDCE \wd_sckn_cnt_reg[1] 
       (.C(clk),
        .CE(\wd_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__7[1]),
        .Q(\wd_sckn_cnt_reg_n_0_[1] ));
  FDCE \wd_sckn_cnt_reg[2] 
       (.C(clk),
        .CE(\wd_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__7[2]),
        .Q(\wd_sckn_cnt_reg_n_0_[2] ));
  FDCE \wd_sckn_cnt_reg[3] 
       (.C(clk),
        .CE(\wd_sckn_cnt[3]_i_1_n_0 ),
        .CLR(reset_0),
        .D(p_0_in__7[3]),
        .Q(\wd_sckn_cnt_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h3233333302000000)) 
    \wdata[0]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\wdata[3]_i_2_n_0 ),
        .I3(\wdata[4]_i_2_n_0 ),
        .I4(\wdata[7]_i_4_n_0 ),
        .I5(\wdata_reg_n_0_[0] ),
        .O(\wdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \wdata[1]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\wdata[3]_i_2_n_0 ),
        .I3(\wdata[5]_i_2_n_0 ),
        .I4(\wdata[7]_i_4_n_0 ),
        .I5(\wdata_reg_n_0_[1] ),
        .O(\wdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \wdata[2]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\wdata[3]_i_2_n_0 ),
        .I3(\wdata[6]_i_2_n_0 ),
        .I4(\wdata[7]_i_4_n_0 ),
        .I5(\wdata_reg_n_0_[2] ),
        .O(\wdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \wdata[3]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\wdata[3]_i_2_n_0 ),
        .I3(\wdata[7]_i_2_n_0 ),
        .I4(\wdata[7]_i_4_n_0 ),
        .I5(\wdata_reg_n_0_[3] ),
        .O(\wdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wdata[3]_i_2 
       (.I0(\wd_sckn_cnt_reg_n_0_[3] ),
        .I1(\wd_sckn_cnt_reg_n_0_[2] ),
        .O(\wdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3233333302000000)) 
    \wdata[4]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\wdata[7]_i_3_n_0 ),
        .I3(\wdata[4]_i_2_n_0 ),
        .I4(\wdata[7]_i_4_n_0 ),
        .I5(\wdata_reg_n_0_[4] ),
        .O(\wdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata[4]_i_2 
       (.I0(\wd_sckn_cnt_reg_n_0_[1] ),
        .I1(\wd_sckn_cnt_reg_n_0_[0] ),
        .O(\wdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \wdata[5]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\wdata[5]_i_2_n_0 ),
        .I3(\wdata[7]_i_3_n_0 ),
        .I4(\wdata[7]_i_4_n_0 ),
        .I5(\wdata_reg_n_0_[5] ),
        .O(\wdata[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \wdata[5]_i_2 
       (.I0(\wd_sckn_cnt_reg_n_0_[0] ),
        .I1(\wd_sckn_cnt_reg_n_0_[1] ),
        .O(\wdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \wdata[6]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\wdata[6]_i_2_n_0 ),
        .I3(\wdata[7]_i_3_n_0 ),
        .I4(\wdata[7]_i_4_n_0 ),
        .I5(\wdata_reg_n_0_[6] ),
        .O(\wdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wdata[6]_i_2 
       (.I0(\wd_sckn_cnt_reg_n_0_[1] ),
        .I1(\wd_sckn_cnt_reg_n_0_[0] ),
        .O(\wdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3332333300020000)) 
    \wdata[7]_i_1 
       (.I0(mosi_2d_reg_n_0),
        .I1(\slave_id[7]_i_2_n_0 ),
        .I2(\wdata[7]_i_2_n_0 ),
        .I3(\wdata[7]_i_3_n_0 ),
        .I4(\wdata[7]_i_4_n_0 ),
        .I5(\wdata_reg_n_0_[7] ),
        .O(\wdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \wdata[7]_i_2 
       (.I0(\wd_sckn_cnt_reg_n_0_[1] ),
        .I1(\wd_sckn_cnt_reg_n_0_[0] ),
        .O(\wdata[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \wdata[7]_i_3 
       (.I0(\wd_sckn_cnt_reg_n_0_[2] ),
        .I1(\wd_sckn_cnt_reg_n_0_[3] ),
        .O(\wdata[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \wdata[7]_i_4 
       (.I0(sck_2d),
        .I1(sck_1d),
        .I2(\s_state_reg_n_0_[2] ),
        .I3(\s_state_reg_n_0_[1] ),
        .I4(\s_state_reg_n_0_[0] ),
        .O(\wdata[7]_i_4_n_0 ));
  FDCE \wdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\wdata[0]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[0] ));
  FDCE \wdata_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\wdata[1]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[1] ));
  FDCE \wdata_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\wdata[2]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[2] ));
  FDCE \wdata_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\wdata[3]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[3] ));
  FDCE \wdata_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\wdata[4]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[4] ));
  FDCE \wdata_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\wdata[5]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[5] ));
  FDCE \wdata_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\wdata[6]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[6] ));
  FDCE \wdata_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\wdata[7]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[7] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_task
   (reset_0,
    fnd,
    led_out,
    clk,
    reset,
    Q,
    btn,
    mode);
  output reset_0;
  output [6:0]fnd;
  output [7:0]led_out;
  input clk;
  input reset;
  input [1:0]Q;
  input [3:0]btn;
  input mode;

  wire [1:0]Q;
  wire [4:0]addr;
  wire [3:0]btn;
  wire btn2_0;
  wire btn2_1;
  wire btn2_2;
  wire btn2_3;
  wire [1:0]btn_id;
  wire btn_in_u3_n_0;
  wire btn_in_u3_n_2;
  wire btn_in_u3_n_3;
  wire clk;
  wire [6:0]fnd;
  wire \fnd[6]_INST_0_i_1_n_0 ;
  wire \fnd[6]_INST_0_i_2_n_0 ;
  wire \fnd[6]_INST_0_i_3_n_0 ;
  wire \fnd[6]_INST_0_i_4_n_0 ;
  wire led0;
  wire \led[7]_i_3_n_0 ;
  wire [7:0]led_out;
  wire [2:0]m_state;
  wire \m_state[1]_i_2__0_n_0 ;
  wire miso;
  wire mode;
  wire mosi;
  wire [7:0]p_0_in__10;
  wire [7:0]p_0_in__11;
  wire [7:0]p_0_in__8;
  wire [7:0]p_0_in__9;
  wire [7:0]p_1_in;
  wire [7:0]rdata;
  wire [3:0]read_cnt;
  wire \read_cnt[0]_i_1_n_0 ;
  wire \read_cnt[1]_i_1_n_0 ;
  wire \read_cnt[2]_i_1_n_0 ;
  wire \read_cnt[3]_i_1_n_0 ;
  wire reset;
  wire reset_0;
  wire [1:0]rready_cnt;
  wire \rready_cnt[0]_i_1_n_0 ;
  wire \rready_cnt[1]_i_1_n_0 ;
  wire sck;
  wire spi_master_u1_n_4;
  wire spi_master_u1_n_5;
  wire spi_master_u1_n_6;
  wire ss;
  wire start_r;
  wire start_r0;
  wire start_w;
  wire start_w_i_1_n_0;
  wire [7:0]wdata;
  wire \wdata0[7]_i_2_n_0 ;
  wire [7:0]wdata0_reg;
  wire \wdata1[7]_i_2_n_0 ;
  wire [7:0]wdata1_reg;
  wire \wdata2[7]_i_2_n_0 ;
  wire [7:0]wdata2_reg;
  wire \wdata3[7]_i_2_n_0 ;
  wire [7:0]wdata3_reg;
  wire [1:0]wready_cnt;
  wire \wready_cnt[0]_i_1_n_0 ;
  wire \wready_cnt[1]_i_1_n_0 ;
  wire [3:0]write_cnt;
  wire \write_cnt[0]_i_1_n_0 ;
  wire \write_cnt[1]_i_1_n_0 ;
  wire \write_cnt[2]_i_1_n_0 ;
  wire \write_cnt[3]_i_1_n_0 ;
  wire \write_cnt[3]_i_2_n_0 ;

  FDCE \addr_reg[0] 
       (.C(clk),
        .CE(start_w_i_1_n_0),
        .CLR(reset_0),
        .D(btn_id[0]),
        .Q(addr[0]));
  FDCE \addr_reg[1] 
       (.C(clk),
        .CE(start_w_i_1_n_0),
        .CLR(reset_0),
        .D(btn_id[1]),
        .Q(addr[1]));
  FDCE \addr_reg[4] 
       (.C(clk),
        .CE(start_w_i_1_n_0),
        .CLR(reset_0),
        .D(1'b1),
        .Q(addr[4]));
  FDCE \btn_id_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(btn_in_u3_n_3),
        .Q(btn_id[0]));
  FDCE \btn_id_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(btn_in_u3_n_2),
        .Q(btn_id[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_btn_in btn_in_u1
       (.btn(btn[0]),
        .btn2_reg_0(reset_0),
        .btn_out(btn2_0),
        .clk(clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_btn_in_0 btn_in_u2
       (.btn(btn[1]),
        .btn2_reg_0(reset_0),
        .btn_out(btn2_1),
        .clk(clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_btn_in_1 btn_in_u3
       (.btn(btn[2]),
        .btn2_reg_0(reset_0),
        .btn_id(btn_id),
        .\btn_id_reg[1] (btn2_3),
        .\btn_id_reg[1]_0 (btn2_1),
        .\btn_id_reg[1]_1 (btn2_0),
        .btn_out(btn2_2),
        .btn_out_reg_0(btn_in_u3_n_2),
        .btn_out_reg_1(btn_in_u3_n_3),
        .clk(clk),
        .m_state(m_state),
        .\m_state_reg[0] (btn_in_u3_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_btn_in_2 btn_in_u4
       (.btn(btn[3]),
        .btn2_reg_0(reset_0),
        .btn_out(btn2_3),
        .clk(clk));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hD55DD5D7)) 
    \fnd[0]_INST_0 
       (.I0(reset),
        .I1(\fnd[6]_INST_0_i_3_n_0 ),
        .I2(\fnd[6]_INST_0_i_1_n_0 ),
        .I3(\fnd[6]_INST_0_i_2_n_0 ),
        .I4(\fnd[6]_INST_0_i_4_n_0 ),
        .O(fnd[0]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h2883FFFF)) 
    \fnd[1]_INST_0 
       (.I0(\fnd[6]_INST_0_i_1_n_0 ),
        .I1(\fnd[6]_INST_0_i_4_n_0 ),
        .I2(\fnd[6]_INST_0_i_2_n_0 ),
        .I3(\fnd[6]_INST_0_i_3_n_0 ),
        .I4(reset),
        .O(fnd[1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h1A02FFFF)) 
    \fnd[2]_INST_0 
       (.I0(\fnd[6]_INST_0_i_1_n_0 ),
        .I1(\fnd[6]_INST_0_i_3_n_0 ),
        .I2(\fnd[6]_INST_0_i_4_n_0 ),
        .I3(\fnd[6]_INST_0_i_2_n_0 ),
        .I4(reset),
        .O(fnd[2]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h9410FFFF)) 
    \fnd[3]_INST_0 
       (.I0(\fnd[6]_INST_0_i_2_n_0 ),
        .I1(\fnd[6]_INST_0_i_3_n_0 ),
        .I2(\fnd[6]_INST_0_i_1_n_0 ),
        .I3(\fnd[6]_INST_0_i_4_n_0 ),
        .I4(reset),
        .O(fnd[3]));
  LUT5 #(
    .INIT(32'hBB3B3F3B)) 
    \fnd[4]_INST_0 
       (.I0(\fnd[6]_INST_0_i_4_n_0 ),
        .I1(reset),
        .I2(\fnd[6]_INST_0_i_2_n_0 ),
        .I3(\fnd[6]_INST_0_i_3_n_0 ),
        .I4(\fnd[6]_INST_0_i_1_n_0 ),
        .O(fnd[4]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h0C72FFFF)) 
    \fnd[5]_INST_0 
       (.I0(\fnd[6]_INST_0_i_2_n_0 ),
        .I1(\fnd[6]_INST_0_i_3_n_0 ),
        .I2(\fnd[6]_INST_0_i_4_n_0 ),
        .I3(\fnd[6]_INST_0_i_1_n_0 ),
        .I4(reset),
        .O(fnd[5]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h5200FFFF)) 
    \fnd[6]_INST_0 
       (.I0(\fnd[6]_INST_0_i_1_n_0 ),
        .I1(\fnd[6]_INST_0_i_2_n_0 ),
        .I2(\fnd[6]_INST_0_i_3_n_0 ),
        .I3(\fnd[6]_INST_0_i_4_n_0 ),
        .I4(reset),
        .O(fnd[6]));
  LUT6 #(
    .INIT(64'hFF00AAAA0000C0C0)) 
    \fnd[6]_INST_0_i_1 
       (.I0(led_out[2]),
        .I1(btn[2]),
        .I2(mode),
        .I3(led_out[6]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\fnd[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h737370737F7F7C7F)) 
    \fnd[6]_INST_0_i_2 
       (.I0(led_out[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(btn[0]),
        .I4(mode),
        .I5(led_out[0]),
        .O(\fnd[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h37370737F7F7C7F7)) 
    \fnd[6]_INST_0_i_3 
       (.I0(led_out[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(btn[1]),
        .I4(mode),
        .I5(led_out[5]),
        .O(\fnd[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h07373737C7F7F7F7)) 
    \fnd[6]_INST_0_i_4 
       (.I0(led_out[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(btn[3]),
        .I4(mode),
        .I5(led_out[7]),
        .O(\fnd[6]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \led[7]_i_3 
       (.I0(m_state[1]),
        .I1(m_state[2]),
        .I2(m_state[0]),
        .O(\led[7]_i_3_n_0 ));
  FDCE \led_reg[0] 
       (.C(clk),
        .CE(led0),
        .CLR(reset_0),
        .D(rdata[0]),
        .Q(led_out[0]));
  FDCE \led_reg[1] 
       (.C(clk),
        .CE(led0),
        .CLR(reset_0),
        .D(rdata[1]),
        .Q(led_out[1]));
  FDCE \led_reg[2] 
       (.C(clk),
        .CE(led0),
        .CLR(reset_0),
        .D(rdata[2]),
        .Q(led_out[2]));
  FDCE \led_reg[3] 
       (.C(clk),
        .CE(led0),
        .CLR(reset_0),
        .D(rdata[3]),
        .Q(led_out[3]));
  FDCE \led_reg[4] 
       (.C(clk),
        .CE(led0),
        .CLR(reset_0),
        .D(rdata[4]),
        .Q(led_out[4]));
  FDCE \led_reg[5] 
       (.C(clk),
        .CE(led0),
        .CLR(reset_0),
        .D(rdata[5]),
        .Q(led_out[5]));
  FDCE \led_reg[6] 
       (.C(clk),
        .CE(led0),
        .CLR(reset_0),
        .D(rdata[6]),
        .Q(led_out[6]));
  FDCE \led_reg[7] 
       (.C(clk),
        .CE(led0),
        .CLR(reset_0),
        .D(rdata[7]),
        .Q(led_out[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \m_state[1]_i_2__0 
       (.I0(write_cnt[3]),
        .I1(write_cnt[0]),
        .I2(write_cnt[1]),
        .I3(write_cnt[2]),
        .O(\m_state[1]_i_2__0_n_0 ));
  FDCE \m_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(spi_master_u1_n_6),
        .Q(m_state[0]));
  FDCE \m_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(spi_master_u1_n_5),
        .Q(m_state[1]));
  FDCE \m_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(spi_master_u1_n_4),
        .Q(m_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h8A0A0A0A)) 
    \read_cnt[0]_i_1 
       (.I0(\led[7]_i_3_n_0 ),
        .I1(read_cnt[2]),
        .I2(read_cnt[0]),
        .I3(read_cnt[1]),
        .I4(read_cnt[3]),
        .O(\read_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hA8282828)) 
    \read_cnt[1]_i_1 
       (.I0(\led[7]_i_3_n_0 ),
        .I1(read_cnt[0]),
        .I2(read_cnt[1]),
        .I3(read_cnt[2]),
        .I4(read_cnt[3]),
        .O(\read_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hA8882888)) 
    \read_cnt[2]_i_1 
       (.I0(\led[7]_i_3_n_0 ),
        .I1(read_cnt[2]),
        .I2(read_cnt[1]),
        .I3(read_cnt[0]),
        .I4(read_cnt[3]),
        .O(\read_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hA8888888)) 
    \read_cnt[3]_i_1 
       (.I0(\led[7]_i_3_n_0 ),
        .I1(read_cnt[3]),
        .I2(read_cnt[1]),
        .I3(read_cnt[0]),
        .I4(read_cnt[2]),
        .O(\read_cnt[3]_i_1_n_0 ));
  FDCE \read_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\read_cnt[0]_i_1_n_0 ),
        .Q(read_cnt[0]));
  FDCE \read_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\read_cnt[1]_i_1_n_0 ),
        .Q(read_cnt[1]));
  FDCE \read_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\read_cnt[2]_i_1_n_0 ),
        .Q(read_cnt[2]));
  FDCE \read_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\read_cnt[3]_i_1_n_0 ),
        .Q(read_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \rready_cnt[0]_i_1 
       (.I0(m_state[2]),
        .I1(m_state[0]),
        .I2(m_state[1]),
        .I3(rready_cnt[0]),
        .O(\rready_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00404000)) 
    \rready_cnt[1]_i_1 
       (.I0(m_state[2]),
        .I1(m_state[0]),
        .I2(m_state[1]),
        .I3(rready_cnt[0]),
        .I4(rready_cnt[1]),
        .O(\rready_cnt[1]_i_1_n_0 ));
  FDCE \rready_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\rready_cnt[0]_i_1_n_0 ),
        .Q(rready_cnt[0]));
  FDCE \rready_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\rready_cnt[1]_i_1_n_0 ),
        .Q(rready_cnt[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master spi_master_u1
       (.D(rdata),
        .E(led0),
        .Q(wdata),
        .clk(clk),
        .\done_cnt_reg[3]_0 (reset_0),
        .done_reg_0(spi_master_u1_n_5),
        .\led_reg[0] (\led[7]_i_3_n_0 ),
        .\led_reg[0]_0 (read_cnt),
        .m_state(m_state),
        .\m_state_reg[0]_0 (spi_master_u1_n_4),
        .\m_state_reg[0]_1 (spi_master_u1_n_6),
        .\m_state_reg[0]_2 (btn_in_u3_n_0),
        .\m_state_reg[0]_3 (write_cnt),
        .\m_state_reg[1]_0 (start_w_i_1_n_0),
        .\m_state_reg[1]_1 (\m_state[1]_i_2__0_n_0 ),
        .\m_state_reg[1]_2 (\write_cnt[3]_i_2_n_0 ),
        .\m_state_reg[2] (rready_cnt),
        .miso(miso),
        .mosi(mosi),
        .mosi_i_11_0({addr[4],addr[1:0]}),
        .sck(sck),
        .ss(ss),
        .start_r(start_r),
        .start_r0(start_r0),
        .start_w(start_w));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_slave spi_slave_u1
       (.clk(clk),
        .miso(miso),
        .mosi(mosi),
        .reset(reset),
        .reset_0(reset_0),
        .sck(sck),
        .ss(ss));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    start_r_i_1
       (.I0(m_state[2]),
        .I1(m_state[0]),
        .I2(m_state[1]),
        .I3(rready_cnt[0]),
        .I4(rready_cnt[1]),
        .O(start_r0));
  FDCE start_r_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(start_r0),
        .Q(start_r));
  LUT5 #(
    .INIT(32'h04000000)) 
    start_w_i_1
       (.I0(m_state[2]),
        .I1(m_state[0]),
        .I2(m_state[1]),
        .I3(wready_cnt[1]),
        .I4(wready_cnt[0]),
        .O(start_w_i_1_n_0));
  FDCE start_w_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(start_w_i_1_n_0),
        .Q(start_w));
  LUT1 #(
    .INIT(2'h1)) 
    \wdata0[0]_i_1 
       (.I0(wdata0_reg[0]),
        .O(p_0_in__11[0]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wdata0[1]_i_1 
       (.I0(wdata0_reg[0]),
        .I1(wdata0_reg[1]),
        .O(p_0_in__11[1]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wdata0[2]_i_1 
       (.I0(wdata0_reg[2]),
        .I1(wdata0_reg[0]),
        .I2(wdata0_reg[1]),
        .O(p_0_in__11[2]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wdata0[3]_i_1 
       (.I0(wdata0_reg[3]),
        .I1(wdata0_reg[1]),
        .I2(wdata0_reg[0]),
        .I3(wdata0_reg[2]),
        .O(p_0_in__11[3]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wdata0[4]_i_1 
       (.I0(wdata0_reg[4]),
        .I1(wdata0_reg[2]),
        .I2(wdata0_reg[0]),
        .I3(wdata0_reg[1]),
        .I4(wdata0_reg[3]),
        .O(p_0_in__11[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wdata0[5]_i_1 
       (.I0(wdata0_reg[5]),
        .I1(wdata0_reg[3]),
        .I2(wdata0_reg[1]),
        .I3(wdata0_reg[0]),
        .I4(wdata0_reg[2]),
        .I5(wdata0_reg[4]),
        .O(p_0_in__11[5]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wdata0[6]_i_1 
       (.I0(\wdata0[7]_i_2_n_0 ),
        .I1(wdata0_reg[6]),
        .O(p_0_in__11[6]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \wdata0[7]_i_1 
       (.I0(wdata0_reg[7]),
        .I1(\wdata0[7]_i_2_n_0 ),
        .I2(wdata0_reg[6]),
        .O(p_0_in__11[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \wdata0[7]_i_2 
       (.I0(wdata0_reg[4]),
        .I1(wdata0_reg[2]),
        .I2(wdata0_reg[0]),
        .I3(wdata0_reg[1]),
        .I4(wdata0_reg[3]),
        .I5(wdata0_reg[5]),
        .O(\wdata0[7]_i_2_n_0 ));
  FDCE \wdata0_reg[0] 
       (.C(clk),
        .CE(btn2_0),
        .CLR(reset_0),
        .D(p_0_in__11[0]),
        .Q(wdata0_reg[0]));
  FDCE \wdata0_reg[1] 
       (.C(clk),
        .CE(btn2_0),
        .CLR(reset_0),
        .D(p_0_in__11[1]),
        .Q(wdata0_reg[1]));
  FDCE \wdata0_reg[2] 
       (.C(clk),
        .CE(btn2_0),
        .CLR(reset_0),
        .D(p_0_in__11[2]),
        .Q(wdata0_reg[2]));
  FDCE \wdata0_reg[3] 
       (.C(clk),
        .CE(btn2_0),
        .CLR(reset_0),
        .D(p_0_in__11[3]),
        .Q(wdata0_reg[3]));
  FDCE \wdata0_reg[4] 
       (.C(clk),
        .CE(btn2_0),
        .CLR(reset_0),
        .D(p_0_in__11[4]),
        .Q(wdata0_reg[4]));
  FDCE \wdata0_reg[5] 
       (.C(clk),
        .CE(btn2_0),
        .CLR(reset_0),
        .D(p_0_in__11[5]),
        .Q(wdata0_reg[5]));
  FDCE \wdata0_reg[6] 
       (.C(clk),
        .CE(btn2_0),
        .CLR(reset_0),
        .D(p_0_in__11[6]),
        .Q(wdata0_reg[6]));
  FDCE \wdata0_reg[7] 
       (.C(clk),
        .CE(btn2_0),
        .CLR(reset_0),
        .D(p_0_in__11[7]),
        .Q(wdata0_reg[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \wdata1[0]_i_1 
       (.I0(wdata1_reg[0]),
        .O(p_0_in__10[0]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wdata1[1]_i_1 
       (.I0(wdata1_reg[0]),
        .I1(wdata1_reg[1]),
        .O(p_0_in__10[1]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wdata1[2]_i_1 
       (.I0(wdata1_reg[2]),
        .I1(wdata1_reg[0]),
        .I2(wdata1_reg[1]),
        .O(p_0_in__10[2]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wdata1[3]_i_1 
       (.I0(wdata1_reg[3]),
        .I1(wdata1_reg[1]),
        .I2(wdata1_reg[0]),
        .I3(wdata1_reg[2]),
        .O(p_0_in__10[3]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wdata1[4]_i_1 
       (.I0(wdata1_reg[4]),
        .I1(wdata1_reg[2]),
        .I2(wdata1_reg[0]),
        .I3(wdata1_reg[1]),
        .I4(wdata1_reg[3]),
        .O(p_0_in__10[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wdata1[5]_i_1 
       (.I0(wdata1_reg[5]),
        .I1(wdata1_reg[3]),
        .I2(wdata1_reg[1]),
        .I3(wdata1_reg[0]),
        .I4(wdata1_reg[2]),
        .I5(wdata1_reg[4]),
        .O(p_0_in__10[5]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wdata1[6]_i_1 
       (.I0(\wdata1[7]_i_2_n_0 ),
        .I1(wdata1_reg[6]),
        .O(p_0_in__10[6]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \wdata1[7]_i_1 
       (.I0(wdata1_reg[7]),
        .I1(\wdata1[7]_i_2_n_0 ),
        .I2(wdata1_reg[6]),
        .O(p_0_in__10[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \wdata1[7]_i_2 
       (.I0(wdata1_reg[4]),
        .I1(wdata1_reg[2]),
        .I2(wdata1_reg[0]),
        .I3(wdata1_reg[1]),
        .I4(wdata1_reg[3]),
        .I5(wdata1_reg[5]),
        .O(\wdata1[7]_i_2_n_0 ));
  FDCE \wdata1_reg[0] 
       (.C(clk),
        .CE(btn2_1),
        .CLR(reset_0),
        .D(p_0_in__10[0]),
        .Q(wdata1_reg[0]));
  FDCE \wdata1_reg[1] 
       (.C(clk),
        .CE(btn2_1),
        .CLR(reset_0),
        .D(p_0_in__10[1]),
        .Q(wdata1_reg[1]));
  FDCE \wdata1_reg[2] 
       (.C(clk),
        .CE(btn2_1),
        .CLR(reset_0),
        .D(p_0_in__10[2]),
        .Q(wdata1_reg[2]));
  FDCE \wdata1_reg[3] 
       (.C(clk),
        .CE(btn2_1),
        .CLR(reset_0),
        .D(p_0_in__10[3]),
        .Q(wdata1_reg[3]));
  FDCE \wdata1_reg[4] 
       (.C(clk),
        .CE(btn2_1),
        .CLR(reset_0),
        .D(p_0_in__10[4]),
        .Q(wdata1_reg[4]));
  FDCE \wdata1_reg[5] 
       (.C(clk),
        .CE(btn2_1),
        .CLR(reset_0),
        .D(p_0_in__10[5]),
        .Q(wdata1_reg[5]));
  FDCE \wdata1_reg[6] 
       (.C(clk),
        .CE(btn2_1),
        .CLR(reset_0),
        .D(p_0_in__10[6]),
        .Q(wdata1_reg[6]));
  FDCE \wdata1_reg[7] 
       (.C(clk),
        .CE(btn2_1),
        .CLR(reset_0),
        .D(p_0_in__10[7]),
        .Q(wdata1_reg[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \wdata2[0]_i_1 
       (.I0(wdata2_reg[0]),
        .O(p_0_in__9[0]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wdata2[1]_i_1 
       (.I0(wdata2_reg[0]),
        .I1(wdata2_reg[1]),
        .O(p_0_in__9[1]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wdata2[2]_i_1 
       (.I0(wdata2_reg[2]),
        .I1(wdata2_reg[0]),
        .I2(wdata2_reg[1]),
        .O(p_0_in__9[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wdata2[3]_i_1 
       (.I0(wdata2_reg[3]),
        .I1(wdata2_reg[1]),
        .I2(wdata2_reg[0]),
        .I3(wdata2_reg[2]),
        .O(p_0_in__9[3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wdata2[4]_i_1 
       (.I0(wdata2_reg[4]),
        .I1(wdata2_reg[2]),
        .I2(wdata2_reg[0]),
        .I3(wdata2_reg[1]),
        .I4(wdata2_reg[3]),
        .O(p_0_in__9[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wdata2[5]_i_1 
       (.I0(wdata2_reg[5]),
        .I1(wdata2_reg[3]),
        .I2(wdata2_reg[1]),
        .I3(wdata2_reg[0]),
        .I4(wdata2_reg[2]),
        .I5(wdata2_reg[4]),
        .O(p_0_in__9[5]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wdata2[6]_i_1 
       (.I0(\wdata2[7]_i_2_n_0 ),
        .I1(wdata2_reg[6]),
        .O(p_0_in__9[6]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \wdata2[7]_i_1 
       (.I0(wdata2_reg[7]),
        .I1(\wdata2[7]_i_2_n_0 ),
        .I2(wdata2_reg[6]),
        .O(p_0_in__9[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \wdata2[7]_i_2 
       (.I0(wdata2_reg[4]),
        .I1(wdata2_reg[2]),
        .I2(wdata2_reg[0]),
        .I3(wdata2_reg[1]),
        .I4(wdata2_reg[3]),
        .I5(wdata2_reg[5]),
        .O(\wdata2[7]_i_2_n_0 ));
  FDCE \wdata2_reg[0] 
       (.C(clk),
        .CE(btn2_2),
        .CLR(reset_0),
        .D(p_0_in__9[0]),
        .Q(wdata2_reg[0]));
  FDCE \wdata2_reg[1] 
       (.C(clk),
        .CE(btn2_2),
        .CLR(reset_0),
        .D(p_0_in__9[1]),
        .Q(wdata2_reg[1]));
  FDCE \wdata2_reg[2] 
       (.C(clk),
        .CE(btn2_2),
        .CLR(reset_0),
        .D(p_0_in__9[2]),
        .Q(wdata2_reg[2]));
  FDCE \wdata2_reg[3] 
       (.C(clk),
        .CE(btn2_2),
        .CLR(reset_0),
        .D(p_0_in__9[3]),
        .Q(wdata2_reg[3]));
  FDCE \wdata2_reg[4] 
       (.C(clk),
        .CE(btn2_2),
        .CLR(reset_0),
        .D(p_0_in__9[4]),
        .Q(wdata2_reg[4]));
  FDCE \wdata2_reg[5] 
       (.C(clk),
        .CE(btn2_2),
        .CLR(reset_0),
        .D(p_0_in__9[5]),
        .Q(wdata2_reg[5]));
  FDCE \wdata2_reg[6] 
       (.C(clk),
        .CE(btn2_2),
        .CLR(reset_0),
        .D(p_0_in__9[6]),
        .Q(wdata2_reg[6]));
  FDCE \wdata2_reg[7] 
       (.C(clk),
        .CE(btn2_2),
        .CLR(reset_0),
        .D(p_0_in__9[7]),
        .Q(wdata2_reg[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \wdata3[0]_i_1 
       (.I0(wdata3_reg[0]),
        .O(p_0_in__8[0]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wdata3[1]_i_1 
       (.I0(wdata3_reg[0]),
        .I1(wdata3_reg[1]),
        .O(p_0_in__8[1]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wdata3[2]_i_1 
       (.I0(wdata3_reg[2]),
        .I1(wdata3_reg[0]),
        .I2(wdata3_reg[1]),
        .O(p_0_in__8[2]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wdata3[3]_i_1 
       (.I0(wdata3_reg[3]),
        .I1(wdata3_reg[1]),
        .I2(wdata3_reg[0]),
        .I3(wdata3_reg[2]),
        .O(p_0_in__8[3]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wdata3[4]_i_1 
       (.I0(wdata3_reg[4]),
        .I1(wdata3_reg[2]),
        .I2(wdata3_reg[0]),
        .I3(wdata3_reg[1]),
        .I4(wdata3_reg[3]),
        .O(p_0_in__8[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wdata3[5]_i_1 
       (.I0(wdata3_reg[5]),
        .I1(wdata3_reg[3]),
        .I2(wdata3_reg[1]),
        .I3(wdata3_reg[0]),
        .I4(wdata3_reg[2]),
        .I5(wdata3_reg[4]),
        .O(p_0_in__8[5]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wdata3[6]_i_1 
       (.I0(\wdata3[7]_i_2_n_0 ),
        .I1(wdata3_reg[6]),
        .O(p_0_in__8[6]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \wdata3[7]_i_1 
       (.I0(wdata3_reg[7]),
        .I1(\wdata3[7]_i_2_n_0 ),
        .I2(wdata3_reg[6]),
        .O(p_0_in__8[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \wdata3[7]_i_2 
       (.I0(wdata3_reg[4]),
        .I1(wdata3_reg[2]),
        .I2(wdata3_reg[0]),
        .I3(wdata3_reg[1]),
        .I4(wdata3_reg[3]),
        .I5(wdata3_reg[5]),
        .O(\wdata3[7]_i_2_n_0 ));
  FDCE \wdata3_reg[0] 
       (.C(clk),
        .CE(btn2_3),
        .CLR(reset_0),
        .D(p_0_in__8[0]),
        .Q(wdata3_reg[0]));
  FDCE \wdata3_reg[1] 
       (.C(clk),
        .CE(btn2_3),
        .CLR(reset_0),
        .D(p_0_in__8[1]),
        .Q(wdata3_reg[1]));
  FDCE \wdata3_reg[2] 
       (.C(clk),
        .CE(btn2_3),
        .CLR(reset_0),
        .D(p_0_in__8[2]),
        .Q(wdata3_reg[2]));
  FDCE \wdata3_reg[3] 
       (.C(clk),
        .CE(btn2_3),
        .CLR(reset_0),
        .D(p_0_in__8[3]),
        .Q(wdata3_reg[3]));
  FDCE \wdata3_reg[4] 
       (.C(clk),
        .CE(btn2_3),
        .CLR(reset_0),
        .D(p_0_in__8[4]),
        .Q(wdata3_reg[4]));
  FDCE \wdata3_reg[5] 
       (.C(clk),
        .CE(btn2_3),
        .CLR(reset_0),
        .D(p_0_in__8[5]),
        .Q(wdata3_reg[5]));
  FDCE \wdata3_reg[6] 
       (.C(clk),
        .CE(btn2_3),
        .CLR(reset_0),
        .D(p_0_in__8[6]),
        .Q(wdata3_reg[6]));
  FDCE \wdata3_reg[7] 
       (.C(clk),
        .CE(btn2_3),
        .CLR(reset_0),
        .D(p_0_in__8[7]),
        .Q(wdata3_reg[7]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \wdata[0]_i_1__0 
       (.I0(wdata2_reg[0]),
        .I1(wdata3_reg[0]),
        .I2(wdata0_reg[0]),
        .I3(btn_id[0]),
        .I4(btn_id[1]),
        .I5(wdata1_reg[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \wdata[1]_i_1__0 
       (.I0(wdata0_reg[1]),
        .I1(wdata1_reg[1]),
        .I2(wdata2_reg[1]),
        .I3(btn_id[1]),
        .I4(btn_id[0]),
        .I5(wdata3_reg[1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \wdata[2]_i_1__0 
       (.I0(wdata2_reg[2]),
        .I1(wdata3_reg[2]),
        .I2(wdata1_reg[2]),
        .I3(btn_id[0]),
        .I4(btn_id[1]),
        .I5(wdata0_reg[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \wdata[3]_i_1__0 
       (.I0(wdata2_reg[3]),
        .I1(wdata3_reg[3]),
        .I2(wdata1_reg[3]),
        .I3(btn_id[0]),
        .I4(btn_id[1]),
        .I5(wdata0_reg[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \wdata[4]_i_1__0 
       (.I0(wdata0_reg[4]),
        .I1(wdata1_reg[4]),
        .I2(wdata2_reg[4]),
        .I3(btn_id[1]),
        .I4(btn_id[0]),
        .I5(wdata3_reg[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \wdata[5]_i_1__0 
       (.I0(wdata0_reg[5]),
        .I1(wdata1_reg[5]),
        .I2(wdata2_reg[5]),
        .I3(btn_id[1]),
        .I4(btn_id[0]),
        .I5(wdata3_reg[5]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \wdata[6]_i_1__0 
       (.I0(wdata0_reg[6]),
        .I1(wdata1_reg[6]),
        .I2(wdata2_reg[6]),
        .I3(btn_id[1]),
        .I4(btn_id[0]),
        .I5(wdata3_reg[6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \wdata[7]_i_1__0 
       (.I0(wdata0_reg[7]),
        .I1(wdata1_reg[7]),
        .I2(wdata2_reg[7]),
        .I3(btn_id[1]),
        .I4(btn_id[0]),
        .I5(wdata3_reg[7]),
        .O(p_1_in[7]));
  FDCE \wdata_reg[0] 
       (.C(clk),
        .CE(start_w_i_1_n_0),
        .CLR(reset_0),
        .D(p_1_in[0]),
        .Q(wdata[0]));
  FDCE \wdata_reg[1] 
       (.C(clk),
        .CE(start_w_i_1_n_0),
        .CLR(reset_0),
        .D(p_1_in[1]),
        .Q(wdata[1]));
  FDCE \wdata_reg[2] 
       (.C(clk),
        .CE(start_w_i_1_n_0),
        .CLR(reset_0),
        .D(p_1_in[2]),
        .Q(wdata[2]));
  FDCE \wdata_reg[3] 
       (.C(clk),
        .CE(start_w_i_1_n_0),
        .CLR(reset_0),
        .D(p_1_in[3]),
        .Q(wdata[3]));
  FDCE \wdata_reg[4] 
       (.C(clk),
        .CE(start_w_i_1_n_0),
        .CLR(reset_0),
        .D(p_1_in[4]),
        .Q(wdata[4]));
  FDCE \wdata_reg[5] 
       (.C(clk),
        .CE(start_w_i_1_n_0),
        .CLR(reset_0),
        .D(p_1_in[5]),
        .Q(wdata[5]));
  FDCE \wdata_reg[6] 
       (.C(clk),
        .CE(start_w_i_1_n_0),
        .CLR(reset_0),
        .D(p_1_in[6]),
        .Q(wdata[6]));
  FDCE \wdata_reg[7] 
       (.C(clk),
        .CE(start_w_i_1_n_0),
        .CLR(reset_0),
        .D(p_1_in[7]),
        .Q(wdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \wready_cnt[0]_i_1 
       (.I0(m_state[2]),
        .I1(m_state[0]),
        .I2(m_state[1]),
        .I3(wready_cnt[0]),
        .O(\wready_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h00040400)) 
    \wready_cnt[1]_i_1 
       (.I0(m_state[2]),
        .I1(m_state[0]),
        .I2(m_state[1]),
        .I3(wready_cnt[1]),
        .I4(wready_cnt[0]),
        .O(\wready_cnt[1]_i_1_n_0 ));
  FDCE \wready_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\wready_cnt[0]_i_1_n_0 ),
        .Q(wready_cnt[0]));
  FDCE \wready_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\wready_cnt[1]_i_1_n_0 ),
        .Q(wready_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h8A0A0A0A)) 
    \write_cnt[0]_i_1 
       (.I0(\write_cnt[3]_i_2_n_0 ),
        .I1(write_cnt[3]),
        .I2(write_cnt[0]),
        .I3(write_cnt[1]),
        .I4(write_cnt[2]),
        .O(\write_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hA8282828)) 
    \write_cnt[1]_i_1 
       (.I0(\write_cnt[3]_i_2_n_0 ),
        .I1(write_cnt[0]),
        .I2(write_cnt[1]),
        .I3(write_cnt[3]),
        .I4(write_cnt[2]),
        .O(\write_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hA8882888)) 
    \write_cnt[2]_i_1 
       (.I0(\write_cnt[3]_i_2_n_0 ),
        .I1(write_cnt[2]),
        .I2(write_cnt[1]),
        .I3(write_cnt[0]),
        .I4(write_cnt[3]),
        .O(\write_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hAAAA8000)) 
    \write_cnt[3]_i_1 
       (.I0(\write_cnt[3]_i_2_n_0 ),
        .I1(write_cnt[2]),
        .I2(write_cnt[1]),
        .I3(write_cnt[0]),
        .I4(write_cnt[3]),
        .O(\write_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \write_cnt[3]_i_2 
       (.I0(m_state[1]),
        .I1(m_state[2]),
        .I2(m_state[0]),
        .O(\write_cnt[3]_i_2_n_0 ));
  FDCE \write_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\write_cnt[0]_i_1_n_0 ),
        .Q(write_cnt[0]));
  FDCE \write_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\write_cnt[1]_i_1_n_0 ),
        .Q(write_cnt[1]));
  FDCE \write_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\write_cnt[2]_i_1_n_0 ),
        .Q(write_cnt[2]));
  FDCE \write_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_0),
        .D(\write_cnt[3]_i_1_n_0 ),
        .Q(write_cnt[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_fndcontrol2
   (fnd,
    led_out,
    fndsel,
    reset,
    clk,
    btn,
    mode);
  output [6:0]fnd;
  output [7:0]led_out;
  output [3:0]fndsel;
  input reset;
  input clk;
  input [3:0]btn;
  input mode;

  wire U0_n_0;
  wire [3:0]btn;
  wire clk;
  wire clk1000Hz;
  wire [6:0]fnd;
  wire [3:0]fndsel;
  wire [7:0]led_out;
  wire mode;
  wire reset;
  wire [1:0]s;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_task U0
       (.Q(s),
        .btn(btn),
        .clk(clk),
        .fnd(fnd),
        .led_out(led_out),
        .mode(mode),
        .reset(reset),
        .reset_0(U0_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter U1
       (.CLK(clk1000Hz),
        .Q(s),
        .fndsel(fndsel),
        .\out_counter_reg[1]_0 (U0_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clockdivider U2
       (.CLK(clk1000Hz),
        .clk(clk),
        .\cnt_reg[0]_0 (U0_n_0),
        .reset(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif