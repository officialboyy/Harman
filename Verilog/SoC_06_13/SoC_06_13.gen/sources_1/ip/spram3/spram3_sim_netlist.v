// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jun 13 15:23:35 2024
// Host        : ST04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Harman/Verilog/SoC_06_13/SoC_06_13.gen/sources_1/ip/spram3/spram3_sim_netlist.v
// Design      : spram3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module spram3
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
  spram3_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18832)
`pragma protect data_block
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
w0keozTYYnDcM0uISsa+/E/a8iZ4gw==
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
