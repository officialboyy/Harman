// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Jul 15 21:08:34 2024
// Host        : Park running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Harman/Verilog/SoC_07_15_TEST/SoC_07_15_TEST.gen/sources_1/ip/spram_2048x32/spram_2048x32_sim_netlist.v
// Design      : spram_2048x32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram_2048x32,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module spram_2048x32
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
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
  (* C_INIT_FILE = "spram_2048x32.mem" *) 
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
  (* C_USE_BRAM_BLOCK = "0" *) 
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
  spram_2048x32_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51600)
`pragma protect data_block
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
p9pz1VAAgIDBtW9jp+oE
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
