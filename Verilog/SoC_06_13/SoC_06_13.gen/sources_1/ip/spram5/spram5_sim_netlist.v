// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jun 13 15:28:54 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Harman/Verilog/SoC_06_13/SoC_06_13.gen/sources_1/ip/spram5/spram5_sim_netlist.v
// Design      : spram5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram5,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module spram5
   (clka,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  input regcea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire regcea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.57205 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "1" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "spram5.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
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
  spram5_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(regcea),
        .regceb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19200)
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
