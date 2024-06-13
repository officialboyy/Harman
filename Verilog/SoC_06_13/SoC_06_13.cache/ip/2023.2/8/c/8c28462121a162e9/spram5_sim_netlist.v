// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jun 13 15:28:53 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ spram5_sim_netlist.v
// Design      : spram5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram5,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19296)
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
