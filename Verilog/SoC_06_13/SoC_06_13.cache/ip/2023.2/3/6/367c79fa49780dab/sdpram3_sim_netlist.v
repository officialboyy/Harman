// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jun 14 14:39:23 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sdpram3_sim_netlist.v
// Design      : sdpram3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20224)
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
