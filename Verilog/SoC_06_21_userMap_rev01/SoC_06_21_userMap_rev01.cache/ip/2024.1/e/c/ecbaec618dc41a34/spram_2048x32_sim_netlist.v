// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Jun 21 16:12:05 2024
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
