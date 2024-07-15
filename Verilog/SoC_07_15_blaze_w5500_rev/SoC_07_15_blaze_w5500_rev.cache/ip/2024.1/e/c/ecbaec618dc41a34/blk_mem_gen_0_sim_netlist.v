// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Jul 15 14:02:18 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
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
