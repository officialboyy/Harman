// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jun 14 14:39:24 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Harman/Verilog/SoC_06_13/SoC_06_13.gen/sources_1/ip/sdpram3/sdpram3_sim_netlist.v
// Design      : sdpram3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module sdpram3
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    regceb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  input regceb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire regceb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
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
  wire [15:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7261 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "1" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "sdpram3.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  sdpram3_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[15:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(regceb),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20128)
`pragma protect data_block
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
P3QWAKgy4Q==
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
