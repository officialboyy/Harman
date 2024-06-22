// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Jun 22 22:28:46 2024
// Host        : Park running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Harman/Verilog/SoC_06_22_UART/SoC_06_22_UART.gen/sources_1/ip/fifo_16x8/fifo_16x8_sim_netlist.v
// Design      : fifo_16x8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_16x8,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module fifo_16x8
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire valid;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "14" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "13" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_16x8_fifo_generator_v13_2_10 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71760)
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
