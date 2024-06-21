// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Jun 21 16:12:07 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Harman/Verilog/SoC_06_21_userMap_rev01/SoC_06_21_userMap_rev01.gen/sources_1/ip/spram_2048x32/spram_2048x32_sim_netlist.v
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
de10x5P7K0J7hMVGbcvzUlvT8XYA2diSBDKNKXmmAf7UyccBzVp9EOX6lFfcFmCEK2O6JRp9uI0x
w3cE+xEd2yB9qa67rOSJvv0BhfZTkxAqFgKqJ6gJKXMnZNRGJi6cj6uyxiU4Nk2LRkZ8lWAj7drf
bcGQ9QrOuXpElRxJQo7hqkSpY/LRYzC/Kk8HYj6gy5saT5DQM6kXvgbsGkSJ0TAIsgx/9aq6QTjD
s+koP8tUXhhKOsrD79gzZO+YwdkWyYT5rINqbglLnEpnPv65hcRJsHAEjPfJJuGwEU9U+UpeSZk9
lkxx6GERyDBX+E0/eVcnR2SA3vGCaJmz24e6V2bRKu2PF1eoKYFGSYfXQrASKL5dPqLXFm/vtx8Z
3C7QNXP+un2jeKgPVNF28c0w9jA3OVlRMwJGXqD21P0oz682JN72+u0PD79/0+Dr47XN75KH7Cvq
JNpmLlxrkdnk7Ap5OjagzOgn6bYod0tZ7y4YACblUaVUjs32TzegZHeZD1bgSWamZbkvOGjFBJVE
9IdEsgLB+ndZw64WREfIGChnQYJCWutwoAh12HpS4+TXSvRiAkxz6B11Mv2JDtal3ULZAETNrCSl
prgRDcRQzMSuVUWdotKV7iDUUGoiURFuQkh/KIjwBtPiKVmqfs/bmPDBE2JccVfdv1jA/+t1x6pB
ir4MplsWDdbC7OuHvDBCwVyy/8ny1C/FRSqLj0eqwng2+WV5SC0kdF9OlRl0LIAmn+E9SNWsg0tF
mgRZmWZHo1C8Y9HCj/Pq2xKfsZRewAO/kq3fcvQPZm1yQVxpVe8C2YbSW1RNxomj2CHbE6extQqK
Dc+w+XRIfovjLHoa0fb9iCxXimVDBXWUz64lZgAO8W1EAku1eYmwZJjS0ud+u+mXWb0hex+Bjr6D
GqujxVCwJVOsYC9oejhSHq5jaI8Et04tAe2xzP2VP8b1kniavZE5vubB6KOU7TH1YcPxSUk76aT0
njsBrBCh9FD4yj+YEsaB384r3pCPSawHySX54pr5qGMAjNFsSqS0WMR4UpPRtjdJ5x7BZxWuyjkZ
cTSigIQlGfiZOxEY+twNkKuuSIDcs9tP/2n83ohTWfUxl6WC8HhLUnzigM6Bl//8MK9Rfs4LHlCU
/qIso+x0JzWKw+mVqrRJ3F2SOqYFZOE7WuoQqDN9HqnBT9TikOu598Dh441X+tDW+AGukkdA35GZ
vfLZyQ2F6sD2ww5+ibqLfoEfYMnSCKy+caKdWrPuacNRyfAuau7o2OISYVo5LVowi3f3grKdRdph
4Z8JrNZOrgdVbZDJrVnZvJbNufYcUnTKe6tekhxn1QKGI+RZod8MfiWwQGXBeEUGVRjIpKJ2Z1G7
tC4cNc7Xmlf76BoP448WjOtCemOHQbbSBPM+9gxPExYwvenAiR3aitNdYF1RgtgB2OG5lKJZmatg
dT4PiB+wb7iDKz+netc10vrWclD5nZlxH5z9iFHvjfqeCbo7dsxne3eESof1DCQNc34R2VP50ybf
DTcqlTNpdguG6//mbwsAQHJv7HjXRemk5IjI5F1H7rpNKCkBkgKMIsrhVemfRwjFLSCh0sH2Ns7m
Oub4ibmQ20RNko2q2RUV7ycdmNXNvdnQkmznEp45HPF9WWaL8NaOlwbogbiHDq1SwxJplErtwSia
D22NEsvhSZkqUb8igtXeqmWHThIwtlyIYqQHyhck3chIsKyyAFsgli6mnY8Xe5kxgZGCAb/PW8z+
OaYc8ygH+q4ll88r3GsE0Fw0nLSlsWYnJhypUAhDnSFhQonLaHd+O0HrQx8/2R1lp2Agh+9ITcoj
v9JU10DYX2rmSbliWaDvre774NI8DCcPji5oGDHyNIsk9v1M6+d/Wr+ltoUf1dXS+tD1GNDpJh6t
dx25TnQR0pJLF13zlHkP76+JRlhgcqHGoCtXyOPT+AxYO58100nIfET3mKyjnblE5L4ofFmXIgzl
XeHqN4jsgbZ7TXU9R/wNYlyBkhl6cUuTcvuiRGQt6SPBF+2wAQK5+QyQ9B/sXluO4NDzwioPUwI/
10y66xSGTEiY4L0ZU/m4hRFIs18NNwvAf5GHQYcEMctBW/7z+HybDRqR2nNQbdmjHVISfFtV7tKO
Ao9XGfNmwJTWpff0IscycbG+NDTIUhXzPxY+fbvlMDT8eMyp5Pgg9pb6bjOKQM+OCRG4fn34xk0d
J6KlCyCwUMW8hYr3CYRXnWkO8M8hWkIwm44CbaR47EwCzfr42RiAyMtd7+QhKAeL4ZxSPzG9Ra9t
SPx7av1CvMhRJZ8heqgbUfqN5oc0mZfl/q+N15nq9iuGsMMVJhCLBxqRSqHxDhib2LrUenQ1BaEA
ZUnRFsoEPsX7PhM31nUlDi6zleszWLO6zT0RgXjnmHF3cDeWO1b/0xQvphfkXmtLRN1FmFx8qkg/
G5VML1Ukh6L1XLBKUCsxzmmfJjIYdcPsB0IlPDPL1yTOMQkdc8w6FIcFfSbkkgBxrtGExtvhPJl3
V2BigQR6miYBd32Aqu0Yo2qefGfxhzvPLmrwku6/AGA05G0yvKuwYbenMKBjb6Zq61YBLwXUqckv
AFE/AuNCnbCEbcupL3tNiKm2va0pG9WEd+yn2WACp+d5f6d3ll1vLkQl2i56D+Am0KUiZqHQG0Ii
MI0s2J8xTmTvHhbhpkgBxs3ZAagJO9goEk8f6D4Q/lB3MM1bWvzHwaUCk/9R0YnIEKJgRN4eKI68
n4v8LzPWO1MieFy/Wc7qDzJNw97LZ+2G3BUWWSf3tiZbHvE5Zy9W9PfSVn3XdRP0bp1ndklwLPD7
B0Q2x/BpkS1FLO5Cx+5d/FGVCmrM0agihvqYuBi5gnsxK+0JD/ascF0d+iPI+zC5zyfAJC+dzTca
ZsPGCkDWKUh1PEOilHunjxBgtqhMh0J4zchsY/eflXWA2KXrTjflQEtxKKDj10kXQCCZ/9fuqsZP
L9EZN2we//BgE+HDKCqqINoe4E8FD/xSPw2ssVUBXW37xIvcNsfH6sqBWxyKPAGBIxI5h62DlhNX
dUC4ajW3+a6LqimogK97OTqObYZonFHt0ClByt/d2XY6YbH7227L2WelifcNyXhcvDpGV2s0HlSM
+t49Ok4H3H3+PCJTpT81shLVr8gGnuTkWn+KsgRQbGhkDW2UdonHC4z/ExJY+VUltZ/03wD1Z07B
5DRC/I/EidmT2C9/LMHV6ZB4IzkYKfDeQ3fxHeLSg6fYBG4dVn4KOyzLd28qej249KUjdeasDSKI
6Sma2BybsJ6W2HFQyCEZUEF7oC3IM0D9ARuhH1+6sapxkBbcmLHbMkkLcmJkO98WDfaEJXt7iS+B
oAQb07eDL72izEyKwoiOqJYNXBpnGm4j4lLs9wz7mBcMhR4lNjNdO/fRmMGBOuUyR6boZcbWp9at
Mp4JfHwF3f06foEnqjjLB250wwmdhzYgc7cIOtTOgD6otg972Bi2Cj3nQQ4mKWV9N6HLY24CDhrt
9UyO4rBC7hYDnCAhaL7c7eBZxJ+6ruXbSKc/B7AcgibaLtCAuRp7I/GxLbF5xBmOw+kdgool0vIA
Eb/tAz1bWPx5DmA+LlqMzDT6fISq1u9D/mkGIM4mL1yjkTbgGWJtKQGsBefJ1WfzS28kq8mzYnGv
rDxM/qFhGbFYS2EllWPF/Maor9s5lkJ9sgow1GyI4jxMh0N90b8FnRTv4l8FsIlhzNBWAKUD6mG5
QpDQmkucqsTABpIz+Lu2Gu1BAF7xlKbQ8NO7iRp1fqSfls66+yzoGjrZEDImZK9IgLHM9rXwy51N
c8/3CrXSWk7HqdTNPYz4SxLXydASLviTGdqBKlbaWDCJlCtJZc9n0qHdnKtY5Nfctwaz287nGB8K
tDgI4e8WadyA36Q2g0nfek+wGkbEbtqzJnEp5h++DO15Tr6Iv7aV1j7q+Wyi6IShWJvLjjP6+GFI
JNXu+y+o/m7NXYLl//adnE1JpiZ4Huv3GjWi2PjetoBK3WkkKnR+QSzb80U/seB4DShbcbQORHf/
3JMxkqyuBRe2TnolINTcttp3xnXwSz9OaFUMb/ffADdk2TsCSciXA9506C674GhhWQambCb9oaXw
QD9GxpESyo8mYnsQw1RV6zlt0WfBK7/islbNOiHeyDAKb6y25G+DPQjnHK7UPyvC4xkqn5h2ddHR
mO6NKvXYGyyC+GaM8BKZg5L5UNY0vKc0w/zfQNBrcKKNV6aSfmG5siHIyIOIq5W15hlyTKEsVrWs
QPvMz+Ns2YbzV6f2HKMSSP4FkGqaw2H55WRdGAXgNke2f3S205gOsXMZdBNvJO9DWVmeBrR7CJO1
LqxdlzTJCRgwcleWU0+EXEk1r6seIcVVLaKeClY0MHsLrv8HCJ2TWtzP8xKdC1LlG/25r3XYtH+E
HG6wRQsqbtL5s3pQnOhdgEyvALetKjRkrk2LTwnm+OlXjN4ioqWVva/mrHl7Ulqp+wAPawwPBzBB
bp91IwajcuIMj1ViInLauL8FYVfOoOR0I7wnEvZbIrUjYbkXbUO2hFkXYnexWv7rBg4ebutPKq4x
1PHqNZtPengbd22uj0ANSUV6f739RlZJLG+K/TMM6EJ4XIgHFxJ0H8CaMnBE3ZRNw1YSQWcmL9Rh
85mklPPF8L9haVgbLY6r8HlsDTpVqXClsdpdea67kSgDRjetG4MjHHqovrjsvxgY4rqHHgpCQSLq
oCHZFxUFB4uMAxyfccZhAovyHu8tUI4aWOAdGobWLhpF0orudlYFKaYUsMpdM85svGPAAHBp2haU
Fuq7wb08vIzaLSCMoNgIktyxJRyABZBw3yc/sykLyYOHig8zqHpl5hMcNuPPxZGg/vb5CE3DZ2s/
GkiNv81ZLD2MgHEXf5O4xmadqu5XhyQ8IPuqFDTd3aOWFX2GLmbuWet5fcejqYNts2VTiMP05u4U
UfERHjbNS1veyC0C95bYGbfGiI+9UyM8xH4PjjRfCZMKgO4QOLkq/KutWcnGh1bGtyimneOv2ZQk
zXMni7k9B0WY3Pg4/+RgEb8iQV50XHvzwh15CO/XVxam7NtXjA9NB+0hp7/+sI9/0yH+YB5lrXQp
myeSz7zx/fuzoMS6aUaIOXIpvusLDShhLJlX2CRop8VejJZBiVR3NPrsLyXtwfFIRaSr+zu0H1dn
uupDks5954JoXjWDqJ99767jtwB2ROjwlr851m2QKgqhMqb4zcD7c62SNzqRKq6MrxCRunISTiET
/bKNq44gPuv4yc7+YI40wYk/yDnmw66IWe/hoQvHpXoaraoEU5skuZOuen5Bzig/USxrIvC2P048
z4AmiTL7GXOFbYb74SURBSqkQGZLonYH7KJ1e0c0wgTizl8pSuADEeBjRHQm4CJbw4Cwn4pEArYf
lFJGwlxzgKxee1ZHwJCTin8kuv3PTKGcSHgJlOzq3UG8jHzjv+05j14Q3J/W4Z3eQUS6NakHZBjo
V+eeq3/44Y+gxrvKanKbQgYq6+9x+Ty+ZdObIBorPzJ1XI5hJD+x9pPG2EP8Bnkhm/pVskcujCGF
3mvyS5m60lCiy9A8Bb2a2I15xRKduX1hsX3o6vQk0vhwigajEesFmfzbIZHjIlj/DxiaCOTn8Om9
bhDT6drL4F+UzuxfqZRlIxbU4nDTNd1sPcrpAwL0TYgrpb0f70sgxs3Zj94nNpQIxqcnq14crQRx
h/ORXjU4SHROAEc8uRHPG/+mD+p4egf+tFm0SilPNycowoNJWGKUhtMUS5t1NuGETe3KmjJ4ei1v
EvGinTvVqWWfjomCQYAvOltY2bpq+h30o+/w4fMcbfGFnsCBHMYrpEyIIe00bmksQ2ZySQBdsYI0
PeHhfwr788okmcISzZ0UCt22HeqTbAODnqs7W7sOxDjwvG64a0OvXIBgpO/d7WDmzTtQpHwtbI3y
hLPQmf/kjl5rdlXAPLsVFmkINCTEfNEeHeOp5RyPdWcroYUd8q8ksFLNr47c9H9ft88eUrEd0Drw
11B4DG3eVQbqUKRF7EytbH1TFq2nH/DSLSyLeIMWj0Y860Q96ZESoQVS4FvG6vAuHVeHXKFFkjIS
8qC0lXkqZO9TtWCU15OZIzdMKqpyxY2YpCjcnlQtGKgW5dPHc3ewU9TEAIUYOz6vXhsSldHwpPTK
QUfAcIlVLD4Qkrm1ajVLutf+fbp5bbIirqXmK3uGYkUF9JHGvuQpnvnbXcdrV1B+3/ZgjrdDm9p2
bF+7uuyKYFAFvpBJHGHPW7tqEb3vPIwEeX8Ws5qWiTnmRtgrW1oEjyFmXR9vmzF8YvS7ACRSUFYS
OpmK9npAPzW5zQ8wcRnW7i8W/pMZ4vaZJS1iXxYPG4ZLVUD8wbMCZIP1jMSOMrcYU/14i/yehFa9
JT3KO3ZTeeL5vdOQo/E2+6LX5B54gU5aTjvuCQ/05dwu0DnmaYKfJ+Z7wokvBE1F77sh8x3AO6t2
lBqNC8DjD/l8wzRFYR2kineB2NGjp/LpT/rWRZvPQANiEK8sMHZmhedUx/Y8oNIIyryu1dayZpYv
0U2ScqSLuXLtq3uDaetd0OmnHMB1sUhna7v/oR3W8P5SaFcPt8KPTraN21pCJYZlJBPoyKdWd6b9
Hqhvnd+UhRQbNqLoxr6xcUP7dy7z3UOm5UkS1ny/SEvOgtNgXNX0SE1xwQMh4IBSQ4CQ7rqXhNKO
Z+SBlb5H/izWtQ7rvbtVB9VSAPRLXbejMRE7plWDemsBvlILVRqGxmMJitxxWJPb5SvBe0yEn2Wg
Ujs8REBlc99f3JGOq24pHboRASqyBn6vBc6xU6c89z1YtjWk+kUD3ffMR7xTA52adx7qMFzW/VFJ
OgdVTSAsURrGzdxeHHoGkElTky1n6IdR9n4dioJHnZQYkoIRvoZSeS14Iqp0tcb755dnSfdDIIbB
fb5ZbwWuYc1ce8yz93gYGaCKKEkVZ7FcqLQQe6TNd4+iwgCT8CpLbQ4FA7gwGNOmKbzovpoaYW0n
4H9esWfv51ifGN+fVBKVPnZ45OiMewvcenkhK9CIBOzvxmrWoaetkXW45fIPM09hKNWY9Osco0I9
JtKk1GpjMnaFdXlHZ8rxC6kGLRZ8IAou04MKOpNn3Lf+56xmpFcAn/m+4zhl86gvMciXKWIWgzHS
jMW6DJFdWnU1GI0istu0VIRAvnK3KdoOlgR9/WNJ8TfVkejheCWdKoKG78lD3AIqsQDLc2nLO1Cr
n9/OLKkLgBLyWET75cj3xY9jNYQTrfP553jdbnVZoNfaPNzYWOW5cB6uZDHFPsGEObnsYTEySne3
cIxt+NjkZiHcpZVYInmYBL2dPOyt3Zlqz+pkynKya2f7Gn11XmT5z9jRxJIu5TgX8tDPs3Yuat/T
XeUkw/Gw9MypqZKnBkynxwRIaFM4zS9YJ2eUQoLaLMhvESrHi0TQNHZeeOyW52y/TAP4OIrI1jVR
hifxjZp7b0oOKYBmMevopaUvuskyxdFETqFHM8h8qDYjTpTS0FgVQZSESEzxFw9CN164ICK4r/++
Bbz259B2HXUed1yFOKCUr9UERiFKCnFUvwriMPg5oZeF6hTVlFJkeveBUbEkGW8CtPf1ugCSyvVK
dVy1x0Juc7Ic9CN4vPuSgFwKnCnVo/MUt+cRzrTxHeMJOQsGbBWkhMIDTixejkf4nPxedf8XZQTE
/z6CFTgFysQY5vD6aEEc8n8Hd0GBMrJ7eprPles8K+ts5OUmiol0UDwYh4LSIf+0wAZtaEnFVCAs
Tim1YycACzC56ToYD+UJ67xq+0zYK0Kehz2f68SleMM9kaj8FiTmqHv9uD2Wc+4O/lU+8Rq/XclB
EgIRYgKyOKzce9QNEeJpVY1c4NKdCcaTxtl+8pXuMQmja9B466Gh/K9eqLhEJN3Y75Mhc3k8dOUx
qESwtlXPojbxjvjJAohp16XBswN2FdR0agPieRngRHHn6kA5LN7ftO05npSpezmJXJz/ZTv8Asdi
DvHpy/fG7gWUbY+yKoerGT7f0NAzfHIgfYWPAGK9VJb80D63ZLpO5HiaYh8BrWZl3/nNzPVNyjWl
IWAuI1kX9EzMNBCw1yFTie1WFVXzzjDdUTfPvUbZp+lwYMDdwYnup5fYS6/DoPiRwKsW4Kuk6RaR
qsRI+z3aNmcOfrP/cFfPVTJNLzJJs6tpIomYzr88asIzcRU//MvgfsOzUSbtL2yPXForyynyEKsD
TPuwCj4/hTwtVcaVC8jYlI2KdapmLJcwWd9dNDZ6pJNmNPAaz9Kz3pJf3k8abpsDXlwYxRhg2PAR
ClQp0k0H8QPqZgldrVSY2ul96UPkAG/vujpVUQCpyReRUZtIlDa2vQHwDvjVkUClkAfhTFePFZCW
n0AQ4cxqzSf5I2pgsQLl5gqLN69rxL3fRBieelW5BUi6pw7WjXWF89ySUH9EDke3E6igEEJgCHf1
NYufSWXBxHLADZHx84Www06UtTelhTNaT9emYs3fsHP3PexkZqDR4PkaFuucPckK059T1cQEGvP3
RcYrOp2rjxfnIRNLiUGmIYMDZ1WDahNuwY7aA4DsROpA5mtGmws++ZwquSKCKTpNTROq3FnLm6iJ
4hGgx4s4NoyMQz++pE6opQx34ynz3jPsw6i5o9Jq2JrgoOHy3YTFwLeMo3Sexu+1TgIhGiIIQRVn
BlAJvZB7vsMRfdmMOC5ZcWx6oQFNiH5JEJ9msMWDhap8DydJamewhA4vqzYyVXjoWK+bN6nYF5GB
mLJmJNxcfzWnitVUzwPN0V6NG6syxJZ5TUIbzLzLzV5bfepVQJa6JJ7zvLq50x2fpNYej98xTJ3B
T70Hkk8P3UlnBoekcMKCkPL6wmaTMeTH64zePqq9jfyB++pu7UcR02NSAs6EesyPe8I21sE1IXm2
MTqEv04AZM22bUYs6vikFT/dWXCaXjmzKSTGskknBs85XWlrtgGhnpDBbCf5xi7PNunTwOC/P9T4
EOPhyyPRGn/uZxvYnluVyKxUwueGp8PBZ8DNCAuriP5d6Namdguk9mCAjRuzgGdCGnabxwiWXjC2
0NPk38t+zhRFwMvLSlP4MDGPnucNlUu3419/nFQB/aapLxsPba11lHOekxorbCEcrIJVdi297zC/
kg3dkbc/6n6YhNib6X6/vp6HZ2x2CYCfqwlYenUHkvhL/qo3cw1Y4tVu9TxerAQDyHkSfC7V6HWh
0iVR8LUCe+cz+2r9oHCRkrRNwsOYubeiDI6gxCUbCNtJk+przAPnebmNLaJuWuFIR2PO05zduR8c
rYtmdP1ijoxbflwI+SECb1B2Me3kWhmAD2cJ6R0bAptvsxlqjE7FUSU0bvnAipKr+eA5uwjexyf+
kWH/QkPlZlqynkeLr2rNL20+NPXPX+ojxhzjOXOgwulUzxI5HlcmRavdDe3AecI1bDhB52rrhJoB
wlKpznM1SydVTRBteSMHdwVlZwXSa5wWPQMcdLpO7dncX7Iq+hcCsvIRWyzD+kzea7NUucw9kvtM
Et0r16cYI3O579BQPVV7bL7tQEJu7OsJqIq2mAi0S1j/k7nfec+1USiLA5CTBpSXWF8efOvskX/g
+ls9/9kzGoL+JjXwBlhu8m+Sy2Dj9V5pOpMC+4ZxQLO1yOQImY7Na00oFZKzYGq+Xy2AfX02aNIV
eYGKDx2XhatLWg8xOtnAHOir0rDB8DSw5WRBUd6TYozv6Q+aPAwuOIn4Q5H7YHcntBG7v6//boPo
z2UBaznzF6HwwZNed2fQWQbJE22ZuWzbIQlhXgL6aL/SxTKm4SYQl+ZRMVrgz3GEVeGe3QthFEO/
R4tEzmQBHDm+2118YmNFSrs5hKd9lVH+dusFemsWI78lVaNFYaKLHPSppONgYvm/84OXgFf4CaQi
bN+WhnQwoqiAf3p/+f2WWuHlrKWksaBFOeFu9GiAnpAD81v8WEhB4Z/37wKHsiJjZ17FTgqEZGs1
waWtqFvho/KOdVTaKdgUh1bQdAx2OPeQWD4h61xIl5C9rUUw7y8+MQHfAntqlWY19aIhfye07W8b
E+5VaNasjJw0z91LyRs3JsOHSgqMea3DhZoKSkPAGNHGlziPymj40JSoybWGlooLybNDoPH2ipbF
3qqgzNk9zQ/m7IbVueaeM9MJjlqtO1b/iVs1IpBvUF9KHze44+sW7g5bQPV7jbRBPSvbaHd2eZEd
OuS2UH0tf7Bt8oRilppSHzk5G+8/Q7ZjczDtF1VICEYYhRYeeEqyB6fNH15y6bNeDXWG+gHGxQDJ
0JhcnC48agPJBEF0SSFGHPSSZemrQZh77WXC3xaQGuZ1HagLsF20Gln6nTwVn6/N2aC1ZCtQhXUB
M2P5ILzJmM/a/x9zcuzVEFke0MZwcboISXTOydYAxSGQ7+quWPhqTHlISzEXiJSIcmljJ35j+TbT
FZXXN0GqSz3fHtzpkw93NzeZawyhTRnbPT1gceVZjzIy3lQkmiqhQevd3sYi/ERTu6GwubaoNFW3
UBACodFFKpjhWJATykRdzgqHcrfwYueWnzirzJgLd8u5By60IW5BzI5H6jiLlt0FcIsIw7EtUqjL
cjCUNey+FuQvugZYhehlXuRv+VFmI7WKyXPLigqOIydu8u7wBx+7h3eWqcofF2yeGKZ2eNqb6NAQ
hCgCWRE3M/V7hijDjxN5cxhN+ytF/5/nRfXZuv9JFkiyDXdddewracJy4UezzKoV959ClhBTC6Tb
wqQ8IHtKhX/64h/qNWdkz6lkRv9VWKbGfJ86NYr42WAZ+o7fpTNZOMWDikmrsoSXbh6dVnT7TcKq
6TcmSaRiLbpAUDH6qIICsaYMbxHzfmmEn3POW3m0+fQtEj4CUR4/HXSXNWKjNuGYTIeDXR4HIz8j
LV/mi6ZjOku8zav1P1kk0zc7mEnY/JpaMDYfV1AXtxgUG/qC62x6zjw94FJthJneauj3Lv+nr/By
C0OsqdHTlVBAxlqe4Em292fvl/jbmeOJ8mfjR4qUhzL0JnOD3QxoDP34XW8Bnl4xNcGJ3Fu7OWdI
zKp5AxLPJDJPZAW/An1nB6DRbJ4QlgUjItoYO0m2ZnAx/dd8RG8oyWypL6wsOSRwsBulY2yEAbIt
GRgN6bmbodrUGoKJiivTbojgaLfSixqIQO9pzizEtFgdFu7KgQLqSZOEaT+KEtZ/FA1gB9bHUeE0
fN4di8A8lMhe7ujVnPEuHCfivI8KVikzPy29FAEtqqGpk3FRQ82wMQVUXAy6n8wgYWHTUJyeIJbr
5rjagCaLjVu4wFrpfVyg+wvDNU12EDsSSi1lEEJZiF6+ephJGDkGsG0FXmGSu/VYVqeAnlcsx4NR
6udRuNBvI6k5xdfsBTMit4DW5hQS2ITI7D6EMK512h+advImGOkPius5BAyS5nxZZD1ik81XaU3q
L3x1xNKskPgM+AvTxjgCuvMGa0EWbUmh1JOWhi+W5IWj2okEvLvO5+54R29jtgzxj24eUjzcdYGA
892CddOPPY+05t96Drqe/u6ee9ZuiB+gJJmkWJ/Y1sxehQxaWY3t5Mq1zSsVATpFf6G+0DVhToHm
vnGUpt72m1IVDoMw7dNgyhAz3Nkl04+pvppOg3kjYjtUc+uIOhK+b3MyDR50A7z8TPmeZziNvlyn
esq0jrk5z5qCLx1tFeI5895zMuGJZTQF6AXGk6XZJv/okX0/sMZrFXWdjoijncbC500mUgOz1wLM
4NjyruXA14UcNYqc7NqkxrTGsD9r6T7KtDL60yg4PWmIg2BPhdpINTbyzHRJpc39uH3JS4UxTwYG
EfWrfL7vn6BGZP9xd9lJ86O1JNTR/KrNTDxRudADXe+3+o2wo6sQkS9wShCmXN8CORutC44k/NNX
oGS7j1glo82+aUDIbJVjCQe2E4zTyr8kqjgYwZnt4c2Cbn+GYFcYh+8w/rCFij6Hv8Ffz3y2tZvR
OuY+ji0J/gKwkLl8J8z9XrvAJfuf1Vnq0LtccHqMptFp6fzl/NA9aodMRrzqaicxCkHV1mvgdt7s
2c1veNEvnL/dOMdhUtyIOyrDFyFsSrZO6zrZ2RUBskiqmPevQRl8x3eAOXHMMKkcjXuSrh+ra3OB
D2fhL5FCRWxs6kf00zAoKMH2uGlt4vCgrQcE0U+nUoRV4TRUg7ZXfFDsPUK76rsf6mueF1X2tD0G
gFqzaiwQmlB8cpcCSYShgmhVVd04Nz+YvwlVLOeixxlbYSLYvGxhBKOZFP6jCXC2AJuSQ67bDrUJ
4Po80aJdOS1aGgNccxEKjjBYCivAohN7EfITAWbPEru4ynl/rhw/h1Aciw8hxp/OhWcMKP9zLbHC
4OoezkBPza32nXkoPpMukRboiPlBj7/XixHezhxatqNTHl1LaAfwf6DD19zrOIgKKCED4yJCmqk4
dwxdvwxZavOV8UGqIy0sgxZmI1trXWw8R9vDeg15FcN/+OlgcQ9GJjY7NqR2dcg+1AtGjUDuUn6s
OsIZeqDGX7y8gZbDiF94YMLf75eISqLqW8Qi9fsvhNjM1mv8tVd6Y/HLRi6W4EjJtOy014jEaiSh
jFdntIo9ylZSTou74HgLEFKiEJARL9WnaOiHmPYHDGNz6+pkzjPGKKti7HmL0WrcgFIldu5+Mw+A
+mwf7X0k8Ui4EHMFOhcSd8MNthxIh555yMykbWlETzozo6tzkz0fWt/eRQ71kc+VPK2ie46mqsIL
wo3tkaGtfN0FDMoSOOwnVPCI6eELIjX5rxYlfdcc3l1ETrJE2OQzkJQm1nYxToepkOr9MYmWwfFc
Kevze80iI6pB8ASbBQ0AJDVAxTpK4y9IIKWfaErdM0FaP6hFgxsFPiY0LCnK5Xmd7urUovHL6WgO
/uoFNZ4XMTIc60RzvVpZdsAjnvwSpB2TggTbhm1yw2Bms4ixVDD0iINfKCbRtXGc+nvZ9KsivInp
r5SSc8mGitmr6Jlt5hFrE+fARY+j3OnQuvjEPyLdU7hjKXgfTGuDdac4HbPs46pKYbMsp+AS37Tw
QBMNV6wZawTiv8EvShle2UxDHzzAx0oeGJcQoUD7rAHpPqe6DpgvYo+b2eQYFYCx0aD+s3smYTu3
lwEMygOggaZQOCK+skZmHtg4KrXy7rvzmWW1NP6vWF6VjstyID2iatOjzCl1/Yur0oKssLErcDiT
RUFdZCaWVIhcPJ9gm/ef71UDh8eMIvb07V3Y9Anq0OQJps3EKE6ctP0XUFAELOLpv7RIw3AcGp5N
pLJm2cfdX6PfoO52pmdWCqr1iNCp04e646fQjvmFHvaiTEPQinkA+7fbx7xKQVtlLpqQBIyMJ00i
ISLyqHNikGf5rTP+QNJfCmJmjpv/IRFHRMsrYPy2sRRzrxFxdkVJ2syenmeJdCa6bPvoMHSNBDhm
jLHMlTLqdLGAqqqQzT7f58LcFXpYIbM2ESX/8iKGtiScFXwZ4QAqB7oWcQ8fYCAEqcGl/KoWNYNa
W/8MwO/mt5VwJnoKQ9q6HhdUtaswegoqaFDxWE9Z4KSFbc6cCES8etmrbVPE4ee9FuUxlEXCkAM9
9gVzgrU4N5mRtKuUcalIfOjsLSc/aUg32V+ZD/LKhB0zuMoCaSFN/DhHOwkw9IKEWXcnAYDJq4LX
axKLNhQOKE6PmRSuZzflxzc+UkClQ6eP3Z7kUTYBIFIXowVY6rQS0uQPyhzlC+3qFJFWSWmMNJPR
HeVcA821irq+/RT9BtAeAPx4UQ45HC4sH50OsXQ8V2SDQinwm/RUrfLHb/hCuf0fSKGMbyJdkHbu
RySW2KA/qeNWTrjlEa4AHULTJgwaXvrYp5IHsxfI2jFOfh2O5CZqsaeSZ1E+fh+W5Aese7mkwZCa
R18FrotPmTpFe1S6TMaWABw7zAywvaEOm8er6dhgKZxmv9R5T5DiHHhy2yAmZMkzzvKuXbYScxPz
oBm6AT4n/JMzXeir9Beo//yHtXwHWEbA+pGw3L3KVLCWUasRBja52lfvdhah2hbOGb1QbKDM6QEh
qgVaYoifVby0gn+6Y+uz5E2mptFyv0rb+g0yAWwIOGvAmzb6DGbuPJuZDC0p2BuvHKX9waRW2doC
V0f7BwxrVZxkezQf254CtPuzwHq4pL2lf8vxkDaDp4sYbK1534blXmYVVG0QMh9vnblWxiC+iHPi
Y1EsT3rXf1x8yeZgAxWTe12CFWXXR0RMYj9kOFRhgyFlsil4UE69JgHNfEk1s//fovG5/QZceKAL
Zb7Y3E/9vCT8XQunLXlvcI5XLVKLMou5XXL7xqBdqTeFQ6ejjbuFdINQYK24iyhdhBOkbo/EeO4z
nVX9DNS+WIl8inx/40dLkR9C3JQIZ9w/jLPbpvE2Mtu/C2lZO6MYdgrbo1SzsA/3vJBFmPr6lmGY
88rwCqOzm0gqkvvxik0rJJFJDmFruNC50UMQtgJPGVhoBHSHx5SqKpgDNoOYPpYFWwQNc3H5yZyU
cRvpsf5zQKJNhGbNTaaI5hSP+a3JzhJUhVq0EBSttgQMb8Sjjm7WpzBax9k3UdgH8TUwjRfKKfz9
SxjLm3+PVsw1JT5lizMkCI5JHrcFZeXroLU5vXRazlue+ozm8XGeKZx7bYtsbuch9zjotWlp+sdD
5O3OnN+HUyYWL02ZGegTjJt7f6qRBpFwVh3AMlfuZxJtM8cwu5S5JRaVQ9qq3HRSEJqYjWRe8hLN
cMZMC1FSzRz+4zuEOkzOxZJEjQnJkziuHk7/XeiKvczOkgMLns5rF6oY5UVHTyU9ghXnt0vWbUdL
uT8xJolkIwAQfcr1YZnvBYbQqJBjZeIOsFis7mHG71e5FC7ljYB5LLWZOa9QKLYqBE5SzRxMxFGh
smWN98qvA0rmGOlJmKfpuis7cfJ38PaeLxskkktTJBeptOIT7d0tUfbPnQZwt4B+EZgXcZAUFJBR
W7WbME2hikn5Xlpius/Ijt/1Ec59a7dqNeBPjAkmSboaG059dgJMv0XwhSBnbciipyB7oF7v0AqQ
A2/hkfg5omMKYcCrVpd+rXElO5mfT7Rgzx1hKJByGR7bR1pt6occbny3lvjse+wj9f+hGtZhkOe0
tmYFArGqPZhnU9BEC3WOkIKRCSJCuJURHrp1TPKShRuis+dpgKES8XoBRX9Z+sSpc5HLh6XZDpUW
k6QHsVwGOlSAodC0j5zFtwsyQu7HJg0maNYtmPIYF9SKJWjCYPCerOcrgEt5ORwe1DaHZBNljD7E
cWT8ovtQ2hKOguHflM229kI3aBl91D8yySvWl0Cur1i0SLS4MpGf0zR6yilgBEYpICxy0Q2Elm1c
9pwSj6iUTn3zcwhwcL98/TsvZR8LWm4IBnjcPbum4lyXsxg2QSVzaBJqEoB+4SmQEVRs5UTlSNni
TORN5HyyVifO431hRJxee6ajire0QrXEMQeP1i2w7pIRILuED4g1NDpL6hO4/oVOJgV7fvyPRwZy
EiijGBCXcm9GcJkHgGr1k3uVMlFvncegrUt5T9jLCA59+UdrVPo4w24wHd0ZqjNNSAwpUNWBTluQ
a+Izqf+Hr7H9ocrc/XEalzwV6yF2YJprt+R2ZslxLX/rjE7TCkMVO4+YYuV24eDkMcFK5uuHQjeY
GTpW+nWSnam+8eHfDxINGi67pSuIGoePMbdaAFD3+lAdUp98RkPOSFezZsi3mG6TcRQl+lgf/Z6O
XpumGSHlMs6QQ99aOcvAW9k82rPyRLT4beseUuKrQU4+MDfwlBp1JA7erwyYSa20FWCh1gM0qFt8
2OsIlWjcfGgtEBRW1Fx/0BD0mZTEFK3Nfqzu0ELWFge4v4wFaPuwC4rY33rxRlpJCNhKvADHS4z+
aRLvgH7uVQSbrJMBy2DQLY2teHHrotXUox8FbV7gb2CIcgUsdvMKV8JKNC/xzy94ju9QUzMw6rsH
Gh5qXpl7hvbyk9MkA3RXwUW9CxGPdIqM8iL+2fhQccDBdxcLkWL1lHn6evxW3u7dpMA9Vrnz9e/s
U4mlkKsa0AWtBF2RVIf/6tX4K3JiRix0R+U2WSiUtaAjFent3RSryW2BhmRnP5TjWwtxapUVuMnF
FQAPueixjMjeDgMqZL7cHBIKrzxHsQYo/ib28lx6vgErNO8/bIkEWp7GzyNPW3D7FehD9wtaQREQ
NVx3qzylVHD74TSPLrugy8uTG2LFU0pDszbwfS/lc7T50Ff39fjISPfIWZTxWwM1xDRW09GcUvj2
OU/aNcE/iEsG7dl5L7stGYK0AYnZOzACR8c9S6BF6NcH5uM7GRAkvddNgfYSncfc0Ue/lD0ruIVr
d3AQHCtU1Qx3CWjStRVifwh/NITE4aiik2Aj3R+fK6K4cPZnKtq8dzFStICJpdKy0YbygsQbUEwa
MGGA7zXvtcqPcgR3dDGTu0eO7C5gJpx6qTxsOeIPC4a7n5fuS4a4MvhHn0ZdbWtaLn4vfQ3wED9P
bhdysOXGuBFwiM7QHIhTCrxnYxaujg8P+mZAjoYcMFLAA+Zx17fUKGIKuFT21j6B+ba2Yg7HxQYW
Nf64CRMMrCMAL8BFoe2U1iO8Ff4f+zWzCDtIjxZJ1JbNGDu89TEkJplLU/8FFmJdLOfYFMeRt6l5
Mb89czxRCDRWFg2XKNKcqDb8REbOsENYcObztpXhgaf7k8q4Yyhjx6NN7BKSZ9d4zPgvozXawgEe
ncPsMUL9wL6ORQ6kchn87h1G9m21kLmljL+pFTX9Vo8vkZlVFkHl843bUPqtGZm9N+P6YKuotgw5
czMke1OkJtcmrTIhhaBinoEFSbhAQ1BEubHg1F/PshmTPx0Xpfa1QxCDc9IX4lpsXYlRTi7YPndc
1jq2F+8o2IZArOhxKf3EoJiFuK4kD2oXjidjmf/LrzSwsN4UxvM5IXDMt20LkxfesvlWWHMvFsJB
lLYtrPCAZkPwWIwH0znyYpahAnLYd6WRxheJqhrfmHPYZSrXQAcr5BoPHqtI57ommmjQhO8Y3qbY
Z7m+mP+Zs66MUz3nt3G5G+xXMhocV3BuGBNWIJVVCPkgJ5X/Dopv26ETVjLafiasEUplmk4EXd6y
cadd9wBO2luMiFiyyVvNT269i+Tu7YXy4eA8Npd8y3jA0EY5NLyCMBAP1YnMioalV8m23uRKzsjE
EM27RHcDPcS1f0FYsyY8Y0CluhTHTbmQnl4m9u/Ph7OH/Wd18hJ48wOH6F/7yveSUZEYQqVYH3Pi
sfZCbr5MAwgV+2jMjtnwoWIWsz4a7lyFzRm6ld3nd6Iis0SUko1U0P25SORtjiFiXMQS1bKEIVP2
fNb0XeFkO/CCoH0K2293hFCPtS8a8E6DuSCSKvO67nwmEdUffEYsSXomUKvxOIixsyZ3r8ZYPNUA
T6K3L1c2JVx7ghHdSVka1v4k6IY6MhERSVE34x461oDE2ZGYksix0CRHxKNp94NwcHXEwobutRCc
2jb74/6Z7X5YOS28jPTN4m8BJoxEEf0qbPTD4gCQkhTotwQK69MGVwq7prJdM+zCYhgaUzqo7wp4
AxTz1z0/hbBQwk0HBW0gqcnxysswnm/hjOi4tbiiOOZTH/6vx6cuiTogPuEezpmnq7JfJ+arh9AO
xHHvqbs+3vxsmOpy3jzKMS3oohqVXm88JEt8Lxbp7FubcQfBUA1wf89Ew7CuIVd3HieV4RybmKpp
viDH8CRhBU74Yzah5MfRh1dGC/ms8OdWR0Tz6x2Yqc7/mwMYhebbX0tNz1ywu3ED+FyRCpCVlmFv
lvnsSid4p7a4yfWLkaqerAiXMX7xe/FVvD3Fyhq0Z0T2j+8518PU45lCqcU4CPbW6WGeqWlZlhMd
VD5fueAncm43H2hvYmDFt7PKxDRDBIpVccsE7Yjt3DT8yGAPQ4OyOXw18FGeHD/tWjx2Ma2u7hXC
a86zRlKWEumsOdxlhfxy0NI6hn4ZARPY74GFEcjn3KH10X+p7ntUxWo7d0Azk2n0iBDliJOmJOrA
LqC8WBOzBx0TAFhxrsjIA4wG5limFQ9fELpVXmRxr5F3pNiOvZkUEYTmx1glux1CVqviTu580CLs
vVSY5qDZJ2dHw1JFm8s3sHb8WYIqGoktW8SjWY+v/ua0aXwOisnoICBoRWFHqIjlQZH4qzVtsEzS
BD0B0QK+QY3AJLhGlFty8G1/kqlOk5lEZPsDn+ve3VyUaKTrSMC+NTOgql+5hoy+jfc1AB1R9cPE
9BAlijSJwhMw/FMPAiVCq3noMPkdFfckjPe5I9ZxICfz8ta3R2fib4g/eEuXefGx22aUTTdURWL0
ye3FwCFU++DCi0zbDUi3ebv/wr0tsopm8VqPFBuvCYNMr/GfoI0rpVe+FaNrGilM+Bh3LX1aDPM0
uhn/3kOz0x5uFLPSTqFpcsKQlgNdl+TEEmRTgALJ8JCknyufaely0ABSGkedYsex6W+H5dUPkBp+
5fKYx0qB4Tb/7x0rX/eeQKyf9jfZGcJIoJ2Ia9L10/p/SmJy6EZpfL9I+OIjTH+iOe0WHOOfjly+
dnQTRjLEhtnrNzQC8b//DatFH2rGSAuRiWMQil4nHxgpX06AlopBWk7Tz5CXlFk1cmeg/7IG4D16
QoUhdwfxuKZL7BEgnF7qe87vAENc/cDtoDv5x7DwIDTKZBRO1X8N4/ihNk5yB1++AlqmK1QeE8cJ
zX3KRvmlVhA+9p6b8EPK7m+Wi4z9cIz9iuRiiopHprdY1RXZmq/btN+OFwefpv8P75bCnwvokm/e
NoK5lZ3LVxNzJWeOlBYKPSUiey2ZwAKJesCMk1ENxQ1S5JRkXtRfK1mBRDN4/osDkiMy+3pUVepu
qEl0Glx0uYhIlXVxYjGxsF5ReeHfJujJyqobVY5G76OwAKB+eFe8bR8GiHi9gHTTtGFh7643d5N+
XzzyLrPuekJJXoesUKJyHUpvBWHER4rjxfHQWv9lFd9ClzQi7n37yvUOmfgFvi7znUJvNgTIHeTm
URs/42QLAxDtpFNwvJPHxCgMsr8ZIPgan2oojFYXmPjI82c2FQfbNalvjcxlRrQFtdX28nPQcyN6
uSVLXkhguyRaBhQuA8PODQdzzh0/SaokZE2/RxJH+doX73N/8EOT3PgH1GXLizXaMpp1lijDsm+D
a/hEgBtn0qwq/0/nZ/4hNlKjlni15N1fbmpgbkLc4lr5W0A4BySuR4qhVD9eF3NjKfmsFzel2yLD
+USPLO1UgADDYge34QEiCJCi4QK6+3b0p0Q852CpIntmXIq00P8CgwNhMzGIhUdumSCTT4hX8abb
tljq+zhBE0v86Bhnp5Dk8xVhw+eCFtjDN7XZDDYgdARgYui6mEJj6y8+wXnI2WccOuto70geU1Uj
FcbFKa4ptkgITLw4uNrTS2omKb2i4ylQI/WS2BrBZ1Q/jdUA0qzE4iroTXNK0xcZMJSGZlAY5QEp
LtHAL4WljD+FHFXNU7DmDDVAF0lc6jxFf+0/FYTXlLkhYoHsc808zBZiAhBMSK/mru2LtkwD2/3t
LLpildrrOjwLWz4wci9xJFKojN9kUp9JvHGX+L08N84gUVustJ7Xr9wpDdBZRGODGBWnqUgf+rUG
X9vohPBONCw4iU7BxEVScT/w90NB1cNSH1LqLtaNamcJ/94LRbP2OsQ+gxRi1TxkAAQp1vwd5KL9
3hUgaQHIATl9eEvbIF06KbCw1ybBFYErAEYfaiqyjcrxC5bj8huxaVIxJ3gUS0YlkiUrtPDOeCCa
oHnpOWxB7OCFfioPfoX7yzCTlonkWQl8HoxpmHnkaYWtA5GRExfNtImy4Xa49rwBOuXn9GXNfcDB
shIJ6gAHaFwOUpOHNOegiNE07F/JMRh7DALH4pWCWP5c6+vMW7vr+8uhxp0h/Ad2e4JK4jYwswDT
IjLA4n9qkf0JWPwRhSlt/v51DUaex9UmknvJG4CFLDqEu/Il5lvh10PccHHmjUfF3plnWWzOBNA7
8GQPi/Kaj+Se5nSiayCVaQTW821QPIFiEfoEfjtJx2b+AezqIpXv7ax/f/WKDZKBTYtsvUXQ1guQ
YCxIhCv3tcHv1pv/C4I9H/p8oYEB5xTyrn+oqEa0T9ORmDbtxkUOwBkdagUOsRHodWizyPTzUF4V
BvOrwJYdzx7irxXHAnw1Z19jKzx+MNWZ3ubmoEhAUnB47m+SKsrOmyF1lPIVtEfJ2uSx6P4mmM6a
+OZtJOY7we3A0Wptq6pgtlgd45fWIMoEB86Cfc0XGgHa3ul4EXCkvM4dNEKx77Ks0U/f6oWMv5kd
dy7USWe8i7t9o93uVLgv+LmSJwUUAaiwWsa5D0MQ3oVEiPoM12SQtZFTzkhElQDnTgZLrzMQJcwQ
RcfdUFLyqMiLC9pFRfPRLlsPkpq0H+kMNXH14gmYDnpfhdte1eMCcMwnOKvvRzGLooAqOKawClwX
0/dHg+EG+7bmWuAB3lwNc+c5z+FOaDukEhc32B2yGitooAuEAlrKDyEFGCufDQtJN8t4puRfjzuc
fL1MB5VghFv+yIqgd+Dvu48O+cY4/m0ppvSKDr72PaHJOq6VitcaGOfadijyCEm/KRx3DuLpv/q4
0imjdUSwpxGmMJ4hTA7mIQJ/hhpqDpO5xEtECuWGwgI9cvgLyDfdQX4qf5Tw9nbpzbw8oNN0Y8Ah
ppJaeX8GKJs9sFIlmmDPNyJs5ZN23jZuE68F73lbVhigYdlruhtrmV7cvtaFMcgGYQK0JKj/rIHp
McFVb28feruaO6qKzOpzaMHiMlfO/ndNjAKkmkcQ4ad1SVLQXr5i6cqtTSXZwwzQgJsQraZTlick
9E2zTailbXY50FbBVU9X8VSSSGPUWBQnPr0pOi9fOtL3HRk/OffvW2xSvmSPxuuRq0Z8WIflyRux
LxioodPhnmt2544c6CRByROoC3a1zHb30afwAFDn95cSCFfQ09o9inv0TlnpK8UQRYlFY/eb3PKB
KD45G0rd0dkf2jeDR5bBQFZuWBBP5fmc3ziri0pfsQ8CEhtdyKGuB9NA4oxYJrIecRuOTBBSgksV
PvMTyXlI/RX/UT7GDfybPsYWK8v/rJ3cXJQ57PNhFCOmXfAorGRVU7eCdUHltypEY3eY90k+mTC9
aIFMSqzV1sSTAOwk2yFDm+gagGPi3nP7P1ZK2zvj/NXUyWj1MYBYAp5KSWz2e0GFqDcBDQ0MU8Tw
QKROD423yAhvV1ESHSjzyPlWGlgdzQIYy/hzjbGVHUmGoQJp5enu2qcbMCX13hjaDWtC1BSGJHQK
q1h1Xf7C7J5LiaM/0SDbSQJwTvSOh6y4Q1bR9TE1uB0KLzyjKyY2CN4jm/e7uxx9yXkX8AwFYsYA
oH7+jLKTEUvdn2uBoi7mQSHPl4n0HHAYqHWCNXJ/Y9VFUyYjhMzLdTTzCYYHqt3eiUwbEhGow5MT
/DXfeoiELcUtH0lkoFDK5bxFCGbRrt4XAhxeO9gKS4Hh0lfjSr0aiYeUn4KX5e5ergPyeNlSNfsX
zbLtSatceJBeVHZgj7wN+hZX1bLwJ0RVDHOSYsMZUCHB+VJbo3QqX7tauVJv6qKatolWGgYEqyk5
zvoKkVTCi/WXuaqOouJs3ZI8Av+aoy5xJVCgBO1uzGNQ0CPRyGyl6ISxpJVYYD9YlXH3pkXXli4M
RkBJRhgI/H25aRq9dKhbumq35ol60GWiUZziOHIdnLwUPdWyh8QqgNDHRvD6xpBcA9qthPHgIzFh
UYki90/f1xLqv8sihclbpGFeRVJ1jFp6ZWpRw1g3FjrE2RYrITgSQUZXltNTOnbV5j8+eR7o2xL+
OC4y0qkr5qIROVzw0ebzI/BVgLceTfms00ogYZtQfHHClPkrE+QKvMB3lWRY6L+JmSs6qcHRfXyE
5hDV7SHUYNFmKzga2l1x3OteO7PVg0tCCU+d52fvS/cBUK9NeeELeYv+knGV10f5kSJG9Z7CkqV7
M0Kf9YZSviOl9H3qZ9Q6baMicFv4JyhO8Fhu3h/Z3ihLCJ08WlXGFbaYD0EfW8jmQ2lZ56aFkK/g
OKohpA3B1/FfZofc9G3Up3cpeoN/ZJObhsumsB43OWkXI5Nf1euMlr0ll5yR6RI1s4nlp0b9gcM/
8cQ9fLPE94664rtDNQOe87Nnp1T6sOl7DRsA3jmrRgdYar30UJwhuh8JcNhIi/oENzAHRsYJ3HBn
MjnXWof05EZe5mifAQgYW849PlAjKASLF5YKPT7NfZfkdTI8osg0xOri6l8TfHM591iBKrkrZOHx
I3vsZkCG+B6/wb21VSAZcUOYBqZf9IjDg80QbLyQ8P1XH6ubMskrSxpklGkmszGXXTdTCCOFASUS
u6tQJBF4tpEhdFTUZmTb2VduUqlaD+1sMa5CQo3fWXIFqSJClOZ51x9KzWo6nVxfM+36tvyZqMa0
1/wG5SkYOZBslgFyZjvDjzENjFLsCOwCQQDaVpMF4Q6Pczg12R1rHtoc9jULoHajZkJUK3xOQXJX
DJuA6JYGf3sC7+9Qp4Jpag/VmCRYl4yTzAcKn7E6YchU8F3R29jkn5tgFiUnp3lAaOUBRhHoU6Uz
oBnIaYERwkBfmo02VfZ4FUImM4fdh+I+l5JbUK/gbVKtVE7hKuvkBBqd+EH+Bqblk4W0r0Ky3JFi
CNCurgbArRKd9PdNfg77kY7La8CK+3nVrQIKVU+i2TGiz68E6D/AHqoeKhE/SS4ofrKTrsSnJWw3
DEMB7wNngEkg4zGn3CQn11zC/SxLYuMVRWO7A+s8nhcBI4xdOzeC7VDBZgpsWgg2S2ueRfBe3ubC
4EucLbXQ1E10BRF8zcf17inUCWyr3AYcvXS8hcfS3kG9xmWsnP1N46Dn7YB5QYEwwMgIfNC20yIW
rauCpvghumWed4Za0drFxt6uqdXzeEF9QNac1hl2rQexRNJ+rUo+yBxe+V5vztRHTxVaKXm/UcJf
BvKcMOzNHRxJEqwKd7WkCSSCGOK4q99liT1WA7y4ejSTBOol90DJXEvyyne7KP8+h5gC1FREGewA
RUbmFrgd/utwXXUKSsf+a3wUu4mV6m67ICzBI7RR29g4vViqx+ZvJk8sdOQEzvE/F0JfsslRTrVV
zIvK7rZXXug2c+cTvRNjJcD4N0kOUt7Cfhh8J7MKnQeJ4FpNVrnNATIrsR7SBzHvy1e0V4tx9pr4
gID6QSuQE4ub3+umMXMT3HvDzgz0HlEWIzyJLoUqQzXPBVfKvHzQbx5qBU11LqpFOtSNEA1JOkWK
c2uZTZ0bUQr79XI01rERc4pJ5ujkeiknqnR1X7/FNeegjH70ljhzIjiMEQSfkbg9MqWLioYwkcnR
a244haNkeXP74gUv46rdwPCHvEoOgZnge5IgtASRoJ55BokHke8G4IDuvLzBQIKrWiv4qpdojcat
rJuVNOzDdnj/TXrts3lV1x+6oyvs1SvUR4QKl1LCBT6Ihu9HLA27ZSoIv+xmn0B7bAvfZtgEABQT
Zf5Q802gsM9yA+rBsAfAvz25hOM4846mf9A/oQIQN7Dprc1ltHbXiSQ6WmCyNpIQEkumDybvw3xI
ZhUUiB/xIKgtXxe8mgEpf6zhQFpAHA1PjO6uN+JibzG8WoSGm3qs3CCURhARFki+4r+dDqgrHAFU
jzjlXLI/rwrG+t8oUhlmKlAg6MOIklpZFNlM1+meC+wu8isRv9pqlLNw4APsfKfuiKbPUXNVk8Tq
0hc+eXWRNC4ubUR6qp+7gwtVy/96Oha7qs5ibIn39W1kyGAI28YV1HStHQK4u9gxSMkOAfkKOTI0
73KekaWbme5AVEWIe3Xu7fhpatO50CwkTmmHJEIXHElJgLfqgNhJOsatrwP2d+TWao6kbfeiCD8t
9WvWHsbtLqLFEeRssLlVXycW76j5rSxlrwkyuQkUSLRaKc9q6MFkvrG+eTezbX+0fzk3V4h9AtqW
2dQE8Q3n583QF99uAqwrUskp+vVRQF09e8yogcCcv2BF0N/vS1G5WGLptYP1T/T3h34Y6ud1OLvq
bhMxpym7blQoyAqQU9ZGs95YBxWQYJtG5Vjc0LC/HKmCylqlslHT1xztWT7+84g0LxwwjGNgiKZO
BxkzdrsNc+/4sK9C5Vs9Y3Rm+TVYapPzPie7rCqbjHyp4AtTgTs/+GkO2PT9JKaof+qcSm23SCSZ
01FZHOjek0dlGxjrmOAGDvC0z5gIHQD0AvWpARv9rtcBKR1fyhJrb7FRwruYDAzOsDvwjOpM16nN
SADJ11d3qokEne/9RMZ/D3Kb+P/QbtQ6bPxUnYp9gPUXls84Xh2TmrrQ0t8xSlmmR7IiQyACPaAr
GMIsHz6APKLwCDQ/OV9K1whkzisMjFDK6I5UCdlv6ohx5Jqby3MLMFjC7ApSWWi2gzrZOU0OCpku
DK1niTHerLx1Cno+01Zla1FKHHNuseigNdCEfQXHaQE5lQeQRb08NJ6HUH5zAp1xLElByPZxdUva
SUCXagWH+tOAGgJUx7TyRXWu3UX+CZhVcouvgSRKOIxKkvD8F01I8wVPsdyNK2SPr4tYIu7v2iR/
6CrHXr8WWuASodADrpRJ2MuHfoi+NagvnynABiduMZkQQpPl2x3Xu3Dz6j8rKujS2reRTNgG56Xz
X97ncLh2Uk9vWIQohzCfCcLmY30A/JEJUrIv0krA4Yawa0Vkbms2b9Ef/J1oJ8chsuuWQmA1Ct2f
Yl3agKFTxjQ+pQZlbcwzLrxPRo3ROtGZOO04WYVtoAu+7BNP8eHwTqa1K4nf39ABBE99SnfX+mDw
W3NA6wd3O8fXqYGvu4EssZ9leP07zQmm1NPJps5H0HjgP1FZz8FK8HurK6FsOWzcCJa2Laq1kb+C
nULu+nDNGERUaESHoTe4roOUYJXm1TTvTmHLHJGjC0ckg4CfOJGmEZ5kHUIyQfFMo7nIfwdipH+n
NlWkklYWKjwYVzbY0UxeYm8+CizalR2tlchCIy90NR/tzKX65/pXrJfeh3hvOJ0gWqw2EiLshGus
89KHhfh8HvZdjoQtrS5zcS85c28ehozDCkLPopcJ/Rj7EGQSPUTRmULfCQHSCM9B8lj1iZWzol/h
WY5UorYZF79KGa+V+bxC+c5+n3VLC1/brT+SF4It7CtjLiP5DTwsgPmJracSo723yrVg7oKFJoP6
CKJ0dyDje71poZGFC62ORHTgRJimfMDqXdxX/i26F5D2im0oTPSBaJpVd+42xTWhxuqsFi2m24ea
HLLfCazCTdavmE96hdfETej0ZMzYaDMknv/V2lSCIf2Pnp8LP/wqbPhePplxrXfrXJhYWKNudrnT
tEYpAUGuZ/XqOt7mLSOEuT7hpuQm50JPM7lH4sx6ShTZInWGJOWyU1NvlHJkykULkD131USu2iyu
yflGrbOUnlMNVn0pttJDeimfAP8ZVUTNWeYNhez+mfRpDNF6tZuYwQmC3dhrZa6T3CPe53oSincn
M5tXjaL6KoaTokKOfPwjxybdATOByeUK7lByhkotjrkqMkQDHKzYvbmSceNn/NlhMLtSqqya8MG/
5J0xKVKIaw6E1lEoBkL4CcXSuVcbm1xW9wQZlKps2jIheImZ3sP97pxCv9EAqeZLvNMDsrEI/Ubz
dm4P06+gk1ZqXRCHtRCkdMgxdNpcNnyMCs8aBojh9sYqrMVGDaoISl50ON31+AAO+Rj+NYpCyNO2
bYTn8jHcBJljF7J6JpmbH+cVPBYGSLApPBIbiOeWR9LtZJySahe6mRQI8wi3LdPvX0qaLpMtiVRO
/C5T5NxgepWXyZ3so+pGUyT4cEAOFoH53+hRDL34n1evXwaFrjaBbZNhjt2vOS1ZMto4F72OTMFL
yJFpg1sud1N/gGLOkQ0EuORuQLZJSyIzQ1S7w9XoT25S2/SAqJ2iDZ5mLtu+xyNjigJ7ApX+63gr
sjI0tVTLC9klZqrCIFkOizQ2dDxssZ9J7lESENeGeM4ci0QOvdcNS/F8WmkzickV8+xQlE3Gde21
ojiCv5MjBqD9dzYUbaqUgjI48Ri27MkmT762B8gqypAZdzul7tx4j/eQH7qxG+h12CipxKOGR5v4
axqO61qGBfBiBdwh9VpAeSV1chmoWAi0K4KyWzFntDiI8+aNQo9bfaYz4MzQaRJSDLg3usLOw3Tx
pg40c3sdFee6T4ll1vUet6E3viBDvAlWRpPm6PqqA+Afw6a2yw3Z28W6nfLy/2/O/iUoMlzvPg76
esFO3M6NJgr64LcOlBKnjYnjvXKtLWawNb/ORgCLX6SUZd1qnDGRCITmlvaLz4uTu6ED+ZaxBp3Q
BXHZuflD6BeVUWWQ7Sx7SHy86DYq0oB4SB8HDeDO8lkxs4YlZJuhqgxLVZJF+CmAoS/h67CZsSv8
m9JCB7iSW5Ua0Vm6SUQvbKRyGRfzO0gA16oXzT9ZMvjKxIrnQudQbyylOXZCWZIi6LWINMuhZfpw
XRCKBGaea68e9A9Jr9dEudnJZyVW4nOTdQR8I0ptz6QV6cZa1d/cz9aATZQSXtE4In/3FYfMrjSX
aqrKorptVMy8Apfx0KBLYF/Z5C2zabJr1u2c6dYtfVtYd6xVWyeVGL3r23abevYfBmzrKfDdGIwY
UrPDw1e4EMNj1d6C5cqpcM5u9jb9zNMwkn5kMEF8vNMJwQq/SuOz8xpBkFeBPaNT3+YrUxET1cIs
MVHwMKLMKkyu69E/RR7lcQipNfHLlBa+hzAbXuQR8ovAaMtqWm553OCZWCoR1EN0TEdcoBVRhmu/
+gHkjZ+YV62JvRLNJJVvC1coVnXs0Jye2lR0hZdQGmqyXprSeM4UCKPvhmWjgsxHUtW8wRqhg3bq
zKL9V3t46qQ6KwH7IIpLVv3/Xmk/a/vT6m+OH1gmz7vVaqCcVekXLRlOwwEOzUQ2cs42Hsp/ezXp
xlK4sKFpF6JdEroQjjWbZky0r7ytIZqUEXcl0IdYYntuwXK7gcTo+S0UEJkv+ecvZNsG24LZ6shD
fxiphyDhutap8EyxybhhFmsEDIji1cmI0wbGyPID5cIJivsgvq1wuy4F2Ty7ixjdKTEoYHR+8q3b
eRRZy5+uhAmgtLelZRaGwcxHL7y7Bj/afeCDVUyDuZ3gBI3q7nUejS4oyiZSaM1TOIX5f+Su7FrQ
fASkidX2/4TbyiFZ70ZRCJRhrUINX/+5o7cFUrh+P3dCBq8Ef85wVa4EQBET4Mmi+NSMvcjRKaDB
qONSzk4TmaKgjUFgMBBQ83LDe5h/Wplc8aZ4FbMfnoIUBWrSwWjCMOLD+7opw2DfOxsa5G7i7qjU
ksRlJB7HKXxT0Fxrz4so1YTNxPW/AEMPEmi7s13D1ztZ1Mi/LR8jONAbotzC+pauwa9MOA6QqM1B
OQNe61SDDCke0vpOI44T4o+Ts6Zc+KXemDQGW3WukLdJDVO5eYZlWUx/arU9msLYACgQf/4v+jTg
3TEVUYjEnbn8YKVPv/gVPAa+oq8fNrQKcyd/O2vrL/yQaPrcaBQmWhCmS1C7FPsH4lU1v1OBw03W
lIX07l6uRZS1tTjlcJba15NxeaeN73TLgxSGA7pSwUcRYz1Z5TxGbUUnsycKj5U0REUKl5XQv1ct
gHt1EDNJgt7ZCpV9DfPHuC0yIU8AptX6LkyXc64aVyLg7FU3wEcyGFLtwnC50DlfrTCgv8kz98c4
bfQxoN9juCIbMxHgAFihy9e2y4y7OzlO9EMq+Un7TXuKE4cta46ylY0dYHoTYSEvuGjPf3NWoPuh
yfam92mfw5DYJZKPpMA++nkqQq9LUadbV08kkeL2zM1LxTBqY2yJBvGWgyxm7jCbCJK2Fwrs7QJX
OdnbacLUh1we2rElrSvMyQJ3gs/yiSZdfbnmZWycEndusRXCrIuvYEzjltjkfHVU16ECJTnmix1S
46T9D2Qy7d08oHsi0XoJENVr3J3f/fyugkB6+ZKB/dyimipbuL02lBVwlgo/iV8UTiAns9VLV0zn
Hzn9qM8/D+oV/FvD5WFG0oCpUWZ/jnzLoMR5fN3uYpyadarPTekG1HnbOykX8UwLNgQ2+zFKIzA1
d5j54eY5CBeSvBkxvipWx7jtGpS0TdVPQlY25MA//qw5ZYd9gjtVMwmTVx+U5X1iqKRRx9Zvv/TC
qXW63/EY5mthzzGGXwbgPZZxODr1OPl8yF/DBqG+H7ROi3jAKD2ZJi3rzJPITktOGh5hQ1gfxl78
LReXDIEZUWjFbUlIqUBLeEzq2Rd9PbtvyIUDPqo63xK7lsSG9MKke+cjJ77ITrTYrVYbwF/nqp2j
eSS16BzGWnTxqEzRliYyPKkeKV4pntRwIklL8H8Yh4hrRxPMWocfDFvqiCbErkN56T67xsRzNrVR
y84FtbXgBZRi9TaKb6NfiDCh4R2oWqfPRND0TTnft4gEyFjl+ZGIz3QoS4jS53ELxmt70LttHE+N
KMeIxxE2kB4Ku8gnmlKiSUPt7iBJS+zqPfUp8IL/eUnRX/YmX4M8v9EPfF8yp1YyEJDABEOG07Ji
lTXaqIItrFcoDQD9bHKLSgxQDKHyGYMFeIMBSuT2wwQg5ya0alzYZfBmqPmOFw9H8YIOQ3qXEL+4
cpUfPqPe5UExhqBtQp7To2QkCiupUdTYivwhrTqkJVPw76+X8uIRhLZosMk0P71HEBTBSVtnYesL
nAeQ56NGJlvpY6ngcK7ASdWH1721CRjrqck0xaXybmjNGOs1ilffFs1YEMrsWV+xVhEA63jsAMaC
I1c5k41Qdor7pXf0TeE1XVEAQhuevEcLfRtK91w+MXl6G39G9fr/qpv3frlGlaaKYdAJ0lyPS6Dq
BuSB9aFXPMRNYp6iFUJ3drBpTSupYnm5muSQDPSGV8zQYr0I0y7xMOhytysimnq5oBOVK0vu1Q8k
yPZ4lstACj7xrQLPzzxjox3ZxvYBSyUlgUjDBzdq5XvDVOmwlg2a7cyiSMykdfoGblhPmPV24Ktg
jncUVudy/sLT9CPtyGIdYXP6xVXxO44+cqBtG2MDBLFS1nezTPZjd0rPOjT4kSdzZLFmAObjL8iQ
BwN5ad7BU8mrYtA9C3kSxRoou2+m4HjvsAjxF/xMBhTCnt3oQ0SS+LwON3NAqvetPDcvyq4W0vjL
Hl6tZECQSivv96/7tnVOgPmORnEeENCSvStDl/pUwLFNbBIopXj/BNc23ZJKkPnA6yHN/W5j5/LK
slHqaL1OE1B5MI2bCgWPKXK28hwvnEVAN1O4cEDFJdNYY9ZHlaFju+qhR0dL3ynJBzzxqEaRveGM
/2cryyAMY98FpvsLFLjthpdlRL+0sQ/9GX0hyg/a2q8//zxiGHY4yoLReI4W44ARNE+jS19qBwJt
W5kGrJilaJ+06qDE3ZnX92mTpeDrjg0VGlabQVIJ31+7wEJhi2AGaeBzg+fDFzJ/U8ONR/P1Axq8
lWVWNpjJGlG/Imw0pBuzqoA8kQHjqBEf+ihs89rxvS2DYN5qMb3N8dbWg95E60nzeVZZZgLc1EaS
tk+EBe5PY+Ov/rjeSR9Xvw5jP3WFeIVDwpNxOUGJXGYapLUcPh/TYJtPzU7JV+JYFAH5tg7W2GQj
VtBzf89MNbWNAQnlQZ/VowSiz3jf6tqmAg/RiQIwQgY6Ua/+sm+54Nd5LXjkrFAIajt9+EL7nSlW
egFuAdH+TBqCw7uBrE/c8YuaNkNyFVKZuJk+f3sFyo978z5bRIyMjdppryXNxC0gtrZw3fsQrmG2
q55+3gdlfY5E2bPrNH7hOt0eqOg5pa4Aa0qY4mAFhaffRYhmgWC3ZjYRxQc/ktPf+3GQH1nkeuSG
QU0kRdhcVulNTcw3bJ/RZKdhxf9RfZ+vRWml9/6EotlmLYlnMob8/zJbfvJj25ZcRjKBeRRHL+Ir
cyhUPrWuZRoExZhnGV3PzxXcL0niahDTWUEtokgzQhwsgjnGs7EiAcgO/Jw64SRBqjdJOjid7hHA
udggTZPmld8qtkyuRnf4+DMqNjhUT7pftcYSt7WaDA1kgJnD40sRzdXFG6sRUKPa+kJZspCii1eq
khMvRdQouPv8PW3gdC4VGBxn0QjwtkOfRaP0gffU+ghtH/7mdDjWK07ubyvYrUCKNrfCEeAv4wOr
STQz7FDGj/k01nTTyzmPvBzQcvV6yeyNlAFAxri9s1lGD3z4Jtq7xJF3HYuLg/YcWZq1LNhf88YX
b+Ev5LpfIibYeq/UubnFfsjINOqagQ05XbEd0aRo/sZqq2HtIyMSbDlSZ6wOLjyerWAcn8mo4dZk
/nitOZzUmYKT/9qXZbNoV6O7Y4pApkzY4bbBB0+x+Ai2JdSZyCuBghdI9e8cu0sjVx9SDofxeLkk
4Fok9Tc4ibtlsOQQAfQ1tUEPkJlkfRhSXyhHVVRjj5bOTSGCVNm9MsB+iLXlRWS7tj2XymSRfdDJ
+SWqZtmzkeHHbFbeZNFEkoabqDFnzRE4QWgafS/+NIs1SdzPj9QqADAKWAjLRqi7WdAyL1ygpqMP
wZXejgXMXnRgWBtkP/FAr6uWlu9mVT6NzF+QgKsdSkjRo4IVMLXRS6GLcgsEc1ZLE9gLXRGKanmE
ozpp3C1zwO3zt+OFF3LrYb0Pvii79p8epOJQqnuUihNf9JovhAViJT2appaC05A3oEVp4ySVPUgk
pvpE/DbJDSPxlNdXwH5VP7C4nNXEsLexUFQGhbsikYVSgcJFTJcFlfJ02tstshqvOOKaNOHnNhZg
WsEMSDAhI/GlgG7AhiA3XoOqsoovkRYA7oiJISnzoCZKnOVl70g2WKdCwWBoyLyghNCcyiuyaGGY
nZ9s/p8swJ2upuZMaE9FRM6UKO3CF7Gho66mRvX6uG9GmblBfGueEXGJybdVYY5xMBtgldEowMps
UXYouWM8elU66igqVuR2KGsAIPPvIltXasGP9YK+E2VammhNdkmd/qOl1OPCMg8zyq7z2NJxI0u7
kjcakg/xihWviBfqnUMvXdsd/oBj5dY5r2dT3uJ1pbekxww9OnMATPSLwCwLJHFwsHAGjgCewvwA
/YEFBXpib7+TmWFFZsX7rn6SbxBaQYBmyzQ8idqQDXshe3voSpy+uhKmD3nRBXzteZcxNqrN+QFD
neNtlGQ9grvgznTnSx/YGMyk2e5KULlield+Z/VnsQ58OOQO4tURlMP5bEXnLp9xR5ZcJ3nahrPg
CCMP9kO7tdk8AVgiFaktGwMNgLPxPlt04AtVzKpP1nQ3kaC/U5DJhC8Knns1TaSiQr7jW2xPTSYA
4fJxU1LsWgrZS34dR6MfoQ4TLuXAhadTV5tf1PtF03QkmqDSCY6b7R/Dzonim5DbSYH4rOX41AJz
1QkakJl1Ms33WzxG2xYdHOtNq/pfloPANICvg+bhkQ6H1xMnNubYIgbjp0/LepxcGDD7LycY4BTK
rkMQ1XN6WH4ZmsNxPPH/IL9OrLyzQwGgDM8gJJvM420sIOSKgY5Txylsh2TRgJ76v91wF/qMyhLE
BEPU94wdt8IFOA+GDrjIw2dGE0tWrMU0mq4Xw7a7Ny9ag4jYpTZbRRWEZyM2AIThQi0I9Zw/lk4s
oM9BuPT94ca/yH+ud0r/2xuSjDpZdE9pKnAlnJs2bParvguzr3E0/O0Htv4oPkBkLVMjRQuyNO1a
jqlsYqoPurMKBiqcBObNdS7pi0DKUdmkjYYXwNX5IKrzcdI3Du5sfBx5lLbiUlHuE0aXQofsDWkh
QFKjkH7O5gV/DsCin5TYqdb79po/CD/BAkpEQOfi6XcVIYEiHx8yLwTBmc1vu4ceHdqXBehuKKKl
JZ7fhUNn3HQEvgbhq+kyt6tw9Luh3hz0CWI5dk3D33M1xAcjJGHjn6aW8AgxPkVJ5j5If5VuwYhq
ygdCKa1fS/e0GdVMJA7TUIkD+X9ZHY1e66dKoxo4u6qZGRdRccBG/mrZWWiCcOls8NkHMQ7Zg3HE
e0V4wCJXPDa+sdR01q6Wja0REF0XKI97OvPhdr5GqVhacR8oVEu1XF+c7yeAkj/3yqqzSSwkhAgh
ShGmvnr4OMwcAGA0qQHNlvAFUtULG3IwTPM+b0vk2Ou81+1yn1TvKbUYqONNtc5WOftGpRO8d9e6
6Sn+15HRjKfUtpPR3ts/+/ITvCYUM7PHNMSKTSOfFAsj/0UjtiYpIvQdZDkQ+zKEzSJf81J5bWE4
piPDqmaSLYjFsulS58+/ofVJw+au13axdTQU+mpQgCfwCKRlN+AXJdHjqMfTnjyFmZtu3h01fTpL
/PXxXeJuw1m6w4loDtxrELgT+2Mn7w1oJL8hqeHMMkkgYGAzfPDIHNAKaqTGUAlnz67X4sW1krXE
3kuFUD+GUXu8UDldcBDkMf8BUmHrv7WdF+ehQhE+Nnhgy5WG1nQigBsms5yfbGIIovwXzxc/B1CJ
CRphksDMr5JJrzgKyT9ZMymJRAQp3NCQixdYLKpVUwEXDDj21wJ1j6ttuVeBZHLY7I6v+yMMwU4F
njrijZOb9xjS5YXQD7D1WI2UkTlXE/ByginUAaO2wGcZTd07y9kYJY+W3hfhG40uzrrXaxv7xIZy
H1h6YHk56KKZcHezOCodF7dZWxNi93iA+AdWFiFx3QVx5u0w5RlHRIddIXyzr78tGYXGQ0MoELRL
uJaLqqQcPfoWJm8NLNNOdtzt9tcf50jtsfHkZNj00k4HNejdEAEzRYhdMJP8+jFMp05kJ7UZAnqk
R2P5f3dOFrNbwVxNGy7w9pdjjux7oLPiQ7XlYQWZeEjni7vfZ5nq83kibzXQOuArxyqwZSTY65F6
S7Y9O0LNLHX1ZXrz6Cc8K0QZg9cmn37HS005+SIUAsEGW+YCbo8karbSDMCyFCMc/AJH0aeznSoN
pHGlZfhSCmT9zY717xjg9zARizma1QyCBWBV/bUfDoMWsHQXxQjP6/QqGFjEVl6bl3TkZI7o0ytQ
mSGrj/uhD/DU3xFHJk2JLa/EPYypKhUWKvyywHAT+DMofGsn202LZrosTbLQEqAfnYBP1upI/LcU
ycMRZtSGmw0ZCc0x7rIfk6q25suiTHxxGEooxYH6Lmw4cKXn1UMWGSSN1KxsX2u5gsKk2hijgvKg
vOM/dYT05g+kRSG7dT0aq4A0Wg1QCHBU+LcjMi5OvCjOhBqx4BHwy/EuaSwnLUdnI+oWzfnX7qlE
XOg3wceywSIykgdBw4rbSeJ7XovVruX3fgy7kveFp9UGXYPUzXUBtq8RIuBVe2PR3HCY1cT/bW6L
u28+7HwU8qqstevC6T3B6Mx7rsIX1ea3+1Zi0iRt+copC7JntUYdK/bzhbbjEJlT4GjNnnQool1G
LE35OgpKxjgigFGvt6LEk1Du8eGdlKuIkMktHqeAHgFKgjU6BUCYpEdSJO+hxK+R+NDr52TLxVnL
Jh6KPMfHgORm4FICl4KDeCnypoOjeJQjK+1dtLJB/1uM5y3d1GTJH02twJxtH1gC9JZDlZEook7A
5xN7jY4ZdAoGdTHm7b8ogRbYwcEs4FTexQBDKKBIL2mf+GUBDRCJRjPnYHzm2XnIFlhh2QKnVWkR
FXm0uTjnsZeVMfAl16ZdPTbgHNRRZV65rZopJ8oPR8+BGpM8cg36lTQd9oN2DjP04aNCfbKR2Gg7
iNrVYTUQbPKr0xk/1azUVtpAQFJWUpcUguq50w/01TpK1qCrPlgmEoJa3Rep46moGLrhMDg4IjDF
IgFIPAHjfiUOvkNF7Et27NFY3eWlXSzwYY37FSMeFE9VhhIzgpzPUe2YWtnOV5GayAdoaParriKw
lMNPpSu/PDiW82Djr54LpwZmHeMdnTEambYhnVaqlVzYDHJHSCtV0R7Y0Ldcv6BZn0k2bDl1MsF3
uQAJ+rYpaE4D8snEzOL1lLwVijtZ9wEf1gmozP5jGcuceWi3D3p/sNWzyeRFhysau52rLSyGHMx3
MDwmP5fmG/h3hnVnloXtB7iaNQfoU/1HqHi8FYVH1L3QTcwBL+aNgQJeguizP8blcHGU/UPJpbUH
cMzHia6hTDUNX//kbOsrcx6DfOiIQGi5Pbq1BeIf+OUw++BbntD7Vge2cRBWA28c6V8+anLoKuRk
ayxgyD4Zr+0lBN61WJhxgc1OM1fguz4ewohCrG+LtENlyP9/GJm1AZxd16Ob+i/93XmCboZiIuSp
rptdiGwLk7jLD69NRrX+j9fyoCKV9KegNCInKEoB0IJmqa/V+xfRP9eI+/3+BBVks37RxK94jc1/
1jMQ6zZhlANquDlngf2LIwnzw02tCeObI7pO0gMt1lls0anmR1Z/u/buHRR5rGyI6f6npdORydMq
vnQtDfRzoKPpuBJpomTsoFrqermywOGqgWlsAoY/TdvcxZbm19nRmScTpMyLEBhdqkSAnyanrdx2
3ZdjurvTWfWv1snVcg6Xsa9/0+24ntalcEVBxDPwNCThiDT9jP+gk87dHZ0kT0/+4g2VOl6yJPia
k2/j8ZRLDjbMYdRtKJ+cZBnFOQpfBQ7eHAPqFeZ0FFMBRlF5xctBx7iFhmBXKdmDW2a5SZRIbAPJ
57HvwRXkOgmHFFbEFxqV0TRFZXXRrr5o0Me5/g0iZT/nLP3U2j+nEVTpIG1kDUP49Uv3t9vx5Qc6
fbxDoXHyM3lNbNXQKJ707Ffk176CsLNkZFIeCeokg3vkrXt9YIHnytKQ1OHDiVNSRUE2Acf5FQ1M
J0V21jaGleBWKGDmoF0iLOc3FbCS/seUjsgbnq1pd0lOo2dD8MVGEXOTox+QiIMk+7Yr0O+1Wr4j
Buc3OkpEWpWbBtb8iZ9dBIKKJek79ZBApohW66LdpjyPbk+coT98VzYypZExe41vI2+lS/Vs0GXA
NaBzRRZShCG3Ab83E70TGZgsH4vsnCDZw40cRp6dMIUEuJ1lbD/mMAUo4zNKWHba8TgofbWTmMrP
VGrvz6JhwNsY4wndAuZiPCKHUyRGee/j6G/3ifq9sk19WQzizZdE3tXkUSmKZ9diRhPc7TYWUv8w
UJu0FoDL0EwPYtRspxC/nE5p0cAI+75hzYifEZcJO4bL0elLRwBr8TnnV0DxysEFYhv48vjKhGEy
+qusb1RgCUNU4fXf5G/VUIrdSwhUrYecQcitY/U4lBJGWjyKz/Rvu/OGYytjbNJL82kpzyL5FTXn
gCORJAirXQWTC47vVbXzfzxQN5Os/nr7BeQJyopatw+SvIEDtNTBXn8HdiEykgqd+2SvE4Lx5kHJ
EpWidwppHTZhJk0Tq9yA6OskFXBOVIjEOFQkPMO1Qy5Ps3SnIvb8FrlucXGc+QGZF/W44JhaoaiF
n44JRK8Hpn7ducYBYK8Ng9bG/E4YVdfwm5zeht9RWjbfWZpbGZy/mRQbb0OWshGpvPjm3E8hOPQP
VV9mQjT28b3uJSwwCiQGCyR/fpXerD4lNoV/Mj9aSVXmAIMrP4DMEsyAKLpZAvVEyX+bNiB+kdHw
nOvKxKzDwD7mKPr63wMBmWiM0AU3n6FaKqNOCnmo2diE31fYv3M/gtXvJpbtYaxvSHBA//ukey5t
l0RWYvU+nWSVyhvKaoatLTM4DohyhL+0noq9J7LfhdPWFy+P/7WFtIaRVBenfURq3EbMgnnEkUAx
BNo8vIFV7YUG9xVz+MB4HQUNx40CQMYA74zhk/9sq5qLxZ9FvB0O3bNmRZb2pm/bHKdO76lTOc/8
gezUYu5DIcOahtf8Fu1dTafa83ErsKQ3s03md3TcR49dkVXFAqoXnR4EGbYwjeOrWI2R7VII8jap
QRSHH5ysCB6eYrdlR1HmczsnnnY6/k4CruK1xCe2nSdbg+qjhtC+7N996wInhbaYy2x6Y7fSZK5d
8ckKmaUHjXUYxNZukRFXqmgpPc9aH8I+0ZS6105xrcVl9EdyMCimg2ReEPLJgrPiZudIkxOW5YPb
zDKcRQxc5EEHoM2YLhZUvC6bdGlBbl/JImy41D5YhumPEWuH1A0oJpJiHi7CL/El8O1DR09SZguc
XJNcVwbNy91BllS54enVFejz+2rUTd7n4lFbgTPgyPH0eqCuJp9DhrZk2tn9LOnuhzxXthEqCOYB
ityTptG/8oO5pUAwkPXy0l/RwD4iFG//tVGZWVoyPu4n0SaId7Lt7x4YrxwbcvUqUWDB2aSnyBed
COUFfrlGqIsfDIWL7BxxPYwMd/xXJ2M58dgaA1A+H1h32fWviuDeo6WJnO1jnQoKUKsegsCB1O5H
Jm0OGwCVHDUMNGPDGqw3jMDKkgp5b4NYE2+tkUZ5r7uulR5cMLMksMJ6bql84LDgWX9PNndkAxsd
bt39vVrtveiaFYG3JEh9zuQ4OgyEtWNR7ddTqeb+XHz/RJuHWyOTFdGlFCd2kXb00LUZ+WI7KAI4
04xZtVSu041ss+pXnpxaHunu56LloiDdqBjfTQNIvhaIGpLfXoIaP/qWJp24Rejwb2OLsUyunlI+
N2ELRuYoxl6Z57n0hMC22vzGQG5s7kQdXFhd8cYKkxkImaCg7hlYza6fDavuLLIx1vxkQ+BnOpnM
QI4FHe7sRO9z9oVXWGP5BnWPjSU3px25o7f2kzDETTUIUdaBjyQjYdZS6mLjQoFEDXkPMa3nNNrB
aGpLhi3+SSJ4H5UjEkC7sIF0TfZjR/SuqTM2oBWgYiYg8Lt8T81wdvmMZKzcbRK7tjc+MPV63Tsp
ySg6qPqq64kkhEXlogFci7GO5c5Jw/zGAV8weUFjAj8MfzPBYM6fBNU4efauvL910BJ7zcVEPMSX
yiCc+7W4FjU42flUo3us/8Xy5x3bHhBjCmJIT+uqsbVfMC9c5+DefWIy9D9UBO/+0BbbBcla8Cud
rbhs+0yiGTh5CPDBodk3GqM/PjLJ2OkTx2NxBVpjTg4BDkjheT3bv6PRCLh/liJm71/lctNnKOgk
C/ARNvACEk8UYAkZ0DOsFWL1Yut1OXdBLB/HbB/gI7NfpZQZXLnhXBZZe3GH817sYxNxgpFWqy3K
vrLvNb7acJqXUIFfLGBshiiDBCjvkrShXaHsJFozdsrRV0yn+s7ul78hR4EeUusWS5EU0pskq7Pp
AKZ/NvI9pLfTHwPPpnbPiZ9AGxRnYyYCPuYhsPk6GSIdvZaL1pCkydiia6ol/YMOLxg2Z3ruLLHP
Cw74d89DqJmKrTU4hsZHoLl/TITQgM+woz/fATl/RNyVBuPC3gfd45+qSSLL0h3qvJ93uIp6zzK4
q0zVDSoIRarxjQx8Aw8I6QtPU4jpJxmoKQ5OVYqGjDth2BwzuOHWwVcDI8xzA+TWMSIja9m+/UIc
poxfQyktBsvuNpuxxUXsvVGOy+TCg56a1z9xL0+f3EWWfLcoCF6yp61MHXdiRRLgnDsytRL+RTOe
py+cqm9GLefxmFWg83MSzu9T68+lqGWLqS68T3e7L/nTDBRUCoLbNnKz6L5H71AoLWq5gYnbrDxh
c9jC1LSDbV7jEx9nEVvt3U6SnQNJa8BDzjjBDSR7yi7R+xRek2d4lXw4T/5JHNVIlx1LTkiLOKNE
kfs8Pqjprcsz80L1ic7r3FVQaB4kIyBBZg8PXbje7EnX3QbRbmdWvxkmZj8CgIcFOnNsFz9gx8RH
Fec7mJ5s0W0A6Av2M21Tbqg1jPMsJWC6woQGwvSfs6o9U211fz4bzZeCpuPseeX2JmgZ+cy1aeQz
ThvhkI3cU3+rgp//E57FrY+R0TkBAkw38dILZAPPlh1hfoyxZrYGhwlePsjkvq8/xWrbEhZhw00e
o28sJvAgO9+LypNeo+3jUGYBB/KtWUB2nbHF77KVAY/xjwn+8mRIvJStYprjuMRwR5WGL/bdJ94t
EB8i1JIevWbmleAjr3bhtIUrbW4ezkVsmEzigTnzZVo20K0pgAPMFb200DaPjub1teOaHumwgvzn
hFWGWVkz5C9X8GoG9fkn5Jq+uNDLd0QEVpUr/499MVQPIoOAHnTSrEoAR8e4IGBd3x39wvcxTLfu
Xns2ziNIWNxQXDlILUn3RTAE6nWZuWphrQn67v3/aXJJGukK/AyC3ozIOkW+MgtvCgGZE+JWqkoX
UDs4pAmtaYDAb/Umie8T/UA97vc/GMsf0GPjWnBaqdd7EoypYlgsiFO/LXO8z0mp16IfJB/3uYXW
cTwj9TGc5Z+/hGtiOhts7PNl5uYND58flyjlINVum/RhfY6fU8kHpW8Efc5+XEPKR7kts0U4sv5p
hT2Z2F4bQR46+43VgR2AzSZLQDQjYkLaB+MRPqWIzU+1MwainfRbeq2zJP/rmbG0Ky1mIklJ8Xcj
Li1RWxaqn9XzGIMpbCUvljlm6QwBTho8KNbeXCDzy3m6oZ0ONmp3IJAMdaNs1deg3HakmuaPra4g
Q8x2pJu1UlNjmuW2Nlr7S0nh0m7twVThHxlnbwnOTQMDJ2XTVrKxrAGeCMaCiHNX94qsPeXBM1M8
sL4gvm+fEUr28pVYaC6D0MbOo2yhhdNfA0mjKlE3SxEXtCl/2yXoKBe0sCk/3s28KeWwSf0vNYHH
vCBAuwyDCcT79MNXffZ1TyGxDo+/NWbXcPthp81qU4NveJl4bVUAXnre8Ufa7BnVwXcLj9HItlfs
+JfzMigzK/TsR/2VBzcnvfAfbhTAtzzfD10oEnbHd9uONQDYUkLN6pdAS5JSoeHOhwND619UMv95
HPTSYyOBcmFT3Sll6YMWBfCcwaXz8pGCWEhXpHYl/2zwJ7Wyv/fS674RVHc31WfywE8jfJseJXJK
9IiQbSpXDLG1iP9hBWY0oxbIpxWaMRQCRuDjCIQdP0KxSWaNSHzJQV+BEETe0KQWJIroQEdn7244
Lk7cbxSz3cEwsFO0RlgYyi6HVBZIyb29yAF3jSBCAiFrsO0+2KM1j9qJC6K25GRZQn56VwYtIOt/
Fxv11KpVo9tix1umi89/t/nY9fLdqsL5ZWUT3iBKxyx09jPqHJFM2aaylE5RQ9Az2T8D4ZWfrFPM
6jAXLnIJwqC5eNGfwwRQ2PDnvslJ5qJt4ezwN3mOLHqEa7F4K6VMaH04AjKTLFL/PC9FH1wv6Jgr
ih0CV+zmyVWFvUX6Qq9z2A3EPeYQB9lyxRI88OxPR7uMgzjxNl8X89j3e3oU8GgoUaEIblf9ARmm
Hb/x8Pdyktnkxz0KR42POrp0f4nuAmZXNYv9ci21OEeDIZwbDQSY88ZfDUFMmiBzaej9PxsO0ITm
70aWi9HZMuZ04noZCzSTJ6VdQx4ScEQlJ8tP0e07X8NoTgZV5ylLOE/Ga76unQ2qIfcGf7UTYwK+
QWQT7J6b8uEpztTzBtazbfvBYAl3LETXUDUja2gTW/8DaZXWPuDsJZHCYZFfoMI5Yl7XS/d2V0jb
ffmkSugK5xotagnoBkZ1A15ef5FKACXhxJo+e9QGZaNoJNCZ6YMsAqLKWEY5HLOrubXEDqL7ZVXZ
uZ0Nn4d9ClgvPbfklMTOgL8giC0sR96NSuum7+WpOSIIAdvQkAKrs5v6C1HmpFvgkQdOqkNyfOJa
WQK7lIxUBd9B9oXn5MAUJ7z3haH1NvX0T17phsuvC+ADe/d5vpWav2XWlejYyrTHFllp4gN2vBqW
1tX0pmTK7j7su9FaDLNy8s5QcM5FTZNfissdJzjscXRb4SozyYLSB9tPKb9p8k42KtG1R3EtW/jF
Yyi9x1u3IsB9bnrMfg0Sx2VSbxfQQkmGP7Ro++2eyyUCHrTIcvXMN99OAdP9gQprF94kGzg4BYJ5
MgU9lVr1HPMwpN8Si4aCuYNJHPILYt70WAy/f/QXbhtjEWfYpjPZuV8RBNE9auzrZCI8e+ePY9hS
otBmynV9YpVl/dnAfnNFxt2eNE4HVslD6CsCteNPrTBklmHc2U8u+bikP26797hQI7jnaV3XKG64
pEB84xi3bJe/rU0OimjHI6Evoj15o0G0FOg4tThwycdYrA9XQ4koUxY2UY9zVGFhRAoXxR2mNSlG
F2AyiKmrDZbe5s592F9AzoiZoCrfsASq8jEJUEjhIG1j4weBYCFKMW7kiwFXMh1HSuuKogdMZu6Q
5LI13+hmapJAPJYMWZr3NoBmoHMf6OYF53qN920xo1yM+uJQ/nhMl60FHKMnzAPx2ez4tySsbdKi
V4C7rBWR8GoFapYcMaWYrWPtwWuGBRKIvhtSY3gzEG3+d08QfafG4GGRoncnbWgujmSVI+YswVPn
y83oqXyLLmqb+R/zmmYkLdx906gD7txv11Q6PA7IGoSy6mpof6Q/2vjtb1wVbaLPMnyQ95atAOdl
iM9zca90hFhjTqi4mbgPPcTZCO/pjBw1dS1V1lKVUUMjYyzyej/k/AYeCGTkmzk0nQ0Ep934wiVt
M1dfgNhDBR2xXeKJqVu3m55ixtAN8jHbwJSVcYxy01iF8e/2m1A7zyN0seZTNnuTuWw3FSAt/Om6
vbc4sm/xoPawE/LL9Xz1BxeOqcPeu2Fx5pWBpRbVVZSuO9Oy2Dy3C4c3bGkUT9WvpfUQwGRY3+cX
9pCsNMPaFrLLEoCJLY1Gy5qzQV0CnDiIo6RCFVCdYXWCIXjCP2fMzfgsFuacymzJU4YEROAISd9N
lh0Hx9A0qtM9tLuRHfhngq5UKbyUBWmpyxHWZ5ee8JYNuWU/eIhlt++jyZW87vyaClr4/F43Owdd
sFsy+JHhnHJ0ByA3OTdMLcrIiDYdIGaugUaFk4KttEUriGKb7iiU8Jp6+IdShfVDHheP9vfOyfY7
GN2gMrXnuCEQrnXe3P0xbdb9s7Ojk/RnI+j50h8kyARQiU2b3EpXgUBcIsyg8h3L8MiGDljT2oi2
8w5qypi8fWPmWvptnD31n1Klxqpl0khwQfJWF+1nPnCOg7jFr8lLdA8wchQMHPuktO7G3sJGvCI7
MrAOd5UvNm8WQP8DIJmJP8VP2Y5qBELIVS26JsJ1cUhiJNYeRJXlVDVlJsP8F7Lu7zIYMaDJ2KBX
b2CmTAtbw85GWbDysJcWM+gUOOjW2KMuvNwaJtEcYk57hKqgz++GOVhmxcqWx3BT21aC+EjxesO/
q8wQcg9RH7VftfXU/8zGsYf2e2ZVWcDtKMcrAmFXkw5wotLT7FSZ0Xp9BanyTGLHEThrK+y+nbgW
FpbrD2GHSNYIoi01+5E6ucGIfiXC8znGSFl5xvv2OioDtNzOywUdfk9gCs5phNABLUlNeDtX/M/L
/wVVpBNg/owpED7KKD3bU8AwJ3jOgOTE0QztrzfzVm4d/m47T7nilb9WpW8xXBusVvu6aymJxwmC
ysvYUxjQSfjRNTyxwRZIXeFd26qJcIyM5cZamUl6Y8uiRlDGnBQpPLg5ABF2Qn1Bej6mkPh7ov45
BQ9YzJMdSShxZhrkzIKQ+y3qt3l/bsMXnQ6PxN4l1of65Kp9KKTV7ezJLv2InSvOGaLNGrd+kvNI
RLDeez+7LFdpEbtYB3O5RdzZLgg6DRoAn3WpJMayzKHB/wuiC4zMnwVraGWccLA7b+kFThCjv86T
PxF8mbmy4admv+q6po91I9vVB35ipdTkvwzcOlGfbsE7OH2WwfytBRInqQaKw48KttifYx7XYxvY
o5hCuTHTu6Kyy0RRfNspnLaAq28pBdhVUgdtzCC5Pd3k4Ag/Cee0Tql5c45Gsl5svlhdJq4nQp+n
Jl/gvztYd08ILwa8lerlM8/KWIX3Z+Dz2HjlRfjReGLui0LEdP7YGIZRRqAL3yFsACVFuRGoyrL6
FWR9ys5LGvMssEjdjbQBR2OdiRTHJhw+Wv4NbdfVKeYcu+HqAbUMvoIsAH/k5K7EnDumXa9q0+e6
JYTQpus6+RnLi1jtJ7JE+4UTbT0BFUDkmiE/FpUb/vA+EhVoM/Mv1iyWy+9AFzST6a1QS7VF5wqH
EirSxMT4st355zWjiCeP9th3BDsLi0E+Rt8/HGnLFKfcIpaQh05yswxlxsl5BBgodp5AnqWV8Ey6
SQXCwtxDAz3ncVa+BG8z6gPlm04fXduAJCR5Q4zYALI0hHUkes2uHaXkPf3ssAvoXWDqRXW4f1WC
6ZvQcdRu6URjt3l0XCJ1Alkun5YTPeRLrUcVUDjeKT6zhZKiu+wYzuTlYo89iLal6lcDC1OgMQKx
HgBu09kRhBZE3Vdcgxzy01UQ2DyMj2YuliahUNt5Mq+XRFfg9maDQVhNC3EvmP+TJuBPm0qG8rVM
8ZH+LU0eYox0l/BegiZTIqTeTUptVxUOAqI7m9uASIsqJXq34KXm3XUljJ0MiJUu4rR45E+MkDCb
8c4e0Q3HvamRxTRtRzOyJ9682KgtktH1gMVj2JmUu5Qw/qT2hFZ8k6DOHCkSK8/qqHwYvxsXqbkP
cb6RkZQYTiEnL3SMdjhRV7o9rdzXd1TRqkovCgMNAocjjx4IgG18+EFvewosic3vFAbNaDXupaR5
dY1ysLoKCpmgdIOIkyBgIm5I3wEAgbSlpIqK2BONuR6Y2gWTJQUCNkdW/PGTYTCLK9bb/vq21Y+3
GiOifAnym5HP4CVvK4ECnKygTIcjXtvZu4c+SUcBG1CjxTwEMRZ84jRyypo0hJfAjb6ziJwXNuP3
8mVlxiA/e/Q17FIklFZaq0BdIObODZCpGlmd05WSb99k+nknUtQ2VcunL8S9vP8XhF0OkJRTxgrG
R65aYF2seqTUMmvK4+cPHwN/TvFeygjFeh4eMzYigDFaurwj+aOe0o6Nt+qPH5KsLhb8qVmW+ZmO
i/Lcp03R4GckUpi2qgeJVHAep5vuPYE7LXv0GqaoCemfd6gR0OYHBzb7TD9b35ybfr7yG279mLaY
j8Gb0s9LXxlXcKRT0taZz0Bhyv6UWs2zj+dm61VWM3m5nOS/L96KztKF7pegjejVZhV0ng+iYTTm
VImgUAX9j1lMr8fzzNTghySbHdyr7ZvDB4ibi2S0Gjn1ofC7o4yCq0AkQAvCGMli+DiI0Zyz5mKF
cWV1vh3UZUhkAo2aImNDY3u8myrlvpO115TTliqozT/Zf1tZ6KOaC7SDYiGI/vuFNB0wznM5CT3J
seJhEiuLm6Hc4dNWQK60HUhC5nTRTO24ka9Qwp/8vMXK4vQ3Z49x86sTQMzBwHi3jAmMqwAZZmKI
07xbQ7ttu3oCwjitoqGaWiHc7xbR09qzlEGOpnjtS0j+mm+pnReG9hJcEqvGSNjggSg0Wz2iiQWM
qyQ3d9YOr1rE0C7Y4aPVEZb7NZ3bDmPyw3JDLMmZEqJUWgWS7L8wOb2PrU5lM+p1K6A4jeZYJ34J
rktE3/CDmLHgLdLyo4z9GG2137V0P+Tajqh+HPwJyexZE/853+7p9iLZ+BB1nGs4TejWTkBSmXN9
SHOHbES6wB+sZ/3qg18KH79hlrWNl6rZHh2pIRqYzC4muStDWnd2VbD362x5ML331OGqFpkffIhY
U2Xkh74j0+tfZobtDg47hwJ1Y+AX+WXpUOUsxoXVst6lThFye85NPulhEGSgIrvRTzGqQfJP9rez
n0kmGXaN2RJ6HnRnkdH+bu3X97BM5z5/yqd0QNV9OacpAeNZauqb56qpZ4aJAQ4vjlvKYgPaVKXd
raGOmhxkEiKsWCOiWVRk4U5eit7MWxnjfan3t5dFwSxXU4JMnFVCdEqhBMhq6bKbtVUTr0ImIVnB
wr22onYnU69MiXmQqSr/+OP1uBq4BGsraW3qj8nZopD8Wyn1DWVBl5NZDtQIeDW9AQ3GweYZ98wR
ucngVxUmo7NjYlyJri3m1HY1B1DLMQluwSEnUYIsoJllhDo43NuGXeaKhEuyvc7v3kgQ2FusuANn
eSGuMYaKX2ZBQ6zwdnK128lpoFNMaUtO17in2ylQLR1V+WqEB5E3qUhgdsSSShdk011XIaEV4NxC
7vtheqONByvKMXyDBxdrU6mt5blF9bEEOJljgszQSZAci4XZJgtBpNHykaAtfI4iNa/0nmUeD8ng
Dz4ZIJD84FLiMnIV8CRxEGG/1OFVC0YPTVyj+fpJcJEzqwf28tHKbHGw2UMJXvHLXkqn0RD7qR8L
8ZPqmdtoGcmFtNYLypVTFBwVaRt7jd7XVXKPVux8GjjTyOklA9tKyLbKGr6+CVo7CL3tz5Ms5wXI
ZSRd5PC7EJwYYQJrgy573zVsidUWXavOeuZdcRxIOzL+lbHU+SY7ythZ9MFlEYBosnuIxe6NUTdb
O92hrb2WlC0RfECLjRubD8bVxRjokjQAMAEexnf2ollPpGkn52ZL/l36fgk18rfEW0tzujxnE6Zg
2wUICpJfGkg5wfkfflmhHR1zWuufehq86pbspmKHHXiY8HidMoEl/4uDX1d0YmMIdIKCW7UVPTv1
ES08l3AWVapXLhUBIMCGpGCErmWoPmKItX78L9SDKmPxiPHK875XuQioSzZGGo4z/1XE2O0TfXvC
T0JCbF5wIbXyRPJ+vrs8OoTfpl/rgg3RqpdyFzHN1irzI602OX17uOzvj6o/wD7HUo+pTuuV6xJy
V2Uqvsj6YmqnRR6UIcfZzFLSAB0Gy4BlvUF3PtZ7D7AuTrRWnBTs6TNwgYk35rXJcb5OeEBEG7qf
ljgv75WEpuBGib2UZ5rVDm0V8XaDSvoRB59W3TtSfqAK/76MBzvpM5seNxfCYzF4KrLzl7uvqCRd
4RyD7HPfQzkxw9o+PjJy6+nKpG4GlQ3kHMch2TI/S7wvZcpdsZ0yMdXsIzHHgDqXv48WcN3LKOWl
SkjiZSwUa46/X/tRE1PNM++HwqwGyGPaf0pwIcwGA4qxKm6yAOL8TkXxHfiAu1DXlnQFUf6onHyN
x30/GskbHDPVNTCIAJedsHgGnR5SYaIVzJjvDUPqoodj3ME0riF2ZbaYBWle4KJRawBzhai4Hwi0
Tr1YLuwBETER9iGKTJz60Dn0e62e7sHIBxCOmzwwnRPu2CMv6ljbfckagVEnCiv3SkAhSxS2N811
KBVtI7PLDx9ezcSvqHu5XlsDPn4ZlFvtK0fnW3isEwKFAJd6oj7uP0kXxYpZ97ehJh+yvkQCAQw1
HLsmF6DbrYtQnRAEMD3SaZoeJ00PnG93MsBIZbDs+a5OdXoViYVig9vlV1RN6efjGZ8r7xRU8nqu
vzweE6GL8Hjj3F4ixUIQhnBdEKgeQares+m8wxYqfcyLke8H68TYfg2hv9qG7Z3pQ4dPiC8/d7Qs
sjjzOGMRCWdjBClu4kOa3AHSoVLszxldqrfLXfAeUbScxZ/BHfiKp57FrdxMHfGYv9Co1a6GERLN
QmFYvfEVaOIDc/8c99v6e4/KrsmGddsNjIUrXZvz5fMdEirnmQtIr2NC9VN2Y9qMXC8JSXO/uIRo
VfcjTkPD82xxt02qhYFu3YBlD+wBYhPO8YID57pQJ8e1mA9jdio4qleuPEmRaNCS2L5a+Mm7dIxJ
3lb+f9qzmiUj/4zQ02nHKw1l8APA4pdctW9IiNe+Hr9JFRzWJwlMahiwyvP7/ihdpdpp1WUjDCYc
2zoImtjN4+2nB9Ty/6eHgMowK/duZMPh+GSjtKezoWyYZveedSA/O+CHZJ27TuZ7cjJ+Am5u9Own
UHCYzDS/7vlA5GUNctFQUsVSwbcXVRNjBDSXcPvkjfleLyOZNOr8AmE5Dgq0FpgwFkWrtTmQANDK
7AP/MfsN5zHWIzqglVw8yoW0shCvSm13kNnLrDseGy7yiVS9wA6HR8GiLYB9Nk3LH7ngl9g3hWTL
1JSdWJNeTUwjX1hQNk0XGK2eCu4WH1zrB+nsl4gojgph96urf2PFMTjSz7q1n0kh0cWyN49Xtn5l
mAMwEx5iq649px8YJ7fjJIypE6ZgCK3SzSjJOOkF5vTXv6bEUcfcOpCwD27HCojBn0ldj13ivpZM
oUQsy7IvEKtu4bdwCX23/smPg3jDSGv7li8iSO8gpW9LU65FEDhDAXHCay/19pcjJe+xVrqf5OA9
LQAPDUw4fkMM0j3e2C7gMcYvg5v9tG3nncfnOolp563giD7L6srwt95HJ6QzfXCZODlfLIDRF3H5
85t/pwpwILYnEXEZRYseShGm+jNnt9IdryWa3/u661hbjaQ3E3pg2qoZM3/TTR5ac6BoMTgOyxjD
t+mJVPk1glnfFoxxhnxrpp0YeMJI10jIfYuhQ2NXaZ9d5FpoiQ3zYlcn4cPAeq8jhoNDCVXX9MCM
gdg3HoAE/BSCISJEHnuCFqJ4TxeAHKEUDIh/QszO8uywY5mYxw6jWwaHswsvAqz3oLntMeTIW4Sd
izIHrZmR1RApFmilUA2zte+GMB3WCt8CJdkaNmTwWn+BDvqUkywWectctkEkt1iOku3u3TEo/wSL
tRLu9hTIksF0X6xcUN1ZhyB34fnbKk+PSWAqdweoeF5GOjs7/s59R7Uo/AIi9Au51VpYqgr+wlAh
CFHLJg4++1/qcq1R28TfIUpC+UNteOXyhWqylJeyEFzZiCAOfvnLAqeIUK74k/7LKIelbZNwzfcS
hqyHj7JE9gTJy7+bReY35c8bNpOyJlVLMyaZbuCOJoScYLg8pc+xUnCTxhHFDTCUaYkCrRUla+Ap
6rsofznNeWcXR1aAGBhVLHMB5NSn4oV51zDtiYR+aBtYsbE4X+O5FSbcoh8LU3a2fT368LM/ueFT
GrM+u69lWFhcT8zYUsm+3P4Sfsi04B1KjcNpH8EPZOJ8Fq3lsyj6v1NUS8WGrqGI00OM6zE5b47r
KEhs897xjBsZpxPKFuCCpROkgkK+vUxnH9ADOm0X8YKK5utb0xTPIN1E7xHkce9H4C1rXChV15Ig
cM8sSAl9YdZOtp9JGEi0QnBVVO5gU8ewnUaLyUQ0R6u9A5A9VuujOQcA2ZUvWIK7URVizeqen2WT
1UT3wUR+HNxCRz4HFp1CoiI+ocaDRQ0MXpvibwns3vYhD/rD3RO5Yvmtgpud+fa+FSje7bY+Ukzv
K6XHAG5+d71c3t2zVS+aVzdBLp4PcDA6hSvyyiu95NDllCQSl8jMl7ODWlaBG7EJsexuar00uTl6
RciSU5yxujCVjUIfdBcnWPnuNtYTRfa4KiRzXnS3twHZ7hq/PoBMVQAMt+CL5NBIL3grrnCr8J2F
FdFuhlZGJieABVFPGlaiYuM8/44R5rwMn0skvZUp7rQLZHc7O57Rbb4VZoDSZSbvmdkomBfrZDbH
VfkvkeMFVYeLrMF0iwo7gAdBANFiDd/q37iA1b3XBwh5l+rUPjgYjQrufmaLH0WuhjHde+A8aweg
zP8CduKhX4F/hljFK20TUgp2lcl1Dokwj2jkl3chNQVUo+zc0XBITQMw11UYwB9P7t17jcJV0Vpr
/yPdp15F2aM5Gg5fgBAe2diXG3uL0vXQbgzIXZ4135aFRMsyvtycCU2LQTs8JE49Sf8/6wkaPdWI
qskrgFxuX2MLFGBjXUDQrhV9cFM0se6u9Xsugdu4whFGuH+gXsCzClYINXV/Luv7X6uHCBLvXZrm
zG0h73h3jpHdwXEsJaW6Krlt8+swtOwyDcqjQr0fWNU+1MDSsfYMtO2nSsTxr5+Jb3z0r3JGg/No
rSoZOVpANBQr8BgY31ql0Xh7p6pR5F1+1ORrRuWdUDXUi3DecI7k65ofAkO/NOu5C80N1KoNhn4W
YE+nxs0Nf6DxNg1xGGvrI1o6vIfgV2QQAjrfGVMcwCTlPghmNgoxQLLppFBjqK/fWGXDMi4rRtN9
xzM3MrVPDr7sA2JNOmk2uC033o3rxIU/l+V0bx5VWovqpFd9Ixmhs1JXeaynT4Hcj/EKRlt64//z
fDGxWYhGXMSqZCA2k8pruPcVCvNwimEVesxyHRmf//2NCuHrcDtb52wWykmnIr1l7eQwAbfRm7Rr
hmYAtoBXPG/tjU88dc7loRt8kKdFxfl0cMSpC7/QBFXxOJqsc4RzzDdnhXKOCWE32AsYS6Q/FqcW
roX7G2pGwsmk3u2Ku2ghoaum8xrW23iXpyl/UEFPVE5Nq8M1Ofx7lfyhOdGu/AFteSWRcqPNAnDR
fmLqt7zQ1YD1Lu4rnUZrs7NpEklxCi7vaWe7MAfe9gplsVvH0/GmefrLWBYZO7i/uWRVGfEV2fEU
8MILVupSFyOTSTO2FB9pPsnA4ZvNwavs6gdi0rPjs/bUP5ZLjIrfMvvD8WdtemRZW7i+zXm70vG3
4SErP8AzBCvIU2o+ufFa3BmxjjdRdmG1BiWexVlnuziFJzsqtutX2NJHs/X3oAgWcHasUc1KNhlx
W++r4nMYyYoYHVpNXPgsHvHksnrOlO0W6BlnoLWv8hxnQyPvwKoNCBXv4kqiof9xb6sn2P8TY/Jv
MnGXIs8BvyjNAaGnFE/aduh+gaJ549TxmAjGtDUiak9MwPBeFXvlMV0RG31yo+Av0T26P52N5IUN
l3bh4Sr2jFqljHH1QcebwCf4pDb8U7pnnVkKbdyhBwgJg53hNI4OiotvSTE0AbOnLT5ww6g1gG2a
RhxdOmSyf1T2DLhDww++LpVgBlDIUeTpU5bG5g80BwvTGQ1VP1l06p+zWWNpzFx3H5IkXPeWGcnz
HSspw1J6E4v0Eu6dhREx1ZSqrGImsJEUqMjWm9n/SHsNRiN9wzcBkVd68tTxracyjoFXolqQsS0E
HontR4gzpzDn5IUlp+bdQDxsrhoJHGBiq4iVkbueZD9KePGaoY0w29DTzEzZQ8UtpaI0/Dr89g3E
KZ+J+vvsYWKe/vBcWfXoQXpJeCVQe3KQYY4GtD2qlMkAhpz5+Gc4S2k0vCLwbFiGrqgp4lPm/As5
Piy4dT956ePGdHQTsD8eDWC2vH9poQBwPY4izJ68l4zUvoAxJvvonOHSI2CNkC2kPjC382sdUn62
ocxTZMHNpyPqwVIIDpGwSKJm80Q+0tZ0OPz0t4ENGyShU5HO2SgQnIfW8bw1b8W4frmnV/8gkZ5m
ytCQ9elIksKHXWNq+9oX83t6zkl0u4/8ho5eaLnXiJaj7QYK3GICxZz3pCsm/UpmQa4G+UUh/SUl
AcPApHkbc/BhE0j+TwDdzKTbinhYfO2jgJFscoEAiilSjXLLSn4X6546azkT9kB8PQwODEy9stSM
YyH4pJwHEgkyrjKWdmuSoLz0h9NgGGojJu4Y/OqqG/FV3iidwQVsFONYAw2hkm1ZAOa5Hw46kYe7
doP3i0K0XXhzp9/XGlby/nWqj/dmXfeiq5V/8BHFd7QpMGqLh4wbS9/dZoB5QhoHeRvkZbzppmS2
RtlvoUxECuvkZgndvxuLUSZEwq3cCU+Pp/acL06guBTvwCvGycKTQiEPzB6wefr5lB0Mo3a7l/09
BKdsDT5DyM3t3xhMgswKhQKMJGpH2LmUVFZQb9ixFXye+a44BCCEnc06VWztjQuI5hC8Duq8JmWR
G+wu0ZY85sopORGXmEU90xdn7gfSpkbWVW5hfO9NPS1TDkuhRs/rcQjBdSfizQp+c17EYOz6EOfy
uijSaYvgxw45rCUOVVxWWheDsy7AjB5R6nhl8AcOjATcqEfYT6BX04UgtiPtuBS9oFqY9HHgJoro
nTM/Wy1hlK19tEfmrG/Bk+MLPuDpH7QiH/IxoDys3IQa1zAsccDUvsBYa/ga0hI4qxT6tOv64Lbw
wdDT3y6cJiZZHD8BB19ogu0aC4xEAyY0NAM8wghZgx8WzUyCs7X94jVYDBBd4diLLpqSfCrVshMv
xh/GgWYJ8onDl61U41IoaaTOZ2o/vU3cEeX2TAt/FgtwBRpseHg40CZ3fv7UJtAyhwNCVp3tVhxB
M5nnb0VqpGe6pxYUh/lmL2ufJQtgO48GlP/kyP/G3CJtrDboKaN83z53irpg1yhvacoeKGxZrXtK
RnjAJdP42ZtDuHyBXeMz9IGHIImY+i/IgHrCZOxsIPl2zPw07BdXfHUtbetmFpJ/lqk4SJyVv50V
5tzuFHTyXdQWBTAFlEuHSIuxsEzHM+3JPIqBoDbwUlh5PKgtMEZLrLVCERz2XA6Xi3iLPrhNdulM
WdmqHsSPTxRj3dFXa8leJkr7LZRhimN63vADAVf0VVYTxpmourXzapXpwezJDRSNArxzsynEHlJr
BK97YMbX+HWy+uRkravnvsNVno25BVlli0ur7M9wtsiWU8PL8hn15BDAEQ0aPY8y951SKEB/U9x1
kA9WcztJxQW/4Aum3ldixgpgf2lrqaVr/fT96qO9FVk/BzgQFpZqJCGZyqyQjugdQp2v6oWQTluQ
0m6cqFtbTO3av2uxTmbxX4TaLQ2Sh0ecRriMJyPqMygHL/rBaprvRGs3EKa0gHnlwLaSJ0D4KoL7
lsylOQCc5a68dEG4vshr7K5JNDSq3BCUXTthZ/ReTE2h9+B638CfR0o3K6ZgJ+plAYpblCbhrovs
KS//O3k8v4mRgbaY/iWnWIteNVx6NUzrAuD76GSsklNQS03qYDnqgIN0HNXzDWc5Mp5bhm8zeXR8
O6mBFsss8qMiavp6C05fFU8tWJc7c0SLSEod4OEIXLIdB9v/95Eo16Q6tHwepaY7B+/jjiBpFEFl
G4hD7PTaf4CxefB7WkC8G97BLCG66Kysix7PHpNdy94MjS5gRq09v3itmAKOQDtmQ5KEXPL/rcub
pc/HPQrpYXC6UyRLGmhlzqCI5nmYIrr3JdGWDl6CKunBp3sYvDykjWcEVB1EH5kqoDTqalHCriDW
keWdJvil01Vs9GcrTOWGAAd9JImZiBXJli6Z5BhS2p2afOeT8cpWX1rhqPBxIpkrsPk5BcEHf1fU
ch42LK75KBPLkGjL+yBh3VnP+sRqWavQeuJ0iWoo9v7LMyvkyJsT1j6s+Uq5FlQBGWgSrq4fRtn6
aYNLF9jQRfC8sg1wXotza6wGB7SNcNzUmjmAtFIz3ifWzGCHAejAfMj7mj9z5JL4+nGXUa7vGbsS
T93HgnUbKOpMYhXZ/umXRgWrjb+qHOr3YCV3c/iIw7FshHMxHa3y1u7TWAxAVGZ+lny7L0fDR8tn
m//s9+mEVU84327SL8JksFeou2ufzcIzxmTMnf6XVD6/u6Pbic8O22B0c7G95rp4kqpAr+ugxM+I
AmIfcY4QbD7pWgqIcpqrNofbbZOl5OpQV3+n5vy3UE0dzq3aq/RVQRiTchr4h/UNNj78tJje6nlb
xw9ghsktc9hmOrLz+ETb2hmZyDZ7H7GJSTWo8ZkZSsPjkE8ggnpfSNFrrSYQ/D/wdZUTwbNEtWm0
mOYYLFhdBMLNToUYIbTX+SXol2cJl5E5kGHKOIe0TPBXuKkz6mad42JT0M6BTOVi1t3M96DEzFED
pQI8ANSuk/3dcGhaskEgS7k2zr4FC5PB87IcoHwC3F/p2BVKUfULNvEek/zpgMky/plJZGMJeI0k
aJ75xfArQjkSO2EJ8iayWsK3H2pktPz9InPxZAyKdCrQX41A2pebAfUHeDmw5lNNyp60aAhS1LFO
6m4RIn4IIJ0GCnw0G4S50OpU+NspWeq8BesLFIZNnkdGfCCCSeB4gKmFN8Kx0jdYZToStpQNwpai
o+OgVY5w9ueS/MtFoF4E/TU8essfz8/jtbzTbjlQlMItjEwqZv1yCUCd3+Opks4qZCu/ZdLqX4DJ
FRo5NOeF2reYU2zMKDO7QgqER+Z1n1Q9kCsh6eQx0QZIr9aqnW0FZ+iOX/6U7R5JOZjeSBRMakWH
MLki8FUJlnKe3wT7yayKF0gSGBVBuc8xH9O7lPRKMzAI2DprvbERdPETk7RRXb3CIHcmNiq3F/ib
tBYuYoEN3gDp+ewnRZyoDJLpGiD6vvDLHDjsYQiUh1G+F5rUC9bhLB7U+8f5XN0el5Km/1kfFpkT
MPtbC3C4oUUo6jc0dwPe408zFtK//zWXNS53RfDGtNoBYVHe9kKYW1RGbKmbUvdc1WPrn+eP2ITD
r2RD3kZi/u5fAzOMfSjiIhJ2FCwaDJxswQqP6skQszWhJV8oxSaeqgbWLv00PaFD6joYD1S7ePbu
qFAI/HXhrDO3ZNY9NLqK+JgeC7hO5+UHlhW6QlQCbbS5jhGNi3U+2uPEuVBdkHPM/nCo83NiX2lB
mCa4m0mVVc2f64gMuM8G2rcvUaUDp4V80x10WZ0F8Vo0xT38eU8lVZUF8EIpPXXBUi8BAyaPgN01
6o2S3RQbtcJkR/2MZa6cVmfhXUxalHz7KizOrBNAr0RiiTC5n2ILolYmm+v/Ijytz4vKf2dI5qoF
yYdLVzAsJWpCducaT2zAiTs3kbiRU7sQBbjNsePDkFhP1//nQi8ZtmF92HjjVFSCwGQZ5Q+gSB+h
yC8YneQ8DVRl9vU47m/pUPiXIltIucGxmpjuWxanug6gstxTLtAD5v+tl0RmBXE+BDDhk5XglgRl
1hITEztynrCDBTbZjcPkk5KJ2eB/DoBUxFVgnt36oATnaxcWepyPSIR/ZDn4U7iyFHxL5WH9hkcQ
mOg2nshHPqokpc/+eySPFr4WvriNS55eKVBQPn9waM5WVrjYjQMunHZ9DjvSCGKOtUSa2/Q5xIgk
uKMOLWDMCswxPRWXqn7OAX/Ol8YZLHxLVB3fRUkMr+MYJ7+5jImB+V0AUZmedHuTvE1Aqn8L53xv
Fi/5A5zmsaF8XoIZecnQr/IiepcRvW4fB4Z+nnrkq0gKG0UhNP4aFxHu6XMIfvzIPx4DeSTKZzoI
t4jNpOpfHKML1u/HLHuik7fgYXSBzZPeKmcDuREpjL5eYJkxBIIW/tza5u9ZBKqtkZ5zUbGDiAMK
a1ZxwB/uXe5DgJnRob3J9jFfeTTpJsjhxoDpZj135d04431mQ0aK32HM9wVxSf4MLjIOuK1UQj6Q
FVTM/EVoaesnZM3uB63SfOOU5PUfA9doOF1qkahVZKWjcfufjPYAmtGlkeArOaIgeGTkIpFiJ5RE
OTLL1g1dOFqSzxV1w80J3k5E5nL4OMr/pRZPBk8xTCvwWtdc4BIAlz7zUHdCr0OqrOdR1fyih14r
XkqGKqaNbiMskKwlVIUNtWUXY5qLHAuwEwDbd3svJn4ldIsmdCVufSXQl4AhLEXvJDDGbx3KIDWm
XGgtU9gxwYmxoAXiMCR6LhbOP5r4zVrOqpq6SXpKEMemiXZn6ULISk+VfVHh1gzOth3xtJ075nCh
m5PENffFaIGXWsrIWt4p5HooRSO2fcaI9TXacrxMS9zMW+rlcGqrjZCXEiohgTsH0MEt/pQ08OCb
xVk3xdtDzPllelqZJIhC0LbziEM1nKZFzUmz5KKnr73mNzpFmMwBgg0W1LOpIhy69BCt0OLw+d5Z
H/UTvDZtFhCoc/9afSUvEhM9xiZBaaDB7e9gzp+RXLVb6ctWcKW3yhU+UN2mF/zAkLe56pqUxp8q
3i2pK9AaR9UnDX+/3Q0qpox6Df9EJ25qHh3Ldbbg0xXL+dBstN9YyZm3+qAVRXDpTtrSTOX+bPR9
vdbZBip3p6YYoyHvfPp4EanSkyJ+SsTV9rq9X/VYP1ijlnEfB917yx7e1tT1+3mUzfYmg1NdJn8z
XAO0ykDRsxUs6gm27/Dh+kr0nVFLYEuYAO+DB46kNQz3ePxxbk70su1B7pineIdvslUcNuDA2rUX
YUFUK9cmZkfurzg9ZfXpY8sJb6qLwpBXkkR1rxNRFpitfkoXMdv7AU6k+k9onWWI7g16M4A2reGr
uBXxKoB3ngRf0aiyWV+LN2VN85CKAEgPjB5yzpzqz3J9wSOQLqc4IzDxXbp7boVI1Y6sq0Rily+k
vPJz4D/kmLTW3njRIAc2BqkLEvlNqeiPR7i6Gwy7uORj48zaPA9hIzTRvBx8UX1QtmTd7iatCTA5
afw8xpCpT6V1YaLmY+fUAUw0D1qHV5doVxAKIu+f0z6LoPGMMHLf3udkLZM1WEM7Xhf1X71fN0aB
0rsV+UToUnQ6rnOUkhnTCWR5VacQJrty0UtNRlpRnh9RUjuZ0h65NqIhIsunKlF5+o6lRQumL/p6
xtP21PjvlwJzCu4JEbevAJvKwOhnsuVxWfVDLWZMNVh8HXZlBjSGjh6z19ax1itoc6gH/yzfGgti
xEE27ONFvapOCSUTZcAnPsa6+W7iEq9c1et4vWPsHJ8GdLY3MoDzEtTJ+Jhz9rF+zNKI67Un3XBZ
Xy3kOyP7bO4odPLrDWjkbWKUiTjnL33Wvrk/ubTAZPgskrKzdRkFT9tON1/xXqXorQGH56wI1CKx
s8xQGdvoBpeFaV7PLJAGfxiGrNMG/l10fB5YBw9oX7SfRZDthpm59R1bcJJTj1az2wNdJfn5s4OJ
q3WySTHr16Bijiph/Xg/U2ptqt2jiLLkOAxEFeL9Og3F5ZL7Q2Ba8yp0fp7PORQYDj9tep7+oYX3
5tu7PRDfRhFdRmc+MeJerfaFSOTbU+NYP6DTI1PsxBpdXoCkYXU2TA9uI36YkgYm29TBIt/Pvh9r
UADlIK1MAvFjJl26cKF7oiLMSYvUyWAel6cYlUEnAmZjVf/7p5MlSSw/+l8T+TwOs1O2YDhpjN0s
FTwWv5DlDhOQoEiJfXFeUQi5XmZmjtpES4spt4oYFi1mp8ohW76rYscmt9oumz7hEPmOnr2xZh6U
en9mZYZ64PGke1jZ9c8h+0tUQUsgt3GEtlT7BpI23TSfZ+SuxzXG7Dr4440LToyH9WD1psIU4QfM
dVOYKJDwNnz9ndFJUlUZ6vp7WiMIzB69Xupp/eajaVuXMxMFVnEn2wFYTjgPQjHi20CHDWfafiqA
YJTX/247cWpJS8XUj6Nlz/MnrTgcH/fddsxRotHr5Bn85fogMWOAVD7D2mshxtlPmLYP3xIWN9cu
Mo2gSlBZkLPzwso40VnqfMRZR069OFagj6b74oHSqcKft+jqpWN7rHzLhrgV5lKsRwpQDRaYF3rm
lK0rgq/1d64MEwB++3LPzrusraJQbeyuO8pbLqToDKsFJAHtj/5imbhE+3t4kIDTm7GCiRmayaLw
8+883WLQq4jvHS83Rct2IrZaY5k1KIEXoNtwnEve43Q3zA3r3Nq48STddiG9LCULyiisebD0SbyT
Qf0BODGGYwPT5NObxRO4hmUZpMT7lkk2vi3dzcoZ0phfhl1m3gtJzmIsd2H90+/KjaH3/69fDptF
a6Jl1LqgTgVJ7yvg3o6wl1HEN/N1TbmVXbIo30szVEfLWFJbmFjPyZZvGNxhFX3JzrB0ARoZU5Hd
UZpKzU4bNAkkeO5or8sE/yJnCWo4KFE7J9J6NiflFMmPi+5bCIWCH/QP7XDBH8nxfkwj9qduF3fg
HYueCo2AnOkKsgTscbYHOHOrtklam1oKaXdqgt/apI1IyNCUgohPdzEdGBtvXAyxyXKEc+5jjngF
K5NtfxAEyVWz34+McVi7n1bxx25Ja/YMdY1d7b186F1IipTpqmGf8C7djNIlrYeD3v9tGLRoTU+P
pci+5ycqh6B3vP9nlY1onCFWV6hJTYFiQYOgQISuTFXKBQNsl+hoFJe1Av6z0N1ieOOSx38FJBcB
cpOAbW7zzPCH8E57Kc7fR0wW3Mo+WlkyIvTBnHPwxIq3NKSqFIqSpAs+UMoh4oNrLDi1GRBIsTuZ
pAwGYpibqDIbDGl1NJMq4/mDsy3J651Kwdzo08V6b5Cy2Jiz1ozgYQihpxDrq9WO2+2D1AYWTHnd
1SzVGP4tax6fLURO2APbjNc9b/QD1Cx+ZtzqEBJZ4QipHPnfeX3tqlzdWoagY9rM2+DWP+TgBmyh
Q9uGsY8p04bwKmO6KXoqM/jEx8ShsZWzia4ktauDATbcf6Irw5z6RRdf2VWrpkUSJ2O/9x/zXFxT
bkp2JsiIH4877l09ucUNqKuT2zQixtGt8834TjZDSlPd7EQ3/Q4Y4JEJYuZLS/6qwj9hc6Ajt1Nm
qUbu4sc5Kwwhx6PcQovA8jE2Zq2wU7byvre9odmyOdn8OrcVL/4iM2shx+Kgydn9ouB4Dh+5zu+q
tObUAQtNnjYmfbMfB9pMwZViYLlNwvmnp+ow5VSuRGbI742MC3hTI8QyAXEPzurv5eqsmgV1z5SS
BHar4vD7XOPGmGitAqZJJE+V/a2P66Ba/UxgfCXjIfZK+CgqLlNjIa2Qf/Ixj0GKzummRtSp+tnA
pBu6RzIfDjRBluLYDntKVYnKxFBOgSBmtZD5RCrBVDwXaAQuZIaSTtgv9ATqURba/weAdZOOwIxE
F0DQKQKAnaXTJM22R1VgRhT/hrx70/6xAH/Pl/8W8/6DzTrVPVI1CjZKtIwbEhk/WNd0P9LPy83s
v6ymRV2Nu5vIpAVwN/CDKPG/jJ3iuES8ySskrdyeZQh/teoauBzWU6A8Mietu66V50ODJPR7x7r/
Zvt9LQedxV7MxsC3VeX1w1KFDeslteZcamkFhzbV6XX7OksEN5CKdtW+j2Zrqzu3/LgRRcJ8k1Ga
ESC12Nuofam/xJgtmdb4IaU12SZNOEVvNnNxo8S/2rRm2jwOYBp09NQJ/RMLSRWrKvA8ihesFypZ
OG+r2aoe6q6joTT3CUr3H3hnactWvRm1RJSlUEZocBY13HDUmf7Nlsy3qLJ7+KoaNp2PfDu2FTBR
F+SoXXIvVoocFbk1alqlf9qi3e3u3dyNssbhf0P+gGiDweU1HXq+ivGixz0AJ8L0SWZHcr2YLVjZ
hZX5922UWMZatLp2QtJuCF/u5g/XkaXl0frNyLfUFa0IpSoaSDKLizyy7Gub9+Vft/WAAfPuRPfx
nABP0eeHNb6pYyHSLWh0akF6Pr2g9eMPOEO8YAN3niVLyZLR9fUI5Cya8MR2LXOhLunb7hjfY91A
4FBcvqzYZQS1kOVxTDHCdDP9KRZkv3XGtPcc2YnnaRqlbtj4cIpGj3NF574jFrVhIpQlH45IztZn
tL25Ugxe9wCL09lMNkz2S2WDE8hgY4E5bhBj1HJU629y4DcQ7UOgHTiUzsuD1fsiVy+GTPKE6APx
JGn7XhI0eYPs2BU9MHXOa2jTtUqgDsrAYmp+5LrE3oLF2uwWhOv0HYiDtY89EwJKXKpKK9JcHkKu
DafgEzqt99oXuOFVcf+OSvGvGFv/N4hLaA1uUrRs5nrEVRa7a7jR5BTMpcJWnU9Of4eygdMLwilg
WarkoVF+TVlejT9usQvy2vI9CtZA3tDtyV/K8kVfIM0sXlFk24+0zTjveZLyjHUUCs1ComCDrAgM
bW7pnQKBJwl07XRrcvGpllXpWJPW3M8dOKbd/G5ijPybTkk7Q8bpUZW/M+QNiaICyJEFkglOWhCi
D1TeYI8wA3wWdz+LZwR/93W7FFDwUFsDO02OrHqHBatfuLbxMD+iLs7W2puHCuqMIG1sM8q+0Lbg
MDr+e5SilLFubJe8DbzJ2g8Js9ENmnJqAKAfXTIK1P5/F+45H+/B+R/vEg3Hecjcgm9FoYbB+Wke
K9CWsUo6pilya+Z4r41P90CXBPFgTypFj9A+QXOBYNJ8mA7RAkbg+3GZBRr24sgZ9nR6cACRMnz0
QFZf9CkMwjGyeV1A0t6HRNsujMPfQUqV8lcPtJG033ASnOwUpTDe4WHKoBlaEAoa1b/gNmrBkh5P
Y3J2fI1G9CarnjC2lcvd93Wxy+EYITnsVpa0SrMRzyq6CsRO0R5eexH87nv23BZQjHiwxaTvPm2k
Z1zeh+nqAeAuhp0qAaUcV2rjQBHd/oX/hZryuEt/LRkI1MQWP2jaWHiWQBy8fBPE2jXXL2RB+BhF
mY3aEIZbT74adHd0gyW3JJuw389NvaRgglnB5Oxe9115RO3BiBRPe8l9zr5Gl82NtceHdbvROHTT
O3u+OO9uWniXdb88qzCekAwesenL1Tuf3x4/TSPI5nS/ILZFWaFdKg8Xs+ckuSAOpQT8xoGVMk8Y
ivzT193+mYSNQQW8cXjir05Juik4tdq9ckxKkmlOkYGzTcF6pElNqeNrlcUfdkIOoHb6Nwz8bsIo
1QaVS2Nc1OwQK0kx+Obpj60/aKwEHt0bHzhSsQ4HDKTsp6yeNe0D+lonWU3OdL45+u/5xnN/lQFI
ALprwuLwq0iWMvM8Og2WygG8nOYoIfDy+RyIOnuJe8MuXcgh9kUAbmtbA600CentxX4hk/F/Zf/Q
vJYcVoYFl6TwXPEScjFPDhpARi01xsF8zfkeBn2DIts80MoJLOskhMgwVhG4eqah6EQfZ/2D/VNY
KeKDYAf33XWS18tfpgzsPNpLw78jIo5MzmGNWOXwxWiTWm7TxIBIEDX9JnP+xBlZHhqSOdIqzRwu
oUI3/VgMkYp5A7JyKIz/LbcZRT26gPpNXr1GBiypIaH1uvlVkm5LBtV4fy/R/Gvymi57JV3j3kux
1cqnD54roQnVWnnt0jJMzmpD+SxgrnU5Xu5B3zJEYRg5HYXLBtzlsg5IxnPHJObUnMatxpD3PGjd
9pB5bBjDu0p08nSp+tMxaNv57V2jqvJQ/p26L1+RLYzXnLeWcmzncQjnKf/58aFho58DNjJquLgS
MNfSvu3UtkbX0WkgbrSIODZ5+cabvlBwLnAYta7RlGUVdMdIIVNQw3qa03LwGO4anBuPmpD6nsdc
5PKewFbxN1Je+iC5xW9lA//iCkJG0zq4Bmom4AW+F/X+ajIiMbMouyp51jKxUgnwdN2dhvk2/vuC
0RWli8HoLPKmm6lsg97EU7KzodwNRDakrLZuBDShlGTtDFvtb0AWF0K2uHO3TfSxKWf1nyM2cowB
R6XxNzTi6RO0yEz2pCHrKGQp4bPxsKsWWqVZqmzXa5Z/KfjJu7x6Kgd4Diab4oGSMoO8EGvQUYD6
sPUM+naWx0zhWYNfQPl0qZNqhP3uxAwj7hUTLsaQDMb5gJJh/Z/4wpW5J+W3Qal+0KxGEaXruV9P
ZMf0LMQw86u+ptJO71edTLi6HRbl/RiIbjSdHQrIQOopxZqF9GANQaJfd0GL/0x2aOtPp9gSHQXT
buSg+Nr6hRQLopUcpj7vvpIqd2Ec+ZNAAzvaQlmheizNt+H3qf/Jy9sWMY/S6ibLg/42gnQGK4RN
Kv54IS+2xiW9kx6pdRCt2cmZ3KfQAy7c5gnwjp71J9IW8aovbFcDj9lKjEljtJXOYxjAIktMl21w
aN3jmEq7UApflDclEE7lxNc761qNjKx3eRubl9GW10pnLrj8nuC+Ay9fEw6x/K8AMixwXmdBFixr
WBLUrQN4mew1xwr9CAn/2TQ6bZrfuPVNApwlFKlJlqAbXP9aCCHhvnftb6Bm9WmKiLkKpX8UXRKi
sJE7Hj3SIai91zwknPnhUVPopxJtbLy+X4AhDGo0smfRvOfOo7UqVlZpJFGEnPJ2THQkj08tJLZ7
NRmAAupF+sVVzSM+soqb7zn0E9GD2N2of7jHKCYjF5LmrwVmfY10Hoe/+beZEvbKti2YQcr33T4t
jijjALGXruOC0tO+FZxcc+7bqP6WY1eiLZ+eID/IkQMBPxsU1KyBs9qRNVRfbzi4yvuECuuFFGBv
DRtb344K9biIOVYROSVh94cS4cmufVp6/8tpqrq3gwFXB+dJHRjNuK286+sxrdeqfbfrnvfinw8l
k+3MDQ95eu24439gwvIun+dTqGATZz3lWzLNKcWi4BPky6Gsx1TzqdxyW/pNG4FjvBvgotnMRLiP
Ve4hXJVl6eGAmSys4T6znfWb32l5Ums5f2Tf0gnD5Sqb0AwnMl3ST5+Wbj8cj5F34f4SduSkb/Ym
9ssvTi4A874iKyXy4588u+CTxUP44bYyhOZc0oVlBUcZRxKrcapAgYAGuWWOkz2BRsBqeopC8Oy/
ts5NzX+vkCJPKZeuVPpZcVCT+A1hFFOsCPK/iWRJyN/TsB06EwCeOqZB/KS0fgixVzWisxgcZpF7
UrdvplYQQyPNGlNST7BWNDiomtz6JzKaxSsjEwRwo/P3oFTaelULBfHS3bMO4ykaGkkON+MKwQyM
UBPwu4ft5en3S5tQovl2oN2IvcLnZs0KY/sISdRV5V28JOc7NQ514L4IXKBXGW35VkTOxR8mWry2
3a8fMCM4NaasedA5D3AYRkpi2C4Q2tmeG0lIIgiVn7R+hBuwuRcaSN0mSImT4poN5sqaPbKCPP1u
XbXIUXIN2Y2hz2bgFN2y2bJl5NyWG3+4yNBMXazjTX/b8gugdHBDkgRfM+6Japcb0nHho+HKIYCy
LrELY0gswo9xWxnrFJJBECfxmgi403iUAa1hjuRNPr3KYfOuzCAVK3tMdaXeTZcWOtF+aNW05UDm
+fPuh2LZUVcgHzwsmQmpmU/nahZoU/P7/uKx6EqNOLGrIGoNM6Gwc8TOxkblAupvqEb0aBNSl+Mh
TjfILcCdW8DFgJgckS9LeZhTgAQafdBlpWU7rnuVbieBw87RawY/rh2nJJyGSY/8l/3NDxozR4Zr
V3QNEs+jt8+NmD+a/pIobtB76BnmPYyQKoAd1Xq1dEyCr88xgZ5U2naYBpx1unpU44FDz4iwhr8z
mw9ekytkib0WM4g0BJmD5IxsVdNkh9U28X5ICCWcqV3C2j4Z9vrDYuAsmMbojzMLdpIFzFz59Ikh
ZUp0NElbIoL2v8Mm9btvSOabmwuqNLN6kM8SRSitD26kDcC7yBFHe36YwF9JxUhh2z8QdTY391W3
Vo/hfC2VLuop2QrFCfgYjM0SaRKlJ0jX+B/P38vQo7NI8yHgpG3ryavM6+rVnsKY53bQJ+JdKR+Z
3Dhli3TA25P5tD76Y26Yje6KBgI9lTu4ZdQL8pqXJq6u0L457sSE8l3rKs1kYiFCnMKVPVcD1XSJ
WIr1Y3GykXX8byl/A5bLNbqPkVWVCu0jZu+x00NbTWQtBod19+K1kyVczFIIvj6WJIUaGIXEnPdo
zzqcn6s+xVKbXlEyYZ5AUmgOj1UUjnnSiAYr/BjapO3oCqlwFK9jzj1ZUk5baVhngWKbadRQfomB
W6ltyqGwcGMUprnz3ymWpXm83NrjU2ZWxLWbzKBHr1BLupjuWMqNM1xYId4YI4bmO5f4DD4gKKPe
kM2RCiAojwlED5I9CfFC9phqduPVNyG2woCpKa5ROhPZjETNRalA8D+atYaVcbnBPNP3m/jYNxUp
WNOfrCgXO4HsDkvzNCF6Ui1QCblIp3PDJiRfSa9yQS/I5iXecbOzr9OUAQACdtwCQRtbE070EFSb
ridygBgttx+LEZeFzuccIt6Xr3EE20IcKLHp1Z5Z6WV20oJgcHEnnwb65WxwOsBukwhzYPTlQzP/
TkFfu5qPzYZsl8w9ocgzxi2VWYEoLp9lOO2YGHqy06zWpW4HAkl1gKri71HXIo8cOWnzf5Tl3ucy
ubCSOnDZA7BIorvT9JBU6mCliWwN2sgWMmtnvjTkT6wnxGV0ubX68Z61zfRFMofsbFWhRi5xhmXb
M/VFTYhMaqu9m93ZwVpm9TdHNCC5iQ0RJFwT+B7wvM2bO/6I8XaWqc0IvKsaeMrHtwrTrepXW26T
KZxfx1HeMelWYEzNTOPw5MYa7q9uEzFEpIGsD43ZwvhY3g8CsRTGyYNDaqWxGN1EazY9LcW0QCh3
2fVQDV3xmcR2Tys9cF3VflZU5Y24VgpQucr+g00DgjMT1rITaXsda9gr2EVdRg8g1SptCu6p4nH7
bBLlKgFwyGT+vJ84NhrkMlbdgVS1c2Di6aI0emQwdyytXgeq0dWW3oIYnqRNYpUDbdJaUtYAyXBl
n5AYEORubm/IM487+qF1z0dZCSCMTzEFmE1wrFxePPzGaayx4DVFFrT1tXoQc98iynKiw4txT+ff
xTvuCWS4XUXO/y8wLLWGzCfRLZCPXDaUYlA1p1HFKocWGpWVNCerqN5wxXKgT4WUuZY2AiYWFifs
rJLu9Qh4yFH0CqfY8eD9NOJvU46Q6lqoGxLj0c2x11VGKrx/okg2SHSMECWbR5wtSio7epcZupYe
zFIDu1R6G4ik2fJ5jwd/dfe5ALdmaBmD5iZ8xnfkr8hapER6/gp5JzDobwi1w0PCnwaUGF2phmqc
frKBJqPMVGkcd5xlp8+qvyT/UeXbFRVRdKXmCe+67e2jibbBASQyU9JIPhSaJ2Ymqk+Y2ZKINlNo
bR4fQIWAUEK7yL8aAnTdu0xbA5uVDMWpr1zUY2mQwc2xGN7X/yvfhZBPk1ZFQZr9AR/ewe+n2T93
T4xJmmIH6WlUOYJY54k2qjzvsocpBVgawFi4d+BqpS+ilH3NM/phHW31/EGi13RQ8Y6iig1rx2P1
8xlB0qfkg6lr/NOY1JuV7d6it7dGMyNAiFHsP4Fq9mTW8iPEvRDsx9bg8op0kHg9gKmgPjYXCUIM
LTngObaD/pnP8gOtAB/Wmy4Pok1f16oc2nYxKGtUsSkKzb/gaJa12Ed5W455r3Wiak3dL+ps0W/l
YDcK88/ZcKyz7VkEAPAVVcIcFobtv5G9z4UZ3geXz+z4V5SR1kDQs+GwsxjLGTjhScepc7F0zKb3
6n1OqiVKz23709lMc8fPZ1T1nkQy6e048vgV5Q+bH88zCEr9Vl1DwkcEFIF6SRVYMTmWVIkDEFVI
q37KSlOhVzjUhROXAPGfdOiSK7UW7JmX91w7po3wZr3KSzAe2uRFD/0pksxff1TASdJoCjQP5YFu
ArFD0xzmAfvWsE7Gt/t9NPM9I5hCUoCVFDPhsinlIOc7KgRAtFu2O5UyTDirlmvXIW6PS5tgW9MY
/t39NmjZZy5/OIE/bI0YiLFWq1OpFa/aHLBmUv0Wi0U3WTCj2xwL2iz16RiC6ghKRWIyZPXxAzAN
Oh6Ii6vzYmlboYh9+GYyF/xXyKMLXGCOPAbUBgO5npiC8jHEV6x7PyU2fmD5OEZXrdpWAGw+SZvY
xf6eJ2G5IoDt3miVe8Epv07KicCaEiidUFLd6FrzRGOz1M37VQFlDPiUcNSh1XUQUqB2aaKKDE01
H2cwQ3Td5LzD3YIR4hr1ijMz2AQkKOa0dOcXvSJ8c+UgNL5dc20yM/QeNF6kj5kT8/P9MA5atdZv
+ygPF/ee0j0EKNUyhIDHXDwOlYdUkIumoYfLdhGMgbXi/hduAPY8gbO8eWRKL54wh0cAEineB+4Z
Ko8qQ+Q716w02pc20b9EOhf9v7MGsqZh5UNm9gqoDRqBnT3e8E26TH4Lc7x39s/2WahqXmdmJcPR
I8AhaY3piTSWN/7Ym40SFGbcTwRoJl5Ee5xcy1zjBlfdszDTbvVFclPESpO4obAXJyIQBzD5uAOh
EBFkCLQUh4/jrZMo40r1o+EsNfnjurhZehOKgtMnBfynaDAx3zS83jDyaQ/qNuEPfdeyvgr0LIwY
Io7SH1zyy87hhDsZ07XZOpjXJfkDmrxO7UU2gAyDIpCXnLmssQwMlleQk/cr7TsTZGwenIh0MD6k
7AWGYkYxc0ePNfOBp+y0nqIObo/bwtvAek3YgL3qbXAhWMaDUitC9CAs21Y3CfV79g/PhoFZnK8R
lQYItEjnb9eNNCp9YFkLFXVVfU6PQ6XX6Akrx6/ifW7Od6u0HEMjSMPhmDGFYH6fGfUBX3bxwxfc
Vtnol8/c6h0w54DNvOpQ+F26Cyi2d+dZuQ0Yf1qNy7/j3eZ5fWSLIaa4dj76w/owjTd/ihxIoZeC
e6aHwtQEvRr8U0LSfLL5vWSm8ZEHRmJOLPtv5ukPwFhZqW9W8HTWP4oOh9j02QRpGbkIZyzTBOIB
Z+jdVyVza9ZWteQUQg+iv8NKvnadRU4sKtawqeQaRjDnom3OJ/PJSwEVKYz0AVjGUfGnAfzZLV1u
/OV2zFb0DXqUFtqEFqIPTG8xW3+n8lhovpJhPb6XqeDUWoWnlBhv1Yq54ndg/ug5Nr9Mz/fjAQy9
85nEnKhw41Y+XiQ79RZs3XpQ9phb0dZLVDf/PFZV5K7TGJd7Oc/G0DBZC0K69pJwE5qVEpid0hGl
77HDQ1hZhrMCW9Xl6mlqoIQzzjf98FWnc+c4KUworVVRnlBmuP1KSHUAcSc0du2n8JU97rBzgh80
pgZH3LFo0PE/KM0/8vpxipXcp39t9vHl4N0eRcUobn+ASlEXbDqNaOvtxXqeHO70ZmHx0NO8aQzh
P1PIawapjCmG7D+G7k5x9OfuHlDr84JjD2LhdEFZGx8QXB+84ye9zf6Sqli/T+AeSPoYf/CjSPkP
I5BS/NFIe7TQHTY7V8HPdQXfm6GMBNfyV6PFTpGTtaUKLtiBjaARb94BmClo7KM2hAE8bhpgnOFt
oBYzBbxwTw2mhNIwBs8z7EyQ6GEO1uXAhCDxloaubFMVfXmLZWnntGzBgAQhRlSlvDy37fLSkOYd
dk4RgD6KrU5/01MQfyr/OMq0Ro2Z1eEZLu0ZbuhrOhl5t4b7UdjoAjrQzfNwe78m4i88m9ppdchh
mNcbRUmfjgiEBiCCoEHuJm6E8kXP+VhY0TEZWi6ZkXTJVsQItbEB5BRCqSpOdzSKn2dUQcllHqZQ
HJegEARDDWvmmo454Gh7aXtuLNaCkTs7chmXkRa2DLLaWRI455avgfZ7nF5wrncYP+n4T7qm2Xmo
uOqQorXO9HHkm2hosiI3znBQOOiuKa3zbnB2+3Qu9BInNU4FxEvluhhRw7aM3s/YumYad9ETtBC8
pM2UV+Q6iYyFpaLhxVBtaKxsrD8X8bmMrCsSW3Z+S3hWjF8BDHTLC5VDAqXiW0EoPUrO6Xy8B4cJ
DIfeIzEuvM7+K48KrcAOLVNQ13ZzQWIIDehyyei4eHPQUm6KJzvwHyzCv2zaud4/hCuhzVveQs7v
fAyc/CemScdGKgXBNw4qshxg9XdzuoZoBttsR12V2oortzuMNq4zGs/LeDuP9LUTN7ZSW81n7ltS
ryx+dp6CL+NJkxuPI+8Pf5AvvRPpXFcdq9Zqj2aA5ULhteYL08EbiEvGVP2t/bEs5it87QTE99NW
2JEPquKbLBNXcLbduIfAuJXXSZM/dWp9XPeEWFLx4vF6KNSyAdqnVpxMeTl25c9hCwBmknSad1F8
feuAPWFANbxr/1naDFwlY0XY8AHg0gKP13x0ywWhPkuWhFbhiHh91dTC8rZCIfyV9walIIf2hzux
u58KTM93KKv37uMV+MHGUaLnTMTYu7tukWXncz28cCyQ+xUx8TeSVWJrJm8ln2cq27LAPigL0DxN
tSY7VZ55DPHf62WDCeCNmeaxwhEi6FxhRkXKCgvoPXIc5oNtHG/7+EByZECeV6BENgX30uzlvWzy
IK1LGRSiN36ZlJ7yvaZVXjmIL6h2czmIl1RrA8FglEEg4EqPfGIXeZ8fY1x5ID0bYWzJcHp0pipe
rS9rBhd3KNtPEn4RumLDi6pIbD6ti+kUa9LjrnJ2ouDST8ta5e5oUc0yWNXj1CBSJCMyk4jaqmSy
djDBUoQ80WG18Ryw13nPnbj4EZ5rgm5KeszxT6M05rG0FHr92uVykgtkRUEf51qFUijd3BNrNily
+9Q0pN/8bSZkkKQ/y45MCYGwjpPo3pKYGkWHkDM8szosjKkOyrxTwMF0UlWJ1rZY79XCWHMW8win
nzxbDnkkaP+jWSYDPlXHtip7RFeacOImhg0HglhCGH+Of3u76OnYVsaBuXW8Qd/x7P6njU87Sld3
YBqu1oPVErWZFJJEHJso5f3djdGUCEfqQ0UeeX4mkz2ifQ+eABBUap26bRk748NKQ0UBITkBgpc9
09skdpozfq0lB/03NygbZifsXs/LGat43227t2Bf4+eCKb6sPpwp+rSRLw9p4g4kPHp9D4Ze7Z6h
16pLhg0dS9Exypu1AXbcFoM7c5dQvKfaAtLq6co4l61HMd2uX4Did0ztOtFx0Bngd8LANu3CjYG2
aOressvNffWa+F8dQRUYmyhX32XfdMUXnaRZMx7l7qm7l+fUSk4i8eAGY3Dp+B1REoLYD91btNiV
VUY/q78P1/cYzYoHcR5MsPsHo7OmBUZP5xPiFFv6Ycvee6sI5PjTneffVIsvIMIBKYx91Ms163Wh
S03oWVnEIJlgIud1LyInXu5SNrsVNko6DWS6lINNrbxkJQii4GDN4xnN/UuYsKPVKfLR+r2hT1xq
vjfbyVk3DDsca97vUOG0xXAITuocSL6lcWyocJY/F6RbniY3kfNxUygWJ6u6Bl5/gtZEnsEMW4G5
1ZQUVd0N6m7iarbzRBW3rZl6XyVQ2gM9XgHUiuFRJwKOB9sImk4G7LNvKylye2gNBKdcI2Mzl+Ge
2drdNdzGR4gl/F3bJHyiAahGX6CL+rQgPJGuI+WkcEQyeEsPbkRZMwnHuO8i/3LHNY9N6XZaFClR
JFw+0712t7MisgqmyNa29aoK5UKMcXVaQHczU03eWCDgmC9FwQLtJKJJ59XBZkusuNxQBCa6jf9u
HSGs1qFMYnndf099m6j6gqKZAR/PXwDsLyKrb+n3lfUUmBrlV50N7oFyCD+yIwLRN15LOlBeUkmF
/xL8uNIP+LFRgWFND+r2CRueA5ukwpr8BnGqOXB018kfFbpOcohbB2AB7osPW/QhSnkcpvKISp0X
G1k6FWyU0FuKABvVMjErFucRx7k6fWmJntDOVKzxwoKZkqsie6Bu1RHtoViYhMUyMzsGpnmp5UTA
qKuQem8Bal5Fc1CWmOBZK3kLHkKLIGUfp3I9aGlmkeXETn3WzTR/mhnh2osgvsVD2EaIBiUigFTF
DDJJKv7DMOYVPsLsN3MbHyZY67HkmPOR5wgyTIY2yKQl3oAH6Tk5mmaqjKEvmuLtYx31NV9n2Wq5
RmlF5HTgVyQbwxDCY1LCza1EdJ9p2mvor7kkEqij9dADFwiO+ZdKXZODZjo4M7Sj45vaS94zF42g
aBnMFR8nxe+CBoErvIE/w5R+D4bH3Owdy3gVCGZu7w16BLS00fRopI9UrED0ZEZrDD7WB8FIoaEH
l8/2deT0FEx2Tp9tZ7aCwbN7f9Hh750syZ3hjfuzoztbPXTxppt85uxX+rXPwvzvA7M7PI+39/BE
bKAl8uv16doWsY2mVeuJfBADYdum6zoVEY6KtIpE7XCjaWDXqz9aRHeKNdocNPCY8+BGalWnSKEw
4qG+8uy6nbWVdOTkJ2kZXWvJogflPBSx37Q59WO5bicFOpgT0W8XkC6Ilurz6r8O8t2bzA87K4Du
enjcesCNpEWfzOjEcXcAuVlnrMLqW/OdzhdVNfcHjrDJMqPjmLuX/yHgS5ZyGDAHilJ2HGa0L3U5
4KPg+OYWNB5t8Sdx9Ir+WZbG1H0Gw9NI1jHEK+ylsI4Bg2/PJPbjthN9ErUBV0U8GFHCt/cbxxon
FYsKboLGPj5sEjNELHYNasI1MSWsJNJ+Jn92aA3j8uPVDeytXXoH6UqqbyTk0Ec+DGjhPTz3Ua7w
PS8+noDBb1vV6jUfyVI2Nrf/flM+SkzNwh2P9LF7wb8DH8b3ZQBNcE4tPyzVZjcDPqVQaegpNJM5
XbrXf6yX4uLfEU1HRrqNpj7fEGk5ZkheNIHg3OCLh29CwTHhXdxBFGrkyAVPAO/usSYP0FVexeHf
aht8chnkVcB2VqCbxBkfLxXJ/nlS/5RBsjcxYvOMsCVXKFCi7fm0ioDEHBvZcnP5QwgPeR6mgVxm
e5T220GeCG5AIUYqcGiDAsbcxro77o7Zp+GgxQ0iCaeQ/9mi7ep/vV2T8VhgzqKh68nQ7jkGI00s
259HZHTwHNtn+nFCt4kZ9VocDJZdVky76ac6U8ThL2rHWWkmbgCrJtEOJjydh18IkzljXvUf71aC
rW0FvcVLV4Ame7rmTAtfiNSd8aFnYJbnZ79Q+kGO1jx2NK0XiFzgPO6Zs8ui2Ye0bVKnDDJSsn8U
blsLBiyuOh4YOZuSAT3Zs9n5MwkU4+I0PmWx0SLJ1ox3PBUm+HFk8huLb7Jyv+SQFwhUrXH11Yjh
PIdGYpPDOH8n9/hTN+zGDaX2nNEYIhgN6cBqgR9qgALQDUY2O+4U2dV6JDQVuGh/ykbn9VU8olQo
3NBb+lGBHp6/jsOd+K1YoT9ylnEhKJjfFQwhA5oBB7Jy8blZ28W3QrgvoafZrCYGxn5PFE449TXW
9NlihM/NoECLDZ0U66YyMtODbtsR/BqjlBVfUmgHighPhiqTTrdlWUMqKggAk0mqYyNnYz8syJrD
tyuPU3579sZL8WFPkSsVJXQIFhfF9aBtCgTJD33vLTDrRSx28auRtP0o6nwWaon6cWzdQpWT8o1q
FwvUYlPrVSlGbjtNiYpIqY1A9H4Ir/fZfGQ+4iyxmGGXgc+0USKG2tO7xWEE/G6jGPwFFAktutST
QggyId1BACMMZY5BA4Vc/wYy8t/hU8c5h7l6Qcn6fM9HhOWXB/pp5hYR23YK+SProRrMnzT4QbzZ
9++YkhLdnlH690uBaB8t4I17GRk24CksdW+N3UdEnteJ++QnEYtlv4xjIZ8m5MklCe+qucBqFOnI
AmsQnVoJuLTu3lvWQPTLzRCOpPIpFmql1DEi3ksPJNbEVUlLO1vaZVdEORh5G4zZLhXvWvZ3fes0
N4jEfZ336KRisXKgYdg9XmlY5WjuFoC7XoikhuIjxQ/XTaIlBjhlZ0Q6Sk/au+8z0D8S21yMScwp
aSQUzo250HAQlPCAkrSI5TTfli3HzEOIwFHlshbdOtTKeL8/uZnExv44996GEbwjgaoLV2h4L6tf
QPdT9h/UAklBgc/w7AhIcNCzEEhjXf9is5SAtkiL0eMrlBa8Z7EU2zdTYK6RXdp8LHqjawt3izKl
s5JmH/CWr86F3wIprwawhyu/v/+DGd+6o1z/1KvUy9Cageun6uJjrmfvGAWgmvWIVm6o2Tjmbnvq
euDDysqVzKNQyjnDdAA8nCKFHnAaK5aZn00VW6JlYIPfx5RJd0H+LQOqKVHq4hlzxDraMLhI7LqG
Pbd/TGNUbBE1wvFg30jZImbc+eOM576i6+uaF8Uq2U9kLAfkuw/FKqP6wNTZ2TlewBSnt6kOtXfe
q40zyjwax6YEkNr4SE5tWmnEo5wExUzwkrQbc9rB6hOwWNE/LZXTKsFIcvIgMiY93ZlqoXRVF7bK
VPaXmj8avkVOkA2iJe/7siqje5KLPl+LiuQf9I+wLIKR5P73t6JoUak5ZYlYkphQuKzqxM8d0QY+
9clSrrfPmEFUdRTITLL0
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
