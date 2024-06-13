// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jun 13 15:23:35 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ spram3_sim_netlist.v
// Design      : spram3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
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
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "spram3.mem" *) 
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
        .regcea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
+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
2wf9qA==
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
