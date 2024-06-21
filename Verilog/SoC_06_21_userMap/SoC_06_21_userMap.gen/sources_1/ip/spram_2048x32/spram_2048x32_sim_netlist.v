// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Jun 21 14:33:13 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Harman/Verilog/SoC_06_21_userMap/SoC_06_21_userMap.gen/sources_1/ip/spram_2048x32/spram_2048x32_sim_netlist.v
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
C3pMu8hTA+xfN7JsL+Wy
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
