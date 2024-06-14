// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jun 14 14:37:24 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Harman/Verilog/SoC_06_13/SoC_06_13.gen/sources_1/ip/sdpram1/sdpram1_sim_netlist.v
// Design      : sdpram1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module sdpram1
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
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
  (* C_INIT_FILE = "sdpram1.mem" *) 
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
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  sdpram1_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20144)
`pragma protect data_block
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
PPIO0Lh8n3jHQBiRG4MTMmXVw/7wAe4=
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
