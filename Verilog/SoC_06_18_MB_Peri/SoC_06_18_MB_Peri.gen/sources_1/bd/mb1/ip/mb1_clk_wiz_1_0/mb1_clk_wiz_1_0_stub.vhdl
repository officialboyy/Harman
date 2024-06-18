-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Jun 18 16:03:11 2024
-- Host        : ST04 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Harman/Verilog/SoC_06_18_MB_Peri/SoC_06_18_MB_Peri.gen/sources_1/bd/mb1/ip/mb1_clk_wiz_1_0/mb1_clk_wiz_1_0_stub.vhdl
-- Design      : mb1_clk_wiz_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mb1_clk_wiz_1_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end mb1_clk_wiz_1_0;

architecture stub of mb1_clk_wiz_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,resetn,locked,clk_in1";
begin
end;
