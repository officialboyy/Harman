// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jun 14 14:37:23 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sdpram1_sim_netlist.v
// Design      : sdpram1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
