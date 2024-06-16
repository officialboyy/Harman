-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Jun 16 16:36:50 2024
-- Host        : Park running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Harman/Verilog/SoC_06_16_prac/SoC_06_16_prac.gen/sources_1/bd/spi_con_exam_IP/ip/spi_con_exam_IP_top_fndcontrol2_0_0/spi_con_exam_IP_top_fndcontrol2_0_0_stub.vhdl
-- Design      : spi_con_exam_IP_top_fndcontrol2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity spi_con_exam_IP_top_fndcontrol2_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    mode : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    fndsel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fnd : out STD_LOGIC_VECTOR ( 6 downto 0 );
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end spi_con_exam_IP_top_fndcontrol2_0_0;

architecture stub of spi_con_exam_IP_top_fndcontrol2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,mode,btn[3:0],fndsel[3:0],fnd[6:0],led_out[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top_fndcontrol2,Vivado 2024.1";
begin
end;
