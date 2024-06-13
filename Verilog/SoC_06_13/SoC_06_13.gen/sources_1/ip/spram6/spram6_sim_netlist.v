// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jun 13 15:29:32 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Harman/Verilog/SoC_06_13/SoC_06_13.gen/sources_1/ip/spram6/spram6_sim_netlist.v
// Design      : spram6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram6,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module spram6
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
  spram6_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19184)
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
