// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jun 14 14:38:53 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sdpram2_sim_netlist.v
// Design      : sdpram2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram2,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
