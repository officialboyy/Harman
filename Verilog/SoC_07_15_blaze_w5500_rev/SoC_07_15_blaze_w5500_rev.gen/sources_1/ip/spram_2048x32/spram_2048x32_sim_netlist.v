// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Jul 15 14:02:18 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top spram_2048x32 -prefix
//               spram_2048x32_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51328)
`pragma protect data_block
H+bUDJgx9pmgveNaGLyKUS4KBx+kK9n75O6zLIkVuusqrdyMLACJsjgPdOGGz70HFglzDSKo/n89
mzz1G6hvyxWWA+mUuUmpMJejI9+aGvrAJnsPn4uCRbheU+BLCrVg8IKJZY3T3kFG2Xq1ezPaC4hw
jmYJDjTb2FOXfxK4ibZtpGGXhZhtQYDz0YIFQFcFNXuz98G8SOhTSVDJhqmVWgcbxsEsXON88YJK
fqnxEuGPllCa3ZbtWUlagZL6R3aSDrh1ybvyq0lAPVY4upEx+kCuXw4bQkoGVVuRVZL9d3WCLvKB
cU1ne2MnM/yxUHzRJMbAo7/ywUrjSImpU6PiSfJPhslVCQWUq5AXsDZ3TDk6yVvCHLtk5o9fGmxM
eVMjJwIgIu+Z2Lr6XO9vGIV7Q4L2NJ6bxNI55nO30BUVb7kGEjE796w3rbuGb5ME64iKv/ZUOIc8
VO1YEepEtdURFLVft8LD4sKtktdIcnYc1cOQo2Wqf1NKEp9tLBrqHQK9jQt1ZDKk9DIx22oVXdVn
A+qabvzVT2FHKC8iEDVbobTLZzYkGEk6mcG4OEpLRY6TkmeHrzTgJQtSL84MpukjVKOZ82xfbSUI
IJYP2ws+aEdcDnYMEwwfJ8/jO1bRDTMHd7RmHBXyRyW13UPQFRttDdY5wEafjx8kiEql8yz//AV6
4fTnsQn91zDIJyGRzvrmOb/ksu0WNm3oyz6fFGSBZ4JCeyflzYJ32TaeE3OnlIfamfhmM4DmYuzB
FReZlK2JH0P0hqpzStNOx+rN/04wVRi7skOi7boemBKaBNqcQwdmvWZaJlvSGtXxsjScqvods8QT
0dpBjG33bIemupiJKHb1qCbvmQgL1M2WohOLggaANce2jGuMB0XKYQthyBeQPRgyxGon0XZQQs+b
peni0EOgLxY2AHo1Us3Tqz68hpIq4A0c5TvbFs0Bk7e39T26Ho10tdMnXco63kCHvs0NXl2gNrkB
nKesANndjogDu9VK6/aL72CnA6/348vDlcMeAfTVn5vjUaitye3ag5W6QISKb1+JTjpsnhYxAr1C
d5zZgpE3LlcBWy6+Z4EaYzcWVYheImvkex346C2LR8lAoWJCFJTNgvwdo1cJapncKb9qXuB7PLyH
bv5r2h/ldAJrYSAqDuzUZAAHsGuErH8GgCalXQwThjKg0/kFH4zguGMXH5Q51qhCqccK9jIj67H9
yuPRW76thhhqX0fOmQqsulSC1Q5s/WB/e3rEGT8Up+MrbLbayxQ6aoGDQWyIhnZX6FNaFczbQEne
1uTV2raeWYaFID+zglypNk/PC+U4Jn/tbTqz+43OtoLYsekTFS3QwwA5aDChbhd//dVWKtbLVmkU
WU5URj1dym6xpudhzjFWeA/4ap4ai9u1RQ/slORH8pjuvGxvzm1a9sYfEtT9vruhxZXUZRVJusRz
q/ak1TNOrNtr+qBkQBOvGyMwkMxImciyGiOFY4pIpUXu0R/Y4nc8r0lqLLc7e4ZcYeQ5pxRgRpAn
MMLmvGuetiKKVmAlcd22M5BeVazoAOVcWEiQE1fwGMwaU7BEkYD+3kGP/Sy1I7Uqsv9yBqkzKwby
up2anQP4QvM+RoisSjv1LV7VbRBHBWPOq6CCQXP72BL3KPv3c20ASLqWGjRlYyUbiXS4LKatxNOC
BI4D7JnrzPQA/ozRKophooY7NaVnCx3QdkPZV+G4otnxQaXkioX/Bsm4L310z/tK4SxkAJhz4qUl
IHxXCkpZSE+8gH+dwSs/ptopvFrJf2hDdh7XA7k3hEZJB4BQ0IXrv34oysrhom7KId8g/Hu9eKzH
klZ+p764CGSIu2Hwe5EKf/Kwbz1LIyHDqU9QU4V0ZFvImXSMI9qdXl5f+cxSaDAS20XIhrMWjat0
0UBq1beAImhqq3+01XvPNvEoJtP0d79my30w4GOZPt+G5f4z3FUBSQY5y9+0pVq/P+m3TQJ/QDzL
0l0J0nDnpmZ3lNEjoJuF7mES6oPfiakWMskluN9soSqHKkxUW0irK7U3zmaicqottNov+XoCN2le
nz1fwnzOGRm6qiQv4s/GDCSf4ddCApaHr0KENeLlujr11Br5mxE1xCkHmHBX8wE6+Uzdbk8hyGb2
W13chOa8T/lLOUOK9ls2qaY86HSad7rHl9hSY8f6IDwZ6ExBCj6JpSjx4ehYV4klPj6tn+dXf6V6
t2RhfsFCK/417snDGDTTPoJZILiJN+W7jFbbMwgwhQBbDrBbQmbdi/PgFeIfyO/xjb8ZqGUCT+bb
dX2ozqJhV5S2qVAlJBR0nMKYLgC3iuyq/eGcaqY8zBy8YaZtG0RR3c/AleaVYSmspJy4Ph58m093
z0DN2XgW8p9OBuLj5Ps/kqMijxgDKvjJQQPRQtWNV+hIYHM9/HEPp7Gw65HWfMbhLDCpmSfoxUW3
0iAeEMeCX7w8v9TcmKYSvhmt4lbhpG5HxMRqK3OPyNqyP1/hahmAjGRPL1XwvPCLKbYEYgmpcK4+
ANv2SXFEq6D2sTFWBlvX5LlQIEhWZ4+2/fvpEu/N7tXgKi5zt7Bf9VbmYD0gkMDyrJ8H+z2DEiWE
pe83bqsBaGWXYJkJdM8l6gaPrRye8dbOO111V/cIawAkf91WjODb36eGvppcjxx+BeLa/sLXdyRs
aKZR8bO6R8fRFSh3I/72191g8Xb9w388dGtQ4vAtpgfeGu6EtzEzUyw/M4CuhMrDIzzeiSVa7m0E
aZ3i/qwkbNXrnUiE6BBhERW40o+rHSQOtClFokk08GJ46uQyZ4vvv48ggeSAtHi7/gVBkLEavvAb
d/LfcscjnSQKte86IjBnjZs1iiS3fC0K5vBWHsLybi4FB7yitTm3Z0EwGT3tDqvTofKfSs6QdMRm
P0hMcphsKHyLTCovBkfeK4UUagDXZX3hYkgfO6KopkTkWdQovt8WG+xMuZPbbZa237Zs91ME1zDS
yQO+4hZqAjqScLKWfazTkhuoDD97fVYd+Mg4H51u5UglxfJnaSv+xyBuMIaK1T9R4iOXsGkg3ejc
u3rgAN/aqbnapvEoOiIlk0NZS60X8NDHDNSwIoNlFHLLJHgfCv8DkCL1ScldazK+A8SaUf/QOWmB
Lz4bPFmZqfzgv9IVI+xyL7lV99F2UdcwnGQDqzHXrsFWGMGq6Wx3Fzn9KCMa3IavLNVmkzXI/rbq
z/SCt4b46gvVpof9HA7rx16OB2I/03c9PxKzjkHBSaJ7h9LqAMkenEKYU+5+B0mdza+ESfnaBKPo
LxYYTJ7KzdSDC2/fF+rbV4j/MweehALnH6QgFbDgijsfaXIDiGYfA0KI33Bue9qRNmf6f0lKqlw+
5tPuyzwgkmZPgcv7c/XVwtBm8Y/WMVHnQRk24zESB7oRJBQVgoWE1Pqga2J2ouunZnZGlZ0RfvZR
kCZb3ze3f5n1LKhl5/DUXJCwBdJqW9RCYiL9G+sgHNS4FyXVx2GTYRZxUjXoWUviVbosnSt3tCei
WII+dmtP47BWuwZX6ndX/2ZSHv9jNsjyPQwOdGO9LJzI5MTNvSd+aybEZSs1MjU/UULoKh12v7v/
oEqw9+/uT8SvPrpIvQ29bu8BD9wao5KPtMwAbrGFXHLcJ1GGc1kHZvTB5hhWlnAnhnFKl6wfxJx6
v4AJ1+xFRmRvFbHwMx36tZwRHsHlrqSLSrV4cOqipscrKVcyY5Mzk/sE8GZHbY4siNj6vEFPvI1S
p/t5fs6dlLadsl1CE30m1bemo6skyTqaMFjjD8YKH3ATwzOV27unK1oHmIBa7JMEFoVKi1YScboW
UgNdduVQeKzJooYHD+lajEJqTDsCszh6CQzFR/MbjC9uHWkvVI4vkG428BXsTv8jNUL6vwA38EOT
CFG7x1aaDcK5nOZsAqRavW8AW+NlDVIk03l3GjV9DcD9Zk1k6X20Azd2/AO3NJCDL7q8PR3uT72y
38qfBCPwaImMZS8zllbZs664FQQjbef0ZW+rhV7rWSA2TCMmUGB5qrB5U84vangrAWljcLHXLNkx
+W0e+ym3I8SpAQznD2nY+iZ8HrZ6F6Iyppx7z762JqMd2dXLUgU4Qb8vgdE5tnCgct53ewnM8fyt
bJj7QOdhlbRKeB3KPJtO0vXVwLK5uZUSlPEtBHlP6DnWpny0Yki5h3mPqo1UEUHZKotIc47aenML
dnjmUNaCY/OMmhZm+ByHmGazhsvpFpoub5/DS9pJpvHxlz3MupEsbPpijFhVnb13+IjLIOcamYpO
1wej7FSq9+Rev5yA9hDJ62j+RZL3KqcXagiG9iIyrXjp0THFh/kOWIHtdp0TWsY1ZST4iL25jENf
fWJnos1eT1TM/WK/Ajh9m7xApiHKb5o49h7zrX2Joe7X7bDWcTAksiDMJbvRcfjrn2tL/UdhhZTb
BQItZbVvlzJuwlnItlP5MReY9hM+syQye8LqmErQ3yv7fQFV9CaLo4oTrf3WGdRnNjr/6WA87JQ/
UZAiJA4qGf0kE6RHM5zdXmNjXu+ysIZUC3IFbUsi+wBGSUhGtP6lhvlcT0zJscW4CaUWtJOTLhEu
kMxSEhK/HKqEyAWRkVVzjeOblP8aVP8xOPvUDIo7BGTZSyPfYwTReeMBzDXBb3kwG0dfwwNjABC/
8PJ/xeM1LJ+fr9HtjlucMMfUnMjLnCFGEano8I4oLgaFTLuVO7QXlR8Zqg4DBbjbZucIe9JoEJbm
gCTGDCUw7xiIIccv+gTV3M0s4sivJ0HizMCUVT7wvJdDw670v2pejtHWntTaJ61l+Yg52Ak2x3cw
0TWY4FW2Rdupoik1kkBPK2Z2E68Deep24mFWZW6TctRp08KZicT+lk0VLonZwwI+cdrvYyImeVtD
ngZEJGWQyNWWsP6zyjC68awUaXAOOFAcleAVOPsUYMDbQWUqe7dvXaM5yy43QbfHTjhH9mFiEvGc
BTfbzHVtrUXkGcPpes5wlB3m4Tir/MhgOrzFuPLx3q5w8srvgndnwfkHUjWM2izfnOSPb7ObUVuI
zOt/MUeB+73PJP0Cb3Sb2ZRB7R0s1NaV47ttlkC3vapnb070cE2Atu5zd4NRY0I6qBCrjoEJZKP3
qvcSN/bTTQigZAWC3/mjWH6Q8y3/JQY24cT6lK6by+biAJPY0ln7QhAZBRGApvVlEjmoL1YGykaq
tlAmJz9vwMSbhlAszuukSopRlFyYJ1Dw1Bstk7luPq/Et/SL2aV6ndOWedKiFZV5jYlP2CQ5IrGN
2jkjtOgGcpKixB20GZgV+rFzpTn5GR7B+8z1XmRKGjljpyHPHExGvUgSbtf46Avz2rOQuP7Q4/7s
fvpv/cJS9JPqVECI3NUfDiReEYZ9AE7E055Ue9R2rR84KQGcrLTQflCM36FjVxEufkuXySg3m9Xd
CCSAtIFIeFAbSjoQGTW/bYNhwCGXk9lBvL8SVx6XXfitroxFjhE3iGS1p1jYPtsXS6Isx0H15a8P
+GmFOZa4mgJ7TL7icLzJq/B9MZqQ0hbgA/AH9R4ZXQ52JwEis9uflW3athfB3vtAPkmMiuDcveG+
iCJdBy/Jfceml8NsWqK40rL7hG6VotYtglCnZGbmO66WSSP7y4Smj3L/QeYNoQYhPdMWAIfGeFzm
LTyN6w+F+K1qkqqSYQqIFl/yUqlOftx5b19cvWxr3mf4pyWnD0H2hRraoheuWoRxuNq5byT3slg3
zosEYHjiAZkqg9qw+AcZ2LIQOiTEaE7hSWRueaabA5hP1+wFrS5pA2OZvkAuZgkDt9JlnXxffTQh
ydR/QpkURKIr65VzssBmZD4u9qqrFf1QFX3kmR7+v3vXJVUbC4VyWXiyJr1fohQRk/qrB8GpUhHa
oZgfM06C6WtdIPqhwQ9qBUK1c+MwygDHJs+r5hHDx3APwU7x3CKdqH+iWJnXaanb+KrTqTOgsJFs
ifM8xUVYnoCVkmYXNdgpZF9TDRqAutjb8U9PGnYMFCG7nletHTeTlzOJ4eRXYklCQzDqENZQMV6b
AuhvCziizzHFO8nB5z25nErWIN5oE7IHSTnHKDMq8ORK62k/7jKUZUWwoyY892O9RCGhLToj7xQP
gP7SDDn7a3sWI9I9S6vdvY3r5JuppD9eKkEVk8TeDkTjBcEWDLjOm+mOGIoIQepKum3i5sWIjllQ
dVrmFK+ZJ/8252yvD9LDDiuDZyO6BNGaNS8QNybMdzjoSiqbM53k6vLkaqV29YFfdlX/yNwqQ2x5
1nu4pF0HnvbXj6JvCf1aJFALPp4B7xLKHnLYnLWuCoil89/YC3msOpwp4T0RY7AAoUd0JCp8e6s6
XC79Efj4c4oyn+4CSYoSNHBxmuV9qibWNqCLmxO2e4Nmi8YrmRSd827cVEmxYbAhKSjEI1lGIGr9
RIohoYhSz470yoK3jKh9vB1pdS2s4hVNoVcc3QusqrdZJeEFveWS7uzM1SE1OQElE2EQZGxIZRcp
GBYBPU8tMt3EGwx39P9b8XLMGkpjN4Uk7jiEYSn+taiHzEdqsOy8RS3XlNuVd3SAXB4g7UmvXGzI
6BzTgRs5BO9KiojYpGd4JocaVDg1PKzLRvUcwgB5oE8zcMrZbYm8HVdAptTXgJR/+EA0UKqAcd5y
oyDa3ohKGGAWyZllnJFINQ/iLil+6V7naozV7EFH0HztcVVriJ6hCdPWOAcF5M1WBnNPVf3kDpNB
bvhnWfQP7zCi86sx79S5cr2kvPffZMzjiKlvt4MtcWHYBU0javvbhi3BT0/JqZ9iKSY0L/78jGWg
yPsxIZX5XnDfQqDLb8bnKqGiwQn54wCwQVsin6Lpq0XT2cmTyEmH4ZRE64jwqHGTanxoIkXFm6iK
wpoWxkAm+9xRwgJy3OYH2o+JzQGAxkX6lw0UDEQmsqN/A55g7Po1EmIeTtsPTHMtFWQGbiIhUkI4
DrXmZh5DtRDuYlyYWRuWvl93YJTzN+pqnXyQPfHlPc5TRbZ37AmhO2J8he5wge2aaWUQcDqfN1Ze
NEEqtgiOf9GylJzaP5ZTPIIUndR1x0zGbgmf1qiqlpvzUlJcLU8mnHClJUuPJ9Uky9GPFn7Fv9T5
hqHkz3Pcap25QJb8s01bpdU6M0m9kq2V6nocmTuyEnEefFA5vs6qluM/MBaRbrtLbOWQC7j7ErQG
+x9JRm9k+aD+2JUBodmB2cwAPLAjt9QMu6oTEmG9cc/CeqeVby7wBaMGc34vPS+JbsNO/C+AJSZO
2bGf5A8LE0545OnGBp6NKR1UegrdPyP9xKQAJFhNStWLLvPwy1PrAhjW4HMHXXhOFMtBELI3/hXT
YldIQWLIQLm2ta0DpOQ66TnL2C2fxqS7YUJ+2fBkUep16/l+QEzX8Rh1pJRWG2IYKsa1GL+YCPBw
pQQaW55APQoJVQBXQSaQwcuphy07o0OhaQyzHF8d2zdf+xTRYK4eEtcd7tH2SobybJ+bZ/2xioUj
D1EaPrl7fegbbx1KZKlHDrpfuEOeWV4QGU0Y/sYKwdL6opYtAp1S1+Uxr/Imfj+d33+zdHkU1/jX
TkPR74L6C/DNB7PDsuPCr4/xuZ9P70OZqCHuD8KSRo2disa0Dz3LKfHfgD2avHLsltsBqBecU/1j
EQsKO9C2R5W+PaDEkscqXd6oao6ZnhVucmBKK4GR7Duriw9QszJxokjG9F+KBZUUWKuDDuMAVSSL
FudDZTKkoiS+R4q4vRc1leMWjyisODpykZFCScXZOjoK3wMg4kMuOTEPAncUtbcsykIFtDzNI8fE
BGgoxxSzx6OmKPqChwOLJK13QMncLjBZf5+TcCKIeahb7fLcSSB1o78hlEHaO1tBobZaa6jdyUWL
uSg05y0bMdPwAF+eXWM1dAI9skSWqJq2cvR9FGxqKqjU/xhnNn4l4hlf+CI0+U6KD1YICTKrYKOg
rXYbiLPmw1z1tv27MT/THn+/egV5zvdmdq4Ny5n+SfTJiSkPKOy0mjHko0tWcO3c7PZCfJ3KtG7M
6fiQhWB5Nqp32KgtpR3jtc16WesrX+Y6JcWh0vsddieBPkG5J+OY1hJS38ZMBeiRPgSvDdMKn0QA
iJGrEO15i4KrLvINtKZqEC4bNbGAOI97YumLKHB9D1DeDlXz6f+0Vtk9QpLLk30qOPwdGFD9Uvrb
eTwR4RyTxI+qlbopSMiwETUNRaZv0+Gr3DsJX8NKh9TDCLWru1AQH8FWvjLLCxxMGG6mx5mDfROC
LK/oi0lKlCJkb5O8LOU3GRDMVA68/BUz1prthyysZcNBb6dG8EhQi/5jQ4TuJPLze6Pp+v+gRLhn
YuARffSoqPOPC1djjikXeLs3nHdNZGgeBiM9j1uKbvHu93CAVH+8RTdSE1TJ7txRUrmCAhqM1OfP
cSULnYbUFve5ad9HAeh54DoAtexSyCwnTQqmHfuhbb3nvZ0T6sDibhgsNAoQAs4LpicNumNhRXtY
GajC/+vw3K1ksJJ1rVUKW/dpqWFIdBhBcbsUWoBaBB+jg2siSate0gm2FNRxWLyTOXKlnqk5pTM3
WGl5uilrAI2wFBlC2+tlrmtwCJLIq0fYpCO44y7Yh8R/Lr586/cnYV2vRxK9QaJR4Q4NBjB6s6eg
LSQ6tQA+ypPbIJsTsyL6QR4typWJDJd6o2spk7vLna9z8uoVOSomhuVWSOlzTfUa7+DlWWWwDy0I
3ovqE+HZRQSKiNDLwaLA0nEEmFInnpMUcqzi2/UE8plcPWsQUYLcQaSJ64sadfurSq+7kNS21bTg
LsFFVc4fvDqjGr1Qox9W4XSUkQ/iygJYPlWhyZ6VDWyI14gEXdt8jZUadYHp64zEy4OmAKGUOmKs
3wxMitJupKK7HFf/xG0KsxJvS2L9tru8y4VAWy74G29EzfNVwRDZcWTuJ2lj3BCtgFnAMwmpc1zG
Q34tNMMvZOyvBHTHXm0sXfBQlAT1QRQhAKhZ3n+mpxnQfciFHyCeBo8sWggcIsmZnhEQ8GL31VqF
ePXQRRbe5S+5osAJQn7NdfHqnWGc8l8pT5sTHIBiddUI6cH8TI0G0hVbzZ9ZzygRCffRAXtYaQaA
xCLCEsEGB0Zp1XljYB9euWvrkT6JBue3lSlUkm720vkr+BLGVctFshrjTRQoVnYGNl62tKEnrEiQ
/Bibwl6OwXA93HCLu99V1Yp2BvTMN9v86byYIVr/9N/WqT2Z2Ij0pXJy8H6aDWbScNFdnyjcsvVG
XFNuix9wPiFcXdQlJ8bX+67CqXBEg/mmf15xYtVnIBxRq8YUFaCAdHnqrC+gb60+roK0z0VPZd0y
5UMQzCfYXU3cTtlkOsCH9iSv96FUupRYjjrpAyjlgDlqNWo2U52bshu0qrHS7y10XvYolIX/epcB
c9vmoK3rYN/uBZEKn8XYzn4tPx1AIpH4i2F0R11USeDU2J3E2MPyGxP4OI9JH0vYQ/GjyaQfPIoJ
wtU7o6pW3jm5t6FCNGY8UkH+UnfiCepFLDjmIcDAA+amfERz/44Yf2cX/YDC+fGfchczqPmqCIgl
lV/x3EeXKFLiQ6G8A+elP1Dm0jyTwYGdHETGxkzQsvaBJ1F/FncWx+iKELeTxXLzn7ExlaygJkn1
n2aBk1ibAP0Ug7nGixCEEiDolHi89zEksstOrDaSD+rLxBx6pr8+5jb3T4UrndBI5JNeIvEaLAkx
RKWqIAF94hQN2hPgnng+dPTO/SFpg7354xlUoaBr8I/iA+aIp6fhPua0XiSgXnN+Z81cM/8rkNmt
eDbkwGQBFUFBKWaZZsPoX6j0L6lRDzGmbUJb7EHO76EvtuGxD2zYCpfHrBEzUvWnsfRWcbvhqMiZ
h2e2oocNHO2W6X/7yZ4ko9q0iJ8VUNE2ZDCvsBdYu5MjYPKlPpQyr0ONs2ABPOM3qenJW3gFauj0
Gint/rRVGlUJ+yuCRBY+K6VBKBaGazVksAccn87EAi3nEQmeqNekNYvGAj1Rd6RZ3zWfm8vTiLpI
SVV8VNb9nvYMmxn/D3VC+A4HDQe8sTy/6JyAmfUVaNmDRL8Or5xrYBS16OhxgMg+TzZk/GIHQvTG
xNz6I5sX9444dD0rcSTY3I1EvsITFlWKnFKsrttc2Jddxar4c2++XCVoJwQFSus1tAL7NKm4W5bC
eMwZFYFlYS4NA274eD65zOPvOLzO1wug+ApL7pK4vLY7eLYlt7FoUocrp8sx1FiFBQB1m+Bx6EIQ
5OI8wTAtpza8CJ4yGL5w2v5ZaC+E7eqMhldPHLQRxfdlcwlQ5iIrtXgeN1ePsEx4YOSMi5piLJom
iUm9kWbw5cvOKUfBXvAGc/aqccwG0P5G7xlJl5l0ziC/vBGIwZk3d/BtANiqpY6us2o1ixfnR1dA
4YIg7wQCcd8ujLJUrXLR5vlTy/v83XjeRTMhGd1kqfXrxQwuSx+lgvo3LCf3LHs9ZVdX2PRc2oYW
c2n0X2HINZkI1BeLc3gPp5JkQhiteTvRFuq3U2m3CATtzpk0L9FaH1QhG9VPv2egK7ZZrlFhf+xO
QrucI5XZ3A3jGnKd8Flssfykny9WRPYZg6kB/+L28G95Mp97cjyC1RFOAje2X4nscV07HBl3tKOY
Dloc2qz8NMsZoWPqHEUEVVCHedn6kF9ZMFIjU7O6a9bIi0hBGF1cPlmJY/ioIS+UXpwX67CVCvNl
x/i+2hvngnCIYEVSwxsdB6nu4P5yK8mEudS6115EkjZXjm0m1VtDUduTu/f78Jr+8+I5dxBuaIcA
KBa8q6Y9ZUgbifm9eluXJbBNak+AUSJFsQ9AZLUqo1FgeuC0Go9omLsgP8+AH2lcJaB1vnnAigiI
MqFbzFPORpp8ZI7Cro8ZAX5srmJoELKLZNTkjT3QYZwWbCanYIo6xYmi7CYGBeXL8xhilUyTaJ9q
ZYXCAe2n8E/F2TL5+lLN+65hKfl/R87lO359GQ5p8oamcNejRSQAJneaMyBDOvrFgnJh/U3GJ2/v
z5h2AkG652CmBfqbQkLDUOfN/HahZogBiPcUpi3qpNLCZodaR1OaUQFT1DSHlKg4xktMl0S+xQ/p
/i97qIFITwR9xJHsQvS/9YmeltzlFCMkWRkLkH+fPLLtZ8EIe7ImKXGtYx+mucFe+P5xQMQjljoT
wIjcQmCEfyXNPClNLbT53IFaPctLVBZmR6uPoLi1UNAKYhlngEse7vWcY/Kedn421m9fWgxalbQP
ZTV5xVEmtuZZwUmyP4QuFmobdjLrxdp/LJ9APtxEejtZ/WtWGFs5vQ2vjQrgGpbQwcYR+j9G/CHk
HpjITIIqzU+XlUfQsi4Slr4xmeghESbHarQfHwiHo2dbrno2Ca1unZSUH1/Sar4/tQUIjfWjhkO1
DpD4iapOUr0z47EbVPjPTBQT0phRxinY0tz0M/+PZrdYPnwmSLMgqD6RdDzl0+Ot+mnS+ULn9sGb
8vWQLvZSXWWi33H50Gz6PRFrQ5qTDe3I1hKWgupacCUuKcB9LSRXuw00PuXocdrWDO7VKpGq6ujx
J055KtJcaUhojl0MhBlJQ68K5eaj+2d6fN5oOuP9Rv9CjCmvEorjUQjrtP4NDMelIPbpsFtHduC0
a33aZNftOdpNrkivrWTjjh37iBWHEGWzhbj/UPYNhI1r/UXpHUC9fa1l4uQvf4FnTE+7SB1KbuTN
jRXoITY82/Igmbjmp4GAI3qRzlWXIyO5utPjSLwJLYclYZ9FIPX+3/vv3Ms44uQkyuZaoI6JqYg+
bS5th+Ek2BLI10wYoMurX6DX26zNb8RHxIdRzNCb4XbElKyxJRQLa7AouI/v5NAihMG1aH7epWYh
AWhq5TnP9lws3Grj4nB8dqwpMfHGHRLgzZeMDF4/aXY5UC82kwRreHF78tOOx6WcnRlK5TuB+U0k
LvwD/cS6uGHz5d4QDd4yp1BM4ng+QZ/WDYzOB+Zavr+CqDEjaZbhIxuAiC3idabmnx2gDVTZ1HCB
hOuR+s8fHmcf/nfusxoiIncSWY/ghHUCerb/yWs7J8Lz9JfsVWDMxdygAbRF6nQCmYp1zplw9mxV
WOSiin5VSPwoAKF7MOEvr9UnNrxIR3c60QmbdMwTTY20BdXxJgaxBPYWrIjFX4ozRK4LfeLVNsnm
kQIfpnqlRRLtQGb7mJ6WXpUM6diApHBsmWa/7KsxDDGmgX6GvwGtYalDtBghD3amLc2fPp7NEruu
McNsF6iR8IcHZZQxK8IZj4PcHLzcuCPukahnXX/U7Mk1PG77i48sIGml2sv5xz0iuBWt4ubRYHEC
2wL0B8rm64uG3eaaNaDUkwXXnJfrxX+/DNe67j8XgDi7V6wCpkgrP3Ak2Cw4u9Ccnk6YOj/SW+TP
caux/rZHot5yn6GAWNTz+qwjn4pgsJty8c73vT25p09tTMZhfoJLTLjZL8ZSo1wb41o+aNlygtbl
VapiVvFeG6IaW23UsNGO3hWNsIfdrUhf7Bz1Ku49Wzs2FzFgE6KRfHSmegAGCFGjVXOLJjdqo5VT
4Khe6KMDapSbFgG8mEUoY7VDjTotf8jARTw54IPPkBdUKA1nukw/GcvuAdmrGiUcxfxIvOlX0xiM
sGYUi9Wf3qaoqrGdMsBv/kBzvuhYJZunQG5Z05JDHvc5+oiLT6sPHlfOaNsWuyWuIzSPWq9N5w31
HecuMOss6nKFvo/Bz4o+knBy51PkoRI8jKzHjyZKR/yTobSFO/NMQA44uog6DTOnCs3q5CN6kswq
MToHD+eOb33/85Dh97dPIebOvAhE6gb0gLCdPARTEEX/kogzXVsU7Faj0jtbZLHjgaAfKQrHyMCE
z+7VRqEpRhq3MKv/osqQ7Ys/8QLKAxmsJamy1lEQg/9l7URcBO0uEx2x8x0iMUm7hcT46+YZhLHo
VIGO7DjG9ZUv67BD3ssLZE6Bf9T0mw1Eael2+lpWesSmAIMik6IBszo+Puv/J/mSbvnT9wBhu9bB
6Tk6drbfcCCfeCsLMiqd6KQssu00pX/hz6yA/k+XbANGs9KESEVlPei09ybasYGN8a9tfaQk7xi8
aFoXYWpXLQGQ4wvZDi1ZnKwDRMAs1fR8wwWZAkB7K/rPVpcu1+8fFznk/Pip+cBu4iuXRycDUvL3
4M+RGMXmbquqJV3CpuDSuXTqnef7YoJ5bdo0D7CTz/rL6u1Hq14WBbCPNkyQaplsdBBs+obBvMlz
prNoiwPUyZPpoSSnqUh99vTdujPmOWBR5obPICm3NCs1XUep6+zbXXIyIWSy3wDShwBPWQseqevY
px2GYRmBzBnehQqCBH/ge4oBqqoQ4lcpuONOJ1WXGdKgDvVSxWH+2tH0QPDIqsuTmUZ/roWlWHVb
xMoOcxsdRc4635mQWlY/KdJaMz73vfcK6Sj2DaLILsZrOOljXYQwcoM6xI8IcrVPAozho8a1UdHL
jtRM0W6xIOz8s4P4PCcAjia6HocthA3APVlKg7gupgj0f2zquBZdTSZKxSw5KVx/xB3YX5xdSQ7I
guAavi8ncL5S0e5Q5tL9fERNxswPIhTqEXUshz22FLHmB66IIy6jlgaNULR4PF8WHzHZpaEskuNn
UlQw1uKNaWjEQ4GgPARv2van2gBqYXv7kD66DgtbJ6PiRxumiNBC1PAjDe4X2ag2yA+CuSSG9K2N
zzv3FbbciV16pSpfSBtJSWrHwJXqMD/gWYaxJMpE6DfHIafFOYeg2Xdt7akaohbkOrHtC5GTvYEc
aeb1b50Rx6ERLtahq8Vyz+aM9nkNtPx894iC16wiem5jd6QFJzKNhT2JQvp/cj5PtQ8IC6z7Li2J
d0YVTjgbPvKDzxO7v4CS8uBsgEWQotRxFxavOYXiE76+1Z4xZRZbERv/nDN2jREuRg9CIZr+ZvaK
vJktlgHcZjNS/5JzswAtCsfa4l8NglnlmPws1QFzNjLfp8QEnX4vNV6Y3dtJpzUFUqUobsPQPuMg
Cf7mDVY+KF86Im7sbjpQsbfYNtdYJunnouTtWC6aCMYn9/KoNhx9nr+J+zS5dHMtkCXFr36zjibA
W9d7yaQo1f4EMog86h862HaLZvhvL9XaVCbc/OpAvjlWZqTUZFZFUvg9GGr6GL4RBZev8jeyG8c5
FmsT1HL7HapDjxyoyGtyGccDrYLkM9Y4Psgj6YV4KuoI8aZUCp9D3WCLBo2Mx5QNFLpdYOu33lQY
l3iz9VK13ft2c/vSaE4gXp1z5PvLJEDvBdE8EBHx9ikHUlYo2NGFftfBkX0uzhgmTPGlvuD4b9RS
uhtW5mov8w5y8spoUv9IkeDR4rhd9dS2tnN9x8zOSKaYf8WEbGgtpEEFVxwWdKh0V3qGSnGKOOe1
EYUlI1Mck7JNyk8Ek/rhIsJsm4+3G62OB+wbX1dTFr4/4OMp8ntibJqNIok+580aISTBE/MltTBR
3MoxO5M/Y9jQm7vz6CF9D4VUEGPuq5kS/5iPvA0oAhkwRMigwwEestJVBQ5R/33w3h9qOa+VxgV6
WAZcUqF2eyhvSXmzFHXTwEaMCogrxK5TC3ikf3+iaTA6MKy0fK1Mnpu799/TJ1iPKGrbIMMOh0qc
GaTcS/0m+SmHB/G6pD5DfOCMpr3BmgXJQXnaLndEgvh6jCnRBzCKdflpVmNyWSOiffT+60IWL0yP
6f0hz9fyUEwSNxduhFSRB+yz0TWJ4deC6rakOfV9VGb6GooDCQuxmt0KlfTfioQRWPVDZUav9P+T
YcTRMuTGdDyljYYz4sdvmDsWnFfkmfjHnTfeBP/ExJOVdH6sNcYzfziuC8WH68/r+YzDlUKfdOdL
sFBwB/dYkMrJizGboZiocPQ5uW6yRGsDopC94sgJzNctZkABYngLeizXOQKdc0rg+5vXW6c6BPPt
4aKYbLHJSGDbBV2brH5oBoqRdblqUBekmf5CYyCMxZw/RFYtch4iSt//SRqXojarimz/UFmTin3a
j+p0vtffcuiP7O/TX+OFz0o3oY8mTj43t5A4115TxLwVLVmrtikKfPutheYvZS4rwH+JXhZm6EzL
gpd/J4AEE+uVKFcg3Fv0ZFaMkEJq0va9CvThhhNq0vPKppy/+tlf8KlQYXvL23WzHaUwc2TG9WPD
SlecWFuwtt7rEfMf1nSonoYNHa/m/QFCufDOAQJPJLC7US+CWX8i6dWmCKppGPE+khTWJK7NFnFT
yiIzqVU8OP1rI0N9Kh+V0amrbUnlfw91bEbqk2KwPWKGcVtfeN50Mlr8QacnVNTHd54kFPvoiFwZ
lf9jscrIFs1w+jzdlUhkpdol7Gs7gqJ/0rASKvf2dlP9t5LkM948/zRc3UoftFqDjm/7YXtjlS1H
09npG4LOW5WUdwFSgZJ0OpbesW2PboYHQhqa1FF3MaJ+5B3SpuQuSDs5n+kWcNeI9M5EYO2gPxSV
bHgYyvCSyjJilurqySRBqPHXLrmIMKrqPxh/PhPZdx4PpakJosmrLlakr+2ECGdQitVs/nDe4+Km
SzT0r+3CgAX8kM6h4+Ko9YpYUqTjQInghMl0iGPbA0UgT7ogqQB4ub2Yd7NWTeNG1sVnAz7vqlPC
JupQutak35R6dfdSwWw/DRY41L2EShq8NdhAftaFLkk5TpUePe8/PCa+NlvOeXFZF822Y9OxMqVf
aLPzVR/PLU/ye2klX7lbLtmNnCpwZWwi8IS7GpITDhmuh85543T98B/Av5kvSIbIG4zfspel3h2I
7MCxRoCjE/3tzyI6SIjXhKE2mD/0wSxXpuzf8SuyYNeSLxcw6CbyhPX3PoCp1fE/+V3wLccunPdZ
+W3Z4vqQRc0/0UW4Na741ZlDziO/NKhpMkj8QldmEzp/MHZEpuwAQWgVDczeUH8iwF9Nta+8JIPd
8RyHUP4nQd9q0anYpPvMCo/WulH9drz9EgtaD287nEEslZTDV/DW89g52DTpofv+Lpe2C/cw72ou
yGx0slhjVGr4bbQMZdPP5/+Jk8HShcz9/5LrPpMAcoE4/+U+zbzJHx/u14mI1q7mJRUD6yVlufSd
/dIxwhWzbzfUvblJfSCBcTr+rxihUDK5M8fklRwXuIkdFPABnBzOPjVjOXBs+88rR01VZQ7D1UnO
6e9mhOvc9i6n5chzjaosHiDqfIQV15IMIhQIbuGu3vfDFTho3plK0ySqIBJ7NMAjqfS/jNCMIJNb
Gs2ktTx5711oxYsbb1+AQreU3U6w2CDUA4hT8bkjBOVW/iUjTZzj0RRBEHPCYAbjeNfk9zhJ9/fa
i8eKIfj+0NnFqnmvc+c0+/H+Z43vJ0tV1SZZGY7scrkmlDrXD4gOKgjYeQhTUTOmcW2S0jN/lt8P
FYPRY/JHVrMUhASP51v8K9AiYoRMTjk6pVmkTP0NFJx7AYGymmhwNF6CL0gwR1oRAdMlJ/USa/0H
XZFlhw0kC0mAAItk3VxvrBQ1NCAyCHULQ0mT7ednheqAY/nBeAc4G2+BSSZ3DWhFxls+6QQjCu6F
l2n0smDcXDPiYfQb39G7IlsMPi/bRZN71xdinqpookScLZqyZLMmWtwybNnGfoR586eytgZRVQmo
ELoEMrgoKLiTDAWgzJpQUO7RbiVNbCxJxnKrA7hhzen/ljcdvg5fgLNWnwvyPEkbADKcB884bsTM
irjnVGW3TiXNDiZUMKX9t5zNt+pfybKDmCnGnQFF8L84V7YCyIdA+y/kAbFOCIFZWpa4/wRmEG7j
hLieh2hm96FLhavH+LsUxKdHZd6JmOaHROQ812zTom2TgJBTy5B9yx2/o4kI0cP4tXT3f4a7ocMF
NBNL1UHwiAUOaSu0mUlv7QViyVXm267ukINBBJ4BEZgfSePmNzISMcp6cA+XsvSnTIq/QGC2DK18
4B+n6pD7aY94Qavgo6Yxc0WRJkwIGVkO98ZQ6E2Vpy2gvpYjh/QJ/SUCNbtAeoXVwmK3lt/IhTdd
pZDA4yQRRyKDvR6sda7Mzw48Uz80ZePKGT1y7gdSCSNC/PZKWl8m8o94p4dxpxwtX5K161LjCkYm
AKp9unx9VXeOQ4pUVMBaBOTR+yHPCBJ1qjnveFvFjF50oxKHezIBeyTno3sOpSdX1iGxD2oDZgZD
AO8VL/SgEue7PLGIg88N5NPFKSRL+Yz/I+aojBKXd1KdhFSkANYn4NeZtkb6ohstw5EGAMCLRANa
zfjtVwtMwfVJkuJ6xEfrflyhi6K12UZB7cNo4+R2aD/SFJt+s6h/uc7tUwOp6xrmDejLnCms6KnG
Lt2yx2BAPfcX6e/UTSjwr6qY/movHISvBm/X1YfXMqCdCmtjPEdiCkklIJuDjoPpK+JvqZBQXfNb
4FSCezpjBwmVmPaxyAQBqSilh4OLfIGdiI3PRKEkTyscd89pZkutkCNJtkkssliO+0Fztr4Gk+Ql
MBauS7S57N+jTGnnhJsA0MtxmGMsztvHCeXa9ygGAhQ9rfx36UH0mgpo8CoNWsWPlJTwE95a7AIm
elyyWZD2+qeM0bYYsMpiZYp5C4BQAj6SXlmUe0xW8ApHAtPaA0IlZ0JbdSE2EwjJsJxKlhvLUr5p
N12A9Eo0d2LRBsZ1V/5hnJD58LZyvk1D5W7SDs0ACXTYBiKP22AH5+rRMhaSrP8kfoeAUMrcoGto
Gtjx1iKXxxzDdJHyqAbaLr8V0kCDKcuk25MkLTz3BU0jGEUyVRmPKdFfJVgFEhtafuK3NcUv6RS/
DrlGW0NhcLvIJyby6OTwLXdp/vrYxDchJYzN0zZQBb2K4rUNqqAVravTur5lgpdmOiDfV5plJzj7
gsxURzmcwAG7HqtHF9de8DBwMWBQ/ifyX1sKCdutW1qQbsmVJf0U/hS5I16KZOq/IxXNqUF3zebr
WV3RvD/SYKlLEKdjHPVSYOzr3G/xiKjSVrrD25Ah3Ns8UfhEqWKOlpDPHORUV6zbAwSWNgoPG0mI
r8YWabJL1lZoujkUdmasYNjOFxoSqyIQtqR3G2sr63noeQxpngHDkGZBlmKOr9hPnJPUkY/xPyBR
DIZrj5mpT+zK9hsyWcJR/q9BUqhKa5tUn/+1h4p83GdkTPdeGap5M2UlEd7haGQg/YhE1/GYOK+r
R/UAMGRmBPPoXhsWjUNJsXQvPJPEGQXZps0O5MoJDUqbpi3FN1EBPgmraHh9X7ix2s0GuZUhXYNZ
rvQKVe6CWzBAU9slrEroyzg6hFcMKbwHhhkEzQX/uzXzzcAEnhIJUZ3UKmdUrwgWkE9udGN5EOEm
+4XRifec0LF0WfT9XhbTi4V3dKMcYfqEL82VQL0lTteIYONLQYLyy0A5HgGIDiR6iUKYfc6LoS3V
zcXqOT11RoajS6hRezGPa0TMQ8M5gCMwqGhfIH5n+RY9HcnrjQqH0QnVOmDd0QVmpFvkJ/mSjWoX
jRpV3enBpnRFyx6TN5oZkc+5111/O/9JOsHiq5CrCRXtaCFXHvx1fsqZO21ZWP6ElLOgTebuBon+
KL7Y2KO2D78nIEBT7f5e6Pfb16OCNP5aKH+d9CLKgiZPd0sjHd4SPj35ZGf1or6TWdAN9NC+1jIj
lTPsvLuD8V5fVxD3eAi6H7XnNTrCjV3t9fx3EtE8r30EO9Ikrmch3pWnW7uNkuQIFYqeYplQFvF7
2v4l1dgjiVEczIePTQju0t9gR1jcnd/oUVYXc6JCx9lGyNEGG+TxzSWCDVIL11TAv65dJLJDfqjR
p9Li4jXDRDjE1fOhyIOjckm2UBREqhQwjgo62gmttYeZBJtB2mHdVvkCOH2+O0HQlo/GEprryOdf
vVdsIuiWBQ6uFbqKUxf0rjh4PsGyw5Omh7oTMa2XZ6rm99/ZG5feJODrYgxKXHaMxtFCTd04ceu2
sle8OuxsfQgbmUi3Yhry/VNMflD99FvaPe3t2j1clPq5Cg6hHayhVlRlXPcNjg1hwAqWgeOj9xWJ
5Fc+Za6pOhbJqnQXHscANK9s2wEpQqxnnoaVQYKxncZomz6SCpaSoqagOoqmEE+t0x1BvKz3j1tk
PvuoKeclqYzru56qSEBK8U+RobIefuZCNUcVMef8prAwCIQkfgdquIDjzOf0B3boOQCTsWvoXDq4
9dW5RZdvRouDhVmQO8zgl3cG5UTEucwbv9tlKf4nSg5DtHq16AtAAAd/xrTIh5ufgJ8YbrHecORo
dxotP7NpMjnvbvjPXHTvlEE/wD6MX1mYdcDJoPb3t0Rx80p3HnJZyRPOe9xwcmlLSKokHRYB+RwO
CE4EcUm8jz8AlC/q8lyenslMEQyWBUT3CTgDZPclSCKWMR7LSy15/mGxViDNwZZrvtlV0Phw99wb
8S+r5aSPZFng7msd0cggMnueRRqWZ/7lmNZk4/A68Lyb8fd4q0ybZ4UevTk+DGfQ2E7z7zHjqnT+
plFtNOau2lVFhfGNnUQPosTszutD/94+BAqdX1mR6uO0Hd7F2X1ZzHVm5DW6JBo5KHx3SkEDt397
DCYuAkB0S8qnYoMUewV2eziB0XF2bzrIGwYAYq3nXS4g/JP9nCvG5pvYhH6Rez5p3WCZ2fg2RXAW
mmtDtk9k+ZOZWiVGlGag9uTm3jbt7/I1ubgcCThysgc8Udp5lbFmU2EQ/xYUCsFX9KM8418Mw+MY
XsyDovs+ZUTX02524QOsCp+TNbKlfHcHXGOPyNJBLb4uCR369s7A2t0PBLcFAoP7RKIdc6EVbPFZ
PW0pqW0p/q8M9r8LlYOlQDGBd4PLEGvHEH2HmOfUCyANxcWsIHMuA/iXDtA1RA2sFgoXxWByHt4b
nzfCxfocOSWyFwhlOgj0LDJimOyyi3L0EfODIrDVryPpsYMa8ogqS+hSk12TnzQ5bund44LC2ghf
HKDFOwPGFcjFCJkCMYb8A+4F7N0pUMmvg/PhxcD8jBK7iP6Ud3pxDJgEJaeIdeEukzQ06NLhL7DZ
AQzcsD2ghSdU8UlkBozeCayt0zGrNkL4Zo/O+fQsJuPDb/DmRkp+Lfq7Ej+5WHyHM3ggVEzpvsl+
0vLI457nuRXqyncFTiUXNoaYGK2jwhfl6pi2N1mDWBufxbCXV3+lV6eWhuAz9IGlpY3UTKssnGPJ
kfqlCRWkRM1V++zD3kYoox2ffnTRZIeVfvmYqAOe7dqqiGSz+VY0zdrZoozJrEO1kmAt7hBtgqYw
TrSMajiFJD4Hw8pqCtZSkLPfToj8/WlQhez9fr8ca3efLdN+31r/xat7PIr6coTEOGQJki02L1fp
nB2lDd0ROFSwQLHm1ORHm523F6hLLajHzqaigJWE8G0WdpSxF/GFwNF2kfeqr1vmv/l+wgjQaHG9
NXH9OE9kUK45vkRO5Da59sd8Ao5OFSPbBKF+LYoGd+CknD1we4GhrLKFeBNlt0uoRCHXuQkoUjeC
NFczMFFcM+UTDg+KWAaAw5pL1KYlxatxRBZyiS1o7WVqh1tNc6j9lCP35+MPQ4IYDa+cYhWWpwG+
XcBa+rzgTxVSbnMyd90uf17GChfVzSoJSf6ls0wJrMGIB9kC+e8aSrQAe7Qrva1a6wRV/tPeJQuD
m1yrZwx8R58NHcv5ybGbr9cCzfUix7tGhDwOLS40225JDbHOTZpRTXdcIfKDOAwgSrc2FfiVVdv9
0W9gvfVjx6XNriQbWzjqJMG4J/e1T0vFYcz27GvVA/vLmu+JeDfxpWDM4qd5zeUQtiHroIKTptCR
geUSBbdWF8CiP10p+yJgqA9qnaQDlyURgj67Rp0AoUiGY0hWQZ85aISWkHAFTN06bmc6UI2+IfBN
VSi37i9Yl6IX6/MW1ye3Jhyzmb+36VdpomD/ypv8RX5F4a1VeAtaqyX2jv0eb9uuXTR8bK/Kx88B
KOMIRNNMFcsEPXmuEbEFvyqtSMpFfubFM6Yj1HJaJfi60pxG3tqyEFWcjo00jP1+Ez+oHrybMQjB
gshGl/KWRtpJid5OXvBcsVNy2BIqeXjmo+haC2NSEC8c+bEqVp8md8blXJ19KyTpg7U7mHWthNdD
Kuu6mn79Fr3dLOTUXAbhHVCnmZS7TDnH/SD4DVQsf7FGl3xZ2/Ta99SIvu8MmsVEsyeI24wzxmPg
vFJYc5dnQ+SglS98mux2i5dF0QdV9TG1/g0s790+vY/cIIaayosyaI6ivX/Jnm3fgZKmk00Lr+L4
0TMJFSisAicaxe9M9m4abdCsdd7HghNwSnUzWPoKp8IUphPV3v9n85tbZIVztuWFKxz0vmUIItZm
nEmpHJ9CRAHW5zpBhgCPFdL3tmChSBlnT+gE+gVLLL03ZFJJAUD4NGqrabg2Qnxj/wZf971p1mXe
PR4S+vPIYRfRNdQkFR2GU2caYfuWHca6R+jSxUQIjzs3FmWqB1ux3RWWgs4rp6TwHVIQ9FVrraAH
t/zCGracnA6RvMVq/AA1XCvbKQo9K5ZC+7Ew/RTWe1Xek0tmpfwkYLVhFY7NVVtTt2iei05GdPqF
d4fah5qCN/1ZoF7uMYS/yYwo81BhKxKck3Foiq+chi42FYFRyJWIm2M2dHmy3k4dt426rdFfPVF7
WHOTGvGdPNeyoRJGXU+WvnH4FkRE4e+zgx4p6+LQGH6aJLf/wtqNVGctbYVVCQUlsKgdFELxO0rv
tV6tF0FzLATgCd+RlmoHm4lf5BxLcKIrTN8wt4fHNsTbXcIJElFYuFZjHx7SlHqrNlfUPLksHtXV
AmTp7VaNkyFcjbSeKalErg1oKJ8DiloAGWDQni95z5uoFG8jqNTrggGMnY7nW2XkawMPuu0/F9QB
fmFYwFdS15bcgJBzECGT69J+GR2r/i9+aqEjImNeMD05dmh6VfAVBxVK5/vuJfpmyoMHYsQtkSnr
proEdZYg6xYH4Zis8Vac3cu8Rv+mMwGjeVbRLydTB8C5n3hqh9Bh4R7p6sBapHXvpkVh9Q4e13Mb
ABsUfIIr/e7z48J+20IgxHmhCdGVGWcOF+6YgQIk9tv/pXuC/bVOF4CO4cmAyOSjPwMu/4P0Ql23
W8hVRqCe5VtuSpZSTtJHLMYhly4jjAiY0ywjZcHFj4PzPjTUvB8Q+imFrnzHigg5R55AmXmAs03o
lyTwnyWQNY2Dgt0LD7r0ambpJuSfXnqYArCsIwk9tSJFDyeUsL3y7hGvEfntwzatCZpBDek6/61K
RsT1+ZdWRpdZTSxZ1nUlWnfEZac8d9Z/W/OhC3HL2+qPkY7ev5X2mLyJzin12kZjwcx8HLRXa2Xf
1L6pqbzDAzZt2z3Jmd0E1VtNfeYL22K/283+lVP1ZXz3MHXC9ZlNQ8/fz4t443gW7D1Q91X/XLhB
6tjqgKOamQrHK3Cvjj0fmWMG7mMWC6xdARoNu2caYECxbXqVtZwdG/kxe4G/er5t8zpmvrnANZZP
h02QfSvHsSK6+9wks2m+RWyXRzr3D2b2qPlu9wEZoKKP8alYOTwmMQcwkMw0dtLJG3hxd7egpo/9
kWeaujsVWpSHxVuYVWecebB4zWtP85bxVKSffSdqRpyt4mrJorJUgCpe6p9XibOWvf5wU7CS/yei
2LwtWqZgCK6UKYD5s3oj22+J6sIFwoWcJ6gnYINJF0x77455KmI+0309rEcFywJ7q8+paM04fCK/
4mptObuJEo7yVlg7LKmrSdTzlJYnBSIQTfO1BRb7utGg4o1Av4YitU+tUSRtnIBxgTQHVoFj/kgn
27czqyE0jVqUjO9hKss6a3fme5GNp7QlXZOBXgPpR2+v3X+mhlOVRWk8GXFcs1eQa5U9rR2nDQTD
yMTeid+qtnLvbEmWG6aCrI0tztjL4v6uoMp3tLPuanc5p6U1r7+k9n8Zoob9H7U6TeNO2QcHjldB
wXCFAZhTEVmQSIVnrhcb767jQxe5ypxupPOS+HjKE9g8tZQQO45U0d72WuFpnGWiDRXo1CQ/Jp5l
Wti0X/TE+CNmbIDaWh4QD2NyBsRt+WqcTkkv2uaGyIrV5eXd3h+swzM2PdaKIEnsrk102dTd4e3r
iCpGeNi/dtMGG7hrkZN89/Gd01GwitRWyvVWp5limubmOUV5+lQyvB00uNyUGLI0n07zIl6wfKmP
gOwRCp1A1jAmEIS8764lNuvsbvWLAmU6HZAXqhrRrc290wDXPmvrU0q6tdpL8kOuiNFyalFwFqNU
YhHDIdZzPozI9lUFhF7G3IpSofPf2D4OO3GA/2cdh+y0APsdHz+Qf+NlrRGvsm6dv5G5b4GvyaQ2
Ap8SWXp83GJztDFB3aiPpHrlJZJtp8NCR6brJXrOLTpncaoxHPUZFGHMOQk4isCv3h0fLnwUp/ub
B2VGxdV+wBFpkgg0+XcmIT9lygaEJZDjzyyDBFSy25kxIOgnUk1+yuOJq2wkI0CoclSYV80BxUSY
qPs97cghmuG1BMvT8T8rm67kzVVrd2PWYqpLPKfVHU09xYN76vcSEJxSggdMKktO76htO0aNgz9W
ZLdpogQhGkzSJDV5njKmW37BBPA65cW0QmUNoiHelT/OWqpp3R9vhQnScxVM2h9VeKqn2y28w7A6
0aqQ7fEPOq7zZw+sWI7zVP60vzOIWCVkPVrvJw4uuEvnS8m4UZMH3vPAxen6eeFzRdUgkWFOl9k7
BofAie5C+mVXQfDpNI4M+PKoaY8P04Nyc336GNoq1pQL0aVTwD2/9iRQNB1tNo7dx4ro1DGc07+c
NcszL4PiKjgAmmsDOgExqq8f63+jsDdKO55eHAaLtOlZugvnDcgWlTyJl4xCQe2Y3vj/BmEhu8oC
47niGhyfdDGr2gwozE7uIfBnAq80BzvlfCwjBcNWEaNuuLl2gfQBE3cUY80FWDy2xBRO2tfYjvNS
XsZ8pa1ND24tsTLQbOnM9bbgKOMMWx32IIpLhV+TfVZGJQ4xWG0WVTHF+xhQ/Ueo2kVKsL8Ryvfy
VlzIfBOgrwU8Mybm0IeDWmCw96lKyw4uaHOKmNjrRrZ5GQxArju8cxDlQzsNvRlHXUAgDN4p/mhy
Ssu4FSQpfdrwoXvA+SSv2w4JPVAwrUFSrTy4U1eTgvkMWNbb1iH+dqAyIZ2d9fnwD8AnTo4FiSfx
HYrf61AScU1ZFPxkKJg9aN9fYhUuzhhB2UwpsAZqkDdtC+OrecCR9d6IEDWo3O1oR3JrrLNDIDQA
tiVCt7JrahREUETJshVFwm2SRlcQIiGJuS6uc6WXAzMa+Ii7sPIBuSt+0/V+p2IDFX36LCyNzgCO
pnWYcHj2o5KCq7PCwZ9ECSOUZ5pnl/nKXYz9Loory3kzAOToUowOvoXa07xSCRSjcz5qqSFMaH06
pS+NJWJH6cAgTt8PS4Dz2yAAN1/204lP2Ow3XkDK74gJeyWF/xcX2KoQu4h/B0ssgzfan8qlm34D
/5o+0aPMCFIy0ywXthtTTg5ZubBmBF/xkliBmFnbu/i83FEziXaDZdir8XzumPatCuc3txSB1poA
3BLozKEIkOv86pb7k715BWPhDAYSiZWi1jmbpbjFne7vQqU7enKBzFn3jlrhH8zEgFgS5Px58gg7
zLrEfpdYvwwtA7jBqhJGyM/I0yMfvRUpDUoA0kTvjBdf8bryeD0ktMqJUNBte2kR78byE/LPBXKN
KzLU/VCj3S0POL0ZBMsTuLva3Jpup9UM6RdIro4lsXjCypAcGGRc750dAaZp3Ep+5oQ20nf/eX4j
A7EW6Fq5cBTUFbSMMRmh9Yexi5yWfqXkYZOXjQf1lT1nXlvjVxD/BfwhEnEUqhGsFiWzLIbASHqW
ej1QGUEu/2nKHZ1pA1P9QZDirj+RUjWF+5TTpK85bl2RRtbjQZECZDcsGoqgNR8makUE2/SMcrZw
5MGGXv4hlANU5w0Ri+gfASvdPIjIjgoV+lBGIyoAD5O0UFN8YOw5HfPYUhYG8ZfDKKmBI6EU4Pro
zelin2qAOSdERHjfk7RhLwttqpt0A+8fyQV8PJpe9WuqKkeI2vsXo4ZOKES5ZhsPxWWLzYW5m5ae
Jdf1xA1F2ZmWzIbzwAHfKFKqtbc7oQBboIBai/dYXD39QtHXhKBbPbPXcyrh9nHNqdCtvAfox7s3
ioeIUUIQ646bAkPKZ/f3hZjk06ZAuzTSutCj2vqNj6fWP3FcUy0pPlZE30jaH29Is4xvUcr4FNtC
Zl79KqhGHsEVt1fvNEXmsydCrQl1ZUwVd+mBrdOCS6mlFZbNj4jWctGdpgqt1ZCJefAxeGbZycqY
RHySJiBqrVlVxQjLQiI/0YxQ1MRqAwnRj0gw8tQLtn4nCjs6bhj+ZrxfBQUZxzEVNtrBxtL3cgsu
kbRfEnrGuh0K6XMsXtuDZp8TEeI7gI9TOVxvepptnnssTkzLD5HD9LGqq7MnTEqOr3wqlrbAcjuq
jDs3d8qYwO+fOMJRK8Fcdy+aO8weCjNMsPF0ODLEt4hUDN3aGhqO54jtWtsE2UqeLVYBQZlnmWYU
oyOHJPOV6hwQtZ/rA2JvobyvPO752rnGd65kmi1uugVoEJaDFbRtYzecJvmnqpjfb1gviqctcxlB
e7/za6FSxxqP5jF2QjEafEu0g8g8SpYG71STZ+pJWjTW1FxXQUv1TdYc07xv1IjlztpBH2ZEQvNU
ZhuGeUr1n2s8/Yh78f0Z/Ule8h72S1MvtbeY86dodjSZ8FkGYKGcG/WRj0GNqUI1ENGWG51xoei5
9obgHS6ZYgieGi3WfNq1dQIOd1tAgHgIPcFlbllVCf9VrYaUer7ZoId73LPl6YrvcpAvdUw0pRgQ
csUerDE4YzBvhoLVdruwYNwBzhz/kCb4fC4+VYSx4Pig3r00jUCl4/n4wgkqbxFbHwwwTIxeDlac
vh4XQeZb3WQP3Sxfe95Jaup0trauB9HjKsC0Yd1v69+RHO6MEdrrzQWyFGrmRufWRc/sH7hzZYeJ
sryQ2LxJYMHmWeIIkchpNWsDocswYJoCRu9WmXEJVD2Ka7Pn23w8Z86FYZZO+aHlowYFQ/po0JJA
vPJ9793CwXAvALjiKESecZAY68b7bftLvDD8pmH+lYR/0nSxPF01NV5zu2qE/HLh+6X9/ykxyDI7
h+o6Qfcn4e9nfAZs27IxQ+pB0JOU9ft//YFyLVU/l8ufn80Lpqt77j2035AeltL0ydChDIzS2UIg
aDiy7q4FYEUYPaUWGZa9Lyzl6c1rAJueqlGcuy6jnxCTC8pd3GC/lgqe/MVlkqd/+gI650oM9VxQ
ROtf6AtJLX6O/zK6VLcUqgT8E5vJWr3Y3f6PdsvYA2QMcL70/ZNTjEZLUaZam5qvwhv5XN1ynXWr
dCBImBwFb9WEZaebKlcQ0eeamWqs5YfTO/i1rS1EYffVcsNQSeqOs4NmAlJrBz6cALcAnyWVjvJu
U6tqxqXBmJ7t9LP67M8JBLvJwTubd7g4ZeRHBSgtd2QxNaLb1lhaD/kg0p0UTeEHWvwtF5JqzsFD
dxjI/0c+lhXO+e0DMLPNoL3KLPtdVHFxFv7EyL0/CTVHnO6q9KUCAQ+9ma8IpIpSHtEydlZIVehn
m4LxDJFUrZU5CjZXl+YT4BcCBVpSv3TorE8Gr5o1LKcLF2tNeCwGYsfAM+/NtWZtyrmeME+Nir/X
1e35x1tefyvjYZFuLUMnuh72nABRoBa1239IWdSXFbJnegU67zfkJ7LTzA/Se9rtziwPDw79WxkG
vxmXK5Syai/uNZJx0mcJSmhetiM5DTV/hMQupfTgfdKWX7nbIzXGm4MVud4yHjtT+EFR4lwlvWoF
Qazb1Oej6gLiIWrKnU0nzyhIyRKBtZdaIDxDrUoUgx5vNRP6H6oSKuW3wETdA/UEop6Q98Ff1Jt3
cD4HEzNGXtNNfmBugmTRQuS/DQO7r9TTc4K5EBaoRnfEDX3Ge9m4jtdK5PSP7QlCEfzcCwRMw6QP
tFP+8WcgRUGiNhJLFAmkHCtFxwJi6Iaf3RNJxs4gizNjRctNmAQB9lgDDFrquW0ebE8tGFIgUb7q
0z+zqmomPgAJB9XdbXz59yiCWnUPPLPmntmid/64ioeL8VJRMajYRNKWTtb3XRpIDDx3ntERhnBm
ymoS91ds5pljb3HKLyBV4ymsG7ISaRezL80oXKI5wbLUL8flUbIAFMwdO3q0p+4grVNy7sW2DKNJ
0rjxd0BluRQHFknpT1QEcTp8SOlr81cS9xQ3g1k/0N8ylNWL7bAe/nJAsTvdIRo4ZhgmW/bM7ypL
nD8CEWMhGQjI7WwGWsndZyUSTx0woLMroHcJ1qJkecQuPyzB9SdSXO6hMzf78IyQAI4ugQATJYku
MA11oYAZwzRejX2TV7Uu4QAyYPogYygqG2Gww91v0+rYCUs4mYM9cqGL0CY84UkhryOhG6+QEyjd
0LfnHyoNipyX7yACRMhWtfBmiG0gJR3cFcAS/Tk1OjbQe/vnPhvLHReHFCRiXI3qWHSTLMPIQ6PA
VmyBm/wFpiMtzvXCr5rMK1Yh1EAZthGCiNvfa/MzPPHl6auDF7dQbJdWoTWBSvalmyyq6yj5Mh1n
IrKLa1uggWyTsfeb8Dl0pM3W85/ukyBQlNqIBWvymX6o8eOz8dIdzsUfXlgBVUZzSRqmgwbduhzV
9i87+RLldtO/pkxMadTs9J0W+iOSDzVDvJG/NCgWKRGZjVKafCgwnxbC8yXjvChMuMBtdCht2ory
Av1x9icOA06vmAvc5yimzxEXdc5Y4FCib0RQZa26SMJMyn1rMoKMsrfyxQ6qk/RnYO0x9452NIn6
/7/CNUaUBvr/VSDSNUh2Ur3ErVjOJ30GoOBXFJaAXVNT6RAXQ8/UpNjBQINM+jTnFVJs2M2fumtM
bJcOuyr9pmb8F+YJnYz/PF/jHg8dJHc/UqPbJKp8k+a1FmvuG/od1HQ9mukbXJ5dsOWBdH8h9z6D
yuQ/xNrjye53iZTN9z1Lm1aO4oJkc7xM6wEbVTTJG3RbrktJKQ+cn7thip2SbGSRTpicH+n5KeUA
rMflfJl806+1zfaESlTBS/r0i0+4+slxVFMpUEfr12F07tnpD/uw7mnADbjh6KjBk0EL8EhOtvcW
OZwvO/ehUZbbZEmuJwFkISgk210FTNj89oXS0LkLqAHYpXKGOhdtktwDUixaOepFilbvmKPYCwz7
XPOwOWW2ALRQ+c0Ymf/vpuBEHmRV8x5KWa0WP5p5kDclkDqzOfHbLbFHKIuOVEqqbIHC+kuom8pv
Njj6LngOdmITbq3KlSeauYcj5ASCO5WpfpD1DNJ44/aUeIugXS4Orc+lKvcWLpPdt/3LnU5ugTF0
3La3NxMBVRmEyOEu+q8kN4t8Ln1bACLKRaTqBSa7FMilwAAMZbF9dQJFbBDdFPDG8a4Vf298vCJS
7ysRQk2zoEJcaxrLg8V8U+AP0sy7FK+zRszukbzJUhtcdJjpU8lJsyw2oKFEkKyRK/3kgZCadcfv
IGJ/zKZpIQWiQZD2h/CIlFgLdpiWxlNEny2NaOZZlnC1fFjb6UoZ5sEDlT+NvVHXrPk0H6DVfmg4
k9DwPWIlfMYTbruv+HnQemM0/Gm6cEBDeRvwRvgj4Yrwf/Z5rx5SMN/IBZEVZQoVlFur7ncD75Bn
kJ0/vHQ5FrtEImezBxFmN7xV8IezZU6hV3pIuXOhWk7l4GhTBvseP6gCGpGXzONwN1LuOl4/Mupp
meuf/NTDO+I3jVpHwsp+T2SdlNliqKzxeqhzwkLo7WHCoJWn0mZG4BRqmy29jfCyygyuoqpsMqU7
5hY2rJtKTaubUNoMadZlUno/4L9eUCrwOPF+UyPazYGtEwl/r/5/SINiyuNDhz9ICFzHiLFL+g9R
ng767LKsQp5sELDuxphOU/zDEMM5NNUIOotE/ckPJLGSePdnAkIsgZLPbpgPVb6+wfreoCxzbDKg
ZnPqWQpd0fcidsjEIKo8A7VWbAkE/EffKcIfMKDoqM/XcwxAQ7fm0z5T16928dxgXgJ/Aoi3rjWV
k+/geaES7LDRYdTFpxlWsL1a2c91O40/ryPNkKL3deFpUZsVJXX/df8ToOPMogKVGs7tj1FHkbvw
TCryvJIkl0soxZU9C7wXzzvWuERGvPNKpm967WE2cdRBU9zi8KEbQfeE/bqNyCBWFAGlw+7R0XRW
3imPz5IXjGYC4cNL1pImsCGV+WYXcjVJ5qI2muHUKu3msOkN19OYcIBUcdOdi8Rf+8JEqTCb6wSm
tr7IpCw1IrQnehebyAy/VgJjOVFwl/s8ygTqRmhF9s65MaEYcWsVgYEU+BlmW7Gt8Ua+9H2kMHN5
Kp+TriVx/qIGTFF0lFX+FoU+s+fIyl+el3/S5vMZVu5ABkNR2woHBt84MOqHcWRxtVOF3y5jectf
triaNotexPptqzk6KteifeYrnYRvdYuB3wH3A+12iQSuHQztWGnYIq//qORmA3WfpojI8F5otLRM
HcQOTGNPCFKrbzv4nntA4bttA7F6Klrkf+QM15YXjv/lTOEklKOwoz2BTBxBeQn53yn9G/im+T6y
GgOWrR9sulI8FnAEvPjVsyRrpBf2eSn+UXtAxykQJz8Q9j5q6ieApyDdpc51D5V8/h2XjYUJxtbn
u2T4SPfeDKk1H6I94VbEdVRrc07KSv4+EWukaC9p40BmXtQv8D7NX6fOyeWaPCdiImt29HpFdJ5/
iqvaGrD64nn/WwxzBMr7jgDoiL5B2ocYD9+mSEdeGDjB2RC3BAn4Z4u8lz2qLZovss2Wi2uiWx6Y
EoVvkUm7xeCV07b9RKIdwfdxcTqKl9CzNJq0V7jJUn0ZyFs9kSgPZv1IJwEb91l8D+2BidAruFZq
yqlEd2UwJ0mvrZyOYBYPmLTxlqjwCWFh0VDv+er4uWWygC27Xu1uVgDFpNymFOns54U2NJsDTVJi
sURN40QfStY+aEwn1wLZqizssVz+IzEewqiuRwqdmjGourLwJXKE1z2PYT0p5gAJcDbOQKhZJwv6
SXjmENzkzTBCNs7Kzxd5pAglfFEYDFQhQCEF+MsFKhs74h6kuCVyfDEVwuULpsKIwWZ5bsBVGMN/
OBzVGoUm2jG/hT7wr4tOfClXklxfK/ClvyYGmQwb1Tk8+UUguDQYQV2VwwnDvUI8yveo7MK0bUMu
LCS6wTj43exI8qvGmwoieSygZoPJusbTlwVGGC75+iK9B0ryGH9sEoXzf/sI2e7oG0l9AcBLisXc
Rc0BhcsRFbzHW75nhARLlGzJOAgbuRGiYT6WLlHOOspSia1OBWhcyDf0otz31O9lFbIFa8Jb3NA2
vK4jGoCGloka3HK0ry7We0zdS8lVwj3FkLdTZ7I4kgLUNn4WyORhZ/hzISsqhW/691Lt4FJqeXq3
AgpHsWYSfeBFgmYEyH7ZFmkIKJzvfVqjFQPbWgLX3tuhn6s2kA/Fx4EkqPzjsP2goeI6x71Vt3gI
iZhFQeoGt05GU9RxeLSZunheAVsTrnlUMAOtOihmMCJG0cJ7mE0ngnvKr4vpwyqeAVA6rSz9gO1h
kAp+VMASveVI1SEVydzdRuCdjT5Po1TiDU0G1Aih5+jCiba5ICr587J80O6xeZa2fbXqv4onQqPh
AoEPmwkHhY/8MQsMxzHnBUc0XDqfHkho2212slwFxFgUQe6QBQRDPoGiJTzuokXsA+ut4kzRjJq3
lDEZcXRC7BhEbWVFovoGpP96dueT3aI4MlCGolYwPJTodgxMRV75BbMZfv466GV7H3LdBZniZptk
24II4Cf4blw0T6jjccckz/RgmJKyUMGm0Fac/PJAtixvMq/7e/KRIAcGszZihLTPMTPPGWzVpgJx
Fd52mbE1soCFMyCPTFuIwZvlrdY/+GEfro02XE8WWs4FNpi+FMo5DfZEjVuDybYOYKbmjxVSUfPa
AOMSQeSSwFdc3/sTSnsCo0OH+9t7VhHLWL8+dEvKTtYJfUIcqjGGHQ2WbBKgAHDNCKu+LAEFWVF2
J1+GFS6i8wFT2PzBUWJFJ99tXQMqtcFavZ95Dcyft4/tO6vjOwUkM1gEkqpptaZvYHwg2ZrB9DHV
+PUkbAQYpnngxu0J0ToKZPBNEYnZOWITOpua0qT7to9A0o7wx6rJhC5lWNaQ6o9zsh1LJuB5yVzH
yhavREeKTCMnJy7pT6TGcz388Q20xmmiyrkC1MAYm4JuzboHuzTTe7Yartjfpl1B5SzLGQ8egH+j
WBnXMEnOdRSnOUCeIVOe10w3s2PoladmICTm1Oeyi1rMR+u4qQy/QFtFgixLj8lraeisxOeqOgEB
NnQ3l64wJ6elisHmwsJr/c72DW28H4WiTSnPuo3plvgjwiyMF4wLvNevNxIQCAtzB/jCVPlKRjY3
8GDi3V+tVxWgMYpQSL27QkRgLjx/m6hjjXFXss/rTms9WfZJhIifDZ+j0iHGRMGdhqTfQmo8k8CO
5jeDWVQgZ+HVQgN6x9ElhO+Ysg1tbS8r6SDZsjinVE29KzztVRDSUYIGIEV/DXX9/g2If4BJEA4p
TKZnlY15pkNPka2jYzZ9NdE/nViugeeTiZav1SzU2bgHLFWldZ86O8OwmI5HEQllEypKp9Nkij59
cxJGUTtZG6pt79gmoAfdQ/ngHk1hfZ4vIIWJ2i7ktHa6MiNaK9Q9PNFwkBf5Zzh439MUBxnLJWyA
AoSxFdSAAJ3RpCJjA/vj/Glfy4seRboTJtwxefjc9XhbQ3buU/3RMggV9z+hkmtSOMFPW0yspqqX
VeLgYMCvc9uR8eib7BwfesMrj4w7xddZwYXy7iZzbBXRqgz0L0uor4mSySKDo3ZMkocd8VcQxfZf
eC681+nWsKqtuUcVV7WllCz6PgkCJSB1Oo9xBFJDXSIauWXUCXNbhzwy52czT2wCtKqL8A6ORu6m
K2OogJCooM923aBSQ3sc1y8WdeYUIMB9jkCCmazk43QAOzG35clsl9OaWyWWO1INUmww758qy1vi
+1MiXlUclJDGWzWxTFXPl0S/sAiNEg6bSop+Nx3QySuwVVPfEvfWD78vu1sZjPZZOwmp29l+KhBM
4rgvjzx6LMWmu4CBVm4/nPhvhJVQX3Cify+ucS+hKMtevuFuoTxLjDTcZC2lVD52bIwSh/WhDZ9S
fkbjMlCsIHQcVtq8fz0fvIOOfv0YDyUvubYhNr8Gwl7YVj20LIt+TKlzaeXdm/4OciGoU+nE3tjp
ikUoaDZJT2JxstHyhjU/gWg9hBR3AVEoUnxs8f3Qec6YLXGVuelYvly/1CgZ9vg7uQR5VARjJ4+f
HvyEjgyu1b4DQ5GD3IUU3EYGcfYyhR5lL04L9qJ+24U0MA/9D+uxOXz/lJsFH9QNErEhEJ1dEB+c
pyDh8ZBHmXZOnk9B/U0ShctlHQ5tHkMk7c1bzov+RJhahjiFySdDC4fkW2pfhyGhDN0QUSu9PVzN
uM3b7xiS8VocLxx4YrQ98aHg7MX7dyxB8nM2jWFAeuoDpoqIr3x7syV4GczS8V40pIy0Vw8uJKx5
i4PACRhkxBUemRbPceW5EazLULkyOw1bWYjRQ978QcB4hSttaWraJX3fexRQZYH9ZISjcn6MqHZ8
cS6JfKBclLyPY9Sd6+sSey8anQER/rFHj8nDzAug6nhIW5Pqf+P+b0lff1G2UYXo2ThmJuCMctUX
4dvQOvEaA4QJicIZoK3K42r3vVCcY7bGlIoTKZSKCJTNcNN/3QAmFX82InSFNjXB2X9cjEDV+sKT
fgElFc2uuXcBdh2lju833ZCxlzdfnQkRvFAmZJ91NEyfK4zp2LjoqEJLtoEXjbkGo4nk4lpo2d/h
PBLQxUjZyI7C+VXnh4rvBHX9BWgXu3zUyKOEQCeiQ1iO4keIiv1w9HkzMq4JnsDDcZsCTapme6Df
MICRjSN55U0dO5/++I3Om3PIaWwf5KcG8jrqm+PqbTXZ/mevvjqsNefJ0SriJQcHXOZWFsb6WKb2
5EKbASWt+6oN2pP2zATWCPhmhtWUOhN0NsRb76m0M2Pzzl9jPG/bYOcURU/sK+eu8iIO5ksYsssD
9lhbSiuAu1Cp9GWrxpM2Ym1E5DV2EieOg6tfPPt/YGEh2U6EW0uUl4zA/HXzPauXDaHqw/VIWp7c
ejjqvmihDGJ81n8Jlg5A62TM4w4jnpY4c/ZrOD/GicydZmQic7Ouv8qs9sHQ5midtjsVXWXOcgTu
E1cOXy7B99/8JW6ezKn21dOcBrvd9RP3PkDhRSdGf3iNE/OAhrOw1bca8cFwBvN7YSLR8eKsIP3V
IHVrC33KOiAFefcBoj4stuuMr2xvqAxdE1Sc/+soEHxb51QQFUtxN1uennUF+u+xQdCixSd4tOXN
Qk3oUj7mOef34E/scWYSaq6/hA1vtH+0sd6pd4i78Cf9ljLBfCB0fxUjnADokHM4mDlYwEOpaGxY
2y7eKnJKA+uCrud9WnjePZJq5oDB1BTeuQHvHJ58LWvkK4RqqJm/O56tmb+rBfrLP3bcCCChNnxc
LQYUigHiQUXj6tzuXP/MxkTODoQ3muWe/0rJelJTlkJmG/liVrqbKwivMeHkysiwr1ERFLimVBHV
sa3pvejR6a4kx56m2cLBoKfzfsA5Ff0VxuYgjTGqQk1Qjanvkmqw0F3WXPlzoIiLii2bEWX0lJmk
yaCdQtfkjM03h2L2LNCo9qjfHQvrLFUiCOH4dsUlH6FoZ5/WlAnC7weOlkreE8TuY6ggDjdioJ7l
JK8TpBCrN5JSt3EOPEYZqK3j9Pi75wrFdodHvINtrn+n7UIIYmsfU0MENrw/WaIgNlMH0LDsyBcf
lcHnYUy3frKz3apG74XNXf+zqb+re2avgXNXdUTe0n064FyUGis87prxTfU3MUBkt8/XTagbyAix
GKcIx9BcTO6V1mRUZClBH4TK45JhtZvcIlxtTBdYm73VL8YBF8Pu5j+mnYDhZmooG9b2u4bpgLOt
94wsuDewCRvxIiWPDt2oiBBc3IbQiPEnWd2lxjeBScaH9ihFSID5R/Td+vBP2mDHxcSYRpwazG/W
JZ0jG1P4ddpx9Nr5dvYjEnIqT0KjFXhQ0cY/2tgMwGc14Qry0UQS4JbQkNnjJWgnLZ0wK6c69Dpz
sA5BdXY/J9TkIfvf4CWtRxmUrQeP+5V9SDtawITKBr1U10xbYb4G5jn3LyI8cLTh7ojB3Anet3Qd
dAo45/D4B4ZcUjINsGkvi3Z4aWq2hkKKsVDqltSouQd7Yq8hBrbxZh3pwrGJ1AM3dKd1L1c1+t38
LfsNdBHPhp52eaRFpdbIFSQOuONCn6D9N7nYSh/xPFWu8RdFkTrFtydwxXCuJgQ15VLN+KAK5Zvl
RE2yRsO12OkvINn9YXdgUsgOwC9Hb+DdZCLQgWVyA+B0IW202NQieQxSlsSdAFQj5zUUIrk20v5J
bwgT5sjeLN4jzf+Ngo1hPLb8RGDwKYaGbYiUv7g0x7x6CNd7MAasyP1Uic7+M/GIad+OnwDjw0bY
IES2MAdhDEZ5VXIZ62dO8FUGdCan7u7FcG8IVdcyMosiBDNZWTOCqYnwL87nLuFX/dak5rHPy1Jh
mpvoW1rl6vW9wyMHCy7PorHr8DKub6LNjid3KvczB/fxVoTlhNbGxxW5hL42gg2vWJge1Ugr4lK2
xFTKdGRjIq4WeiOyD7sWROmy3JjSs2uvjy6rEtCA0B9m0UVzSCcXXeS4Hzjg2ZmzbVbVGgmjvyAJ
BuzUMjeZyDsi4mlFd2aqD/CzCoMJQw7v5u02qaIbr+4WX79SdQwQoojNfFWQdaAD2ECzpzySjo6t
/AcweNhpBsIIztVgfaIZ4Vs07KVeyCqV0vNFXBSWKgMC5GBSD199M8oRMLioufdM1ac8TFnGu6ue
ABaNBkTyWeEwARxopEywAqRMsRlrYujgamSFGH+yZX/5Rk8CjihCtYgrN2uevmjsjrXrtrDsH4Vx
anWYs3SH2ykTryuFHKJO854hbQMzB5tYfpTTCO4d8RRvmPUcWV6OAitkMK6X3dT1kXbWDTbBYRXX
FQ/wrqrKFQ2iZ/eRWvbw8PHqKVJMiImf3PJDN6evrjtnWfJLtFL/Y5D6Mxl088DnNk0mfpIsp2mP
xUiMUgIhtEIaQbC+eaf00LqS1XDM0B+kfYLpRnbJzLdvcjZaQEYtYw6j9ITK3YjtyeWz7/Ejke6h
QrATf33vXwdk2JMPCQ9yFIJleS3XnNiRiyBJFtMLL2N7oLIx5E4YySULls+9YWhiEhXPH1g5aS3g
Y+WYElOcEj7brQLWxCna5iiSzE+ngq/J+1Pr4RWcL4L9921NBhoZnXSMsu5ODevhlUIrV/W48WAI
A3bhUZH4ecIlfk6AEBclNVF51I3de0maTTJB2yva0yyZpZvVHmaiUzHGEWXjYwrgoD1NroYD2yuD
C7MIV5JMycuAuJA4FKySWbvqgdJa6lCxS/KKkDOhRfLKa5fax1+KAQ/uq48VxQARtp7TY5zpqgVU
VgblcGyvzDQpBuVaSr425yhOvfNzkay6pcNbVGYoNH6na7Dl/Gc4jHnvsnl2wah67h5ioNHDGxdZ
sdS0HybuqV9NhIK6R8Jo67jI2wQN24ymnwD2arIRgFrAZNrRJKONN3y+G95btzyAuwCLh/ikuJ+x
ubz8X2WpamnhanCLpIfNwnmU1MPk9Vun+QQRJ4tZJkW6RcH6rs5RCQuSnWVr1hlz/ojnjg7h1W1+
UrGHNQvr+tUSfXCyo3dFS7VkP0iKyp8MvyQDyssUAkOCRcdKcLL8N4bivEEaTBXROHMJvHQ7aarK
biyAQ5XktmD/WzkoyDTPBWf4+GvkJv6ETMZkAxTabClOaPaIXCAKOYb2ZhnJ0ePo9tfbL7NCBazj
3R6i9o6COlc8jdJ2tsg8Y7h/UzVMIjutH59QbCU8t/IIc9f0qh91o17CdS7+A9SUW6f5ELwCv7Y1
xAb7SaIs1iftGmDtmUhw0OS0G7L5Wo590bZRGfb3BBxJUoHMWCofNjx1Qhy6V9HUbn57yVeZjuSN
LTl04/35hADfcBRY2OwhZnuoQ2gH1lx9MLHwbcUD8QXs1CKQaN/QdctOqyiR4MyHzLUCyvIIqJVg
UDPLoTQAt5Th19ErOcKpXswbL1CpvfiXmHwIkt91E9FJGmWHeWfOWNPgeI0ABXFZx+kFdEms+DBU
S+xfGVaW6yvTiXwLZf3yPtgV1zZIX9cKRmdm472MrWJJ/B4+XQ8yJSwgB1KO5+Umupf+JEVy2yEU
ltdPSW5/XMwUDqXMFJqRdlCGYWPliXpeIs7QRKCPHqc36O5PZAKp1dqa+iv672Tv1mWFq5tzNU1t
1Vv8rUQ7qsuNxt9gjivzf+r2uw1/8uSV3+OyokFDL+lu8s7NCFadSasQ7LCMm6DmrxJOeSeVTsmb
8FVnDD3aziUSx1Bcf23+mcfYJz791l0rgozsGL6GnX0AsF2EcagV03G8MuFvQ7Gawykj3isXhFsp
J5p6on2Zm2+OJP3Oswv7irvFzZA/bzeH8/eAxsXQiBV/5Xq5YyG1G1NuRZKZKyx1nB98IWYcul67
k4+WdQOGHuaza6SYxx4lnG0XH1EUgnelaSv0DJ7wUT2tSqjYXMzgthqmsGoCZ0EoHGtQqAKmc/1x
Op/rwAMA6/LgY8pZvPTOOCJJQe2GAoP/pS80pVYy5VhrAb33QKKgO1N2m9kwnvvy2XaFdhyoPcZn
AUO+3G0S3mPNfd4B5/wfPMDscc/7NcyeElcUTLCMzZbl5eCtvDHH1ntnEHTw2Wkhs2WN0j/d8uAM
XBSXxpDIjKuRoXGj7juHBudlS+vPr/RfEYrDQ9/8CGMH8eLz/3hBp86hV0FuSuvtQLPS4AAhK1KD
RsXybmkNrc+GG1qgKsxUvgUBr5czIp+kpZnuDsF/ukUN0qtoPihyuKA0AtIfzis0uaifzcGAioK7
QmnIIItj947VBZr3FTuzrROe49VMLVltVQCDEPDTzew8yn/jACUxuB8GiXMjuQxSFNeJEcDVV+vU
3sj07q3UpjtSDNh05uxm3yJ9fhjrZOf4NSVVWj232069hl0gTM4owwwtvtTdWYou+8toY7MNuwIT
aRC5Z+3SEVP6bzeZBUctv/qhtjQ1iNXsrdzSIoVFq3kLQu7ah24PjWg0+zJPL39YT0d9bBp/JkiD
QqDWhvXIgAyH35NXS7GvE8m24Lig5in1M3MhznJjV6gHkBcTM0QSoQdcwXALqRY7yRHd8haQXPJ2
fZ1oxQTy7eFWlCa1/ZA3jiBhewnKwEgm8BwkrHpn4jiYjdVqZrcPjPrRXhtWku4TekymjTA/tosw
O/Xo8qeblUHGjndO3twnUk89g3vI/AkP03z3wfhCPmxCa0/zhj2JEa+VXIAcje+frf53ajE6/ZUr
BTubXFLj5ix4Yx0HogMfqfnEO72GXu91NuZtuE5F+SN0GyPgTq5gLJH1b6yAMqoo4PFA1Ao/gF6d
MstcZOvSp1NneUgZTpp8EG/uXRDB6O5rxzw4nifJjq5CcTQk76JSVXdzJJdDr3sBePdjGSRHs0qZ
L2S2DiQIzKkqjKQy2yO8uWJQ2FdBipGHvmJXMMU2Fi8tjFVNWN5cCIKQp8pLdPyMbBJ5voyfbc+k
QizYYFbY/fTOGhrS74dmMMTbY+FGwJMRGo/vqs7XXol673IWXlMImwk3GbsuDHhQjjdt3X5R/ZKT
Zi21WIoQcK3Bs+YemWVvtrWnzgP9JVoDC3aqWc9yQdmF6pHSCdG6Wuvh34Ge4ar/CVOZ84swSqLY
m5r5ghtZmu1aaKoizP8KWMWW5PM1ZyGpc87JOg2VhKqXyMz0e65XsO8PUXWsR9gw5fReTCnia/vd
mJUI751ukwireKHfqNgOYdtDlu6TnVlfmtPUaP87WC8tHRXo0s10aYfJWXY0R4G6PRgGEic0RvOI
9rxZPcOTPk0nWRf24BAeXQvQXbq/cX05DshyPlmXnYogviQBFXBkv3FdCtA6JmIr7KYF3obCbHuQ
+88kt/0x456z9U4beKkxhAdDOsekVRwgpq8nJQAnlcbLNyqLTnnrcaEEOUyy4aIlw+PqbRpW5WSK
r4tJbY7OTOKTSpoY6ErUKCbCU+5ivCr2bCsm+yD5OcQTaVL8OVSDm3Papkz4PciGEBjncv9DwvIN
5k2AuizsCGUb3u/T3sQOtfXSzpx/HUqoVGE9GZCZ+3ypGCR66g58wH//8RS5OH0wAcDJv0dYUrKq
DPMcxl//Tk3qpO1FZ8wqH1b5KckbhULg4CZEziirz5+alA5H05vMgTE3QMKE/MOeYUJ/YItQP/5P
aI4Jtdlg1Gsb+F61f2ZTF8LI4oLPTMXq8MAOD+DDXQLZ59awz9uax0HlXnlN49huO55FMofuyAE9
F18Z+vDfGMNEu4F1aaYC3MqOJHBkOb9okQL8f2FTBJrwhx1rHHsbOKVnGENTCavjLXmQvBzMoFKT
SN5CHyfTmYpD6CmpX6po5Bzx2scrBZFTk3O/A14p+IEQdAGNpE+y9ENgyahRA3FuQEe+kJ1LExQ3
UDjhYJFQMsZwREPAQivq6eR30Czemst4Uz32+rtd+ELqHVedXc0uFqvW1d1xYJGtZ35tb2aMySiw
Hd9+b+MWGQbhTPcYhGkVFunGld1Imo8V9/tdqN9Y+y9kO7o8bqkh4cIaQSCZK8jGg24MTFnoumgC
1SIcaBLpM2gFZ0Har/PH+kViZ5p0ZNP+rQ7UmlIFA2q8+y3wwl71d/hFLJB5ZH9dhNBtHmnQ2wTp
ztf6feNz2Wjg2jUnJQFw0ZDQq1SutxL1EapikndkjXpZA8Iq9nV35kXYq+HXWkfC3MalQxrIF0VQ
6cgDy96r0rtUaOIgcD9+0VZqrzxNqm4qRbbPxFSY0YvAsxWx9VrSeKC5ZP0tuJPfsLW5nTTXGuCH
8j54J22eMel4PmWu3lLVTyBhph9TR0VSRkSUG1P2wAMQEjgvaVbcRD1JUpT2Cb/UYD7lQ1myW8jG
WUqhYP5PHDwwZqTWPYjDz+2lzBrVJ5Dh8avap60wRWRiXMgSg4yrckGRn72iBiu/EV4XJe2tdjHy
P2wGPinzL6Foy2NLO5gGQipXKpFSr+HpIxlRcA8EE1nN3IFOQerYKL2Ido/jetDpOb0nNxA44i+O
H2iTg1dokZXaWqw53FZwjRyW0Z66gS8cmnLbwrIOBOK6kzOoHyLc+zwlqlb8J8otgMch8sGjbaIZ
43fsOCVg/4DsHCKUJFcJwJIjtphtKM/PHPSpcqAhaUHZeGSFpmPrlsp7pW6fgNtLAW0bDIvBehwM
910UAA6D/e1q0dVeguKflfCpFSvoBeb4WjkmMvR5W+KWJmkiUhnx1CV9a4ec35byHVDU3l7DwQWX
zyijAl+S3l9rbRSnfsk6r31UW20rzediIu5WrpO2gd7zSQOtVGduEPw8DdKNINz2BxFiX1FQkeMp
Bm2EGZMEwTaEawVMva7w/AD+QE7iJ/9LKlBmDoKmKSdfnpAOaKxo0nsGoUM+PemR41sKK4kkcI9L
Sc8fmeq+JUn7qmbuoP3FSR0mGpaQ2BLYlgKRXGgQyXMU/aCupIJWF5wyCyPD7iL1fPm7fRfoeom9
BsxbpUk7xVAnf88MYM6ju2ir/JljSD29KK3zeu7DrMwmNHao65xtEJv3mW/FSN/4xYMnPSeD8x3M
oS2V/9Nl1Nb1HUcXcFv6MMJhlDXljQxaGDXqdB3jPkt43sas0i7MkMwUo2QLLP1mFof5ES4/GTmQ
n0e7/XvRCZDuFNKsOneJJr6tRp3G80SPyg9WuzBrLVSM4SXI2opPzL5eelwgEqom0ld9EyY7RXDF
QroAAuE1JGVg94s5zfou4+R31975U/XVOCMXOdVNC5WxvuDcFcxWCdVQxIcskm+RX27dCOS2IcPt
/rMZ55V1Wn1aAGF7xcDHQkNt7kd6o9HsCRGqB/M70I/hildZ4j1+RsyXNwa5lxuADRFuCmT70qwi
DbdfOCqDuGvPBft7GX4Qj5VMmJmCEexFSSpqQ9/cVvTHJIdIshTKzBZzI71mvqjUU9yEkU2BU6W1
hrD8V/UWdLAsM3TxI++FIBXyZuLdrkC7wCjao7nVxgEVMY+DS1Z27Ifrhc+kuIakfa6sTF1XcCQf
fc2MZraHoOmkUCjww0AqSKC8Df6yZSyp/lCdovj5yESsmwN4Fc4I52Bx21lQBOPOSpYN3wg3SfDz
0GDXVFmLKHchl7oDwsNQ9QBn8FvN46Q+1ykyJVPOi7IlYDT1zhq7Gy6rywq2XtBumWH/mH53L+Xj
VlkV89lOF2fVPykKXwCm81cmT/moFaaTuvzJ67p6HTCd4Pmsl+/vNIj+/X6UlH00HBp3FmSq484p
AB/7QK1w/BOpua/4Jlx8TgemTGvLdQ+HKHNpaSneHqOiFwiyd3Uul+nkCbuxsMqprZaSDVqYLeo7
7T6oW0f9IynrOftsBalZ3ZY02hBGhcYy8HY5SVBFBZiI4vLfiG2KAQ+GxIgmndxThVCMYzd+wEcf
Mp3OD3m+6OXePrpJkE+rM9cGs3oQ9OVQdLLq/6L1PAgcdsg4dU6CLiS9dGDFkay+yVobJt4m5F0N
kBXd8ExNGeOKkgeZLdQ5JrSIfLS2QJXB6o6bu/dy1y65j9W5Zuvxyj5a5WwTPD8Sb/n0jB0SRxQx
b924iR7ZjjC4jpO2ApQD8+XGfzaWqsa0g1vVfR+3YAocX7vK1nBFPWp9vWaL24OASTnC00nTwHkl
RJRVfuY6u99q4Td7hjoG46qqMSEFzw9ih9+nFLx01OGxuJWPLO7AEasYNI+jFRSjCM3pQp53ti9c
LXpxk3FKyjjxssd3tr6budHjoplgLyjFv9YREUjukKuE4zCZciqd3nYGs4AP6mPbo+qZ/XGSvCAA
+NF8CIgpD0E6QtIiCXNdQ5Y3kLpTXwldTT4VvfRzfFxHo6joyewuRJD7WrT/fmXZ0OE+X7/wNxJQ
f5WSI+Glz+eeVeISOh/Bf/Vd3Wan7XnQ1ZpT57nIN0lUMsVIohKfYcVYhvuRHHC7fPRTW8ShbKri
RFogVWP+HYKfvO314G0ey1dBEFLd6Am7v3pLMe8Po+JU/6po6ldjsY3rKVi5S7VisphStyUVI/O0
yDKQZbnrUTN2lnhuFp16xl2ywyWIFWcFBGrFXnZSEhBSF9C8SpSg/Xlc7JJhLHLuhw/3ZyxmgFOn
DkKMBOUpp7UTjlkO4adZmUTVwLzzPNYxZ/B+3LfJZ5OZv6Fw7gauakZunnjl21SA4ZTaoMW9Ngwx
XJbDU3FZNTETsGneL2EmVMuSxMt6Al3P19bgLOQ4w0pyfXlDMe6QwT6OZX+3WKXRF1Uax6OODnqA
cZnB0D87iqkozf5pgub2R+4TGL1eiE+BNjwM9VPlNVJeA0USOWGtYNLE66SiFqhZwq2wEm4CG09A
lNjT5sNICGioiLDnv51I9qytuyK5ERbj2jECMiJ6cvLEvwNKvLgsCX70PhwqADTiHKUiP5JxCVz/
tFt+UeeBLsimPOWtoOlOnvgo5fD9EeiJT1P3G17LNnfgxtrnhuorNYQYkPuUK26d941Z77/7mZ2s
aC/+udEtk86kcB1Gw27IOss98gDjWmhmeztQiJCe1uiuu3JN5aP6Nm00LlhJ9+uB+B0QERRdbjDg
wVFOB3wYu/frbLpO6EAQ0RsjLFaFpFwu8tyxaeYSvgP1mygxK7tlpP3ju/0N4cXXIOqUKGjoOpRz
zQwV2J55TlmgKB3skkL+C1iq/pL7raef0lDQUR1JEPrIxOcX9jcsoeAJtwjEMqn9/nOs61evVP80
x+j7Upt1z9knhKoCIYM/hCDVLD1EL0tu9J7HJNt6i5P5+iZRenX1UqGQHuhbukDGTcG3sQsIRRwB
s2DYE6x/y3kujuPAHow2WcUXFn8ehvmPq0zFfjK0h3ZPiXTE9Zbate3CQ/0hJxPgpaJLfNAlSPnl
RUOldjh4Un5RJuknPumWMmDricmdj5zBu/7Ksii6gVjUFec4wrEVh1LTEH7moqtqCrvlpyrbv5TP
xQGWYmHXXg+wCkuA8DrdvQPfhySIpfTaD1aC+TZ8yrtJkZYreYhylon31rt9xohX/S2vbqltl8il
tQn2aHufuk1rkql7xM//V2pYif77EggjuZlVRUK2n+PwER5+lVdD89cJPjubeB1YFb0U3hwSLY/4
tCaI4VhetCo+2VLyzaVHOr6OeMmDqqvfuGtvljYfw/sidj/Yhm3zOAgf4kq6Qy3EnuX9ocIDzOr/
DMrBxPkADjhwfeqIkf51xBUI0FRm60Er4OpVYxzY8p+eNFLtKC6j5/K+uCrqy37mOKOBQ7v44WdR
60RzPGq+Ir53xPQAVV26vKDn+Vq8084U+tC3WT/+nimjt4BlLzudnJBDKrJRiOCMwzOnEAqC3gOH
gdx9C7Zwh/eU5VWuU8zqP1C+b7HxPfliELqPD1pBtO/mmU9l4NN4xVhm3Fvr/+eoDIq52mscLUNa
DfEDqZd81zxlZbRx7AeQ0Jh7AD9TZItL/wTeqfuXSztocj1GjQ4xkab4sB9A2WijrgEU7FDNZ6Uq
tcCr3E/rtd0ucjG3imo/oPqnrmoECD03oNDGUCAGCnx87fQDMCacROe/Go2KPeeiGD64ETKCoYGo
yOT9p3BtUy8tEWHS1ycyS8XHtVqpoITdQCz0rZDPVzaJuFsE0jTPjPxCprWc/bx/W3ZfLl2x2Oh0
rCZCT5TGghyTyAYJ1GS8G6U4+AQGFFUGE90NOgf17kKJ8/ZV6w7l6qHlrkIUAzlCl6JBXZxvI67p
WqiqXMqIwtv5JKCQnTxRmR+ObKzYkPKUnaX4WKj5mjnEvSSJRglbv6O6sPe6bEjDdY89NjpSPkTV
e7mUSBgpQnXhqNYMjVc6STknmG71rWiHNmS/tlk5qwaUzTpRnxsW/j+FKOEUj14mEvOlPYO8FJyC
+wXGd6yiziQlw4OcpHXdbuza57dfb7aKmy8hRFeMAwpHnUkYgG/rfeNYQ1bMr8nkpkPzgiY9hDha
fh3TzZxYh2px9AlJgwrx+IqEW66uOdhbKokFpI5J5zq7W2QTuNjMttocqSiPpwJCYKEYMmc1u5QD
nXC/apcUQq+iHqejLAxwIbL/BLyXy89FSfNsyoUnXqE0VxKq5K+YQxsdoGKZ0eZAM2mK5hZSLyQx
cX7PmBby+DHa5TebwFWu4sd3N0HfikttUZAEzfHQ4c0Mt7v7b2A8WKMGcu+JVYG3KNW1PE+M5oEt
aTgBQnflhM0Qe+4N7FyijYHmMSJhc2sB7tVuTYP35klnkc35dRu/p2TfUbTfRg170MdSSvVagDvQ
wJJoiS4Cb2T0xLTOn2AGf0OLUREhwSBjgPD/ssGCCDb+3MfBoU3UO1IfS6GJZXaNGfKkcfqTwpsp
IIhexYVToRHXC7vSOlapiT5G3Skchlk5IW4dLJ35jGRlEhqWxqf+C4uLA4k+nr9SBo29oNSX0QaM
2tdEBIW0h8Ofp09kVolYa2m9LQE7yYG6djPe4bkqrjbwP11Q+D8Chwj6R6wmNPaNH0JOE/8V8rm2
Pwzz/9HxjTgVIls9dOoYxhOQeIbQ9WHLlvg6FcYOtZ+TXjYXTINZTodAfFCKMGEGOwZynM75PYHo
AP7PUWpUfZWzL7gzgxBtK5Y4j6jDkvjBNS/qC4ETKUjOGU9zhBn7glWrNSDVl0HhN1gmJ6dRnwU3
lmJ5GKe/fYaJJXo0IyX4nwmkoFQEpHQKs0gnEQlZnABunFYbk8SECI48DrbY6lqqqcE0C4ir1aJe
gx86slxtI8cWqDvSCDzGtD9Ocr2LuNukJ/zaqfhmo92a9gbpWuzdm44bzIOLS1sbTVVnLp1qODf+
bWBZkw+G5lKarJ7ltCSEIl8R9ifDlWRvE//D0WSuY5EejRqrwqq9OuNk3a06hCm5nBkpV1m2oqL8
cp50FCDYpXR7/DmPDO82QLNk5I6YLJqyb4mvuPrO2Kokq/rRQcTiHo0LdwCrKLpgNT3ipHpCT1fg
ifiD8O7cdlnEbTMyOPqefpcOsvr6jQjUlTC7sePArBzODLUkgovI0UdjfIC1qBgfkdSyON9GhQ3S
BEf5eWksL1LwLCzkk2ih6ULr0NVl2yQ3kzOIS5A0bwxRgFxwALT0uoMPt2L8+SuZ7DCL/SMcHUSE
KKRbmo5yi5Ta/KaZxmYVkSLs6cCyAPmz3taRyP/JCNravc6a+50li+g1Yl+MfauM2L2KJXTNvahB
PIfUEGg8Ghn1DahaVcF/XpKOn2VIH9O/knRY9prb2QduI3pX0VnZjskEylogNSK/Xlq+yUGaxm/0
Qd1WMM7WN5TEyWHyEGqBWu7YQwQL79hdWbrFxvOShhZtO7fg/pKm874SX472Eo1yJDtk1UnJn1td
IFhQX39NWSdhk2knuuHXy5xkrq1u/gpvStDKjQvOp5WbtuAAf03o654DHU/oi+xrRSMB7R5OBjOU
Y3tDbOcwr3331HWpotU6UugFdRw8icA+/zfqKqBXpn/cIDf2lv1OeYHFXiWDTVURB8nhIqaZ7b02
HDnFUJmQKzMpD8zEaxCoBm97p93Db8+DDfxWD6ke84auxUWxRpGwPAnqAwEAF0pkrhIROaOmLshI
qYSrniY7qF4h3n3qWkkkL1viHst11saMwpZkcMr+ArfD1hmu88j/hVcy0X1n/rgR8B3KM/4tpApp
0RqdBXkkXg2dvLKM71/IGYLVnhrQvLl4hlnCn52bwbyiROpiF5ABbI4VcIdQehogZvJWM8ZaztoM
X+zWamKiXptdfJarRBMrjd/HblaqBEmXGPsOsk+K5HHgavNftTg5hmkLa/cXCLS54CWbmoAze6S2
41qYFvyvYDwFcUFHs68VrNBPNE7LpJGVRdDMO8CWTts64GDdCp0eAM/OEQlGAxgimg0D6vTR3wxP
A471ook2Vq9coDDX5JPTfiVkV1gPTPaGu7dvBO6iacpPt3++WJ/ARhcI44pi86eWhrCjMVyb3UEF
5kzr1qEjtGyGnb3Ww6hNSU1w9L+AzjhSf4hPaSdyXPBNmF9kG7orF2ASidlEYK/HVt4UzDBpZvHs
aJPzSr1afu1sWVki0cVSKshzCaPB4lmRnjk8hvHiAmZNihR3ejgGWJQsT4mvVyIJff5CRGy9ljVg
ZiDLMF0LkI3OHeiRZKro71vIcyScolANhpjVOGl/cgxWmIHjEKbCZSVn758M9oXDD1mCiVIbcKg+
Lucf6bkYVv0kbe/AE1HCZAZbSR3TQNSY3qo/zO9QndLg3EQMaZMMY/VcxGYJqtk4kphkToMzhTBc
Jg9KhP3AShWuBRvxmcH2cie+JF9Qf/EsJ45qfXYtSsfpqmgkTC+CUCzf0+OFErWmvzhmcLGKmv/L
BUnFhOOkB60Y8KznItALYwb7UtlGE9TZeDi3PX62bUChvipoI4MtUKASXzep3c/NUJtW38Z3Lv6c
i20qtAVw4wrRplEmoe/e4+Lyhsca7+vFQ8PR9JdrhUMEoa+0UkkFfCRHYdbd9yoKyVK9DdIC3A1r
Tf5MkhBHDy0RkjxRmGiC3Macrek1zaOoU1k7V5ymy5j2+Uul4qEoN/Rrrvy4xQObuFHp04KEH2gB
uv49pxMumZYD4TeFMo3vs5u4kf3CdQp4NuA2Q3tyxeXIFmWiKFiFXTCIsfcwf47eejg0IWq+x+Ux
TB0Gno+ZWR/A/ndV/adVSovN3GQxMUxLHeUpI+pBJ+bOMFuDE9v8DCki/2C4t6i/GVBHb37q6j6Q
3o0RaATKd+P6R+Su82+SC8cEYftILGKUKrZCT0nVXILGtJLbZ3xIYKTNdlPClaISCMvxsbNz4y6p
tJ8TX7KJfybgXHmWZK/x9C8hDr5O591lncIU1zO2XFZMrFGEkD0vrczlMKfWbh82dZ4a17FFlF5o
Kw09r4M3RnN9DAfeyI/mruoFdzamYeJqNYh27mvJB874hkxAKAM9kNxw1vrgKKCvxpLPT9ZZJ7EU
R6pu7cq/N0+eem4D3uWxMvX1RGgODJrfIqiYS0IdPt5X43Sej2b97wgX4ZcaX/AuxYsPk06iC3Id
jHjQOJgpegpRJIxCWox/alZAr18/5zEuUIpnZ0eLMlBF4bi8EVuc6mLCf+PAZwD6ubGxeXbX3lk5
z592GaIRAKR0b3i4QKfLXG8lRl0hbLyR6NbB8llBIAtnbm6Bbr3XAZ5e5Xz9RG5cGKNkqvMKcv38
zU7XW1lFufg1LYNJaWTXMezl4ZwM4SHLtblPbgfDLkl29nxR7l1xhCw9J3PpSARC1s1X0XuD/0pT
iJnElUBHecUERL74w+QKdBGE/kdmwnmB3KJGAEIgaoIqkinOD6vAMM4VhFW3C4PEmf1MQHnNvjPJ
OjcbNIzccRfKWd9BYwh1WEzO1LnYrCdNbbJr5HTGZKNVipe3wzsfNCrxa+Vg3qth2oO2/LN3NQml
Lm8+4LFpZHeTfsKCg5LRU40TSgYU0syqsM6BSHjvSxDj07BHgcJWwKX8f2f825fVltf+RCazKAny
ywDobAIwFcuAHA/2CHx781SXE7bUJDKZFQXKUNBlZ5R+xAsdcvWv+nlfk2yvCAyB7FOHrjPoQW2/
hwcH3RmXo8KCBFuvgwtr2ZNCU2ye7SoTp0TUXERaXpmjxdPbGUgZZR4cE/CGc+6Kd4diZFCQRYKF
hMDczRXaTHUbdRzxo8aEvW15MyWOUHFbYW5lSLjtsSTkD4zj47qpkcjZIwzdPZwnx0pZkyQjPkgS
hdch20wNC8ULZZ191u+ljiBFhYLc+SM8oRE/YCxGJ6xyrZWs+MQ1nX5U1VAdAWTAjsjrGoj2ypf+
ef/bp0MfvEZRUYEkOJSotLgBkL3FOqqBXp1UfUwytJfhq6SulxXPWaAzEUW+MS+3ShQWLpmICWnV
BKZOUGvQJvsijhNBvfBeWD4ZLvlJnjHpaAZKpbe+UsYS1qWkKQNmXlwYfGCNGHVgTcu4efjkh6xh
LZX2hDFh5i2Lim4QaFDlaf4VXenytfbq0FiGUffEjqiQMWfiT6z/Z6N6u50vZzMXEivN5C1B2HXP
Hv1c4ylhH3HipKZtuDAdqwJVSmW4dDwjR2HTJaINOO38efiheIj65KISJxIWnAJyfPj44tFthQoY
bkTNQJq5GD+nThphVr4LKheWWiDO0DBGHmkWnvCejanbdmqQA8DPz8WSyM+ZmFJ04eNrQAHMxfCs
BR2xUVV3c8M1WrliQuPK4OzWZAlTS8pryAKwV6WK9X89+T15b5v1GJ+ESMEsveJtVSBsWJPJIA4d
fnEWlByAnMukO60MjQtBpwOVQsRs+WvxlkQXF5oPn1GIiTdZ8t9iHJe9DQVSFUDsYr+zGObFfTCb
F7T/D0AkIL36+ulAoAihkb5RTtfHInF0o6eIy7Co2fnpKqDE2ErAWAsy5TsUS6zU1AZ3j9C3/Lur
nUEA4/kvgrvtZ1Ls9YAp8ZWNKR0uEkgjvMbNhv8XfrzFrQ/zjUgOSc6P3ZPBrd/kpcNwaQYG1HKS
KYOjxxCITonQNMH62RIjdXJSTEhjQoy6C4oeeGc0fPmu5ca9NbndX23r3FhIGFgphdp4fmt4UZKS
4h/cbDDU0bXt92E82u4s7mFCQ8osQ4zaJcBUNzK4PljYhbqOklxn4pllZol4kBQtDDzfKieXzZaV
uCF6Xepl0QU+jPwETGbJVcXA7mlxCumy+9FStjt23D1bxnNnkgGaOXgTDzqs2n8s/2r3NhcVM2wR
8BjPN0Kd1srjoidf9SA5J5tqFX2Z8NWAb6tiraAsbJdyc96fAA49gpL25fBjYqI/ZEd02LobadC6
iAaF7xRcOlOaUkj5J7dfz+P66zylU80/O0XV3r7dMP1ihHsafb1yeSof/5+z5SRY9JQgbY2XPvyK
Cwqa2ep7qc8/IuY78kw1wVfKfgZagV1cvmf8/+3u8uUm2tEnNxEgvzA01NamJRFXLBFT1M1Zn4pN
T4a4/XwcQz4QlYvkQWr2hO6ykn3sb7azkceINL2NC1dX5GJ7DX2u922UwUoWEJ62EI77n2AdpHzJ
nYs1/29svIv3908iBuSVbGu7js1uqNVXBFuDQ9tMWH9q7bahThFx9Znr9FkUhDmWoZem7O+w3oLZ
puP+yrvAifpRyReBTKqE2BR91Kp9e3dvYMJf8iAaYgXwwsK6yAXlJUyLOL0U66GZvU/eFXpYda2u
9dYqx+a3cVEWM+ijG+5+2bn99mN3LOBTEpBdX5lsdtNGgNotn8P6vDgfV22DBwpCI6leDHKMb041
ExfCpFAbFlAkRT4xtz6FqjKa0BuZ+SrwPhWrOhAHmjDic5Mz4ft2AqDxiv7HeNfSUE0yhaCPL86H
aUmqL1T3GeCc+FjM0vx58eJKdxNHpdNDCXXVzKyGJwO0EJlxCBw2AiJr3G+a4uvz+kKNy84ZRvMW
HHvH7eqatYFAVdoV8AJEwMr70GvAEmyV532Gyos5diA0F/Io9J89XOnnOtssX8uxZ1gwjZOtTbFU
bw9SdBg65JvzcBUkvPOj/WJVpF7LGTO50D1nT0cB5sIuBPi94VuYXQRWpQlAlsJNKtmjs2PzeM18
GjlXOxtiaIukA/jF0sIPtU1x1hxdoPCl+pF30+H67QNHQ8+QXnsFPTIhN0PVUA3DRl9PA50KKLcw
rrJgCmbyStHjmBT6eiR918qZvFdPBN57NE6c27W4XCBZjY3yt9K+N8FXHIFJlgAKnvv2tNuKwhBN
pQFRp8YmDgCzTexZHccVVuT6Z7bnrTdajVf2TmHIkhfsmZjNTQGDZIMCfDLvCiQku+eYLnzvK+J4
UoRvqSKaSQQ44ZwiYlIcPvK07pVg5XKFukaL/Oi4Jbk9M46W2C7rFEHxcKE6ZMJCtOa5Sk/SpUQp
WdqFiZnNi+kn3hYAESueBl+s2Rum3ZpzysSZ3hWVvZZ5+Bewi2tlm/qEWxLep2989EHH8iq1CKzr
mEVMHEDytQT5xhJ6y0X3Wf4LZFkjbX2qEbQyRYkF7GZ6i3FpNcz4uuZ5OaC587va0NeNtbefaTTN
8+3P8k372u4NgvEZTjQL5/+44kNPdTN2p+VhGY/RhzTwg1DbvQw7w7+rDxa5RvBNj0lOd7+GMvlF
/Or3hn6O1AyaJJIVMMe36D828+xehmuDMxDkpKH5Jku6lcoNCTStfGexgTF3Z4ZjFamZm8hFc9bT
b6t+UalSuChJIt+t/3WwwLjZ5jAXUOdp6vTUKy0z84PL2gs5JEpsOW+iysPgkOPFLROvaqyenG8r
whojYzBVMExPggVl3QtTJlI23X2SjEr2kxRg+mB6BfKKNQ8hbtc0zreRWsP4LFgZ1hsChOA+kSLJ
MGprnQjtaRfp+UqzCam4lvHZOjdyTOwiXBaRbjH3+4HYhk6AX91tk27bdsDCq/c7sPbwgJIpW7Ql
RxGdhy9ld/KTbcFJA73GPgq7IutCTKXeRrdTzLWAJJLTYCvgjLkk89iDbHa/N0oMptRH/z4MkGg0
KgY21+4eAfMSWLl6BfyZI8LXPNyu9xrmkZ6fexxf/rsBg9fcuw4rFGDGN+VgeiXGMdsVFPJVoPoa
cnUfaXUR+8u/HEBCGkpTjCWytHw80PDQNUQR6Zo3ElHNRDAHn+ubk+8pSB44mkcH6nXJhrBkg3J4
6YuUvXIYMDg0lu1AXklMSdgo/0DnfdGbqboxzy9c5Imo6Kdstf7Mtv+EjTkmwgZJDz89VeeKclc6
ggaGDmcdsRnLwQoGPSYo46Dwc+dZ+ZC+yUzlFIl8chrkwcaZ7ZHNyLER4oumFIcw9+junZpvqva8
jsdIJR1mQSrPsMCaP4K6+yDoA4SYvGg+zeUTxHlsCb99ZnxtRY2edzX02heUJ++7HHvuAyyRnkVn
G+tSEBFhpaZorNcRRf6AwPADfrfj6YAH2AqwzRYT6SG/CjACufyY8Fbl5zjYiPmCDS1/jQAo+Hdc
Yl4EDovXwUiSjHO9QIMi7Ck8dETjOIyAMMh7QGNFKPy8gsQhQBeoniPZTufrFp463C7TgtvWoTNg
78gcqjAHTcxYwIy3L/+s1KElhm06VVlBAaMpk4zJwbyfnBkp84jPrA0O1UcPGTWeR+vo0wl5ei7j
JmJ/TqWovwTq8+dKEXqqfxlS7DARVLcHXXeIFaey4X5Fkfn0ZMW1qPHEOlnaq/JZZH0EqGMVm/69
fYAw8BMbQKn3IeDl9nKr4jPMP5bahg/zh/nGyaTi4HGhMKzDEVEmIAYpnu1Xbl8qZQCa0tx9j+2G
suyf9r81kdeOhfwZuSEboPCV71wbLXt2p+xVzB5ugWaXdO2fV4elFpHoECDMRUddscbHp52FhXAz
/ykk9pu5iQSib8IaDk0IuI/axu2xZwpqGtALpWBWh1Tt9w5eqUrN005nN+zytsA3HXi8HGovGgwJ
MKTrKk/nQJn4XKUoUGh6Z7h8ggGxFwvKvfo2F/UojrlTPTCdn5lh1WaZkdPSbhLZyR4Oj2gcySF9
wscu3en4vEmnbW8QYVR5I0R6yx1Ybat1f3hM+DiFfdJ1O9Hfxi9OYc+BQqQterW1TzdXMoR+M6zz
WE/pwbwSAOK0WSMMyOUzCXOJr2/3MMIN+wrBRUHGQm/FK0lAAy4+l8FWB55TZU4IH6px4n37IaDY
cX8zlJeikNM+QuwB3+wyn/WB2RMwoUhWqA+tNOoT8s+pSZK+xya9CJX2ZYPo3j8t8xNgxR6DM3Y/
EoX6Ih5w+CbFIlavn9Gh8kt6+yWwa9qXka4DofHLBzbNJnrpdmWQFK8NyBU4Pz90XGLzOKxP0YZF
k1vQWkYvex6xYQsHew0C/Q7ybWz9yd2h8SYVFNrrOeKcI05YlR+8J5c3cX3w8zfsL4ZD1Vi0jgh8
9Zp1jWZMzAGpY21lNviRxmwjstMFXz2dYa8EbJa+ax+iugAOPxSzw0QIksTrj/e7u6a3gDwklmO5
F/Fr8E2Pxz89jrIlaOQU2B/gaOZBYpzjSPKPpvtL6cdxxZXaFNRXgoq0NVW6Kq6YYTs1/Yf/0LJf
Pj8jeQCXP11EZqR7zpAT6JtCMMHZkQsu3vODFjE+1xYMeRjXTIyHQXH1WTjrbSCaPJBnL/iMd7Xj
oHDNj777CC8q4Hx2GuHjRPwrpTIA8+YVbnEl8nEzYwyRd/TIBHYDwldmDi+V4tZZzTHlXNyw/V6G
hH3lfer8oXhAUFuD9W8980AhvLxK4IXC3zI81w+mrYhwuVCR0EXCWWuACDL6ALDl2tgfMC6EFQkT
RXkCKPj4cHnlS39XIhGWXQ+z51rCsrooSdhQ4Ho+76dQ+JDY7rzGdr3Qudi9di6Di3PEbQMtxlHN
LOzViuro+7Fg5NhYcU+3LGkXgUKGwIyumN2VaMlVx/E/pRF88ZvjaCzv4T8ELV769F3NTHsgztSs
EPdo71KeBpMeN/a6toGxYvl78QnmTkk/mu4x6ixIN/yvvvK6nvlKz7V8Kvww5INllKbMJtmoIGRV
CpEIaEAqWGlEbGbS2WvSdfoiKorj0FJHTo9Ouluw+MwDCLNVxL2hJGsoIVDOTyNNTRTyJ65fhfu6
8nZ/PXoPJAzt98AOtXwFYN2/6ZUpMcHTwflHGdqdlinV+fhItRgq/RW4sgB3sCZFue9WisiYxCH8
zfO7co47nPELrGv1ymVcKxEJd0sEp7KiKfFRQYlfq8DN1JADkp5JG6VYwSWyuS1DHfyqHwJ5UlwH
HSVEM0Jtg5eJ3g3ynPZjMRePLcl7+qVm55kv+VD9h5vVxE+WSNvs75xa4YKio7IOXIji7GkP3EbG
zZ0DI0qsDUI8NLRcSLvInoq1c0WZ0eafGbpdTsJO7RVdIXZHOznVrlQn2pYmgZdNPF2DFHIIOfhZ
U60rcbRXRHaLW8OA05puUsRV+ZNqF1sCg1+Mwv467oRsGn4JBPpUicRbyigOCbGqJ5bfyyNe6twt
XBkdXXxQkFqqrYf6q8CxZRYpH41Of5mVpdg0YfH5Bgn/6c+YK47dvfTW+74FVn7KJnsy1CPF6AXw
ZJE8HXsmDLa0a8rx8VvxFdK1MiKUiLqu713VzgHqpJXikNb4zjfbQQEwLf2sXjbEw82yl5O8edP4
yiyDPrj4dtWvgHYh3Mx2JY8XXQbbUe5ulARzrKzLgJNFaMJMipJExAHOAvebDXrS+WPMHstMT+Qx
gqwRK/rAwBM2pEDRl/xZCbVNtMj3mHWrN4Dn6jOIHcMNS/7NBO4w8WwVAa8HDp8WIxtgpbEQBo77
IUvY0CaNx7sOY7xofHMgzrN+oJhUk5CcAWD1/V70YTouncClvJ2FkYD7Soomh6LqRYr2eoawMSr5
YsW/cN6RZAjDPqN4y69xjdzR7F3BRyFh44noZtt1ts6UYW5Kp1PTo1JcVQOXR7XDATdUi+Mq17Vu
AWKxH2IgKA7SAHvgJrkNgzmb4JWbu/zoNj0jfzSMGdvXNkhTPVdRIhkMWRoVq3p5Ea7yarAhbljN
ce0wPCLBD7UbVTCSblDBaDDqEmpwxPaqirv5y7SUxNmvXyH+QRsSlW/oXzbynXPLMcgfSmtDFtdY
dJPfIZA4GHs3/CK1xisN0ra+0/fcpACO15Wmu6kd/8M1ZjghglN/UeNM7MBNX9bDP1MB/Io42wtR
mt6DfyNBZz7XjrrGKz4esk0CI8NjhsCMfqtTyQXnaArSGH5A9RUGR50CpJ8r+Q727caIkbI64X9P
VDD5HQOr08QmOkNV1wIsbHxd1Ocwp/QT69KE/TomaUJ+8igQg6WAiSBj8o6w3hpG8yDcPX6ga/dT
0+4pDCy2Jg94e34fibwL2EqIUKiSGhTnll8n7RBugXGRahFUZVjYm5iFCbcmEZOF7/w5Bfy4fZ2f
rWKoSMufkEwUNvX46RGZl7MBpgSsQEyMhnvP4yn+4jv3aJ64qygdp2YVjg6QmAKKbbhh3tM2Shz5
8ryR69zGX7VcJKoOzGEHLM+9rUVId09ur0GvQczlKAy5kHLC5ilo69sVLzcmawloZiUTv9RjkDN6
L+f60fcocPEhlrKEo0lxo4ZVWn6IWfCKOx1VVhTMjZEe6SqmryOTTIrVp1aVv8rcrrYL+PypyZsH
6qcrvSSa5truAPL749PFHh3dmNzWKJ599/uz4M+MNKa/fld3FKRniA+ejxAToKfDyI8+x15WA0Ph
03zP6poadRPhF0aR8Cj3w2KJmZSHmbnpp8cjgnBSPWPBZzhtt0c+mYjwpml2UwoJPBlRJOXmnWiS
8cOBARl4JA1n59f/6cOCyQR8xtdo1QIcDNVJvJUgQTm0w1jhaP7jZgavzOLNU6qf8eIJOHLZxuPI
fy1Qs59dnK/q851feGrHrx40n2PtUmmiIi7Hr8vWZYCDpcLipKduFy1Tz/MPac2U1BOHIkhU2MVJ
rU/c3udRCWxgI3+7R6hFeJyhod3DChgvLMUwLOAbdAZ5nY03nKuZjRbi2UH7GJRTVBuy9nyeClEc
qgnM1+/hBYWUKkjdYuqghh4b2Okzc7OqveYfZuJUSGajNm/sFyIsSV3ZvW7ddxQKNBuFAYCU2G4Z
LuhMz9nday2Tdc05SDCd/n/Ix5/Np08qLjXVba+kr2F8DA9pDM0D10eBiFuYg8tKydyh3ZnkK/pG
Y+bpII9ObKnMs+bWiqG2WoffcLI3F0o+kBMlfgbkLLCHEQMM1o52EAzIzpVGOd7xi0T4tQTXTFfv
r+T1Ur2VhgNhf5kt9ik+UwPMYDMcJgCwJpGmKcZchsU/gz71ZtkbxWMDMnns+WZ8w7MON1y59cyu
TpRGa7dkgnyr2WsfplvIPoJHW3QmBjbbMo42ICn0wluxY9Pwi5oHLDrJX6yyUrks6uLywVDYXRU1
raTaJJtNJx0JuBcsBmhiZh0DfL/4VpsWTCvP3BvlQK9cZaXPUn0SGlKIIL4Dl2SzdEyACqz7fzmk
Pb9NkbvsAzO8daTyJfjaBy+fWikWxr1P9nxMgTOyb5ZMBst196Zj7pFzIXNX2YoxbLmVEkBA7HX/
XnmOHdIUusBTFIyx4H4NH516cfViHYkmdrBxqu2n9Xrg6uAhZxQOAOQm4wptk2f00bFu0wEaiBtv
kRCTKWt4DytmkD+3ayoFxyaYlp8zqbRQ9lko+6pgY59voLURFSNd+JEZGTCA03mGx4r9W/GWpE24
MBxafFMJHu5sN0tm3tcR9YikUf9OZrY9/juFVjAH20SwwTtzYx8kVQvxHCMJonP1B3nkaHPHxMDe
cK0EaJW4rGGAwqn95Oepx6DK/LDGFmOoM5cY9Thq12QK5tgPi6tn17hJ831bzdUeRuuY/FXDIRNC
H37AanPV3MXEN3YUcjhT80hCIl63T3K0/KlZGCY4IWni0t0DwkNib02DAPHoqhhep9eTx9mY1CeP
h/U22ZyVe9D7nFs4kSCycQ3Wpq9vNOYrcjcKtlMsqSNSc6IsZ1Fmi61RJF4zU3Jt/4JJb26NNCMZ
Zx5knBRd3W8cblrbJADz/OUbkBlaoxRajj9yuBjrbeCKgAYELddD3P8BsjZBv4RXinA5FCG2cKjK
tMnlv13NjRWk/CsUknRCG6YDeoQ//kmAPldEIO1LYYuDgv7A8OyDraIy6ZjwT8YLYKBrf9MNfpck
kCuRmc4NCYxv37UmYo4bOPaX2XUjOzXIxMXgRkE+IFrCjhhCsIaYR2rckdm41A2SbZhbOdwy+lv4
0G8zs6xs81VAccm+f1lBd+Yxo8aOBXFiqgTSH7gkzKemra9Fylu+ySSghnkGZxJRUlT0TyaX6akK
MaPAVdEZtcol/hQVZkbbJWygZAtpF4MciJCENWFmZpKCsZ6+DMmXg7yXCmfiaXY7ktfS2QWLV1qW
QuUvO6cvuzmSkonU/xY4EwALM/OHU/EN652j6Fk6q+cXyiLYtfSpnepVxbRiLmyooGpopIWMdnXV
I0GDTFvDgIpe6lWoWOa/tEICV0Jp4kztbeO1Xv20PLno3xoJzPdDNwpXCv7PNYdVZV05mjomEk4V
ODua3Hf7mS3fmW/B3xM01TyWDQJc+aWgiBchyeiiJyyTba0g22AmWpIEofmP5UXbOM3QSXIL/5/t
tDoIEgeO/sx4bkCUBuX1helqlpRfFKPDqK1PBa3kiZgXpDyIt+3P+b3j8oxwyDV7FszgR5EwDxg3
k93lZzWFwtMOT+3F6texH2s17qVu96vNustXgGBaPYhaO8SVNNr/IlUtqxDxYEcs7qpXSA9tk6TS
FcYRjDq/jDATzRBvOtKSPo/vbtoeaReAwhDkOmv+wZVAexlYdwEIiuYUNXgXGSUaoxZKCJvTnW6e
e153afZxHvVvx+Ybb8akqFT60uqDh4o+wZGUoA3Dsk60P4jSf84U9toap+Re6HzB4sCf0BNohz/2
X7lAAW5yYe9Bht0HHtaZDtMEY57v8wMIgGvBr757ZC2a4f+kTcA2f80Dc3j/AQI7xC4sOMLZ0inH
ZtDD2MBsJKtgA0TvxmDw0Mpx+So4HJW0tgsOuU9Gq1Lal+PSEliEcat9m9524+4Zw7flsvBOHccg
Lk0RwO33gSexGyEcE3pSfcQSteIwZ0Nq8hnENX+im4VMyl1/QR2YhpJn+GYXVFVUtg981SKMciEh
BWMUYk70qhUmgXglAlSOQEHLm4Vyn3OgMzwBR/zK6gvmL0QivotsVo92lx7wK0yI11+DnD73ywCP
ayhlHwZ7Qv30WamCgmNNAcvDknF3B6Qv96dfBBAjeuR8JlonHftcOBlEaq7w6il7+E8JwZKzTnNm
MaUPH9xkehcR4IXe7lxgQW2h2CHiWn9aqL+llRYdhLUV5ai31ijK0kitp0EetNPnRh5bbw6ts39x
MXG7b5CiXSewfGGeaGZsKNpKC7ld3Z5NKTofGpdVoPB2OsmBxQ8W4hukK8zwROgcjW5SMnVAMXzm
CjLK7BcqnXH88IXDZM1lAme3iJAGsgRVjce09xzgS2Oj3c7dKf8tMelQvy9zoxg6YrFaaSzCe2Fk
XzP4I0uNhEcW0esZiSoB8FbO14uirFHlxpiofvs+di5vDyjdRExZ4BxKWRJtKRqftHAgP4cSW3XY
+LA5c4h/w9BxqhejtxNpAoxUt+EJ7KwzsNmqmFwmOduHv6vWugUrsKBGWDguPmZw62vUMCYH8lhV
xTeWnfYTQ1LOJFymY6Awe0YENbM7j+XuCuooHWkuYS9qvATFHSZGUSGegZWspB5MYTRp6mJTXBvL
/WTgHyQw+VnlKT0iauI4NziEs/f6xgHiu2iLs6z7F7NHOhucQ3hGxQcs07LorXG43YscX8qnTiLe
FaWKCHXHJqs4bDBYGASLS4dgvFjuydjZBNpU975Sg4TaJFUZh+RUqLulCwY9QztnTwO9kRuRVySq
SWZSJNXDOFR1yM/0m9dUHGANQvsZl4GC72/2X3udEMQiBIONAS1yXE94Y9u4hj3bKi+vTaUBItac
+W//xMrinzLpBxJ8fmIAzrnq24wNIqdOA5PSCBiXTr0x7W1d4/+GDr3Hj5Jl5TWrG/6VrrcShCai
Ovx4N5cfaZeHdcWfqzHYhzgLzMEba3aoSFIrbwWm91akKZXECbAVJniMbJEPZ/d9TY9CAkR/g7r2
jR97QZc7m/T5isiQXSogCIEZa7Z9+CkfGfX53d6qT3NgO75kOxCZfZQSZF186QKOeqBJ7repOoqq
Qj61aS5RO6bW/OSn6jrGM4oNwzhuMaq/JmeWogakTfhytee4Vw/Yo+gX5SEtFQ8RnAe5vizWSatL
HKe5bAl6JQJf7g3F6cHhVthOLIIP3Sdk8CKt3H4ruU+PQiMpjA+DxGTiSimEA9M8MJTUuTRZCzJs
BaU2DAUYt77YZJ3cJOxENJWVykr0NBkxeQ8kFFmvm6M1900SGGdqyFH416GyjEMF3dC+ZFKiDXqc
bpJ80c0f+rBUZrwkxQ92tgoecu2VlTEFKaKjWc73dL5CDYBYzoeSUBk7m+3NQvK0WRS0QMIPatc4
QRMaVTdglrO8AwNcgaSSha3sOdtRU3kacMv2Q0fsjdFOULMciJVptBSMSrGtBDwSEygbSEx/Ncbf
LN6GjeAhG6pnmZCkD/897YRqy/d5dhZp1St1mXhB58fdBZDvQu0J1QlhND+svB24U41hQaTe8HgC
XmFHCwREX3yDuQ/OqtXvizTMNtM0CYyoa1GtbhADlmRsjoOaqrOvCAbURPjutrb/UoUC3H1EDQVA
ltvWAb6Xy8aebqegck2qhX6+QwQtpniqaQk4OnYtbWHbjx+2COHWgXxj7UvuGdSoo2oTIchdmWxl
MqzHHvyqjc6K6le89wFALBYuejlPTXOfPR5utj0fmoEyzLdKNpD+HT3TNGSHyxeFgYUtWxzbhowA
wXGv4w3qsv+VranQsAO5dUlsQqoTOGTSdwR75ZxIJKZ4Sj/3d8om1NalfV6B+vC/2HzBEUr+sjDI
gA8eT7u52rHZ8II0pWKTYZQHiSaD7yLokRFZed3/5CMQCHAvy6Imsx6uL0SMCs2Cb+lh0dKFF402
sR+OGbwlvnDUyKx73kf5MexnfIxwJyMfiXaTzMd/MpEfYfkD1DRQFDQEJySp3G5S/fvcpWp/ta4R
fMIM7HvPdDyArxa46AQWKK+gmk0Hh6dX7AD9k3hQwFONbnDgWFyLJcXuMO9W0PP8pB491qZtsUdN
sRQYpnD19eN67TvVY37BBPN+kK5jJ5kLc22VarPRVOS9cexMFUTQxE9c0dKx6HzMPazE0tnGPkov
qwe3A2lQ0UnNXXOyVBvEbG5ds1nbWEuvrp1Y1VCb6wyqbW9mNGeLKMRRj2uLs/J7JWEwg9nKe3Uq
1FQOFov0uKwZmQtT4sisHAhC9qntesv0IM/PV3l9SsFMTsOvTUR4u6Avto6Ef08EAAE6SamD5PyA
1xHsiCbeDvv3YGGK/Dq1zGZPoyaDxEOZiSgj0uMfTJBxdp+Zd1CKnf8uD/nvRUUgo6GRDpK2VYSV
K+2iZSM+yr+eYn7aHXAqO80IguQN/G81LtpFK0b3lLuyi+CRZmeplFd3gOCKrN3tqMhMZ5H2iXyx
rIG5iJ5vQG+JyCxCIZZGcy6bgJiVubOIFnKxFbV8Y7WmVxsugCsrUp/K4fk6oZ8/UPhj78wKG13S
OXovBUlnDHrF7o2iyZjk4otdDLHzgT0IJnvchWX243rWw8lFEQZiTBgbMRfPS0jXzTH46KlZmnFx
APygFprWmTmRNGIEsEjcY/maOJDzlO4HkyRYf4yIIpPsUg0bVPJGgyU6JOSFlX2WZMNZZvigEzJE
QzymxodvVevePaJXlzz0l7dZSHSIXE0ZRUG7GPjvf/smIZ47xOTZXIt6yClKAoqoog7yhKqccJ6r
yWkN8OeCOEW4v4XSA6iAxK4zWkyw+FeIdmQQm4GuHqFmv40OlDy9SaKN5jVWQUtuE1z/MGRltfg8
xc8afBPAwDoxm+iBY/+jcdYq0qi3UN4XqQrs2AkGxK+09EWAiK2Dd1YUII137Em4TRYeh8Mxcp3X
x38NURSe+WzcKn14AHFL6yZJ+wvo7+C3IR0mPZ88V1iDlPlj5bfKmff9SbeI3bI1x50GbT5g8y5h
RRsh9ebi7zQdW/FqmTJ5vD0Yqt8NJERxIAE8FPr6IYp8Sc6EyOkx6B/E9hscB2fYN8Iw2YHrDy74
kOP09iogNxG/K/Qldf1fGeyO+xEZV68k7ea0J+pqEQQL619fD0V/8eHNr+4hhnPbU6dQNTtU0pLh
uTThrM/4cjrmkw2z0p+5FpgilNnP5YYiDBvR0USbxcxHTssFxatdUmURvsKfmz9r8ITbi/Fd8HHK
izASBOu1uJ0+lrTt4H13nNVdkC6TMyBxtybR5+ceCs/pBCrxtOf6whLpGZID1AkWs6KXu6rl1VSZ
5tYlfQDE6jQmkBPERc87VzS7S0KCDvJ0CxFXk5nyKWSI+e6uNIeM4v+74eno6p1RUfviJ0AcdC7J
1u/+v4R6kt8wKCfGCvzy+By8iV7oviyu33n7ZOBWcHY4Pa0mnEcfixjQKiheCkL1hZOOIH3KoJPQ
PO5fhsQpuw0A5TJzLZw2kOUDW/N2N8aZ+nhpSvArtQoNeULdL+6+095x/GQsciS/IGhB0yzTo8W+
38d5F+IKn2sq1PexJ2xHGEhZ8czwr5ojaWzncUrwHWnSFliBNdfGDZ3VLY85ynic+fEqvKj7eRZ0
mxqu5iFGucddJ5NMWEY7A95Li0zufd+xHbSL331EXudJOpHEqQq6YvXMoqrH5FLt1G02blSdTayE
Jk8pc8Yn+LHeqDjjUkRupvsFylyWou8SYNsJePydkjUqsfsym1GsNLW5AAZ3MIGTm6/6uwCxl9jw
nPhJdhZ8P0Tb2Fk153cPOpmm29JmzC51BxOz7hjaSSDDzLqQxmPpysePwW7lUb4I95330CGzVURn
g0A1JTSjO8Xgo7QJk/x1K+hLuXKzB07gFpY5jIV33O2LQwS/lwCfKLZqoP8vdlhhCV3qvNyr8KRr
UFgn4po5jKG0BYDCzmnWf15iKl5ZkSdj01u1o4/rugoW+JOPAsGzGlUOhkkckcztwIr8l5hvgtJf
ig6mOwKWmBLgaBNuLKxJkocFLzqKgpm+HHuzqFXZKRBUSe49yHZ419RJQliG7wUeClQbZJnUU1vx
sDknwfAvuMFLgx0GtmG4JcIrQg5MaK4nejEkf9XVBsTDw6mwHsD5IhF4qnau6+po4lOxJ0kpYUNy
LZwQzi9c56iBdbeHfyOnNaD7IKxA3NMEjssEpVOeVgrL9dfheY6ueDN9/HiKAV6ExASLoiFwnFD6
2SUdT9zxWhWfx2cClydTXM6IQU3bGHS29hPs3FTVH8+Fp1xTRtVMLwoa6YBZ/x9WmNP2hauiCR5c
k3V5j9M41BAtuH8VdNoHhcmPEuA9CqphqZjVMvWwYgAFRUM48+44o67vBD91VKWuIFhQWa5fhiZr
JJ+rwIvF6UGAnkrBVft3uQNS+a0DjPYUMEeFCIlYe4Ca8ltNd37yaGK4IyC2glm+lRZchAJb/M5W
ggJRxrC42wx/TNEstsPCvbgf6tGgIMBhYymoZzCsmRDvQEM/a/dc976Ew9/Dus4HjqOzkvnrw1Ht
83+8jsbYUPERYXyEQFkVcv7KGKEU/nwiIBr+IuIfNV15fpPMNxmdztZlcW55Wo9o5w0oVS/b8HG0
26wuZ2M2idnzVCI0qKqBivoLDRtIjDxhJI+1GfpC9nvmzhT1zLRa7wfU1QWQvsObh9gmcWrCMVF0
n6dciMw2ZfYDduUB/pkKKBGRzFn/QCCeToLdqI4DWkDmr1nsayCJRQxHn/OJh9iOD0XQtGwS/UrW
eApe3kWfPpqKeZzohjZrs0TnFzNnpnOQpAHowI8x30ciVTx2uKrrpFxKpDogfk7BNqVXGdVlqlrk
IvrAefE7K3fs2PcbTSt9mVynLC8QhZei8pwTwv2OxeN+B8eiVc1AZ5Gq8zVeqZUDr3nqG6w/AEcC
TmEZ/5O2ZwwyCe2oqShLfZZH2kYrKhWrttZiAFBi2oYPLxIPCsmNOJOrrK1iqyqp8ZVgZ19ay7er
KCJyhkOJ1nMKVLz+033UTjvlg3j0zZ4Cw9c930YNCgSPooGen2ZgmKTC0kKKueSnm3NQ2Sw/+UJn
YJoChEEflA5bVl8qkwQpyNywPYTZkgV8Xz79U2KYK0KTQgxc9iTAu5qYoPDrD21cr78OMyP1iMbZ
DLaEEvy16xAxsGqrOoRt/ovP1y9rXdOrtzO1nMm/3XtZ7vSBBRsSvQI/azDwOlTocixdkPe6yGmy
4ryPtf1mCkc3Uj75k/MHaK2Tj6WLJS5o1G7TkkrWlM66t6IfupirghJoAaZRrMy9zDMbLMnOxJOP
YaqBR5k1HrRuoE+RFzRw/4fwvFtTROAZUVv7rUOVJ+PKBYNy3WopBBIKZEADo5l7CXr9egU2sipe
6ajjG3GBhzIG3JuiYhP5ey42GgvRVOC1OX5MTeP1uF/K6ZAFStkQlVkNGVrMntLWookELb8+jTY1
uBH4mv/niiNZBL1AwBsLwYf4j6zddw0KM/HjVkXeXRWXNKJ7YNz0XZCtGDtzIzqqyId3N6y49eh4
WDcrgEPNAJR7czlLlBH8feqxOmJRZD4nsYCJabOq1h3/ZmoU9ZsTPSXBQnEWrb0wDONfbhGb69oV
c1HbQPUsoUQfh22DGMThAKKKjqAqWdTdQqorg+eeksq61U1fkJPkxeKOvArPqVH6yIj7p+ypNkh1
wK8p8/n5wmKGIGSrUtCem8fcPwUQxYZRxLbflkILplf8F5nqHPcGmw8LOhBMndxZTHnnxbXSnHMR
LamhGEQl35puQ5+/KM+kEImDmYwesxNWcEMY72SdaiwyUCfH9HUUeEA1+H2zbih6KZOrKMqmUJRr
yOxlvW17g43Pu630PQKXi0Z3Pa/2sNdYSINeqaKLDbUMZn3gOIlSgwnbpHyVV59bBhydJMLjNrag
FtL7Bk+RVmqhPW2ZMIJdJRXnMUAEyLyvO17PU2wWllVYxG0M0f2m7pKchVbyJgSM6Cke70YnA/TH
auYD2rBOHiot7pfgQwZFTRqm4SzNxlLeA2WKOLAQ1T5insr1Sts4AKeqfvkp/5uauKpp8CCfitV5
O89KgNaA7Q7sS/ud2ePvL+yaQHQdKep3RUCesVG1EVXs8T0gaRmC9KRQztW0iq8je1DXFyMYoziA
tfuh4wseb53q6uKqu6CuvUlmt1dlvL8VQxx2BZYqug7kY50Cl2vzK77SphPwQAVsbsBpKVsf4Hs5
RCnvFhZKUchP2OPmHgk265Z5GKade2TZ2NZut4yt2NgO/Jq4LAYg+co9WSYVsfNssx13qRLGRg4c
VQslBIStO5jE/AYh3m+bdzfHBHD5upFu+WHuZVZOjNmZqdcSyWNdxAjeCuKSslwYwMlsEeg+JZnM
7xDNzoxBXIp3CYPFWMe1rl/uyHvsZuKX8cev/dZhsS9568WaGDzwAvaxiFgUbX9OuKNCLrAcSggg
0mho5/JKy/XCDF9mAa+JcFBPJkSFP5RpIeIZomVxMOVanHFc3/p0Tb930nnSyV/Bgqd8eXNDud4E
aBegqhQujlkhFwd5pxgaz1ve93FLFV9DbXfSdofC5ubyfhnnMh3T8Cq2v+XZSkWRsIRlDnh2OqRX
tAitrBG4DppDcPQoocb2c/YfOUp2SU4uYJvrKP3lbR8amfDyze6NFUZTmAiBUOC1Pp3Q0T7Ab40u
jfdnOo8wmboScrXGVbr2Tgc5mjVgcTzDoU98UpkI0msr5gVJWgcDkCbCbfgDAiIkWPZyDRnG3LzT
qDEIm36NHNF5RAQvHNqkOuq3m0HRfPO1GiK+FVjeZWjGQARbmsHjfC9lhEih5QVmDahMkLJR445l
xj+ESVF5NTCCWzWEUwDXCN7mXGJt++guCnDiAf12gKDo6p4jsNZEJsvqmgbyoMAg8Ma7R6u5UxEP
B4SF8YciPLIM0oRxrYdSoNtevJb9BaePPIe9etAXoFvIv7ZooJp7ZdQ+k6QKo7ky1Pkc1bSjYfRC
6SVyswTwYAwHuGrz8vkExh7rs70PXoUj+XaHI50WXZo8KgybnBGhW1LHPTRoIMi/0Jc2iJS5T/yt
BfQRdKmMXQtPdy5umV8pW7Z9JWihsx+8JEKfyOiVbitjGZPK1MvqJVh480pnkmeh7YSiox9oqTj/
lriSr0dtJt0RAnascH/6hxwzrZ7rNCnTKgVUbIa2eYXhsWV0sqnZJ0Rw1k9kA/JppuFrNcvaOoW8
UCGGSrvWLG2YN8XoWwta9ar/UoovlMVpbJq+s5D0EDqQw2vbyF0xikY8qsm/mGaY1L8ZIyS7kyPP
kaHVzz2FsAlwqDVjASogCklnTTpczzaFAGgt7UlOO/8JOzddsT406c6Xmhsxs/L5SEgdXqPyyXXp
HTHCfdDToJd9AGXlY4MehY29BMEcXabDTqsqO97HVeere77ehPkEmxSQpS2MkfYMOa2XtCsUjSi3
cPrR/9Ah+YbK6C+L/BTav7THOpTKJlaJHXj3Wn0tqjeUw+lDIY2memQqNmcWOlzmriAdCSxMVrlS
HB1fs1e9Y6lObrIHqIBhPr9rpi1ki6Ef021q9TAQp2GssBx6r0kfus8bjXcFPyBsrewAQD7TZJrN
o4pfCtR92bbVvo/WfNtlkS6ZhbpORn0j1hftcYHmUqnwKf/edcb6gVN47DH0KiFtBjWKQiPAwRIJ
8IRYjUbOcHVlqk/1wntN8Y06S+V+tl2Gy1otFrwYraGupdrpB1vO0wBlW47C5/9wiRb09eGT/pfg
aFForZGT/h7Z6tU15yNtUDVDcnhOXXIk8952PnTHGL/pSOrehHzZBwVr9h8AEnFwZk1ThL0YDuz3
bgM9d/VdcsDPOIfD05FTht3t3RnwCTpNi2sza569/bd5frDRuwE+lOdeiiayBQiVJ44qqVeqHzDQ
+zUk95VmV/x9+Rm60jO5PwB+1qlpN8TTIrqxaMsyocXbI8deBDPVSlvUxL2Vbl1V6DxicXrkVI/j
xcQWVbwbTxBejWGk2rvpVaqO9lybSK9p2iUqozB7qPCi1GiHBHbq0YDLSlv9ndiUX6yWkfNnzXYC
NhI6Id79vCbOFgPl8i8V5n1ipjH17wS/rbFtppmws6vwgm0QNq4dN4YCEn+g4sN9roNnNaqKmt63
tCkrtuYbw3MV/c1qUGlS6GASbSgQgZNOzODWkE+hEQHd7CoTDSQKbvL/vYDktS1Q2Yg3i5ndJf3f
+rbcnfWwT3V7rP4x4uRCm9E3Df/ocS0KmBbZfJLBMhp1XPaGXC2I2fMlbUPWbCGTYiShdONbKm70
ORHB1XkQGbJc1KsO7/HmoYGkjJniHpXrN7Ay7EtpxAwmLk7rD7QTAKCxhyQCgd99S3IObMq4te+Q
RU1fv9YmLqsg4udzIAy3dybdnN3cx5Sywu1zCo2loNUmm+fj4LvKAFzIOHZOC7pfOGumY7TMbKfh
Plv0gkQd5oUagUY1y13eBVUGcmYwL4ylpjPORnkIHntw+udnrBpmE7W8UrNZN+3LjajIOwXjL6aG
mDWkMZZpW7sEjuo3pE/8CsEJ5mOyUBPOMwaKvi/e6Z7L/b9hDODM+BzM0ljkIC5kQNmL8V4jWS0U
RikOUpWtnJT5igS10/AwoNsAMdpKb6LVQYSs9lUmEh/wmFm1v0iwCUOhJT04LrEkS4MS5tOCWzdr
gDryO9AGCjQbbHmkh25+26RJsjfCkdDNX0/GzHX0GaNdgVnj/FV10wU5qoT/jg6CVqTfCFnKy13L
TX0mifye8+hCb7CPPPi2aT2JHoC2PxTGsxuRFUmZE4h5LC210GrYUVcW0BHbgmKzih6mnpb+CPDn
hVItjtVK5mxuz7BwM96SgLN0s8VBoro29LZo4HqGIJxmpXdo+dnCuQzQPa+TXPQgfY/39sbTr+me
00eeZXAJ7hsehANbKMmQGCIBMLoTCxAtB7l7FAGq6FFCcjgGR02dnWDIdMH4qV8SkCeXTIhUtLgK
taVQKl6gOZDwvjCaqSoJLg2Ugq6alWjMHC+P6cRMCbQB5E6+KxS2t8ivzL6dDOQcmr6SDOgfrTbC
0NcxJnNAJJB03x2yjVoqMnBEtrNJ4Fv3ZgMOlFTxdfZqcHTnYuRMDeQ4p1nm003CQg8KFS2J6TzY
Kk14Z4B5C16/F2RkElshT0A+bqn5Yxhydml3lwX+VC7UvjumQEa8niERFippHu8s+AUL8rKCBZQp
7zy2MkncxXsTKKz3oGS32TebrRAFgk1lmZNk8yMPKW2rMdaqLdM67EuqMkTemfHNIDdFHjlx9Mcw
DVbl01ziNRtSzjQMsxcQm3B0gXBiWhSno1pYnonCEfgUNRLQckE1vjA6gEgOuXgIllWdnCSsZKih
PaDeEqZMKZrLAVlOeXY40ouGb3qYDS/xGWBZTP+rKyNGjX3KAewt3S4NLykwogDB1fsLd4PI4OkN
hl64YNUpCJ737XFbTPqm9KPvMB766EsJt4Q0YMu3cvCf18VchMKck5RiDeAhrMcB+WmNkOiM2pNa
AqJPVdEgA5CP+WlFgGD5ngVr39zUJL3/HpzETt/tEZnV6m+jPcKH+kwQklzP+DbGPkLA5uyILtpR
kJ/yftZgjL3tjrWY5+8zT00I4ullUhrZXHQJlnGrnxWiUHJ1XjWGQT7AIPZQVxYEQP5CTenDu8iw
PqioymlNMPsaTzdPYu/0QoUl6LZ3/ydIJt9Y6Kk9/Ag3k2uyyUCn1BYOfJH8/7y+pvaM86sjJUF+
VIW/TBtlibKi4TLZj577NUkCJcmLfSca+sMAEoZXhNMBRzUE+7H7DoXUACiQY2caBLqtmo1iAoPf
QbxV7XTpWT3ADMGs8SJvAYgzqYzBjeDhqAH0ZnaIcBS6/99VN3kzPDSrOK1aNnwcXc1Ciucml4t5
XSkwi+kB1AQTki9Usis+DNcFCTFvVSC9FuNtMQXJzhBK6W3g4DW7EiE9X0AkCVB6a1neVhgVegFs
jcC3MQY5U6fliBcai+WzbYqfonUj/k1NKykKvOonyTEhuIoxsxT1547DxRNzLQmjX3avDLdgQe+j
jMpKIllUzh8MPVqKiLCYuWxueQHddoX+qLFzzqxH/C7oYnRdcL51JAbjGZixJkX+B1g8gIrMcKjg
K1AKZCAQYNIlanYltB3/myj7l6BUmkWWdDkasXEuqi7+mCjrMUSTwhYZh3+OLID+DU8FT/1mHf5z
3e4+6AlNftcRqF8pn0gYd5KYjVLnrYpbpEl0LxE3AbAn+VtIsiuNCLhICbS+5qop0GQ69m52WEWi
8MtoD53QIC+6KiA6/nPXBjFWlFd0HWNVHuafl03pI94ZTmNl7XCdY/g08R1V/AVHTLUv49ZaULnz
9MSUjKfgPt4pK9B7Cod36LAYWkhVecZjCkt2nATAs5VjkUg1ppPYXyMCrFEHkGHmpE7FjtcHIyR8
jYxXEeYYIXJyqRcVgAS6FtOuDpdkr2PqFTRugKHdfKT72mUhKv8N7uW0LnDvcwl8ThfMKx934hZr
sWUzcZ9OqlLjbeZd1GXT7nR4j2V8O/Wu+F6BsYBp42bD1euEAABNIF+7haUXh2VSIefAG7KRS6+x
vksFxJxRwmYFk9HeC5x4Zbi/72vOw3sT3ruC/w8BltFZGeydQ5Ds0cH0ljXv4n3wtXPT/z4korOW
RRefCrf+Xve5LxxEAuBjftsg03200t1PKzQ/JJcZNJYmYILUAQoNs0RP5VYJhXnL21/2o11OA/rU
rH4kNELEgnOoeMforloQMFpS6nqwJwuP1owZYy9yc2fMNtQxhh1ZYMVTbpqX+YtU8ogImiwveAaw
D3IeTAyCSOiiAAeXjgG+oAdro0UCHDrK8nHamn9ljunFFnNLIKBhpRdjPZBiSkctrLJdl4YmDv/U
hQ5/+14DMrhi53aPmTgsHW6EOnvOhFn3Q+6H0CXpf6rmE1hG6WU8Xrh4QBk5xyiP8DUZ//jL7wTk
sKMTf1hZkpdNPXTyB0GBCm163TAYhKumo5vcgE9skRHMuHREFTqxP+o5rxsJWYtde5JZGx8GCnLt
vUS3t/cswKnZvD262wmI456Iv9tdG+SoZHVJ9d8wSqLK3F3zs9uoIiaTG1n0+WnPIESZ08h1pwpf
cltJyXOqLOo20yzKLnogCqzNOaKB5eko5/8znAkyRkAfiRcN7geUOuD+YvOqPgAAuvvuw/BZeo1G
vqEved+LXXRSPSwdRo+Beu9CgyaEfPL4On4bPdYzo0AYiRhCF2zL6Slh6gmBGYHU+C3JKu3jVP4i
1YHIIgyblSo/zIXMNrEX2yRDGbzDaWJ4fM/P0zSUjAojy/sw6/2X/7ewbQTvBtdQa+5iRpW6/kol
8f6Ajc+IjHsJRdg9dbrG1A6Y1HcW6PRD7Mt3B3ViQ0h2v+WGS6b61rULD2HgVIR2VQe1BFCJ7kAX
aB3ucWa3rdVIfw8V+g4nN6m4R9dM6bDRbQSQcW7Pkguxli0t2Tldz4wazC7lrgAxtzdeIVuTsUhw
S1gd8tByUZxi26vLVjQjxZt8gcgZ3ZHwWgM6KJ5ypwTt45s49UE1XM9OVsjPGzPuNmw6dqgWYhMj
GynVf5QckT10sDI1YxQyn2KGWVXuPg6A0z0Pdw+FH8hLx2Do6jy6f1ycmbMfNlS/yayX4+4PePcj
oUD+CrjAXZjcwcUg06l795FIG9TPA3jpqiNDAJJZhuiPPX0HU6uM9yuA3DsgC3GU18afiI//nfYP
wdKRsCWcTQjoHitb4frKm3d5AxcAY3gmLfe+Z1Az4SvhpmGkaFYcMisQhVEloC836YHuP/RMjB1q
ImvJD+kt1MXBDl4GipZEdb2tkvFMUnYmN3Sz2M6tWDylU0Bs6APV6DClNeu8b8NKXdLm9CJ2c/QY
tNu+s67ZQUQyIxFP+NzIfuBI3gPmBGu/QD84eb5fPuJoEnKCYqyw8r5dx/o/BhgJ+WQUyOaiJGa4
imLSgVqj3L821qTwlXM3r32zcRKWCqRJqCUUd1tldrArcTl7nut84TEJr7plMbW+palJKx2X1dWn
0L1nJiLe8ZOdbUOBi2R36G5mx4NGDxHTd4PsjxQgSWW4Y9UUMl5gxkxVres3pxKqqWvYL99C/09B
OZmGnDW3iXsxODhvGoWeGebIKbCMXH9qo5W3WPBAoYfzy0wj74KYO76JFT/0aWWbPuWGhUasDC/m
GRIGGUgHWSIg2AhyUjg3EJr2CRLtx7iOoApVdoD00/4LlzylGn8uQxiDi1MRimjQ8Nztpkq8N6Wr
VjxWCZlUoiAmd/a98sbimw7606coKdRIYRgGeN0DSD9ZpRWKJjADCHnFwJ8vdV+iDNxm7pA2CtNJ
3SOb4JgLGXiEWf8vf8J6b5E+wL+XoCwYngw7fTvl77ftj6E0L++SQKVh99fYmFf3AjIualp/Qinq
xVHR7/TOT4ERl/yaDAjplpH00Z0QcVSKPdR0FBnGWM8UCtM2Ggfi36bSzQ5ZuG4K7I/bs77tktDO
XfDq1hEbyzXFw2hE9+fpFXS1G0oFGWmyFdQgI4fjcKEkFUlNyuoW0RB12oidH2amV0fkqXiZwnQL
RfiNvaMzdHgXU4aSotoOCZCs3EjOCzucZ1CWdtm8P21uMjDVM8rxc3/gXV3/rdqz5jmleRS9WyZJ
t6PxoOMjVFO2AuCtVa9Wj6dwn5T9kIVTW6VrPfCL5JcYAmT9VhX2Eakye0FnrW0Z4MohIvhUzPy8
q8w0pEefMHiLdub4TthM/6zwaWSGaT3M34tP3mtUYSzWLkLiBgQfjXK9cwWrQasA3M87eimeP8W8
AdO45ujXXjkbPJQQVUGtZMwGXgaR4d2SM5vos0FHXBBGMPjUdHQOsyLlwcItWqt+/lKBwTXLcfP/
R5x1abajTEprGj2NUjS7TCtWiGMo+XcRnJlmplx6hsPkQpVls1Mu74h+LnaF5cSQSn6DxmSxkiwc
HX8YmnbSnbzBpelSAEj3juI93+QTjY/rGZvTqly0LrxvKVXCp4nz98qb/IFixLt2KhVOVYgCTOHs
j5OW4Tb8xQKr2yEk0gKnE0mlUnrSWE51g8RRr0yK9KO4EFAObK84ybIEg8Fc7ejkAz1w0QTf2ia/
zxZcIO5hUYJRS7Slq4Vr8UWXT+1nEFtfSBQ06nm8onsIP8auGw1V8v+s0lxV486K7JuDQA54e50G
30u2Mdpg49QBQkCfoUgs9GFJmrbSqz1RW5uppQ==
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
