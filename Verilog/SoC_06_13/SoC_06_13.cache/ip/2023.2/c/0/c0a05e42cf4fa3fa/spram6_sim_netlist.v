// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jun 13 15:29:32 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ spram6_sim_netlist.v
// Design      : spram6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram6,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.371299 mW" *) 
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
  (* C_INIT_FILE = "spram6.mem" *) 
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
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
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
