// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Jul 15 12:07:12 2024
// Host        : ST04 running 64-bit major release  (build 9200)
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
