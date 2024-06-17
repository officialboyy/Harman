-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Jun 17 09:21:00 2024
-- Host        : ST04 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Harman/Verilog/SoC_06_17_NEWIP/SoC_06_17_NEWIP.gen/sources_1/ip/top_fndcontrol2_0/top_fndcontrol2_0_stub.vhdl
-- Design      : top_fndcontrol2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_fndcontrol2_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    mode : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    fndsel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fnd : out STD_LOGIC_VECTOR ( 6 downto 0 );
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end top_fndcontrol2_0;

architecture stub of top_fndcontrol2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,mode,btn[3:0],fndsel[3:0],fnd[6:0],led_out[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top_fndcontrol2,Vivado 2023.2";
begin
end;
