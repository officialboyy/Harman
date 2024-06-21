// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Jun 21 14:33:12 2024
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
