// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Jul 15 21:08:33 2024
// Host        : Park running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ spram_2048x32_sim_netlist.v
// Design      : spram_2048x32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram_2048x32,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51744)
`pragma protect data_block
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
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
