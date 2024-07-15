// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Jul 15 12:07:13 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Harman/Verilog/SoC_07_15_blaze_w5500/SoC_07_15_blaze_w5500.gen/sources_1/ip/spram_2048x32/spram_2048x32_sim_netlist.v
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
ncMuhC0hu9nw4nnAhtGG
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
