// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Jun 21 11:15:37 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Harman/Verilog/SoC_06_21_BM_Interface/SoC_06_21_BM_Interface.gen/sources_1/bd/system/ip/system_blk_mem_gen_0_0/system_blk_mem_gen_0_0_sim_netlist.v
// Design      : system_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_blk_mem_gen_0_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module system_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.3746 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "system_blk_mem_gen_0_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  system_blk_mem_gen_0_0_blk_mem_gen_v8_4_8 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52800)
`pragma protect data_block
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
LAmXLobuBKASAj+pjWHAj0eN
`pragma protect end_protected
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
