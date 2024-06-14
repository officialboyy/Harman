// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jun 14 14:38:54 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Harman/Verilog/SoC_06_13/SoC_06_13.gen/sources_1/ip/sdpram2/sdpram2_sim_netlist.v
// Design      : sdpram2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram2,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module sdpram2
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.926849 mW" *) 
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
  (* C_INIT_FILE = "sdpram2.mem" *) 
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
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  sdpram2_blk_mem_gen_v8_4_7 U0
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
PZB6CO9+jbxVHzd6vKF2JE1Q3uFJaXg=
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
