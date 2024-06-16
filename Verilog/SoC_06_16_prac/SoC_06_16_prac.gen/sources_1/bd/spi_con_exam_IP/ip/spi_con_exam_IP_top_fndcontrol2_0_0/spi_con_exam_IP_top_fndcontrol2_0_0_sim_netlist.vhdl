-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Jun 16 16:36:50 2024
-- Host        : Park running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Harman/Verilog/SoC_06_16_prac/SoC_06_16_prac.gen/sources_1/bd/spi_con_exam_IP/ip/spi_con_exam_IP_top_fndcontrol2_0_0/spi_con_exam_IP_top_fndcontrol2_0_0_sim_netlist.vhdl
-- Design      : spi_con_exam_IP_top_fndcontrol2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_con_exam_IP_top_fndcontrol2_0_0_btn_in is
  port (
    btn_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    btn2_reg_0 : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spi_con_exam_IP_top_fndcontrol2_0_0_btn_in : entity is "btn_in";
end spi_con_exam_IP_top_fndcontrol2_0_0_btn_in;

architecture STRUCTURE of spi_con_exam_IP_top_fndcontrol2_0_0_btn_in is
  signal btn1_i_1_n_0 : STD_LOGIC;
  signal btn1_i_2_n_0 : STD_LOGIC;
  signal btn1_reg_n_0 : STD_LOGIC;
  signal btn2_i_1_n_0 : STD_LOGIC;
  signal btn2_reg_n_0 : STD_LOGIC;
  signal btn_1d_reg_n_0 : STD_LOGIC;
  signal btn_2d_reg_n_0 : STD_LOGIC;
  signal btn_out_i_1_n_0 : STD_LOGIC;
  signal btn_out_i_2_n_0 : STD_LOGIC;
  signal btn_out_i_3_n_0 : STD_LOGIC;
  signal btn_out_i_4_n_0 : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \cnt1_carry__0_n_0\ : STD_LOGIC;
  signal \cnt1_carry__0_n_1\ : STD_LOGIC;
  signal \cnt1_carry__0_n_2\ : STD_LOGIC;
  signal \cnt1_carry__0_n_3\ : STD_LOGIC;
  signal \cnt1_carry__1_n_0\ : STD_LOGIC;
  signal \cnt1_carry__1_n_1\ : STD_LOGIC;
  signal \cnt1_carry__1_n_2\ : STD_LOGIC;
  signal \cnt1_carry__1_n_3\ : STD_LOGIC;
  signal \cnt1_carry__2_n_0\ : STD_LOGIC;
  signal \cnt1_carry__2_n_1\ : STD_LOGIC;
  signal \cnt1_carry__2_n_2\ : STD_LOGIC;
  signal \cnt1_carry__2_n_3\ : STD_LOGIC;
  signal \cnt1_carry__3_n_2\ : STD_LOGIC;
  signal \cnt1_carry__3_n_3\ : STD_LOGIC;
  signal cnt1_carry_n_0 : STD_LOGIC;
  signal cnt1_carry_n_1 : STD_LOGIC;
  signal cnt1_carry_n_2 : STD_LOGIC;
  signal cnt1_carry_n_3 : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \NLW_cnt1_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt1_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of btn2_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of btn_out_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of btn_out_i_4 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt1_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[19]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair6";
begin
btn1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => btn_2d_reg_n_0,
      I1 => btn_out_i_2_n_0,
      I2 => btn1_i_2_n_0,
      I3 => btn1_reg_n_0,
      O => btn1_i_1_n_0
    );
btn1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(4),
      I2 => cnt(11),
      I3 => cnt(10),
      I4 => cnt(7),
      I5 => cnt(6),
      O => btn1_i_2_n_0
    );
btn1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => btn1_i_1_n_0,
      Q => btn1_reg_n_0
    );
btn2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => btn1_reg_n_0,
      I1 => btn_out_i_2_n_0,
      I2 => btn1_i_2_n_0,
      I3 => btn2_reg_n_0,
      O => btn2_i_1_n_0
    );
btn2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => btn2_i_1_n_0,
      Q => btn2_reg_n_0
    );
btn_1d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => btn(0),
      Q => btn_1d_reg_n_0
    );
btn_2d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => btn_1d_reg_n_0,
      Q => btn_2d_reg_n_0
    );
btn_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => btn_out_i_2_n_0,
      I1 => btn2_reg_n_0,
      I2 => btn1_reg_n_0,
      I3 => btn_out_i_3_n_0,
      O => btn_out_i_1_n_0
    );
btn_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => btn_out_i_4_n_0,
      I1 => cnt(12),
      I2 => cnt(13),
      I3 => cnt(0),
      I4 => \cnt[19]_i_4_n_0\,
      O => btn_out_i_2_n_0
    );
btn_out_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => cnt(6),
      I1 => cnt(7),
      I2 => cnt(10),
      I3 => cnt(11),
      I4 => cnt(4),
      O => btn_out_i_3_n_0
    );
btn_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(1),
      I2 => cnt(5),
      I3 => cnt(17),
      I4 => cnt(16),
      O => btn_out_i_4_n_0
    );
btn_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => btn_out_i_1_n_0,
      Q => btn_out
    );
cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt1_carry_n_0,
      CO(2) => cnt1_carry_n_1,
      CO(1) => cnt1_carry_n_2,
      CO(0) => cnt1_carry_n_3,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => cnt(4 downto 1)
    );
\cnt1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt1_carry_n_0,
      CO(3) => \cnt1_carry__0_n_0\,
      CO(2) => \cnt1_carry__0_n_1\,
      CO(1) => \cnt1_carry__0_n_2\,
      CO(0) => \cnt1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => cnt(8 downto 5)
    );
\cnt1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_carry__0_n_0\,
      CO(3) => \cnt1_carry__1_n_0\,
      CO(2) => \cnt1_carry__1_n_1\,
      CO(1) => \cnt1_carry__1_n_2\,
      CO(0) => \cnt1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => cnt(12 downto 9)
    );
\cnt1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_carry__1_n_0\,
      CO(3) => \cnt1_carry__2_n_0\,
      CO(2) => \cnt1_carry__2_n_1\,
      CO(1) => \cnt1_carry__2_n_2\,
      CO(0) => \cnt1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => cnt(16 downto 13)
    );
\cnt1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_carry__2_n_0\,
      CO(3 downto 2) => \NLW_cnt1_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt1_carry__3_n_2\,
      CO(0) => \cnt1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt1_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(19 downto 17),
      S(3) => '0',
      S(2 downto 0) => cnt(19 downto 17)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[10]_i_1_n_0\
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[11]_i_1_n_0\
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(12),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[12]_i_1_n_0\
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(13),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[13]_i_1_n_0\
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(14),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[14]_i_1_n_0\
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(15),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[15]_i_1_n_0\
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(16),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[16]_i_1_n_0\
    );
\cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(17),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[17]_i_1_n_0\
    );
\cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(18),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[18]_i_1_n_0\
    );
\cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(19),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[19]_i_1_n_0\
    );
\cnt[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(13),
      I2 => cnt(12),
      I3 => \cnt[19]_i_3_n_0\,
      I4 => \cnt[19]_i_4_n_0\,
      I5 => btn1_i_2_n_0,
      O => \cnt[19]_i_2_n_0\
    );
\cnt[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(2),
      I2 => cnt(17),
      I3 => cnt(16),
      O => \cnt[19]_i_3_n_0\
    );
\cnt[19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \cnt[19]_i_5_n_0\,
      I1 => cnt(3),
      I2 => cnt(9),
      I3 => cnt(15),
      O => \cnt[19]_i_4_n_0\
    );
\cnt[19]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => cnt(19),
      I1 => cnt(18),
      I2 => cnt(14),
      I3 => cnt(8),
      O => \cnt[19]_i_5_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[3]_i_1_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[4]_i_1_n_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[5]_i_1_n_0\
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[6]_i_1_n_0\
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[7]_i_1_n_0\
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[8]_i_1_n_0\
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \cnt[19]_i_2_n_0\,
      O => \cnt[9]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[0]_i_1_n_0\,
      Q => cnt(0)
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[10]_i_1_n_0\,
      Q => cnt(10)
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[11]_i_1_n_0\,
      Q => cnt(11)
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[12]_i_1_n_0\,
      Q => cnt(12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[13]_i_1_n_0\,
      Q => cnt(13)
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[14]_i_1_n_0\,
      Q => cnt(14)
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[15]_i_1_n_0\,
      Q => cnt(15)
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[16]_i_1_n_0\,
      Q => cnt(16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[17]_i_1_n_0\,
      Q => cnt(17)
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[18]_i_1_n_0\,
      Q => cnt(18)
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[19]_i_1_n_0\,
      Q => cnt(19)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[1]_i_1_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[2]_i_1_n_0\,
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[3]_i_1_n_0\,
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[4]_i_1_n_0\,
      Q => cnt(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[5]_i_1_n_0\,
      Q => cnt(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[6]_i_1_n_0\,
      Q => cnt(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[7]_i_1_n_0\,
      Q => cnt(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[8]_i_1_n_0\,
      Q => cnt(8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[9]_i_1_n_0\,
      Q => cnt(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_0 is
  port (
    btn_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    btn2_reg_0 : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_0 : entity is "btn_in";
end spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_0;

architecture STRUCTURE of spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_0 is
  signal \btn1_i_1__0_n_0\ : STD_LOGIC;
  signal \btn1_i_2__0_n_0\ : STD_LOGIC;
  signal btn1_reg_n_0 : STD_LOGIC;
  signal \btn2_i_1__0_n_0\ : STD_LOGIC;
  signal btn2_reg_n_0 : STD_LOGIC;
  signal btn_1d_reg_n_0 : STD_LOGIC;
  signal btn_2d_reg_n_0 : STD_LOGIC;
  signal \btn_out_i_1__0_n_0\ : STD_LOGIC;
  signal \btn_out_i_2__0_n_0\ : STD_LOGIC;
  signal \btn_out_i_3__0_n_0\ : STD_LOGIC;
  signal \btn_out_i_4__0_n_0\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \cnt1_carry__0_n_0\ : STD_LOGIC;
  signal \cnt1_carry__0_n_1\ : STD_LOGIC;
  signal \cnt1_carry__0_n_2\ : STD_LOGIC;
  signal \cnt1_carry__0_n_3\ : STD_LOGIC;
  signal \cnt1_carry__1_n_0\ : STD_LOGIC;
  signal \cnt1_carry__1_n_1\ : STD_LOGIC;
  signal \cnt1_carry__1_n_2\ : STD_LOGIC;
  signal \cnt1_carry__1_n_3\ : STD_LOGIC;
  signal \cnt1_carry__2_n_0\ : STD_LOGIC;
  signal \cnt1_carry__2_n_1\ : STD_LOGIC;
  signal \cnt1_carry__2_n_2\ : STD_LOGIC;
  signal \cnt1_carry__2_n_3\ : STD_LOGIC;
  signal \cnt1_carry__3_n_2\ : STD_LOGIC;
  signal \cnt1_carry__3_n_3\ : STD_LOGIC;
  signal cnt1_carry_n_0 : STD_LOGIC;
  signal cnt1_carry_n_1 : STD_LOGIC;
  signal cnt1_carry_n_2 : STD_LOGIC;
  signal cnt1_carry_n_3 : STD_LOGIC;
  signal \cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_1__0_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \NLW_cnt1_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt1_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \btn2_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \btn_out_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \btn_out_i_4__0\ : label is "soft_lutpair12";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt1_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \cnt[0]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt[10]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt[11]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt[12]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt[13]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt[14]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt[15]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt[16]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt[17]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt[18]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt[19]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt[19]_i_3__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt[4]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt[5]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt[6]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt[7]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt[8]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt[9]_i_1__0\ : label is "soft_lutpair18";
begin
\btn1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => btn_2d_reg_n_0,
      I1 => \btn_out_i_2__0_n_0\,
      I2 => \btn1_i_2__0_n_0\,
      I3 => btn1_reg_n_0,
      O => \btn1_i_1__0_n_0\
    );
\btn1_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(4),
      I2 => cnt(11),
      I3 => cnt(10),
      I4 => cnt(7),
      I5 => cnt(6),
      O => \btn1_i_2__0_n_0\
    );
btn1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \btn1_i_1__0_n_0\,
      Q => btn1_reg_n_0
    );
\btn2_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => btn1_reg_n_0,
      I1 => \btn_out_i_2__0_n_0\,
      I2 => \btn1_i_2__0_n_0\,
      I3 => btn2_reg_n_0,
      O => \btn2_i_1__0_n_0\
    );
btn2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \btn2_i_1__0_n_0\,
      Q => btn2_reg_n_0
    );
btn_1d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => btn(0),
      Q => btn_1d_reg_n_0
    );
btn_2d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => btn_1d_reg_n_0,
      Q => btn_2d_reg_n_0
    );
\btn_out_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \btn_out_i_2__0_n_0\,
      I1 => btn2_reg_n_0,
      I2 => btn1_reg_n_0,
      I3 => \btn_out_i_3__0_n_0\,
      O => \btn_out_i_1__0_n_0\
    );
\btn_out_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \btn_out_i_4__0_n_0\,
      I1 => cnt(12),
      I2 => cnt(13),
      I3 => cnt(0),
      I4 => \cnt[19]_i_4__0_n_0\,
      O => \btn_out_i_2__0_n_0\
    );
\btn_out_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => cnt(6),
      I1 => cnt(7),
      I2 => cnt(10),
      I3 => cnt(11),
      I4 => cnt(4),
      O => \btn_out_i_3__0_n_0\
    );
\btn_out_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(1),
      I2 => cnt(5),
      I3 => cnt(17),
      I4 => cnt(16),
      O => \btn_out_i_4__0_n_0\
    );
btn_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \btn_out_i_1__0_n_0\,
      Q => btn_out
    );
cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt1_carry_n_0,
      CO(2) => cnt1_carry_n_1,
      CO(1) => cnt1_carry_n_2,
      CO(0) => cnt1_carry_n_3,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => cnt(4 downto 1)
    );
\cnt1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt1_carry_n_0,
      CO(3) => \cnt1_carry__0_n_0\,
      CO(2) => \cnt1_carry__0_n_1\,
      CO(1) => \cnt1_carry__0_n_2\,
      CO(0) => \cnt1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => cnt(8 downto 5)
    );
\cnt1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_carry__0_n_0\,
      CO(3) => \cnt1_carry__1_n_0\,
      CO(2) => \cnt1_carry__1_n_1\,
      CO(1) => \cnt1_carry__1_n_2\,
      CO(0) => \cnt1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => cnt(12 downto 9)
    );
\cnt1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_carry__1_n_0\,
      CO(3) => \cnt1_carry__2_n_0\,
      CO(2) => \cnt1_carry__2_n_1\,
      CO(1) => \cnt1_carry__2_n_2\,
      CO(0) => \cnt1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => cnt(16 downto 13)
    );
\cnt1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_carry__2_n_0\,
      CO(3 downto 2) => \NLW_cnt1_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt1_carry__3_n_2\,
      CO(0) => \cnt1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt1_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(19 downto 17),
      S(3) => '0',
      S(2 downto 0) => cnt(19 downto 17)
    );
\cnt[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[0]_i_1__0_n_0\
    );
\cnt[10]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[10]_i_1__0_n_0\
    );
\cnt[11]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[11]_i_1__0_n_0\
    );
\cnt[12]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(12),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[12]_i_1__0_n_0\
    );
\cnt[13]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(13),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[13]_i_1__0_n_0\
    );
\cnt[14]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(14),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[14]_i_1__0_n_0\
    );
\cnt[15]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(15),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[15]_i_1__0_n_0\
    );
\cnt[16]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(16),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[16]_i_1__0_n_0\
    );
\cnt[17]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(17),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[17]_i_1__0_n_0\
    );
\cnt[18]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(18),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[18]_i_1__0_n_0\
    );
\cnt[19]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(19),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[19]_i_1__0_n_0\
    );
\cnt[19]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(13),
      I2 => cnt(12),
      I3 => \cnt[19]_i_3__0_n_0\,
      I4 => \cnt[19]_i_4__0_n_0\,
      I5 => \btn1_i_2__0_n_0\,
      O => \cnt[19]_i_2__0_n_0\
    );
\cnt[19]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(2),
      I2 => cnt(17),
      I3 => cnt(16),
      O => \cnt[19]_i_3__0_n_0\
    );
\cnt[19]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \cnt[19]_i_5__0_n_0\,
      I1 => cnt(3),
      I2 => cnt(9),
      I3 => cnt(15),
      O => \cnt[19]_i_4__0_n_0\
    );
\cnt[19]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => cnt(19),
      I1 => cnt(18),
      I2 => cnt(14),
      I3 => cnt(8),
      O => \cnt[19]_i_5__0_n_0\
    );
\cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[1]_i_1__0_n_0\
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[2]_i_1__0_n_0\
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[3]_i_1__0_n_0\
    );
\cnt[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[4]_i_1__0_n_0\
    );
\cnt[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[5]_i_1__0_n_0\
    );
\cnt[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[6]_i_1__0_n_0\
    );
\cnt[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[7]_i_1__0_n_0\
    );
\cnt[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[8]_i_1__0_n_0\
    );
\cnt[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \cnt[19]_i_2__0_n_0\,
      O => \cnt[9]_i_1__0_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[0]_i_1__0_n_0\,
      Q => cnt(0)
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[10]_i_1__0_n_0\,
      Q => cnt(10)
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[11]_i_1__0_n_0\,
      Q => cnt(11)
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[12]_i_1__0_n_0\,
      Q => cnt(12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[13]_i_1__0_n_0\,
      Q => cnt(13)
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[14]_i_1__0_n_0\,
      Q => cnt(14)
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[15]_i_1__0_n_0\,
      Q => cnt(15)
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[16]_i_1__0_n_0\,
      Q => cnt(16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[17]_i_1__0_n_0\,
      Q => cnt(17)
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[18]_i_1__0_n_0\,
      Q => cnt(18)
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[19]_i_1__0_n_0\,
      Q => cnt(19)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[1]_i_1__0_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[2]_i_1__0_n_0\,
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[3]_i_1__0_n_0\,
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[4]_i_1__0_n_0\,
      Q => cnt(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[5]_i_1__0_n_0\,
      Q => cnt(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[6]_i_1__0_n_0\,
      Q => cnt(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[7]_i_1__0_n_0\,
      Q => cnt(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[8]_i_1__0_n_0\,
      Q => cnt(8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[9]_i_1__0_n_0\,
      Q => cnt(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_1 is
  port (
    \m_state_reg[0]\ : out STD_LOGIC;
    btn_out : out STD_LOGIC;
    btn_out_reg_0 : out STD_LOGIC;
    btn_out_reg_1 : out STD_LOGIC;
    m_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \btn_id_reg[1]\ : in STD_LOGIC;
    \btn_id_reg[1]_0\ : in STD_LOGIC;
    \btn_id_reg[1]_1\ : in STD_LOGIC;
    btn_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    btn2_reg_0 : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_1 : entity is "btn_in";
end spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_1;

architecture STRUCTURE of spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_1 is
  signal \btn1_i_1__1_n_0\ : STD_LOGIC;
  signal \btn1_i_2__1_n_0\ : STD_LOGIC;
  signal btn1_reg_n_0 : STD_LOGIC;
  signal \btn2_i_1__1_n_0\ : STD_LOGIC;
  signal btn2_reg_n_0 : STD_LOGIC;
  signal btn_1d_reg_n_0 : STD_LOGIC;
  signal btn_2d_reg_n_0 : STD_LOGIC;
  signal \^btn_out\ : STD_LOGIC;
  signal \btn_out_i_1__1_n_0\ : STD_LOGIC;
  signal \btn_out_i_2__1_n_0\ : STD_LOGIC;
  signal \btn_out_i_3__1_n_0\ : STD_LOGIC;
  signal \btn_out_i_4__1_n_0\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \cnt1_carry__0_n_0\ : STD_LOGIC;
  signal \cnt1_carry__0_n_1\ : STD_LOGIC;
  signal \cnt1_carry__0_n_2\ : STD_LOGIC;
  signal \cnt1_carry__0_n_3\ : STD_LOGIC;
  signal \cnt1_carry__1_n_0\ : STD_LOGIC;
  signal \cnt1_carry__1_n_1\ : STD_LOGIC;
  signal \cnt1_carry__1_n_2\ : STD_LOGIC;
  signal \cnt1_carry__1_n_3\ : STD_LOGIC;
  signal \cnt1_carry__2_n_0\ : STD_LOGIC;
  signal \cnt1_carry__2_n_1\ : STD_LOGIC;
  signal \cnt1_carry__2_n_2\ : STD_LOGIC;
  signal \cnt1_carry__2_n_3\ : STD_LOGIC;
  signal \cnt1_carry__3_n_2\ : STD_LOGIC;
  signal \cnt1_carry__3_n_3\ : STD_LOGIC;
  signal cnt1_carry_n_0 : STD_LOGIC;
  signal cnt1_carry_n_1 : STD_LOGIC;
  signal cnt1_carry_n_2 : STD_LOGIC;
  signal cnt1_carry_n_3 : STD_LOGIC;
  signal \cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[13]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[14]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[17]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[18]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_1__1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \m_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \NLW_cnt1_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt1_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \btn2_i_1__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \btn_id[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \btn_out_i_1__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \btn_out_i_4__1\ : label is "soft_lutpair25";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt1_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \cnt[0]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cnt[10]_i_1__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cnt[11]_i_1__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cnt[12]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cnt[13]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cnt[14]_i_1__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cnt[15]_i_1__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cnt[16]_i_1__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \cnt[17]_i_1__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \cnt[18]_i_1__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cnt[19]_i_1__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cnt[19]_i_3__1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cnt[4]_i_1__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \cnt[5]_i_1__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \cnt[6]_i_1__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cnt[7]_i_1__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cnt[8]_i_1__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cnt[9]_i_1__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_state[0]_i_4\ : label is "soft_lutpair24";
begin
  btn_out <= \^btn_out\;
\btn1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => btn_2d_reg_n_0,
      I1 => \btn_out_i_2__1_n_0\,
      I2 => \btn1_i_2__1_n_0\,
      I3 => btn1_reg_n_0,
      O => \btn1_i_1__1_n_0\
    );
\btn1_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(4),
      I2 => cnt(11),
      I3 => cnt(10),
      I4 => cnt(7),
      I5 => cnt(6),
      O => \btn1_i_2__1_n_0\
    );
btn1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \btn1_i_1__1_n_0\,
      Q => btn1_reg_n_0
    );
\btn2_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => btn1_reg_n_0,
      I1 => \btn_out_i_2__1_n_0\,
      I2 => \btn1_i_2__1_n_0\,
      I3 => btn2_reg_n_0,
      O => \btn2_i_1__1_n_0\
    );
btn2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \btn2_i_1__1_n_0\,
      Q => btn2_reg_n_0
    );
btn_1d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => btn(0),
      Q => btn_1d_reg_n_0
    );
btn_2d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => btn_1d_reg_n_0,
      Q => btn_2d_reg_n_0
    );
\btn_id[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F500F4"
    )
        port map (
      I0 => \^btn_out\,
      I1 => \btn_id_reg[1]\,
      I2 => \btn_id_reg[1]_0\,
      I3 => \btn_id_reg[1]_1\,
      I4 => btn_id(0),
      O => btn_out_reg_1
    );
\btn_id[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F000E"
    )
        port map (
      I0 => \^btn_out\,
      I1 => \btn_id_reg[1]\,
      I2 => \btn_id_reg[1]_0\,
      I3 => \btn_id_reg[1]_1\,
      I4 => btn_id(1),
      O => btn_out_reg_0
    );
\btn_out_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \btn_out_i_2__1_n_0\,
      I1 => btn2_reg_n_0,
      I2 => btn1_reg_n_0,
      I3 => \btn_out_i_3__1_n_0\,
      O => \btn_out_i_1__1_n_0\
    );
\btn_out_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \btn_out_i_4__1_n_0\,
      I1 => cnt(12),
      I2 => cnt(13),
      I3 => cnt(0),
      I4 => \cnt[19]_i_4__1_n_0\,
      O => \btn_out_i_2__1_n_0\
    );
\btn_out_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => cnt(6),
      I1 => cnt(7),
      I2 => cnt(10),
      I3 => cnt(11),
      I4 => cnt(4),
      O => \btn_out_i_3__1_n_0\
    );
\btn_out_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(1),
      I2 => cnt(5),
      I3 => cnt(17),
      I4 => cnt(16),
      O => \btn_out_i_4__1_n_0\
    );
btn_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \btn_out_i_1__1_n_0\,
      Q => \^btn_out\
    );
cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt1_carry_n_0,
      CO(2) => cnt1_carry_n_1,
      CO(1) => cnt1_carry_n_2,
      CO(0) => cnt1_carry_n_3,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => cnt(4 downto 1)
    );
\cnt1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt1_carry_n_0,
      CO(3) => \cnt1_carry__0_n_0\,
      CO(2) => \cnt1_carry__0_n_1\,
      CO(1) => \cnt1_carry__0_n_2\,
      CO(0) => \cnt1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => cnt(8 downto 5)
    );
\cnt1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_carry__0_n_0\,
      CO(3) => \cnt1_carry__1_n_0\,
      CO(2) => \cnt1_carry__1_n_1\,
      CO(1) => \cnt1_carry__1_n_2\,
      CO(0) => \cnt1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => cnt(12 downto 9)
    );
\cnt1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_carry__1_n_0\,
      CO(3) => \cnt1_carry__2_n_0\,
      CO(2) => \cnt1_carry__2_n_1\,
      CO(1) => \cnt1_carry__2_n_2\,
      CO(0) => \cnt1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => cnt(16 downto 13)
    );
\cnt1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_carry__2_n_0\,
      CO(3 downto 2) => \NLW_cnt1_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt1_carry__3_n_2\,
      CO(0) => \cnt1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt1_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(19 downto 17),
      S(3) => '0',
      S(2 downto 0) => cnt(19 downto 17)
    );
\cnt[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[0]_i_1__1_n_0\
    );
\cnt[10]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[10]_i_1__1_n_0\
    );
\cnt[11]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[11]_i_1__1_n_0\
    );
\cnt[12]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(12),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[12]_i_1__1_n_0\
    );
\cnt[13]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(13),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[13]_i_1__1_n_0\
    );
\cnt[14]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(14),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[14]_i_1__1_n_0\
    );
\cnt[15]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(15),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[15]_i_1__1_n_0\
    );
\cnt[16]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(16),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[16]_i_1__1_n_0\
    );
\cnt[17]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(17),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[17]_i_1__1_n_0\
    );
\cnt[18]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(18),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[18]_i_1__1_n_0\
    );
\cnt[19]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(19),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[19]_i_1__1_n_0\
    );
\cnt[19]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(13),
      I2 => cnt(12),
      I3 => \cnt[19]_i_3__1_n_0\,
      I4 => \cnt[19]_i_4__1_n_0\,
      I5 => \btn1_i_2__1_n_0\,
      O => \cnt[19]_i_2__1_n_0\
    );
\cnt[19]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(2),
      I2 => cnt(17),
      I3 => cnt(16),
      O => \cnt[19]_i_3__1_n_0\
    );
\cnt[19]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \cnt[19]_i_5__1_n_0\,
      I1 => cnt(3),
      I2 => cnt(9),
      I3 => cnt(15),
      O => \cnt[19]_i_4__1_n_0\
    );
\cnt[19]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => cnt(19),
      I1 => cnt(18),
      I2 => cnt(14),
      I3 => cnt(8),
      O => \cnt[19]_i_5__1_n_0\
    );
\cnt[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[1]_i_1__1_n_0\
    );
\cnt[2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[2]_i_1__1_n_0\
    );
\cnt[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[3]_i_1__1_n_0\
    );
\cnt[4]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[4]_i_1__1_n_0\
    );
\cnt[5]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[5]_i_1__1_n_0\
    );
\cnt[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[6]_i_1__1_n_0\
    );
\cnt[7]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[7]_i_1__1_n_0\
    );
\cnt[8]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[8]_i_1__1_n_0\
    );
\cnt[9]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \cnt[19]_i_2__1_n_0\,
      O => \cnt[9]_i_1__1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[0]_i_1__1_n_0\,
      Q => cnt(0)
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[10]_i_1__1_n_0\,
      Q => cnt(10)
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[11]_i_1__1_n_0\,
      Q => cnt(11)
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[12]_i_1__1_n_0\,
      Q => cnt(12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[13]_i_1__1_n_0\,
      Q => cnt(13)
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[14]_i_1__1_n_0\,
      Q => cnt(14)
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[15]_i_1__1_n_0\,
      Q => cnt(15)
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[16]_i_1__1_n_0\,
      Q => cnt(16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[17]_i_1__1_n_0\,
      Q => cnt(17)
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[18]_i_1__1_n_0\,
      Q => cnt(18)
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[19]_i_1__1_n_0\,
      Q => cnt(19)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[1]_i_1__1_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[2]_i_1__1_n_0\,
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[3]_i_1__1_n_0\,
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[4]_i_1__1_n_0\,
      Q => cnt(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[5]_i_1__1_n_0\,
      Q => cnt(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[6]_i_1__1_n_0\,
      Q => cnt(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[7]_i_1__1_n_0\,
      Q => cnt(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[8]_i_1__1_n_0\,
      Q => cnt(8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[9]_i_1__1_n_0\,
      Q => cnt(9)
    );
\m_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \m_state[0]_i_4_n_0\,
      I1 => m_state(0),
      I2 => m_state(2),
      I3 => m_state(1),
      O => \m_state_reg[0]\
    );
\m_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^btn_out\,
      I1 => \btn_id_reg[1]\,
      I2 => \btn_id_reg[1]_0\,
      I3 => \btn_id_reg[1]_1\,
      O => \m_state[0]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_2 is
  port (
    btn_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    btn2_reg_0 : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_2 : entity is "btn_in";
end spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_2;

architecture STRUCTURE of spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_2 is
  signal \btn1_i_1__2_n_0\ : STD_LOGIC;
  signal \btn1_i_2__2_n_0\ : STD_LOGIC;
  signal btn1_reg_n_0 : STD_LOGIC;
  signal \btn2_i_1__2_n_0\ : STD_LOGIC;
  signal btn2_reg_n_0 : STD_LOGIC;
  signal btn_1d_reg_n_0 : STD_LOGIC;
  signal btn_2d_reg_n_0 : STD_LOGIC;
  signal \btn_out_i_1__2_n_0\ : STD_LOGIC;
  signal \btn_out_i_2__2_n_0\ : STD_LOGIC;
  signal \btn_out_i_3__2_n_0\ : STD_LOGIC;
  signal \btn_out_i_4__2_n_0\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \cnt1_carry__0_n_0\ : STD_LOGIC;
  signal \cnt1_carry__0_n_1\ : STD_LOGIC;
  signal \cnt1_carry__0_n_2\ : STD_LOGIC;
  signal \cnt1_carry__0_n_3\ : STD_LOGIC;
  signal \cnt1_carry__1_n_0\ : STD_LOGIC;
  signal \cnt1_carry__1_n_1\ : STD_LOGIC;
  signal \cnt1_carry__1_n_2\ : STD_LOGIC;
  signal \cnt1_carry__1_n_3\ : STD_LOGIC;
  signal \cnt1_carry__2_n_0\ : STD_LOGIC;
  signal \cnt1_carry__2_n_1\ : STD_LOGIC;
  signal \cnt1_carry__2_n_2\ : STD_LOGIC;
  signal \cnt1_carry__2_n_3\ : STD_LOGIC;
  signal \cnt1_carry__3_n_2\ : STD_LOGIC;
  signal \cnt1_carry__3_n_3\ : STD_LOGIC;
  signal cnt1_carry_n_0 : STD_LOGIC;
  signal cnt1_carry_n_1 : STD_LOGIC;
  signal cnt1_carry_n_2 : STD_LOGIC;
  signal cnt1_carry_n_3 : STD_LOGIC;
  signal \cnt[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[11]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[13]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[14]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[15]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[17]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[18]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_2__2_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_3__2_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_4__2_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_5__2_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_1__2_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \NLW_cnt1_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt1_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \btn2_i_1__2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \btn_out_i_1__2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \btn_out_i_4__2\ : label is "soft_lutpair37";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt1_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt1_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \cnt[0]_i_1__2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cnt[10]_i_1__2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cnt[11]_i_1__2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cnt[12]_i_1__2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cnt[13]_i_1__2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cnt[14]_i_1__2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cnt[15]_i_1__2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cnt[16]_i_1__2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cnt[17]_i_1__2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cnt[18]_i_1__2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cnt[19]_i_1__2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cnt[19]_i_3__2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cnt[4]_i_1__2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cnt[5]_i_1__2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cnt[6]_i_1__2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cnt[7]_i_1__2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cnt[8]_i_1__2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cnt[9]_i_1__2\ : label is "soft_lutpair43";
begin
\btn1_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => btn_2d_reg_n_0,
      I1 => \btn_out_i_2__2_n_0\,
      I2 => \btn1_i_2__2_n_0\,
      I3 => btn1_reg_n_0,
      O => \btn1_i_1__2_n_0\
    );
\btn1_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(4),
      I2 => cnt(11),
      I3 => cnt(10),
      I4 => cnt(7),
      I5 => cnt(6),
      O => \btn1_i_2__2_n_0\
    );
btn1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \btn1_i_1__2_n_0\,
      Q => btn1_reg_n_0
    );
\btn2_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => btn1_reg_n_0,
      I1 => \btn_out_i_2__2_n_0\,
      I2 => \btn1_i_2__2_n_0\,
      I3 => btn2_reg_n_0,
      O => \btn2_i_1__2_n_0\
    );
btn2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \btn2_i_1__2_n_0\,
      Q => btn2_reg_n_0
    );
btn_1d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => btn(0),
      Q => btn_1d_reg_n_0
    );
btn_2d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => btn_1d_reg_n_0,
      Q => btn_2d_reg_n_0
    );
\btn_out_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \btn_out_i_2__2_n_0\,
      I1 => btn2_reg_n_0,
      I2 => btn1_reg_n_0,
      I3 => \btn_out_i_3__2_n_0\,
      O => \btn_out_i_1__2_n_0\
    );
\btn_out_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \btn_out_i_4__2_n_0\,
      I1 => cnt(12),
      I2 => cnt(13),
      I3 => cnt(0),
      I4 => \cnt[19]_i_4__2_n_0\,
      O => \btn_out_i_2__2_n_0\
    );
\btn_out_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => cnt(6),
      I1 => cnt(7),
      I2 => cnt(10),
      I3 => cnt(11),
      I4 => cnt(4),
      O => \btn_out_i_3__2_n_0\
    );
\btn_out_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(1),
      I2 => cnt(5),
      I3 => cnt(17),
      I4 => cnt(16),
      O => \btn_out_i_4__2_n_0\
    );
btn_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \btn_out_i_1__2_n_0\,
      Q => btn_out
    );
cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt1_carry_n_0,
      CO(2) => cnt1_carry_n_1,
      CO(1) => cnt1_carry_n_2,
      CO(0) => cnt1_carry_n_3,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => cnt(4 downto 1)
    );
\cnt1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt1_carry_n_0,
      CO(3) => \cnt1_carry__0_n_0\,
      CO(2) => \cnt1_carry__0_n_1\,
      CO(1) => \cnt1_carry__0_n_2\,
      CO(0) => \cnt1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => cnt(8 downto 5)
    );
\cnt1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_carry__0_n_0\,
      CO(3) => \cnt1_carry__1_n_0\,
      CO(2) => \cnt1_carry__1_n_1\,
      CO(1) => \cnt1_carry__1_n_2\,
      CO(0) => \cnt1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => cnt(12 downto 9)
    );
\cnt1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_carry__1_n_0\,
      CO(3) => \cnt1_carry__2_n_0\,
      CO(2) => \cnt1_carry__2_n_1\,
      CO(1) => \cnt1_carry__2_n_2\,
      CO(0) => \cnt1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => cnt(16 downto 13)
    );
\cnt1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_carry__2_n_0\,
      CO(3 downto 2) => \NLW_cnt1_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt1_carry__3_n_2\,
      CO(0) => \cnt1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt1_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(19 downto 17),
      S(3) => '0',
      S(2 downto 0) => cnt(19 downto 17)
    );
\cnt[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[0]_i_1__2_n_0\
    );
\cnt[10]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[10]_i_1__2_n_0\
    );
\cnt[11]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[11]_i_1__2_n_0\
    );
\cnt[12]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(12),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[12]_i_1__2_n_0\
    );
\cnt[13]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(13),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[13]_i_1__2_n_0\
    );
\cnt[14]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(14),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[14]_i_1__2_n_0\
    );
\cnt[15]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(15),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[15]_i_1__2_n_0\
    );
\cnt[16]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(16),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[16]_i_1__2_n_0\
    );
\cnt[17]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(17),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[17]_i_1__2_n_0\
    );
\cnt[18]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(18),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[18]_i_1__2_n_0\
    );
\cnt[19]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(19),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[19]_i_1__2_n_0\
    );
\cnt[19]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(13),
      I2 => cnt(12),
      I3 => \cnt[19]_i_3__2_n_0\,
      I4 => \cnt[19]_i_4__2_n_0\,
      I5 => \btn1_i_2__2_n_0\,
      O => \cnt[19]_i_2__2_n_0\
    );
\cnt[19]_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(2),
      I2 => cnt(17),
      I3 => cnt(16),
      O => \cnt[19]_i_3__2_n_0\
    );
\cnt[19]_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \cnt[19]_i_5__2_n_0\,
      I1 => cnt(3),
      I2 => cnt(9),
      I3 => cnt(15),
      O => \cnt[19]_i_4__2_n_0\
    );
\cnt[19]_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => cnt(19),
      I1 => cnt(18),
      I2 => cnt(14),
      I3 => cnt(8),
      O => \cnt[19]_i_5__2_n_0\
    );
\cnt[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[1]_i_1__2_n_0\
    );
\cnt[2]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[2]_i_1__2_n_0\
    );
\cnt[3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[3]_i_1__2_n_0\
    );
\cnt[4]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[4]_i_1__2_n_0\
    );
\cnt[5]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[5]_i_1__2_n_0\
    );
\cnt[6]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[6]_i_1__2_n_0\
    );
\cnt[7]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[7]_i_1__2_n_0\
    );
\cnt[8]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[8]_i_1__2_n_0\
    );
\cnt[9]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \cnt[19]_i_2__2_n_0\,
      O => \cnt[9]_i_1__2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[0]_i_1__2_n_0\,
      Q => cnt(0)
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[10]_i_1__2_n_0\,
      Q => cnt(10)
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[11]_i_1__2_n_0\,
      Q => cnt(11)
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[12]_i_1__2_n_0\,
      Q => cnt(12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[13]_i_1__2_n_0\,
      Q => cnt(13)
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[14]_i_1__2_n_0\,
      Q => cnt(14)
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[15]_i_1__2_n_0\,
      Q => cnt(15)
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[16]_i_1__2_n_0\,
      Q => cnt(16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[17]_i_1__2_n_0\,
      Q => cnt(17)
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[18]_i_1__2_n_0\,
      Q => cnt(18)
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[19]_i_1__2_n_0\,
      Q => cnt(19)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[1]_i_1__2_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[2]_i_1__2_n_0\,
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[3]_i_1__2_n_0\,
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[4]_i_1__2_n_0\,
      Q => cnt(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[5]_i_1__2_n_0\,
      Q => cnt(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[6]_i_1__2_n_0\,
      Q => cnt(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[7]_i_1__2_n_0\,
      Q => cnt(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[8]_i_1__2_n_0\,
      Q => cnt(8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => btn2_reg_0,
      D => \cnt[9]_i_1__2_n_0\,
      Q => cnt(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_con_exam_IP_top_fndcontrol2_0_0_clockdivider is
  port (
    CLK : out STD_LOGIC;
    \^clk\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    \cnt_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spi_con_exam_IP_top_fndcontrol2_0_0_clockdivider : entity is "clockdivider";
end spi_con_exam_IP_top_fndcontrol2_0_0_clockdivider;

architecture STRUCTURE of spi_con_exam_IP_top_fndcontrol2_0_0_clockdivider is
  signal \^clk_1\ : STD_LOGIC;
  signal clk1000Hz_i_1_n_0 : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \cnt0_carry__4_n_3\ : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal \cnt[25]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[25]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[25]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[25]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[25]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[25]_i_7_n_0\ : STD_LOGIC;
  signal cnt_0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 25 downto 1 );
  signal \NLW_cnt0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__5\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[10]_i_1__3\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \cnt[11]_i_1__3\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \cnt[12]_i_1__3\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \cnt[13]_i_1__3\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \cnt[14]_i_1__3\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \cnt[15]_i_1__3\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \cnt[16]_i_1__3\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \cnt[17]_i_1__3\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \cnt[18]_i_1__3\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \cnt[19]_i_1__3\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__3\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \cnt[20]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \cnt[21]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \cnt[22]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \cnt[23]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \cnt[24]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__3\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__3\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \cnt[4]_i_1__3\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \cnt[5]_i_1__3\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \cnt[6]_i_1__3\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \cnt[7]_i_1__3\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \cnt[8]_i_1__3\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \cnt[9]_i_1__3\ : label is "soft_lutpair123";
begin
  CLK <= \^clk_1\;
clk1000Hz_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => reset,
      I1 => \cnt[25]_i_2_n_0\,
      I2 => \^clk_1\,
      O => clk1000Hz_i_1_n_0
    );
clk1000Hz_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => clk1000Hz_i_1_n_0,
      Q => \^clk_1\,
      R => '0'
    );
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => cnt(4 downto 1)
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt0_carry_n_0,
      CO(3) => \cnt0_carry__0_n_0\,
      CO(2) => \cnt0_carry__0_n_1\,
      CO(1) => \cnt0_carry__0_n_2\,
      CO(0) => \cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => cnt(8 downto 5)
    );
\cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__0_n_0\,
      CO(3) => \cnt0_carry__1_n_0\,
      CO(2) => \cnt0_carry__1_n_1\,
      CO(1) => \cnt0_carry__1_n_2\,
      CO(0) => \cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => cnt(12 downto 9)
    );
\cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__1_n_0\,
      CO(3) => \cnt0_carry__2_n_0\,
      CO(2) => \cnt0_carry__2_n_1\,
      CO(1) => \cnt0_carry__2_n_2\,
      CO(0) => \cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => cnt(16 downto 13)
    );
\cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__2_n_0\,
      CO(3) => \cnt0_carry__3_n_0\,
      CO(2) => \cnt0_carry__3_n_1\,
      CO(1) => \cnt0_carry__3_n_2\,
      CO(0) => \cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => cnt(20 downto 17)
    );
\cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__3_n_0\,
      CO(3) => \cnt0_carry__4_n_0\,
      CO(2) => \cnt0_carry__4_n_1\,
      CO(1) => \cnt0_carry__4_n_2\,
      CO(0) => \cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => cnt(24 downto 21)
    );
\cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__4_n_0\,
      CO(3 downto 0) => \NLW_cnt0_carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_cnt0_carry__5_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(25),
      S(3 downto 1) => B"000",
      S(0) => cnt(25)
    );
\cnt[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      O => cnt_0(0)
    );
\cnt[10]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(10)
    );
\cnt[11]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(11)
    );
\cnt[12]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(12),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(12)
    );
\cnt[13]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(13),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(13)
    );
\cnt[14]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(14),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(14)
    );
\cnt[15]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(15),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(15)
    );
\cnt[16]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(16),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(16)
    );
\cnt[17]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(17),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(17)
    );
\cnt[18]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(18),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(18)
    );
\cnt[19]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(19),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(19)
    );
\cnt[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(1)
    );
\cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(20),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(20)
    );
\cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(21),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(21)
    );
\cnt[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(22),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(22)
    );
\cnt[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(23),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(23)
    );
\cnt[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(24),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(24)
    );
\cnt[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(25),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(25)
    );
\cnt[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \cnt[25]_i_3_n_0\,
      I1 => cnt(11),
      I2 => cnt(7),
      I3 => cnt(5),
      I4 => cnt(10),
      I5 => \cnt[25]_i_4_n_0\,
      O => \cnt[25]_i_2_n_0\
    );
\cnt[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => cnt(12),
      I1 => cnt(1),
      I2 => cnt(24),
      I3 => cnt(8),
      I4 => \cnt[25]_i_5_n_0\,
      O => \cnt[25]_i_3_n_0\
    );
\cnt[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt[25]_i_6_n_0\,
      I1 => \cnt[25]_i_7_n_0\,
      I2 => cnt(9),
      I3 => cnt(16),
      I4 => cnt(6),
      I5 => cnt(22),
      O => \cnt[25]_i_4_n_0\
    );
\cnt[25]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt(23),
      I1 => cnt(14),
      I2 => cnt(21),
      I3 => cnt(4),
      O => \cnt[25]_i_5_n_0\
    );
\cnt[25]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => cnt(17),
      I1 => cnt(0),
      I2 => cnt(18),
      I3 => cnt(20),
      I4 => cnt(15),
      I5 => cnt(19),
      O => \cnt[25]_i_6_n_0\
    );
\cnt[25]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt(13),
      I1 => cnt(2),
      I2 => cnt(25),
      I3 => cnt(3),
      O => \cnt[25]_i_7_n_0\
    );
\cnt[2]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(2)
    );
\cnt[3]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(3)
    );
\cnt[4]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(4)
    );
\cnt[5]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(5)
    );
\cnt[6]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(6)
    );
\cnt[7]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(7)
    );
\cnt[8]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(8)
    );
\cnt[9]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \cnt[25]_i_2_n_0\,
      O => cnt_0(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(0),
      Q => cnt(0)
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(10),
      Q => cnt(10)
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(11),
      Q => cnt(11)
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(12),
      Q => cnt(12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(13),
      Q => cnt(13)
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(14),
      Q => cnt(14)
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(15),
      Q => cnt(15)
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(16),
      Q => cnt(16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(17),
      Q => cnt(17)
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(18),
      Q => cnt(18)
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(19),
      Q => cnt(19)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(1),
      Q => cnt(1)
    );
\cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(20),
      Q => cnt(20)
    );
\cnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(21),
      Q => cnt(21)
    );
\cnt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(22),
      Q => cnt(22)
    );
\cnt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(23),
      Q => cnt(23)
    );
\cnt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(24),
      Q => cnt(24)
    );
\cnt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(25),
      Q => cnt(25)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(2),
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(3),
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(4),
      Q => cnt(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(5),
      Q => cnt(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(6),
      Q => cnt(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(7),
      Q => cnt(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(8),
      Q => cnt(8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => cnt_0(9),
      Q => cnt(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_con_exam_IP_top_fndcontrol2_0_0_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fndsel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    \out_counter_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spi_con_exam_IP_top_fndcontrol2_0_0_counter : entity is "counter";
end spi_con_exam_IP_top_fndcontrol2_0_0_counter;

architecture STRUCTURE of spi_con_exam_IP_top_fndcontrol2_0_0_counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fndsel[0]_INST_0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \fndsel[1]_INST_0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \fndsel[2]_INST_0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \fndsel[3]_INST_0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \out_counter[0]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \out_counter[1]_i_1\ : label is "soft_lutpair116";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\fndsel[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => fndsel(0)
    );
\fndsel[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => fndsel(1)
    );
\fndsel[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => fndsel(2)
    );
\fndsel[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => fndsel(3)
    );
\out_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => p_0_in(0)
    );
\out_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => p_0_in(1)
    );
\out_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \out_counter_reg[1]_0\,
      D => p_0_in(0),
      Q => \^q\(0)
    );
\out_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \out_counter_reg[1]_0\,
      D => p_0_in(1),
      Q => \^q\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_con_exam_IP_top_fndcontrol2_0_0_spi_master is
  port (
    ss : out STD_LOGIC;
    sck : out STD_LOGIC;
    mosi : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_state_reg[0]_0\ : out STD_LOGIC;
    done_reg_0 : out STD_LOGIC;
    \m_state_reg[0]_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    start_r : in STD_LOGIC;
    clk : in STD_LOGIC;
    \done_cnt_reg[3]_0\ : in STD_LOGIC;
    start_w : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mosi_i_11_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start_r0 : in STD_LOGIC;
    \m_state_reg[0]_2\ : in STD_LOGIC;
    \m_state_reg[1]_0\ : in STD_LOGIC;
    m_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_state_reg[1]_1\ : in STD_LOGIC;
    \m_state_reg[0]_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_state_reg[1]_2\ : in STD_LOGIC;
    \led_reg[0]\ : in STD_LOGIC;
    \led_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_state_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    miso : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spi_con_exam_IP_top_fndcontrol2_0_0_spi_master : entity is "spi_master";
end spi_con_exam_IP_top_fndcontrol2_0_0_spi_master;

architecture STRUCTURE of spi_con_exam_IP_top_fndcontrol2_0_0_spi_master is
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal done_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal done_i_1_n_0 : STD_LOGIC;
  signal done_mst : STD_LOGIC;
  signal m_state0 : STD_LOGIC;
  signal m_state4 : STD_LOGIC;
  signal m_state4_carry_i_1_n_0 : STD_LOGIC;
  signal m_state4_carry_i_2_n_0 : STD_LOGIC;
  signal m_state4_carry_i_3_n_0 : STD_LOGIC;
  signal m_state4_carry_i_4_n_0 : STD_LOGIC;
  signal m_state4_carry_n_1 : STD_LOGIC;
  signal m_state4_carry_n_2 : STD_LOGIC;
  signal m_state4_carry_n_3 : STD_LOGIC;
  signal \m_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \m_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \m_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \m_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \m_state[2]_i_3_n_0\ : STD_LOGIC;
  signal m_state_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^mosi\ : STD_LOGIC;
  signal mosi_i_10_n_0 : STD_LOGIC;
  signal mosi_i_11_n_0 : STD_LOGIC;
  signal mosi_i_12_n_0 : STD_LOGIC;
  signal mosi_i_13_n_0 : STD_LOGIC;
  signal mosi_i_14_n_0 : STD_LOGIC;
  signal mosi_i_15_n_0 : STD_LOGIC;
  signal mosi_i_1_n_0 : STD_LOGIC;
  signal mosi_i_2_n_0 : STD_LOGIC;
  signal mosi_i_3_n_0 : STD_LOGIC;
  signal mosi_i_4_n_0 : STD_LOGIC;
  signal mosi_i_5_n_0 : STD_LOGIC;
  signal mosi_i_6_n_0 : STD_LOGIC;
  signal mosi_i_7_n_0 : STD_LOGIC;
  signal mosi_i_8_n_0 : STD_LOGIC;
  signal mosi_i_9_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_5__0_n_0\ : STD_LOGIC;
  signal \ready_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \ready_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \ready_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \ready_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \ready_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \ready_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \ready_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \ready_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \ready_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \ready_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \ready_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal ready_cnt_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rw_flag_i_1_n_0 : STD_LOGIC;
  signal rw_flag_reg_n_0 : STD_LOGIC;
  signal \^sck\ : STD_LOGIC;
  signal sck_cnt3 : STD_LOGIC;
  signal sck_cnt3_carry_i_1_n_0 : STD_LOGIC;
  signal sck_cnt3_carry_i_2_n_0 : STD_LOGIC;
  signal sck_cnt3_carry_i_3_n_0 : STD_LOGIC;
  signal sck_cnt3_carry_i_4_n_0 : STD_LOGIC;
  signal sck_cnt3_carry_n_1 : STD_LOGIC;
  signal sck_cnt3_carry_n_2 : STD_LOGIC;
  signal sck_cnt3_carry_n_3 : STD_LOGIC;
  signal \sck_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \sck_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \sck_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \sck_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \sck_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \sck_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \sck_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \sck_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \sck_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \sck_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \sck_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \sck_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \sck_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \sck_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \sck_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \sck_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \sck_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \sck_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \sck_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \sck_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \sck_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \sck_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \sck_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal sck_i_1_n_0 : STD_LOGIC;
  signal \sck_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \sck_index[3]_i_1_n_0\ : STD_LOGIC;
  signal \sck_index[4]_i_1_n_0\ : STD_LOGIC;
  signal \sck_index[5]_i_1_n_0\ : STD_LOGIC;
  signal \sck_index[5]_i_2_n_0\ : STD_LOGIC;
  signal \sck_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \sck_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \sck_index_reg_n_0_[2]\ : STD_LOGIC;
  signal \sck_index_reg_n_0_[3]\ : STD_LOGIC;
  signal \sck_index_reg_n_0_[4]\ : STD_LOGIC;
  signal \sck_index_reg_n_0_[5]\ : STD_LOGIC;
  signal \^ss\ : STD_LOGIC;
  signal ss_i_1_n_0 : STD_LOGIC;
  signal ss_i_2_n_0 : STD_LOGIC;
  signal ss_i_3_n_0 : STD_LOGIC;
  signal ss_i_4_n_0 : STD_LOGIC;
  signal startr_1d : STD_LOGIC;
  signal startr_2d : STD_LOGIC;
  signal startw_1d_reg_n_0 : STD_LOGIC;
  signal startw_2d_reg_n_0 : STD_LOGIC;
  signal NLW_m_state4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sck_cnt3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \done_cnt[0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \done_cnt[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \done_cnt[2]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_state[0]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_state[1]_i_4\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of mosi_i_12 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of mosi_i_2 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of mosi_i_5 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of mosi_i_7 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rdata[1]_i_3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rdata[1]_i_4\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rdata[6]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rdata[7]_i_3\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \ready_cnt[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \ready_cnt[1]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \ready_cnt[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \ready_cnt[5]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \ready_cnt[5]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \ready_cnt[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \ready_cnt[7]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \ready_cnt[9]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of rw_flag_i_1 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \sck_cnt[0]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \sck_cnt[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \sck_cnt[5]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \sck_cnt[5]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \sck_cnt[6]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \sck_cnt[9]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \sck_index[0]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \sck_index[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \sck_index[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of ss_i_3 : label is "soft_lutpair59";
begin
  D(7 downto 0) <= \^d\(7 downto 0);
  E(0) <= \^e\(0);
  mosi <= \^mosi\;
  sck <= \^sck\;
  ss <= \^ss\;
\done_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => done_cnt_reg(0),
      O => \p_0_in__1\(0)
    );
\done_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => done_cnt_reg(1),
      I3 => done_cnt_reg(0),
      O => \p_0_in__1\(1)
    );
\done_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888000"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => done_cnt_reg(0),
      I3 => done_cnt_reg(1),
      I4 => done_cnt_reg(2),
      O => \p_0_in__1\(2)
    );
\done_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888888880000000"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => done_cnt_reg(1),
      I3 => done_cnt_reg(0),
      I4 => done_cnt_reg(2),
      I5 => done_cnt_reg(3),
      O => \p_0_in__1\(3)
    );
\done_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \p_0_in__1\(0),
      Q => done_cnt_reg(0)
    );
\done_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \p_0_in__1\(1),
      Q => done_cnt_reg(1)
    );
\done_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \p_0_in__1\(2),
      Q => done_cnt_reg(2)
    );
\done_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \p_0_in__1\(3),
      Q => done_cnt_reg(3)
    );
done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0DDD0D0000"
    )
        port map (
      I0 => startw_1d_reg_n_0,
      I1 => startw_2d_reg_n_0,
      I2 => startr_1d,
      I3 => startr_2d,
      I4 => \m_state[1]_i_3_n_0\,
      I5 => done_mst,
      O => done_i_1_n_0
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => done_i_1_n_0,
      Q => done_mst
    );
\led[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \led_reg[0]\,
      I1 => done_mst,
      I2 => \led_reg[0]_0\(3),
      I3 => \led_reg[0]_0\(1),
      I4 => \led_reg[0]_0\(0),
      I5 => \led_reg[0]_0\(2),
      O => \^e\(0)
    );
m_state4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => m_state4,
      CO(2) => m_state4_carry_n_1,
      CO(1) => m_state4_carry_n_2,
      CO(0) => m_state4_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_m_state4_carry_O_UNCONNECTED(3 downto 0),
      S(3) => m_state4_carry_i_1_n_0,
      S(2) => m_state4_carry_i_2_n_0,
      S(1) => m_state4_carry_i_3_n_0,
      S(0) => m_state4_carry_i_4_n_0
    );
m_state4_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ready_cnt_reg(9),
      O => m_state4_carry_i_1_n_0
    );
m_state4_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ready_cnt_reg(8),
      I1 => ready_cnt_reg(7),
      I2 => ready_cnt_reg(6),
      O => m_state4_carry_i_2_n_0
    );
m_state4_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ready_cnt_reg(3),
      I1 => ready_cnt_reg(4),
      I2 => ready_cnt_reg(5),
      O => m_state4_carry_i_3_n_0
    );
m_state4_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ready_cnt_reg(2),
      I1 => ready_cnt_reg(0),
      I2 => ready_cnt_reg(1),
      O => m_state4_carry_i_4_n_0
    );
\m_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFAFFAABBFA"
    )
        port map (
      I0 => \m_state[1]_i_2_n_0\,
      I1 => m_state4,
      I2 => \m_state[0]_i_2_n_0\,
      I3 => m_state_0(0),
      I4 => m_state_0(1),
      I5 => \m_state[1]_i_3_n_0\,
      O => \m_state[0]_i_1_n_0\
    );
\m_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFABFFAAFFAA"
    )
        port map (
      I0 => \m_state[0]_i_2__0_n_0\,
      I1 => \m_state_reg[1]_0\,
      I2 => start_r0,
      I3 => \m_state_reg[0]_2\,
      I4 => \^e\(0),
      I5 => m_state(0),
      O => \m_state_reg[0]_1\
    );
\m_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => startr_2d,
      I1 => startr_1d,
      I2 => startw_2d_reg_n_0,
      I3 => startw_1d_reg_n_0,
      O => \m_state[0]_i_2_n_0\
    );
\m_state[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \m_state_reg[0]_3\(2),
      I1 => \m_state_reg[0]_3\(1),
      I2 => \m_state_reg[0]_3\(0),
      I3 => \m_state_reg[0]_3\(3),
      I4 => \m_state_reg[1]_2\,
      I5 => done_mst,
      O => \m_state[0]_i_2__0_n_0\
    );
\m_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAFFEA"
    )
        port map (
      I0 => \m_state[1]_i_2_n_0\,
      I1 => m_state4,
      I2 => m_state_0(0),
      I3 => m_state_0(1),
      I4 => \m_state[1]_i_3_n_0\,
      O => \m_state[1]_i_1_n_0\
    );
\m_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAFFFFEAAA0000"
    )
        port map (
      I0 => \m_state_reg[1]_0\,
      I1 => done_mst,
      I2 => \m_state_reg[1]_2\,
      I3 => \m_state_reg[1]_1\,
      I4 => m_state0,
      I5 => m_state(1),
      O => done_reg_0
    );
\m_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \sck_index_reg_n_0_[3]\,
      I1 => \sck_index_reg_n_0_[2]\,
      I2 => \sck_index_reg_n_0_[1]\,
      I3 => \sck_index_reg_n_0_[4]\,
      I4 => \m_state[1]_i_4_n_0\,
      I5 => \rdata[1]_i_2_n_0\,
      O => \m_state[1]_i_2_n_0\
    );
\m_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => done_cnt_reg(1),
      I3 => done_cnt_reg(0),
      I4 => done_cnt_reg(2),
      I5 => done_cnt_reg(3),
      O => \m_state[1]_i_3_n_0\
    );
\m_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => \sck_index_reg_n_0_[0]\,
      I3 => \sck_index_reg_n_0_[5]\,
      O => \m_state[1]_i_4_n_0\
    );
\m_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80000000"
    )
        port map (
      I0 => m_state(0),
      I1 => m_state(1),
      I2 => \m_state_reg[2]\(0),
      I3 => \m_state_reg[2]\(1),
      I4 => m_state0,
      I5 => m_state(2),
      O => \m_state_reg[0]_0\
    );
\m_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m_state[2]_i_3_n_0\,
      I1 => start_r0,
      I2 => \m_state_reg[0]_2\,
      I3 => \^e\(0),
      O => m_state0
    );
\m_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAAAAAA"
    )
        port map (
      I0 => \m_state_reg[1]_0\,
      I1 => done_mst,
      I2 => m_state(0),
      I3 => m_state(2),
      I4 => m_state(1),
      I5 => \m_state_reg[1]_1\,
      O => \m_state[2]_i_3_n_0\
    );
\m_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \m_state[0]_i_1_n_0\,
      Q => m_state_0(0)
    );
\m_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \m_state[1]_i_1_n_0\,
      Q => m_state_0(1)
    );
mosi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AEFFFF00AE0000"
    )
        port map (
      I0 => mosi_i_2_n_0,
      I1 => mosi_i_3_n_0,
      I2 => mosi_i_4_n_0,
      I3 => mosi_i_5_n_0,
      I4 => mosi_i_6_n_0,
      I5 => \^mosi\,
      O => mosi_i_1_n_0
    );
mosi_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F0F0FFF0F0F0F"
    )
        port map (
      I0 => Q(7),
      I1 => rw_flag_reg_n_0,
      I2 => \sck_index_reg_n_0_[1]\,
      I3 => mosi_i_11_0(1),
      I4 => \sck_index_reg_n_0_[3]\,
      I5 => \sck_index_reg_n_0_[2]\,
      O => mosi_i_10_n_0
    );
mosi_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FF7F"
    )
        port map (
      I0 => \sck_index_reg_n_0_[3]\,
      I1 => \sck_index_reg_n_0_[2]\,
      I2 => rw_flag_reg_n_0,
      I3 => \sck_index_reg_n_0_[1]\,
      I4 => \sck_index_reg_n_0_[4]\,
      I5 => mosi_i_14_n_0,
      O => mosi_i_11_n_0
    );
mosi_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11151111"
    )
        port map (
      I0 => m_state_0(1),
      I1 => m_state_0(0),
      I2 => ready_cnt_reg(0),
      I3 => ss_i_4_n_0,
      I4 => mosi_i_15_n_0,
      O => mosi_i_12_n_0
    );
mosi_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33550F0033550FFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(5),
      I3 => \sck_index_reg_n_0_[1]\,
      I4 => \sck_index_reg_n_0_[2]\,
      I5 => Q(6),
      O => mosi_i_13_n_0
    );
mosi_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000035FF0000"
    )
        port map (
      I0 => mosi_i_11_0(2),
      I1 => mosi_i_11_0(0),
      I2 => \sck_index_reg_n_0_[3]\,
      I3 => \sck_index_reg_n_0_[2]\,
      I4 => \sck_index_reg_n_0_[4]\,
      I5 => \sck_index_reg_n_0_[1]\,
      O => mosi_i_14_n_0
    );
mosi_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => ready_cnt_reg(9),
      I1 => ready_cnt_reg(8),
      I2 => ready_cnt_reg(3),
      I3 => ready_cnt_reg(2),
      I4 => ready_cnt_reg(1),
      O => mosi_i_15_n_0
    );
mosi_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1113"
    )
        port map (
      I0 => \sck_index_reg_n_0_[3]\,
      I1 => mosi_i_7_n_0,
      I2 => \sck_index_reg_n_0_[1]\,
      I3 => \sck_index_reg_n_0_[2]\,
      O => mosi_i_2_n_0
    );
mosi_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FF10FFFFFF10FF"
    )
        port map (
      I0 => \sck_index_reg_n_0_[4]\,
      I1 => rw_flag_reg_n_0,
      I2 => mosi_i_8_n_0,
      I3 => \sck_index_reg_n_0_[5]\,
      I4 => \rdata[7]_i_2__0_n_0\,
      I5 => mosi_i_9_n_0,
      O => mosi_i_3_n_0
    );
mosi_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFDFFFFFDFFF"
    )
        port map (
      I0 => \sck_index_reg_n_0_[0]\,
      I1 => m_state_0(0),
      I2 => m_state_0(1),
      I3 => mosi_i_10_n_0,
      I4 => mosi_i_11_n_0,
      I5 => \sck_index_reg_n_0_[5]\,
      O => mosi_i_4_n_0
    );
mosi_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEFEEEE"
    )
        port map (
      I0 => mosi_i_12_n_0,
      I1 => \rdata[1]_i_2_n_0\,
      I2 => mosi_i_7_n_0,
      I3 => \sck_index_reg_n_0_[3]\,
      I4 => \sck_index_reg_n_0_[2]\,
      O => mosi_i_5_n_0
    );
mosi_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAABABABA"
    )
        port map (
      I0 => mosi_i_12_n_0,
      I1 => \sck_cnt[9]_i_2_n_0\,
      I2 => \sck_index_reg_n_0_[0]\,
      I3 => \sck_index_reg_n_0_[5]\,
      I4 => \sck_index_reg_n_0_[4]\,
      I5 => \rdata[1]_i_2_n_0\,
      O => mosi_i_6_n_0
    );
mosi_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \sck_index_reg_n_0_[5]\,
      I1 => m_state_0(1),
      I2 => m_state_0(0),
      I3 => \sck_index_reg_n_0_[0]\,
      I4 => \sck_index_reg_n_0_[4]\,
      O => mosi_i_7_n_0
    );
mosi_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D111D1D1D111111"
    )
        port map (
      I0 => mosi_i_13_n_0,
      I1 => \sck_index_reg_n_0_[3]\,
      I2 => \sck_index_reg_n_0_[2]\,
      I3 => Q(1),
      I4 => \sck_index_reg_n_0_[1]\,
      I5 => Q(2),
      O => mosi_i_8_n_0
    );
mosi_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
        port map (
      I0 => \sck_cnt[9]_i_2_n_0\,
      I1 => \sck_index_reg_n_0_[0]\,
      I2 => \sck_index_reg_n_0_[4]\,
      I3 => Q(0),
      I4 => rw_flag_reg_n_0,
      I5 => \rdata[1]_i_3_n_0\,
      O => mosi_i_9_n_0
    );
mosi_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => mosi_i_1_n_0,
      Q => \^mosi\
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => miso,
      I1 => \rdata[6]_i_2_n_0\,
      I2 => \sck_index_reg_n_0_[2]\,
      I3 => \sck_index_reg_n_0_[3]\,
      I4 => \rdata[7]_i_3_n_0\,
      I5 => \^d\(0),
      O => \rdata[0]_i_1_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => miso,
      I1 => \rdata[1]_i_2_n_0\,
      I2 => \sck_index_reg_n_0_[1]\,
      I3 => \rdata[1]_i_3_n_0\,
      I4 => \rdata[7]_i_3_n_0\,
      I5 => \^d\(1),
      O => \rdata[1]_i_1_n_0\
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \sck_cnt_reg_n_0_[9]\,
      I1 => \sck_cnt_reg_n_0_[4]\,
      I2 => \sck_cnt_reg_n_0_[3]\,
      I3 => \sck_cnt_reg_n_0_[5]\,
      I4 => \rdata[1]_i_4_n_0\,
      I5 => \rdata[7]_i_4__0_n_0\,
      O => \rdata[1]_i_2_n_0\
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sck_index_reg_n_0_[2]\,
      I1 => \sck_index_reg_n_0_[3]\,
      O => \rdata[1]_i_3_n_0\
    );
\rdata[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \sck_cnt_reg_n_0_[2]\,
      I1 => \sck_cnt_reg_n_0_[0]\,
      I2 => \sck_cnt_reg_n_0_[1]\,
      O => \rdata[1]_i_4_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => miso,
      I1 => \rdata[6]_i_2_n_0\,
      I2 => \sck_index_reg_n_0_[2]\,
      I3 => \sck_index_reg_n_0_[3]\,
      I4 => \rdata[7]_i_3_n_0\,
      I5 => \^d\(2),
      O => \rdata[2]_i_1_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => miso,
      I1 => \rdata[7]_i_2__0_n_0\,
      I2 => \sck_index_reg_n_0_[2]\,
      I3 => \sck_index_reg_n_0_[3]\,
      I4 => \rdata[7]_i_3_n_0\,
      I5 => \^d\(3),
      O => \rdata[3]_i_1_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => miso,
      I1 => \rdata[6]_i_2_n_0\,
      I2 => \sck_index_reg_n_0_[3]\,
      I3 => \sck_index_reg_n_0_[2]\,
      I4 => \rdata[7]_i_3_n_0\,
      I5 => \^d\(4),
      O => \rdata[4]_i_1_n_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => miso,
      I1 => \rdata[7]_i_2__0_n_0\,
      I2 => \sck_index_reg_n_0_[3]\,
      I3 => \sck_index_reg_n_0_[2]\,
      I4 => \rdata[7]_i_3_n_0\,
      I5 => \^d\(5),
      O => \rdata[5]_i_1_n_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => miso,
      I1 => \rdata[7]_i_3_n_0\,
      I2 => \sck_index_reg_n_0_[2]\,
      I3 => \sck_index_reg_n_0_[3]\,
      I4 => \rdata[6]_i_2_n_0\,
      I5 => \^d\(6),
      O => \rdata[6]_i_1_n_0\
    );
\rdata[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sck_index_reg_n_0_[1]\,
      I1 => \rdata[1]_i_2_n_0\,
      O => \rdata[6]_i_2_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => miso,
      I1 => \rdata[7]_i_2__0_n_0\,
      I2 => \rdata[7]_i_3_n_0\,
      I3 => \sck_index_reg_n_0_[2]\,
      I4 => \sck_index_reg_n_0_[3]\,
      I5 => \^d\(7),
      O => \rdata[7]_i_1_n_0\
    );
\rdata[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \sck_index_reg_n_0_[1]\,
      I1 => \rdata[7]_i_4__0_n_0\,
      I2 => \sck_cnt_reg_n_0_[1]\,
      I3 => \sck_cnt_reg_n_0_[0]\,
      I4 => \sck_cnt_reg_n_0_[2]\,
      I5 => \rdata[7]_i_5__0_n_0\,
      O => \rdata[7]_i_2__0_n_0\
    );
\rdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \sck_index_reg_n_0_[4]\,
      I1 => \sck_index_reg_n_0_[5]\,
      I2 => \sck_index_reg_n_0_[0]\,
      I3 => m_state_0(1),
      I4 => m_state_0(0),
      O => \rdata[7]_i_3_n_0\
    );
\rdata[7]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \sck_cnt_reg_n_0_[6]\,
      I1 => \sck_cnt_reg_n_0_[7]\,
      I2 => \sck_cnt_reg_n_0_[8]\,
      O => \rdata[7]_i_4__0_n_0\
    );
\rdata[7]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sck_cnt_reg_n_0_[9]\,
      I1 => \sck_cnt_reg_n_0_[4]\,
      I2 => \sck_cnt_reg_n_0_[3]\,
      I3 => \sck_cnt_reg_n_0_[5]\,
      O => \rdata[7]_i_5__0_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \rdata[0]_i_1_n_0\,
      Q => \^d\(0)
    );
\rdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \rdata[1]_i_1_n_0\,
      Q => \^d\(1)
    );
\rdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \rdata[2]_i_1_n_0\,
      Q => \^d\(2)
    );
\rdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \rdata[3]_i_1_n_0\,
      Q => \^d\(3)
    );
\rdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \rdata[4]_i_1_n_0\,
      Q => \^d\(4)
    );
\rdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \rdata[5]_i_1_n_0\,
      Q => \^d\(5)
    );
\rdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \rdata[6]_i_1_n_0\,
      Q => \^d\(6)
    );
\rdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \rdata[7]_i_1_n_0\,
      Q => \^d\(7)
    );
\ready_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => m_state_0(1),
      I1 => m_state_0(0),
      I2 => ready_cnt_reg(0),
      O => \p_0_in__2\(0)
    );
\ready_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => ready_cnt_reg(0),
      I1 => ready_cnt_reg(1),
      I2 => m_state_0(0),
      I3 => m_state_0(1),
      O => \p_0_in__2\(1)
    );
\ready_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222000"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => ready_cnt_reg(1),
      I3 => ready_cnt_reg(0),
      I4 => ready_cnt_reg(2),
      O => \ready_cnt[2]_i_1_n_0\
    );
\ready_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222220000000"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => ready_cnt_reg(0),
      I3 => ready_cnt_reg(1),
      I4 => ready_cnt_reg(2),
      I5 => ready_cnt_reg(3),
      O => \ready_cnt[3]_i_1_n_0\
    );
\ready_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \ready_cnt[9]_i_2_n_0\,
      I1 => ready_cnt_reg(2),
      I2 => ready_cnt_reg(1),
      I3 => ready_cnt_reg(0),
      I4 => ready_cnt_reg(3),
      I5 => ready_cnt_reg(4),
      O => \ready_cnt[4]_i_1_n_0\
    );
\ready_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2002"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => \ready_cnt[5]_i_2_n_0\,
      I3 => ready_cnt_reg(5),
      O => \ready_cnt[5]_i_1_n_0\
    );
\ready_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => ready_cnt_reg(3),
      I1 => ready_cnt_reg(0),
      I2 => ready_cnt_reg(1),
      I3 => ready_cnt_reg(2),
      I4 => ready_cnt_reg(4),
      O => \ready_cnt[5]_i_2_n_0\
    );
\ready_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2002"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => \ready_cnt[9]_i_3_n_0\,
      I3 => ready_cnt_reg(6),
      O => \ready_cnt[6]_i_1_n_0\
    );
\ready_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20220200"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => \ready_cnt[9]_i_3_n_0\,
      I3 => ready_cnt_reg(6),
      I4 => ready_cnt_reg(7),
      O => \ready_cnt[7]_i_1_n_0\
    );
\ready_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222022200002000"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => ready_cnt_reg(7),
      I3 => ready_cnt_reg(6),
      I4 => \ready_cnt[9]_i_3_n_0\,
      I5 => ready_cnt_reg(8),
      O => \ready_cnt[8]_i_1_n_0\
    );
\ready_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4555555510000000"
    )
        port map (
      I0 => \ready_cnt[9]_i_2_n_0\,
      I1 => \ready_cnt[9]_i_3_n_0\,
      I2 => ready_cnt_reg(6),
      I3 => ready_cnt_reg(7),
      I4 => ready_cnt_reg(8),
      I5 => ready_cnt_reg(9),
      O => \ready_cnt[9]_i_1_n_0\
    );
\ready_cnt[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_state_0(1),
      I1 => m_state_0(0),
      O => \ready_cnt[9]_i_2_n_0\
    );
\ready_cnt[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => ready_cnt_reg(4),
      I1 => ready_cnt_reg(2),
      I2 => ready_cnt_reg(1),
      I3 => ready_cnt_reg(0),
      I4 => ready_cnt_reg(3),
      I5 => ready_cnt_reg(5),
      O => \ready_cnt[9]_i_3_n_0\
    );
\ready_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \p_0_in__2\(0),
      Q => ready_cnt_reg(0)
    );
\ready_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \p_0_in__2\(1),
      Q => ready_cnt_reg(1)
    );
\ready_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \ready_cnt[2]_i_1_n_0\,
      Q => ready_cnt_reg(2)
    );
\ready_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \ready_cnt[3]_i_1_n_0\,
      Q => ready_cnt_reg(3)
    );
\ready_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \ready_cnt[4]_i_1_n_0\,
      Q => ready_cnt_reg(4)
    );
\ready_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \ready_cnt[5]_i_1_n_0\,
      Q => ready_cnt_reg(5)
    );
\ready_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \ready_cnt[6]_i_1_n_0\,
      Q => ready_cnt_reg(6)
    );
\ready_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \ready_cnt[7]_i_1_n_0\,
      Q => ready_cnt_reg(7)
    );
\ready_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \ready_cnt[8]_i_1_n_0\,
      Q => ready_cnt_reg(8)
    );
\ready_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \ready_cnt[9]_i_1_n_0\,
      Q => ready_cnt_reg(9)
    );
rw_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FF4044"
    )
        port map (
      I0 => startr_2d,
      I1 => startr_1d,
      I2 => startw_2d_reg_n_0,
      I3 => startw_1d_reg_n_0,
      I4 => rw_flag_reg_n_0,
      O => rw_flag_i_1_n_0
    );
rw_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => rw_flag_i_1_n_0,
      Q => rw_flag_reg_n_0
    );
sck_cnt3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sck_cnt3,
      CO(2) => sck_cnt3_carry_n_1,
      CO(1) => sck_cnt3_carry_n_2,
      CO(0) => sck_cnt3_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_sck_cnt3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sck_cnt3_carry_i_1_n_0,
      S(2) => sck_cnt3_carry_i_2_n_0,
      S(1) => sck_cnt3_carry_i_3_n_0,
      S(0) => sck_cnt3_carry_i_4_n_0
    );
sck_cnt3_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sck_cnt_reg_n_0_[9]\,
      O => sck_cnt3_carry_i_1_n_0
    );
sck_cnt3_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \sck_cnt_reg_n_0_[6]\,
      I1 => \sck_cnt_reg_n_0_[7]\,
      I2 => \sck_cnt_reg_n_0_[8]\,
      O => sck_cnt3_carry_i_2_n_0
    );
sck_cnt3_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \sck_cnt_reg_n_0_[3]\,
      I1 => \sck_cnt_reg_n_0_[4]\,
      I2 => \sck_cnt_reg_n_0_[5]\,
      O => sck_cnt3_carry_i_3_n_0
    );
sck_cnt3_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \sck_cnt_reg_n_0_[1]\,
      I1 => \sck_cnt_reg_n_0_[0]\,
      I2 => \sck_cnt_reg_n_0_[2]\,
      O => sck_cnt3_carry_i_4_n_0
    );
\sck_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => sck_cnt3,
      I3 => \sck_cnt_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\sck_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040400"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => sck_cnt3,
      I3 => \sck_cnt_reg_n_0_[1]\,
      I4 => \sck_cnt_reg_n_0_[0]\,
      O => p_0_in(1)
    );
\sck_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002202020"
    )
        port map (
      I0 => m_state_0(1),
      I1 => m_state_0(0),
      I2 => \sck_cnt_reg_n_0_[2]\,
      I3 => \sck_cnt_reg_n_0_[0]\,
      I4 => \sck_cnt_reg_n_0_[1]\,
      I5 => sck_cnt3,
      O => \sck_cnt[2]_i_1_n_0\
    );
\sck_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000014444444"
    )
        port map (
      I0 => \sck_cnt[9]_i_2_n_0\,
      I1 => \sck_cnt_reg_n_0_[3]\,
      I2 => \sck_cnt_reg_n_0_[2]\,
      I3 => \sck_cnt_reg_n_0_[1]\,
      I4 => \sck_cnt_reg_n_0_[0]\,
      I5 => sck_cnt3,
      O => \sck_cnt[3]_i_1_n_0\
    );
\sck_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044144444"
    )
        port map (
      I0 => \sck_cnt[9]_i_2_n_0\,
      I1 => \sck_cnt_reg_n_0_[4]\,
      I2 => \sck_cnt_reg_n_0_[3]\,
      I3 => \sck_cnt[4]_i_2_n_0\,
      I4 => \sck_cnt_reg_n_0_[2]\,
      I5 => sck_cnt3,
      O => \sck_cnt[4]_i_1_n_0\
    );
\sck_cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \sck_cnt_reg_n_0_[1]\,
      I1 => \sck_cnt_reg_n_0_[0]\,
      O => \sck_cnt[4]_i_2_n_0\
    );
\sck_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002002"
    )
        port map (
      I0 => m_state_0(1),
      I1 => m_state_0(0),
      I2 => \sck_cnt_reg_n_0_[5]\,
      I3 => \sck_cnt[5]_i_2_n_0\,
      I4 => sck_cnt3,
      O => \sck_cnt[5]_i_1_n_0\
    );
\sck_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \sck_cnt_reg_n_0_[3]\,
      I1 => \sck_cnt_reg_n_0_[0]\,
      I2 => \sck_cnt_reg_n_0_[1]\,
      I3 => \sck_cnt_reg_n_0_[2]\,
      I4 => \sck_cnt_reg_n_0_[4]\,
      O => \sck_cnt[5]_i_2_n_0\
    );
\sck_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002002"
    )
        port map (
      I0 => m_state_0(1),
      I1 => m_state_0(0),
      I2 => \sck_cnt_reg_n_0_[6]\,
      I3 => \sck_cnt[8]_i_2_n_0\,
      I4 => sck_cnt3,
      O => \sck_cnt[6]_i_1_n_0\
    );
\sck_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020200220"
    )
        port map (
      I0 => m_state_0(1),
      I1 => m_state_0(0),
      I2 => \sck_cnt_reg_n_0_[7]\,
      I3 => \sck_cnt_reg_n_0_[6]\,
      I4 => \sck_cnt[8]_i_2_n_0\,
      I5 => sck_cnt3,
      O => \sck_cnt[7]_i_1_n_0\
    );
\sck_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041444444"
    )
        port map (
      I0 => \sck_cnt[9]_i_2_n_0\,
      I1 => \sck_cnt_reg_n_0_[8]\,
      I2 => \sck_cnt[8]_i_2_n_0\,
      I3 => \sck_cnt_reg_n_0_[6]\,
      I4 => \sck_cnt_reg_n_0_[7]\,
      I5 => sck_cnt3,
      O => \sck_cnt[8]_i_1_n_0\
    );
\sck_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \sck_cnt_reg_n_0_[4]\,
      I1 => \sck_cnt_reg_n_0_[2]\,
      I2 => \sck_cnt_reg_n_0_[1]\,
      I3 => \sck_cnt_reg_n_0_[0]\,
      I4 => \sck_cnt_reg_n_0_[3]\,
      I5 => \sck_cnt_reg_n_0_[5]\,
      O => \sck_cnt[8]_i_2_n_0\
    );
\sck_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044441444"
    )
        port map (
      I0 => \sck_cnt[9]_i_2_n_0\,
      I1 => \sck_cnt_reg_n_0_[9]\,
      I2 => \sck_cnt_reg_n_0_[8]\,
      I3 => \sck_cnt_reg_n_0_[7]\,
      I4 => \sck_cnt[9]_i_3_n_0\,
      I5 => sck_cnt3,
      O => \sck_cnt[9]_i_1_n_0\
    );
\sck_cnt[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      O => \sck_cnt[9]_i_2_n_0\
    );
\sck_cnt[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \sck_cnt_reg_n_0_[5]\,
      I1 => \sck_cnt_reg_n_0_[3]\,
      I2 => \sck_cnt[4]_i_2_n_0\,
      I3 => \sck_cnt_reg_n_0_[2]\,
      I4 => \sck_cnt_reg_n_0_[4]\,
      I5 => \sck_cnt_reg_n_0_[6]\,
      O => \sck_cnt[9]_i_3_n_0\
    );
\sck_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => p_0_in(0),
      Q => \sck_cnt_reg_n_0_[0]\
    );
\sck_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => p_0_in(1),
      Q => \sck_cnt_reg_n_0_[1]\
    );
\sck_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \sck_cnt[2]_i_1_n_0\,
      Q => \sck_cnt_reg_n_0_[2]\
    );
\sck_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \sck_cnt[3]_i_1_n_0\,
      Q => \sck_cnt_reg_n_0_[3]\
    );
\sck_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \sck_cnt[4]_i_1_n_0\,
      Q => \sck_cnt_reg_n_0_[4]\
    );
\sck_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \sck_cnt[5]_i_1_n_0\,
      Q => \sck_cnt_reg_n_0_[5]\
    );
\sck_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \sck_cnt[6]_i_1_n_0\,
      Q => \sck_cnt_reg_n_0_[6]\
    );
\sck_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \sck_cnt[7]_i_1_n_0\,
      Q => \sck_cnt_reg_n_0_[7]\
    );
\sck_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \sck_cnt[8]_i_1_n_0\,
      Q => \sck_cnt_reg_n_0_[8]\
    );
\sck_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => \sck_cnt[9]_i_1_n_0\,
      Q => \sck_cnt_reg_n_0_[9]\
    );
sck_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220202000020202"
    )
        port map (
      I0 => m_state_0(1),
      I1 => m_state_0(0),
      I2 => \rdata[1]_i_2_n_0\,
      I3 => \sck_index_reg_n_0_[4]\,
      I4 => \sck_index_reg_n_0_[5]\,
      I5 => \^sck\,
      O => sck_i_1_n_0
    );
\sck_index[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => m_state_0(0),
      I1 => m_state_0(1),
      I2 => \sck_index_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\sck_index[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \sck_index_reg_n_0_[1]\,
      I1 => \sck_index_reg_n_0_[0]\,
      I2 => m_state_0(1),
      I3 => m_state_0(0),
      O => \p_0_in__0\(1)
    );
\sck_index[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222000"
    )
        port map (
      I0 => m_state_0(1),
      I1 => m_state_0(0),
      I2 => \sck_index_reg_n_0_[0]\,
      I3 => \sck_index_reg_n_0_[1]\,
      I4 => \sck_index_reg_n_0_[2]\,
      O => \sck_index[2]_i_1_n_0\
    );
\sck_index[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222220000000"
    )
        port map (
      I0 => m_state_0(1),
      I1 => m_state_0(0),
      I2 => \sck_index_reg_n_0_[1]\,
      I3 => \sck_index_reg_n_0_[0]\,
      I4 => \sck_index_reg_n_0_[2]\,
      I5 => \sck_index_reg_n_0_[3]\,
      O => \sck_index[3]_i_1_n_0\
    );
\sck_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \sck_cnt[9]_i_2_n_0\,
      I1 => \sck_index_reg_n_0_[1]\,
      I2 => \sck_index_reg_n_0_[0]\,
      I3 => \sck_index_reg_n_0_[3]\,
      I4 => \sck_index_reg_n_0_[2]\,
      I5 => \sck_index_reg_n_0_[4]\,
      O => \sck_index[4]_i_1_n_0\
    );
\sck_index[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => m_state_0(1),
      I1 => m_state_0(0),
      I2 => \rdata[1]_i_2_n_0\,
      O => \sck_index[5]_i_1_n_0\
    );
\sck_index[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \sck_cnt[9]_i_2_n_0\,
      I1 => \rdata[1]_i_3_n_0\,
      I2 => \sck_index_reg_n_0_[0]\,
      I3 => \sck_index_reg_n_0_[1]\,
      I4 => \sck_index_reg_n_0_[4]\,
      I5 => \sck_index_reg_n_0_[5]\,
      O => \sck_index[5]_i_2_n_0\
    );
\sck_index_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sck_index[5]_i_1_n_0\,
      CLR => \done_cnt_reg[3]_0\,
      D => \p_0_in__0\(0),
      Q => \sck_index_reg_n_0_[0]\
    );
\sck_index_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sck_index[5]_i_1_n_0\,
      CLR => \done_cnt_reg[3]_0\,
      D => \p_0_in__0\(1),
      Q => \sck_index_reg_n_0_[1]\
    );
\sck_index_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sck_index[5]_i_1_n_0\,
      CLR => \done_cnt_reg[3]_0\,
      D => \sck_index[2]_i_1_n_0\,
      Q => \sck_index_reg_n_0_[2]\
    );
\sck_index_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sck_index[5]_i_1_n_0\,
      CLR => \done_cnt_reg[3]_0\,
      D => \sck_index[3]_i_1_n_0\,
      Q => \sck_index_reg_n_0_[3]\
    );
\sck_index_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sck_index[5]_i_1_n_0\,
      CLR => \done_cnt_reg[3]_0\,
      D => \sck_index[4]_i_1_n_0\,
      Q => \sck_index_reg_n_0_[4]\
    );
\sck_index_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sck_index[5]_i_1_n_0\,
      CLR => \done_cnt_reg[3]_0\,
      D => \sck_index[5]_i_2_n_0\,
      Q => \sck_index_reg_n_0_[5]\
    );
sck_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => sck_i_1_n_0,
      Q => \^sck\
    );
ss_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFAAAF"
    )
        port map (
      I0 => \m_state[1]_i_3_n_0\,
      I1 => ss_i_2_n_0,
      I2 => m_state_0(1),
      I3 => m_state_0(0),
      I4 => \^ss\,
      O => ss_i_1_n_0
    );
ss_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => ready_cnt_reg(3),
      I1 => ready_cnt_reg(9),
      I2 => ready_cnt_reg(8),
      I3 => \ready_cnt[9]_i_2_n_0\,
      I4 => ss_i_3_n_0,
      I5 => ss_i_4_n_0,
      O => ss_i_2_n_0
    );
ss_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ready_cnt_reg(2),
      I1 => ready_cnt_reg(0),
      I2 => ready_cnt_reg(1),
      O => ss_i_3_n_0
    );
ss_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ready_cnt_reg(7),
      I1 => ready_cnt_reg(6),
      I2 => ready_cnt_reg(5),
      I3 => ready_cnt_reg(4),
      O => ss_i_4_n_0
    );
ss_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ss_i_1_n_0,
      PRE => \done_cnt_reg[3]_0\,
      Q => \^ss\
    );
startr_1d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => start_r,
      Q => startr_1d
    );
startr_2d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => startr_1d,
      Q => startr_2d
    );
startw_1d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => start_w,
      Q => startw_1d_reg_n_0
    );
startw_2d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \done_cnt_reg[3]_0\,
      D => startw_1d_reg_n_0,
      Q => startw_2d_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_con_exam_IP_top_fndcontrol2_0_0_spi_slave is
  port (
    reset_0 : out STD_LOGIC;
    miso : out STD_LOGIC;
    ss : in STD_LOGIC;
    clk : in STD_LOGIC;
    sck : in STD_LOGIC;
    mosi : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spi_con_exam_IP_top_fndcontrol2_0_0_spi_slave : entity is "spi_slave";
end spi_con_exam_IP_top_fndcontrol2_0_0_spi_slave;

architecture STRUCTURE of spi_con_exam_IP_top_fndcontrol2_0_0_spi_slave is
  signal \done_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \done_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \done_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \done_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \^miso\ : STD_LOGIC;
  signal miso_i_1_n_0 : STD_LOGIC;
  signal miso_i_3_n_0 : STD_LOGIC;
  signal miso_i_4_n_0 : STD_LOGIC;
  signal miso_reg_i_2_n_0 : STD_LOGIC;
  signal mosi_1d_reg_n_0 : STD_LOGIC;
  signal mosi_2d_reg_n_0 : STD_LOGIC;
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__6\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__7\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ra_sckn_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \ra_sckn_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \ra_sckn_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \ra_sckn_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \ra_sckn_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \ra_sckn_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \raddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[0]_i_2_n_0\ : STD_LOGIC;
  signal \raddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \raddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \raddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[5]_i_2_n_0\ : STD_LOGIC;
  signal \raddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[6]_i_2_n_0\ : STD_LOGIC;
  signal \raddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[7]_i_2_n_0\ : STD_LOGIC;
  signal \raddr[7]_i_3_n_0\ : STD_LOGIC;
  signal \raddr[7]_i_4_n_0\ : STD_LOGIC;
  signal \raddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \rd_sckn_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \rd_sckn_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \rd_sckn_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rd_sckn_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rd_sckn_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rd_sckn_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal rdata0 : STD_LOGIC;
  signal \rdata[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_9_n_0\ : STD_LOGIC;
  signal \rdata_reg_n_0_[0]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[1]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[2]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[3]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[4]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[5]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[6]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[7]\ : STD_LOGIC;
  signal \^reset_0\ : STD_LOGIC;
  signal \s_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \s_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_state_reg_n_0_[2]\ : STD_LOGIC;
  signal sck_1d : STD_LOGIC;
  signal sck_2d : STD_LOGIC;
  signal sck_nedge_1d_i_1_n_0 : STD_LOGIC;
  signal sck_nedge_1d_reg_n_0 : STD_LOGIC;
  signal sck_pedge_1d : STD_LOGIC;
  signal sck_pedge_1d_i_1_n_0 : STD_LOGIC;
  signal \sid_sckn_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \sid_sckn_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \sid_sckn_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \sid_sckn_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \sid_sckn_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \sid_sckn_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \slave_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \slave_id[1]_i_1_n_0\ : STD_LOGIC;
  signal \slave_id[2]_i_1_n_0\ : STD_LOGIC;
  signal \slave_id[2]_i_2_n_0\ : STD_LOGIC;
  signal \slave_id[3]_i_1_n_0\ : STD_LOGIC;
  signal \slave_id[4]_i_1_n_0\ : STD_LOGIC;
  signal \slave_id[4]_i_2_n_0\ : STD_LOGIC;
  signal \slave_id[5]_i_1_n_0\ : STD_LOGIC;
  signal \slave_id[5]_i_2_n_0\ : STD_LOGIC;
  signal \slave_id[6]_i_1_n_0\ : STD_LOGIC;
  signal \slave_id[6]_i_2_n_0\ : STD_LOGIC;
  signal \slave_id[6]_i_3_n_0\ : STD_LOGIC;
  signal \slave_id[6]_i_4_n_0\ : STD_LOGIC;
  signal \slave_id[7]_i_1_n_0\ : STD_LOGIC;
  signal \slave_id[7]_i_2_n_0\ : STD_LOGIC;
  signal \slave_id[7]_i_3_n_0\ : STD_LOGIC;
  signal \slave_id_reg_n_0_[0]\ : STD_LOGIC;
  signal \slave_id_reg_n_0_[1]\ : STD_LOGIC;
  signal \slave_id_reg_n_0_[2]\ : STD_LOGIC;
  signal \slave_id_reg_n_0_[3]\ : STD_LOGIC;
  signal \slave_id_reg_n_0_[4]\ : STD_LOGIC;
  signal \slave_id_reg_n_0_[5]\ : STD_LOGIC;
  signal \slave_id_reg_n_0_[6]\ : STD_LOGIC;
  signal \slave_id_reg_n_0_[7]\ : STD_LOGIC;
  signal ss_1d : STD_LOGIC;
  signal ss_2d : STD_LOGIC;
  signal \user_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \user_reg1[7]_i_2_n_0\ : STD_LOGIC;
  signal \user_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \user_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \user_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \user_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \user_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \user_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \user_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \user_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \user_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \user_reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \user_reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \user_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \user_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \user_reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \user_reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \user_reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \user_reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \user_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \user_reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \user_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \user_reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \user_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \user_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \user_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \user_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \user_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \user_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal \user_reg4_reg_n_0_[0]\ : STD_LOGIC;
  signal \user_reg4_reg_n_0_[1]\ : STD_LOGIC;
  signal \user_reg4_reg_n_0_[2]\ : STD_LOGIC;
  signal \user_reg4_reg_n_0_[3]\ : STD_LOGIC;
  signal \user_reg4_reg_n_0_[4]\ : STD_LOGIC;
  signal \user_reg4_reg_n_0_[5]\ : STD_LOGIC;
  signal \user_reg4_reg_n_0_[6]\ : STD_LOGIC;
  signal \user_reg4_reg_n_0_[7]\ : STD_LOGIC;
  signal \wa_sckn_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \wa_sckn_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \wa_sckn_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \wa_sckn_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \wa_sckn_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \wa_sckn_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[5]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[6]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[7]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[7]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[7]_i_4_n_0\ : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \wd_sckn_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \wd_sckn_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \wd_sckn_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \wd_sckn_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \wd_sckn_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \wd_sckn_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \wdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \wdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \wdata_reg_n_0_[0]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[1]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[2]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[3]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[4]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[5]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[6]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \done_cnt[0]_i_1__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \done_cnt[1]_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \ra_sckn_cnt[0]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \ra_sckn_cnt[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \ra_sckn_cnt[3]_i_2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \ra_sckn_cnt[3]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \raddr[0]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \raddr[3]_i_2\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \raddr[4]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \raddr[6]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \raddr[7]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \raddr[7]_i_3\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \raddr[7]_i_4\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rd_sckn_cnt[0]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \rd_sckn_cnt[1]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \rd_sckn_cnt[3]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \rdata[7]_i_5\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \rdata[7]_i_7\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \s_state[0]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \s_state[0]_i_4\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \s_state[1]_i_2\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \s_state[1]_i_4\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \s_state[1]_i_6\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \s_state[2]_i_5\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of sck_nedge_1d_i_1 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of sck_pedge_1d_i_1 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \sid_sckn_cnt[0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \sid_sckn_cnt[1]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \sid_sckn_cnt[3]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \sid_sckn_cnt[3]_i_3\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \slave_id[2]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \slave_id[4]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \slave_id[5]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \slave_id[6]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \slave_id[6]_i_3\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \slave_id[6]_i_4\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \slave_id[7]_i_3\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \wa_sckn_cnt[0]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \wa_sckn_cnt[1]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \wa_sckn_cnt[3]_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \wa_sckn_cnt[3]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \waddr[3]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \waddr[4]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \waddr[5]_i_2\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \waddr[6]_i_2\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \waddr[7]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \waddr[7]_i_3\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \waddr[7]_i_4\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \wd_sckn_cnt[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \wd_sckn_cnt[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \wd_sckn_cnt[3]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \wd_sckn_cnt[3]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \wdata[3]_i_2\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \wdata[4]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \wdata[6]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \wdata[7]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \wdata[7]_i_3\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \wdata[7]_i_4\ : label is "soft_lutpair66";
begin
  miso <= \^miso\;
  reset_0 <= \^reset_0\;
\done_cnt[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \s_state_reg_n_0_[0]\,
      I1 => \s_state_reg_n_0_[2]\,
      I2 => \s_state_reg_n_0_[1]\,
      I3 => \done_cnt_reg_n_0_[0]\,
      O => \done_cnt[0]_i_1__0_n_0\
    );
\done_cnt[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404000"
    )
        port map (
      I0 => \s_state_reg_n_0_[0]\,
      I1 => \s_state_reg_n_0_[2]\,
      I2 => \s_state_reg_n_0_[1]\,
      I3 => \done_cnt_reg_n_0_[0]\,
      I4 => \done_cnt_reg_n_0_[1]\,
      O => \done_cnt[1]_i_1__0_n_0\
    );
\done_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \done_cnt[0]_i_1__0_n_0\,
      Q => \done_cnt_reg_n_0_[0]\
    );
\done_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \done_cnt[1]_i_1__0_n_0\,
      Q => \done_cnt_reg_n_0_[1]\
    );
\led[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => \^reset_0\
    );
miso_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"32330200"
    )
        port map (
      I0 => miso_reg_i_2_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \rd_sckn_cnt_reg_n_0_[3]\,
      I3 => sck_nedge_1d_reg_n_0,
      I4 => \^miso\,
      O => miso_i_1_n_0
    );
miso_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rdata_reg_n_0_[4]\,
      I1 => \rdata_reg_n_0_[5]\,
      I2 => \rd_sckn_cnt_reg_n_0_[1]\,
      I3 => \rdata_reg_n_0_[6]\,
      I4 => \rd_sckn_cnt_reg_n_0_[0]\,
      I5 => \rdata_reg_n_0_[7]\,
      O => miso_i_3_n_0
    );
miso_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rdata_reg_n_0_[0]\,
      I1 => \rdata_reg_n_0_[1]\,
      I2 => \rd_sckn_cnt_reg_n_0_[1]\,
      I3 => \rdata_reg_n_0_[2]\,
      I4 => \rd_sckn_cnt_reg_n_0_[0]\,
      I5 => \rdata_reg_n_0_[3]\,
      O => miso_i_4_n_0
    );
miso_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => miso_i_1_n_0,
      Q => \^miso\
    );
miso_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => miso_i_3_n_0,
      I1 => miso_i_4_n_0,
      O => miso_reg_i_2_n_0,
      S => \rd_sckn_cnt_reg_n_0_[2]\
    );
mosi_1d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => mosi,
      Q => mosi_1d_reg_n_0
    );
mosi_2d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => mosi_1d_reg_n_0,
      Q => mosi_2d_reg_n_0
    );
\ra_sckn_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \ra_sckn_cnt_reg_n_0_[0]\,
      I1 => \s_state_reg_n_0_[0]\,
      I2 => \s_state_reg_n_0_[2]\,
      I3 => \s_state_reg_n_0_[1]\,
      O => \p_0_in__3\(0)
    );
\ra_sckn_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000600"
    )
        port map (
      I0 => \ra_sckn_cnt_reg_n_0_[0]\,
      I1 => \ra_sckn_cnt_reg_n_0_[1]\,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \s_state_reg_n_0_[2]\,
      I4 => \s_state_reg_n_0_[1]\,
      O => \p_0_in__3\(1)
    );
\ra_sckn_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000780000"
    )
        port map (
      I0 => \ra_sckn_cnt_reg_n_0_[1]\,
      I1 => \ra_sckn_cnt_reg_n_0_[0]\,
      I2 => \ra_sckn_cnt_reg_n_0_[2]\,
      I3 => \s_state_reg_n_0_[0]\,
      I4 => \s_state_reg_n_0_[2]\,
      I5 => \s_state_reg_n_0_[1]\,
      O => \p_0_in__3\(2)
    );
\ra_sckn_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF4FF"
    )
        port map (
      I0 => sck_1d,
      I1 => sck_2d,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \s_state_reg_n_0_[2]\,
      I4 => \s_state_reg_n_0_[1]\,
      O => \ra_sckn_cnt[3]_i_1_n_0\
    );
\ra_sckn_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \ra_sckn_cnt_reg_n_0_[2]\,
      I1 => \ra_sckn_cnt_reg_n_0_[0]\,
      I2 => \ra_sckn_cnt_reg_n_0_[1]\,
      I3 => \ra_sckn_cnt_reg_n_0_[3]\,
      I4 => \ra_sckn_cnt[3]_i_3_n_0\,
      O => \p_0_in__3\(3)
    );
\ra_sckn_cnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \s_state_reg_n_0_[1]\,
      I1 => \s_state_reg_n_0_[2]\,
      I2 => \s_state_reg_n_0_[0]\,
      O => \ra_sckn_cnt[3]_i_3_n_0\
    );
\ra_sckn_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \ra_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__3\(0),
      Q => \ra_sckn_cnt_reg_n_0_[0]\
    );
\ra_sckn_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \ra_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__3\(1),
      Q => \ra_sckn_cnt_reg_n_0_[1]\
    );
\ra_sckn_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \ra_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__3\(2),
      Q => \ra_sckn_cnt_reg_n_0_[2]\
    );
\ra_sckn_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \ra_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__3\(3),
      Q => \ra_sckn_cnt_reg_n_0_[3]\
    );
\raddr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23332000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \raddr[7]_i_4_n_0\,
      I3 => \raddr[0]_i_2_n_0\,
      I4 => \raddr_reg_n_0_[0]\,
      O => \raddr[0]_i_1_n_0\
    );
\raddr[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \ra_sckn_cnt_reg_n_0_[0]\,
      I1 => \ra_sckn_cnt_reg_n_0_[1]\,
      I2 => \ra_sckn_cnt_reg_n_0_[2]\,
      I3 => \ra_sckn_cnt_reg_n_0_[3]\,
      O => \raddr[0]_i_2_n_0\
    );
\raddr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \raddr[3]_i_2_n_0\,
      I3 => \raddr[5]_i_2_n_0\,
      I4 => \raddr[7]_i_4_n_0\,
      I5 => \raddr_reg_n_0_[1]\,
      O => \raddr[1]_i_1_n_0\
    );
\raddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \raddr[3]_i_2_n_0\,
      I3 => \raddr[6]_i_2_n_0\,
      I4 => \raddr[7]_i_4_n_0\,
      I5 => \raddr_reg_n_0_[2]\,
      O => \raddr[2]_i_1_n_0\
    );
\raddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \raddr[3]_i_2_n_0\,
      I3 => \raddr[7]_i_2_n_0\,
      I4 => \raddr[7]_i_4_n_0\,
      I5 => \raddr_reg_n_0_[3]\,
      O => \raddr[3]_i_1_n_0\
    );
\raddr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ra_sckn_cnt_reg_n_0_[3]\,
      I1 => \ra_sckn_cnt_reg_n_0_[2]\,
      O => \raddr[3]_i_2_n_0\
    );
\raddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233333302000000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \raddr[7]_i_3_n_0\,
      I3 => \raddr[4]_i_2_n_0\,
      I4 => \raddr[7]_i_4_n_0\,
      I5 => \raddr_reg_n_0_[4]\,
      O => \raddr[4]_i_1_n_0\
    );
\raddr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ra_sckn_cnt_reg_n_0_[1]\,
      I1 => \ra_sckn_cnt_reg_n_0_[0]\,
      O => \raddr[4]_i_2_n_0\
    );
\raddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \raddr[5]_i_2_n_0\,
      I3 => \raddr[7]_i_3_n_0\,
      I4 => \raddr[7]_i_4_n_0\,
      I5 => \raddr_reg_n_0_[5]\,
      O => \raddr[5]_i_1_n_0\
    );
\raddr[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ra_sckn_cnt_reg_n_0_[0]\,
      I1 => \ra_sckn_cnt_reg_n_0_[1]\,
      O => \raddr[5]_i_2_n_0\
    );
\raddr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \raddr[6]_i_2_n_0\,
      I3 => \raddr[7]_i_3_n_0\,
      I4 => \raddr[7]_i_4_n_0\,
      I5 => \raddr_reg_n_0_[6]\,
      O => \raddr[6]_i_1_n_0\
    );
\raddr[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ra_sckn_cnt_reg_n_0_[1]\,
      I1 => \ra_sckn_cnt_reg_n_0_[0]\,
      O => \raddr[6]_i_2_n_0\
    );
\raddr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \raddr[7]_i_2_n_0\,
      I3 => \raddr[7]_i_3_n_0\,
      I4 => \raddr[7]_i_4_n_0\,
      I5 => \raddr_reg_n_0_[7]\,
      O => \raddr[7]_i_1_n_0\
    );
\raddr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ra_sckn_cnt_reg_n_0_[1]\,
      I1 => \ra_sckn_cnt_reg_n_0_[0]\,
      O => \raddr[7]_i_2_n_0\
    );
\raddr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ra_sckn_cnt_reg_n_0_[2]\,
      I1 => \ra_sckn_cnt_reg_n_0_[3]\,
      O => \raddr[7]_i_3_n_0\
    );
\raddr[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => sck_2d,
      I1 => sck_1d,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \s_state_reg_n_0_[2]\,
      I4 => \s_state_reg_n_0_[1]\,
      O => \raddr[7]_i_4_n_0\
    );
\raddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \raddr[0]_i_1_n_0\,
      Q => \raddr_reg_n_0_[0]\
    );
\raddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \raddr[1]_i_1_n_0\,
      Q => \raddr_reg_n_0_[1]\
    );
\raddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \raddr[2]_i_1_n_0\,
      Q => \raddr_reg_n_0_[2]\
    );
\raddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \raddr[3]_i_1_n_0\,
      Q => \raddr_reg_n_0_[3]\
    );
\raddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \raddr[4]_i_1_n_0\,
      Q => \raddr_reg_n_0_[4]\
    );
\raddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \raddr[5]_i_1_n_0\,
      Q => \raddr_reg_n_0_[5]\
    );
\raddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \raddr[6]_i_1_n_0\,
      Q => \raddr_reg_n_0_[6]\
    );
\raddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \raddr[7]_i_1_n_0\,
      Q => \raddr_reg_n_0_[7]\
    );
\rd_sckn_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \s_state_reg_n_0_[1]\,
      I1 => \s_state_reg_n_0_[2]\,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \rd_sckn_cnt_reg_n_0_[0]\,
      O => \p_0_in__6\(0)
    );
\rd_sckn_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404000"
    )
        port map (
      I0 => \s_state_reg_n_0_[1]\,
      I1 => \s_state_reg_n_0_[2]\,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \rd_sckn_cnt_reg_n_0_[1]\,
      I4 => \rd_sckn_cnt_reg_n_0_[0]\,
      O => \p_0_in__6\(1)
    );
\rd_sckn_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040404040000000"
    )
        port map (
      I0 => \s_state_reg_n_0_[1]\,
      I1 => \s_state_reg_n_0_[2]\,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \rd_sckn_cnt_reg_n_0_[0]\,
      I4 => \rd_sckn_cnt_reg_n_0_[1]\,
      I5 => \rd_sckn_cnt_reg_n_0_[2]\,
      O => \p_0_in__6\(2)
    );
\rd_sckn_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFFFFF"
    )
        port map (
      I0 => sck_1d,
      I1 => sck_2d,
      I2 => \s_state_reg_n_0_[1]\,
      I3 => \s_state_reg_n_0_[2]\,
      I4 => \s_state_reg_n_0_[0]\,
      O => \rd_sckn_cnt[3]_i_1_n_0\
    );
\rd_sckn_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rd_sckn_cnt[3]_i_3_n_0\,
      I1 => \rd_sckn_cnt_reg_n_0_[2]\,
      I2 => \rd_sckn_cnt_reg_n_0_[1]\,
      I3 => \rd_sckn_cnt_reg_n_0_[0]\,
      I4 => \rd_sckn_cnt_reg_n_0_[3]\,
      O => \p_0_in__6\(3)
    );
\rd_sckn_cnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \s_state_reg_n_0_[0]\,
      I1 => \s_state_reg_n_0_[2]\,
      I2 => \s_state_reg_n_0_[1]\,
      O => \rd_sckn_cnt[3]_i_3_n_0\
    );
\rd_sckn_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rd_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__6\(0),
      Q => \rd_sckn_cnt_reg_n_0_[0]\
    );
\rd_sckn_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rd_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__6\(1),
      Q => \rd_sckn_cnt_reg_n_0_[1]\
    );
\rd_sckn_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rd_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__6\(2),
      Q => \rd_sckn_cnt_reg_n_0_[2]\
    );
\rd_sckn_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rd_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__6\(3),
      Q => \rd_sckn_cnt_reg_n_0_[3]\
    );
\rdata[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400FFFF54000000"
    )
        port map (
      I0 => \slave_id[7]_i_2_n_0\,
      I1 => \rdata[7]_i_5_n_0\,
      I2 => \user_reg2_reg_n_0_[0]\,
      I3 => \rdata[0]_i_2_n_0\,
      I4 => \rdata[7]_i_7_n_0\,
      I5 => \user_reg1_reg_n_0_[0]\,
      O => \rdata[0]_i_1__0_n_0\
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \rdata[7]_i_8_n_0\,
      I1 => \user_reg4_reg_n_0_[0]\,
      I2 => \rdata[7]_i_9_n_0\,
      I3 => \user_reg3_reg_n_0_[0]\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400FFFF54000000"
    )
        port map (
      I0 => \slave_id[7]_i_2_n_0\,
      I1 => \rdata[7]_i_5_n_0\,
      I2 => \user_reg2_reg_n_0_[1]\,
      I3 => \rdata[1]_i_2__0_n_0\,
      I4 => \rdata[7]_i_7_n_0\,
      I5 => \user_reg1_reg_n_0_[1]\,
      O => \rdata[1]_i_1__0_n_0\
    );
\rdata[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \rdata[7]_i_8_n_0\,
      I1 => \user_reg4_reg_n_0_[1]\,
      I2 => \rdata[7]_i_9_n_0\,
      I3 => \user_reg3_reg_n_0_[1]\,
      O => \rdata[1]_i_2__0_n_0\
    );
\rdata[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400FFFF54000000"
    )
        port map (
      I0 => \slave_id[7]_i_2_n_0\,
      I1 => \rdata[7]_i_5_n_0\,
      I2 => \user_reg2_reg_n_0_[2]\,
      I3 => \rdata[2]_i_2_n_0\,
      I4 => \rdata[7]_i_7_n_0\,
      I5 => \user_reg1_reg_n_0_[2]\,
      O => \rdata[2]_i_1__0_n_0\
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \rdata[7]_i_8_n_0\,
      I1 => \user_reg4_reg_n_0_[2]\,
      I2 => \rdata[7]_i_9_n_0\,
      I3 => \user_reg3_reg_n_0_[2]\,
      O => \rdata[2]_i_2_n_0\
    );
\rdata[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400FFFF54000000"
    )
        port map (
      I0 => \slave_id[7]_i_2_n_0\,
      I1 => \rdata[7]_i_5_n_0\,
      I2 => \user_reg2_reg_n_0_[3]\,
      I3 => \rdata[3]_i_2_n_0\,
      I4 => \rdata[7]_i_7_n_0\,
      I5 => \user_reg1_reg_n_0_[3]\,
      O => \rdata[3]_i_1__0_n_0\
    );
\rdata[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \rdata[7]_i_8_n_0\,
      I1 => \user_reg4_reg_n_0_[3]\,
      I2 => \rdata[7]_i_9_n_0\,
      I3 => \user_reg3_reg_n_0_[3]\,
      O => \rdata[3]_i_2_n_0\
    );
\rdata[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400FFFF54000000"
    )
        port map (
      I0 => \slave_id[7]_i_2_n_0\,
      I1 => \rdata[7]_i_5_n_0\,
      I2 => \user_reg2_reg_n_0_[4]\,
      I3 => \rdata[4]_i_2_n_0\,
      I4 => \rdata[7]_i_7_n_0\,
      I5 => \user_reg1_reg_n_0_[4]\,
      O => \rdata[4]_i_1__0_n_0\
    );
\rdata[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \rdata[7]_i_8_n_0\,
      I1 => \user_reg4_reg_n_0_[4]\,
      I2 => \rdata[7]_i_9_n_0\,
      I3 => \user_reg3_reg_n_0_[4]\,
      O => \rdata[4]_i_2_n_0\
    );
\rdata[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400FFFF54000000"
    )
        port map (
      I0 => \slave_id[7]_i_2_n_0\,
      I1 => \rdata[7]_i_5_n_0\,
      I2 => \user_reg2_reg_n_0_[5]\,
      I3 => \rdata[5]_i_2_n_0\,
      I4 => \rdata[7]_i_7_n_0\,
      I5 => \user_reg1_reg_n_0_[5]\,
      O => \rdata[5]_i_1__0_n_0\
    );
\rdata[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \rdata[7]_i_8_n_0\,
      I1 => \user_reg4_reg_n_0_[5]\,
      I2 => \rdata[7]_i_9_n_0\,
      I3 => \user_reg3_reg_n_0_[5]\,
      O => \rdata[5]_i_2_n_0\
    );
\rdata[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400FFFF54000000"
    )
        port map (
      I0 => \slave_id[7]_i_2_n_0\,
      I1 => \rdata[7]_i_5_n_0\,
      I2 => \user_reg2_reg_n_0_[6]\,
      I3 => \rdata[6]_i_2__0_n_0\,
      I4 => \rdata[7]_i_7_n_0\,
      I5 => \user_reg1_reg_n_0_[6]\,
      O => \rdata[6]_i_1__0_n_0\
    );
\rdata[6]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \rdata[7]_i_8_n_0\,
      I1 => \user_reg4_reg_n_0_[6]\,
      I2 => \rdata[7]_i_9_n_0\,
      I3 => \user_reg3_reg_n_0_[6]\,
      O => \rdata[6]_i_2__0_n_0\
    );
\rdata[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"010101FF"
    )
        port map (
      I0 => \s_state_reg_n_0_[2]\,
      I1 => \s_state_reg_n_0_[1]\,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \rdata[7]_i_3__0_n_0\,
      I4 => \rdata[7]_i_4_n_0\,
      O => rdata0
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400FFFF54000000"
    )
        port map (
      I0 => \slave_id[7]_i_2_n_0\,
      I1 => \rdata[7]_i_5_n_0\,
      I2 => \user_reg2_reg_n_0_[7]\,
      I3 => \rdata[7]_i_6_n_0\,
      I4 => \rdata[7]_i_7_n_0\,
      I5 => \user_reg1_reg_n_0_[7]\,
      O => \rdata[7]_i_2_n_0\
    );
\rdata[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \raddr_reg_n_0_[7]\,
      I1 => \raddr_reg_n_0_[2]\,
      I2 => \raddr_reg_n_0_[3]\,
      I3 => \raddr_reg_n_0_[5]\,
      I4 => \raddr_reg_n_0_[6]\,
      I5 => \raddr_reg_n_0_[4]\,
      O => \rdata[7]_i_3__0_n_0\
    );
\rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => sck_pedge_1d,
      I1 => \ra_sckn_cnt[3]_i_3_n_0\,
      I2 => \ra_sckn_cnt_reg_n_0_[3]\,
      I3 => \ra_sckn_cnt_reg_n_0_[2]\,
      I4 => \ra_sckn_cnt_reg_n_0_[1]\,
      I5 => \ra_sckn_cnt_reg_n_0_[0]\,
      O => \rdata[7]_i_4_n_0\
    );
\rdata[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \rdata[7]_i_4_n_0\,
      I1 => \raddr_reg_n_0_[0]\,
      I2 => \raddr_reg_n_0_[1]\,
      I3 => \rdata[7]_i_3__0_n_0\,
      O => \rdata[7]_i_5_n_0\
    );
\rdata[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \rdata[7]_i_8_n_0\,
      I1 => \user_reg4_reg_n_0_[7]\,
      I2 => \rdata[7]_i_9_n_0\,
      I3 => \user_reg3_reg_n_0_[7]\,
      O => \rdata[7]_i_6_n_0\
    );
\rdata[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rdata[7]_i_3__0_n_0\,
      I1 => \raddr_reg_n_0_[1]\,
      I2 => \rdata[7]_i_4_n_0\,
      I3 => \raddr_reg_n_0_[0]\,
      O => \rdata[7]_i_7_n_0\
    );
\rdata[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => sck_pedge_1d,
      I1 => \ra_sckn_cnt[3]_i_3_n_0\,
      I2 => \raddr[0]_i_2_n_0\,
      I3 => \raddr_reg_n_0_[0]\,
      I4 => \rdata[7]_i_3__0_n_0\,
      I5 => \raddr_reg_n_0_[1]\,
      O => \rdata[7]_i_8_n_0\
    );
\rdata[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \rdata[7]_i_3__0_n_0\,
      I1 => \raddr_reg_n_0_[1]\,
      I2 => sck_pedge_1d,
      I3 => \ra_sckn_cnt[3]_i_3_n_0\,
      I4 => \raddr[0]_i_2_n_0\,
      I5 => \raddr_reg_n_0_[0]\,
      O => \rdata[7]_i_9_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdata0,
      CLR => \^reset_0\,
      D => \rdata[0]_i_1__0_n_0\,
      Q => \rdata_reg_n_0_[0]\
    );
\rdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdata0,
      CLR => \^reset_0\,
      D => \rdata[1]_i_1__0_n_0\,
      Q => \rdata_reg_n_0_[1]\
    );
\rdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdata0,
      CLR => \^reset_0\,
      D => \rdata[2]_i_1__0_n_0\,
      Q => \rdata_reg_n_0_[2]\
    );
\rdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdata0,
      CLR => \^reset_0\,
      D => \rdata[3]_i_1__0_n_0\,
      Q => \rdata_reg_n_0_[3]\
    );
\rdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdata0,
      CLR => \^reset_0\,
      D => \rdata[4]_i_1__0_n_0\,
      Q => \rdata_reg_n_0_[4]\
    );
\rdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdata0,
      CLR => \^reset_0\,
      D => \rdata[5]_i_1__0_n_0\,
      Q => \rdata_reg_n_0_[5]\
    );
\rdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdata0,
      CLR => \^reset_0\,
      D => \rdata[6]_i_1__0_n_0\,
      Q => \rdata_reg_n_0_[6]\
    );
\rdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdata0,
      CLR => \^reset_0\,
      D => \rdata[7]_i_2_n_0\,
      Q => \rdata_reg_n_0_[7]\
    );
\s_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFCFEFCFCFCFC"
    )
        port map (
      I0 => \s_state[0]_i_2_n_0\,
      I1 => \s_state[0]_i_3_n_0\,
      I2 => \s_state[0]_i_4_n_0\,
      I3 => \s_state[1]_i_2_n_0\,
      I4 => \s_state[2]_i_5_n_0\,
      I5 => \s_state_reg_n_0_[0]\,
      O => \s_state[0]_i_1_n_0\
    );
\s_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \sid_sckn_cnt[3]_i_3_n_0\,
      I1 => \sid_sckn_cnt_reg_n_0_[2]\,
      I2 => \sid_sckn_cnt_reg_n_0_[3]\,
      I3 => \sid_sckn_cnt_reg_n_0_[1]\,
      I4 => \sid_sckn_cnt_reg_n_0_[0]\,
      O => \s_state[0]_i_2_n_0\
    );
\s_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \s_state[1]_i_4_n_0\,
      I1 => ss_1d,
      I2 => ss_2d,
      I3 => \s_state_reg_n_0_[0]\,
      I4 => \s_state_reg_n_0_[1]\,
      I5 => \s_state_reg_n_0_[2]\,
      O => \s_state[0]_i_3_n_0\
    );
\s_state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \ra_sckn_cnt_reg_n_0_[2]\,
      I1 => \ra_sckn_cnt_reg_n_0_[3]\,
      I2 => \ra_sckn_cnt_reg_n_0_[1]\,
      I3 => \ra_sckn_cnt_reg_n_0_[0]\,
      I4 => \ra_sckn_cnt[3]_i_3_n_0\,
      O => \s_state[0]_i_4_n_0\
    );
\s_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFEFEFE00"
    )
        port map (
      I0 => \s_state[1]_i_2_n_0\,
      I1 => \s_state[1]_i_3_n_0\,
      I2 => \s_state[1]_i_4_n_0\,
      I3 => \s_state[2]_i_3_n_0\,
      I4 => \s_state[1]_i_5_n_0\,
      I5 => \s_state_reg_n_0_[1]\,
      O => \s_state[1]_i_1_n_0\
    );
\s_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404000"
    )
        port map (
      I0 => ss_2d,
      I1 => ss_1d,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \s_state_reg_n_0_[1]\,
      I4 => \s_state_reg_n_0_[2]\,
      O => \s_state[1]_i_2_n_0\
    );
\s_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \slave_id_reg_n_0_[0]\,
      I1 => \slave_id_reg_n_0_[7]\,
      I2 => \slave_id_reg_n_0_[6]\,
      I3 => \slave_id_reg_n_0_[4]\,
      I4 => \s_state[2]_i_6_n_0\,
      I5 => \s_state[0]_i_2_n_0\,
      O => \s_state[1]_i_3_n_0\
    );
\s_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \wa_sckn_cnt_reg_n_0_[1]\,
      I1 => \wa_sckn_cnt_reg_n_0_[0]\,
      I2 => \wa_sckn_cnt_reg_n_0_[3]\,
      I3 => \wa_sckn_cnt_reg_n_0_[2]\,
      I4 => \wa_sckn_cnt[3]_i_3_n_0\,
      O => \s_state[1]_i_4_n_0\
    );
\s_state[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF80"
    )
        port map (
      I0 => \done_cnt_reg_n_0_[1]\,
      I1 => \done_cnt_reg_n_0_[0]\,
      I2 => \s_state[1]_i_6_n_0\,
      I3 => \s_state[1]_i_2_n_0\,
      I4 => \s_state[0]_i_4_n_0\,
      O => \s_state[1]_i_5_n_0\
    );
\s_state[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \s_state_reg_n_0_[1]\,
      I1 => \s_state_reg_n_0_[2]\,
      I2 => \s_state_reg_n_0_[0]\,
      O => \s_state[1]_i_6_n_0\
    );
\s_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF44FF4FFF44FF40"
    )
        port map (
      I0 => \s_state[2]_i_2_n_0\,
      I1 => \slave_id_reg_n_0_[0]\,
      I2 => \s_state[2]_i_3_n_0\,
      I3 => \s_state[2]_i_4_n_0\,
      I4 => \s_state[2]_i_5_n_0\,
      I5 => \s_state_reg_n_0_[2]\,
      O => \s_state[2]_i_1_n_0\
    );
\s_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \s_state[0]_i_2_n_0\,
      I1 => \s_state[2]_i_6_n_0\,
      I2 => \slave_id_reg_n_0_[4]\,
      I3 => \slave_id_reg_n_0_[6]\,
      I4 => \slave_id_reg_n_0_[7]\,
      O => \s_state[2]_i_2_n_0\
    );
\s_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF08FFFF"
    )
        port map (
      I0 => \slave_id[7]_i_2_n_0\,
      I1 => ss_2d,
      I2 => ss_1d,
      I3 => \s_state[1]_i_4_n_0\,
      I4 => \s_state[0]_i_2_n_0\,
      O => \s_state[2]_i_3_n_0\
    );
\s_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABEAAAAAA"
    )
        port map (
      I0 => \s_state[0]_i_4_n_0\,
      I1 => \s_state_reg_n_0_[2]\,
      I2 => \s_state_reg_n_0_[1]\,
      I3 => \s_state_reg_n_0_[0]\,
      I4 => ss_1d,
      I5 => ss_2d,
      O => \s_state[2]_i_4_n_0\
    );
\s_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \s_state_reg_n_0_[0]\,
      I1 => \s_state_reg_n_0_[2]\,
      I2 => \s_state_reg_n_0_[1]\,
      I3 => \done_cnt_reg_n_0_[0]\,
      I4 => \done_cnt_reg_n_0_[1]\,
      O => \s_state[2]_i_5_n_0\
    );
\s_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \slave_id_reg_n_0_[2]\,
      I1 => \slave_id_reg_n_0_[3]\,
      I2 => \slave_id_reg_n_0_[5]\,
      I3 => \slave_id_reg_n_0_[1]\,
      O => \s_state[2]_i_6_n_0\
    );
\s_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \s_state[0]_i_1_n_0\,
      Q => \s_state_reg_n_0_[0]\
    );
\s_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \s_state[1]_i_1_n_0\,
      Q => \s_state_reg_n_0_[1]\
    );
\s_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \s_state[2]_i_1_n_0\,
      Q => \s_state_reg_n_0_[2]\
    );
sck_1d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => sck,
      Q => sck_1d
    );
sck_2d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => sck_1d,
      Q => sck_2d
    );
sck_nedge_1d_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sck_2d,
      I1 => sck_1d,
      O => sck_nedge_1d_i_1_n_0
    );
sck_nedge_1d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => sck_nedge_1d_i_1_n_0,
      Q => sck_nedge_1d_reg_n_0
    );
sck_pedge_1d_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sck_1d,
      I1 => sck_2d,
      O => sck_pedge_1d_i_1_n_0
    );
sck_pedge_1d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => sck_pedge_1d_i_1_n_0,
      Q => sck_pedge_1d
    );
\sid_sckn_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \sid_sckn_cnt_reg_n_0_[0]\,
      I1 => \s_state_reg_n_0_[0]\,
      I2 => \s_state_reg_n_0_[2]\,
      I3 => \s_state_reg_n_0_[1]\,
      O => \p_0_in__5\(0)
    );
\sid_sckn_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000060"
    )
        port map (
      I0 => \sid_sckn_cnt_reg_n_0_[0]\,
      I1 => \sid_sckn_cnt_reg_n_0_[1]\,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \s_state_reg_n_0_[2]\,
      I4 => \s_state_reg_n_0_[1]\,
      O => \p_0_in__5\(1)
    );
\sid_sckn_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007800"
    )
        port map (
      I0 => \sid_sckn_cnt_reg_n_0_[1]\,
      I1 => \sid_sckn_cnt_reg_n_0_[0]\,
      I2 => \sid_sckn_cnt_reg_n_0_[2]\,
      I3 => \s_state_reg_n_0_[0]\,
      I4 => \s_state_reg_n_0_[2]\,
      I5 => \s_state_reg_n_0_[1]\,
      O => \p_0_in__5\(2)
    );
\sid_sckn_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF4F"
    )
        port map (
      I0 => sck_1d,
      I1 => sck_2d,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \s_state_reg_n_0_[2]\,
      I4 => \s_state_reg_n_0_[1]\,
      O => \sid_sckn_cnt[3]_i_1_n_0\
    );
\sid_sckn_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \sid_sckn_cnt_reg_n_0_[2]\,
      I1 => \sid_sckn_cnt_reg_n_0_[0]\,
      I2 => \sid_sckn_cnt_reg_n_0_[1]\,
      I3 => \sid_sckn_cnt_reg_n_0_[3]\,
      I4 => \sid_sckn_cnt[3]_i_3_n_0\,
      O => \p_0_in__5\(3)
    );
\sid_sckn_cnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \s_state_reg_n_0_[1]\,
      I1 => \s_state_reg_n_0_[2]\,
      I2 => \s_state_reg_n_0_[0]\,
      O => \sid_sckn_cnt[3]_i_3_n_0\
    );
\sid_sckn_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sid_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__5\(0),
      Q => \sid_sckn_cnt_reg_n_0_[0]\
    );
\sid_sckn_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sid_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__5\(1),
      Q => \sid_sckn_cnt_reg_n_0_[1]\
    );
\sid_sckn_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sid_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__5\(2),
      Q => \sid_sckn_cnt_reg_n_0_[2]\
    );
\sid_sckn_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sid_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__5\(3),
      Q => \sid_sckn_cnt_reg_n_0_[3]\
    );
\slave_id[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2333333320000000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \slave_id[4]_i_2_n_0\,
      I3 => \slave_id[2]_i_2_n_0\,
      I4 => \slave_id[6]_i_4_n_0\,
      I5 => \slave_id_reg_n_0_[0]\,
      O => \slave_id[0]_i_1_n_0\
    );
\slave_id[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233333302000000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \slave_id[5]_i_2_n_0\,
      I3 => \slave_id[2]_i_2_n_0\,
      I4 => \slave_id[6]_i_4_n_0\,
      I5 => \slave_id_reg_n_0_[1]\,
      O => \slave_id[1]_i_1_n_0\
    );
\slave_id[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233333302000000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \slave_id[6]_i_2_n_0\,
      I3 => \slave_id[2]_i_2_n_0\,
      I4 => \slave_id[6]_i_4_n_0\,
      I5 => \slave_id_reg_n_0_[2]\,
      O => \slave_id[2]_i_1_n_0\
    );
\slave_id[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sid_sckn_cnt_reg_n_0_[2]\,
      I1 => \sid_sckn_cnt_reg_n_0_[3]\,
      O => \slave_id[2]_i_2_n_0\
    );
\slave_id[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333323300000200"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \slave_id[7]_i_3_n_0\,
      I3 => \sid_sckn_cnt_reg_n_0_[2]\,
      I4 => \sid_sckn_cnt_reg_n_0_[3]\,
      I5 => \slave_id_reg_n_0_[3]\,
      O => \slave_id[3]_i_1_n_0\
    );
\slave_id[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2333333320000000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \slave_id[4]_i_2_n_0\,
      I3 => \slave_id[6]_i_3_n_0\,
      I4 => \slave_id[6]_i_4_n_0\,
      I5 => \slave_id_reg_n_0_[4]\,
      O => \slave_id[4]_i_1_n_0\
    );
\slave_id[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sid_sckn_cnt_reg_n_0_[1]\,
      I1 => \sid_sckn_cnt_reg_n_0_[0]\,
      O => \slave_id[4]_i_2_n_0\
    );
\slave_id[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233333302000000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \slave_id[5]_i_2_n_0\,
      I3 => \slave_id[6]_i_3_n_0\,
      I4 => \slave_id[6]_i_4_n_0\,
      I5 => \slave_id_reg_n_0_[5]\,
      O => \slave_id[5]_i_1_n_0\
    );
\slave_id[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \sid_sckn_cnt_reg_n_0_[0]\,
      I1 => \sid_sckn_cnt_reg_n_0_[1]\,
      O => \slave_id[5]_i_2_n_0\
    );
\slave_id[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233333302000000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \slave_id[6]_i_2_n_0\,
      I3 => \slave_id[6]_i_3_n_0\,
      I4 => \slave_id[6]_i_4_n_0\,
      I5 => \slave_id_reg_n_0_[6]\,
      O => \slave_id[6]_i_1_n_0\
    );
\slave_id[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \sid_sckn_cnt_reg_n_0_[1]\,
      I1 => \sid_sckn_cnt_reg_n_0_[0]\,
      O => \slave_id[6]_i_2_n_0\
    );
\slave_id[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sid_sckn_cnt_reg_n_0_[2]\,
      I1 => \sid_sckn_cnt_reg_n_0_[3]\,
      O => \slave_id[6]_i_3_n_0\
    );
\slave_id[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => sck_2d,
      I1 => sck_1d,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \s_state_reg_n_0_[2]\,
      I4 => \s_state_reg_n_0_[1]\,
      O => \slave_id[6]_i_4_n_0\
    );
\slave_id[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333200000002"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \slave_id[7]_i_3_n_0\,
      I3 => \sid_sckn_cnt_reg_n_0_[2]\,
      I4 => \sid_sckn_cnt_reg_n_0_[3]\,
      I5 => \slave_id_reg_n_0_[7]\,
      O => \slave_id[7]_i_1_n_0\
    );
\slave_id[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \s_state_reg_n_0_[0]\,
      I1 => \s_state_reg_n_0_[1]\,
      I2 => \s_state_reg_n_0_[2]\,
      O => \slave_id[7]_i_2_n_0\
    );
\slave_id[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \sid_sckn_cnt_reg_n_0_[0]\,
      I1 => \sid_sckn_cnt_reg_n_0_[1]\,
      I2 => \slave_id[6]_i_4_n_0\,
      O => \slave_id[7]_i_3_n_0\
    );
\slave_id_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \slave_id[0]_i_1_n_0\,
      Q => \slave_id_reg_n_0_[0]\
    );
\slave_id_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \slave_id[1]_i_1_n_0\,
      Q => \slave_id_reg_n_0_[1]\
    );
\slave_id_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \slave_id[2]_i_1_n_0\,
      Q => \slave_id_reg_n_0_[2]\
    );
\slave_id_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \slave_id[3]_i_1_n_0\,
      Q => \slave_id_reg_n_0_[3]\
    );
\slave_id_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \slave_id[4]_i_1_n_0\,
      Q => \slave_id_reg_n_0_[4]\
    );
\slave_id_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \slave_id[5]_i_1_n_0\,
      Q => \slave_id_reg_n_0_[5]\
    );
\slave_id_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \slave_id[6]_i_1_n_0\,
      Q => \slave_id_reg_n_0_[6]\
    );
\slave_id_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \slave_id[7]_i_1_n_0\,
      Q => \slave_id_reg_n_0_[7]\
    );
ss_1d_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ss,
      PRE => \^reset_0\,
      Q => ss_1d
    );
ss_2d_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ss_1d,
      PRE => \^reset_0\,
      Q => ss_2d
    );
\user_reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[0]\,
      I1 => \s_state_reg_n_0_[0]\,
      I2 => \s_state_reg_n_0_[2]\,
      I3 => \s_state_reg_n_0_[1]\,
      I4 => \user_reg1[7]_i_2_n_0\,
      I5 => \waddr_reg_n_0_[1]\,
      O => \user_reg1[7]_i_1_n_0\
    );
\user_reg1[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[6]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[5]\,
      I4 => \waddr_reg_n_0_[3]\,
      I5 => \waddr_reg_n_0_[7]\,
      O => \user_reg1[7]_i_2_n_0\
    );
\user_reg1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg1[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[0]\,
      Q => \user_reg1_reg_n_0_[0]\
    );
\user_reg1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg1[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[1]\,
      Q => \user_reg1_reg_n_0_[1]\
    );
\user_reg1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg1[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[2]\,
      Q => \user_reg1_reg_n_0_[2]\
    );
\user_reg1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg1[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[3]\,
      Q => \user_reg1_reg_n_0_[3]\
    );
\user_reg1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg1[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[4]\,
      Q => \user_reg1_reg_n_0_[4]\
    );
\user_reg1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg1[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[5]\,
      Q => \user_reg1_reg_n_0_[5]\
    );
\user_reg1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg1[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[6]\,
      Q => \user_reg1_reg_n_0_[6]\
    );
\user_reg1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg1[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[7]\,
      Q => \user_reg1_reg_n_0_[7]\
    );
\user_reg2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[0]\,
      I1 => \s_state_reg_n_0_[0]\,
      I2 => \s_state_reg_n_0_[2]\,
      I3 => \s_state_reg_n_0_[1]\,
      I4 => \user_reg1[7]_i_2_n_0\,
      I5 => \waddr_reg_n_0_[1]\,
      O => \user_reg2[7]_i_1_n_0\
    );
\user_reg2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg2[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[0]\,
      Q => \user_reg2_reg_n_0_[0]\
    );
\user_reg2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg2[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[1]\,
      Q => \user_reg2_reg_n_0_[1]\
    );
\user_reg2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg2[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[2]\,
      Q => \user_reg2_reg_n_0_[2]\
    );
\user_reg2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg2[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[3]\,
      Q => \user_reg2_reg_n_0_[3]\
    );
\user_reg2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg2[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[4]\,
      Q => \user_reg2_reg_n_0_[4]\
    );
\user_reg2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg2[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[5]\,
      Q => \user_reg2_reg_n_0_[5]\
    );
\user_reg2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg2[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[6]\,
      Q => \user_reg2_reg_n_0_[6]\
    );
\user_reg2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg2[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[7]\,
      Q => \user_reg2_reg_n_0_[7]\
    );
\user_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[0]\,
      I1 => \waddr_reg_n_0_[1]\,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \s_state_reg_n_0_[2]\,
      I4 => \s_state_reg_n_0_[1]\,
      I5 => \user_reg1[7]_i_2_n_0\,
      O => \user_reg3[7]_i_1_n_0\
    );
\user_reg3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg3[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[0]\,
      Q => \user_reg3_reg_n_0_[0]\
    );
\user_reg3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg3[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[1]\,
      Q => \user_reg3_reg_n_0_[1]\
    );
\user_reg3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg3[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[2]\,
      Q => \user_reg3_reg_n_0_[2]\
    );
\user_reg3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg3[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[3]\,
      Q => \user_reg3_reg_n_0_[3]\
    );
\user_reg3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg3[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[4]\,
      Q => \user_reg3_reg_n_0_[4]\
    );
\user_reg3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg3[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[5]\,
      Q => \user_reg3_reg_n_0_[5]\
    );
\user_reg3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg3[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[6]\,
      Q => \user_reg3_reg_n_0_[6]\
    );
\user_reg3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg3[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[7]\,
      Q => \user_reg3_reg_n_0_[7]\
    );
\user_reg4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[0]\,
      I1 => \waddr_reg_n_0_[1]\,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \s_state_reg_n_0_[2]\,
      I4 => \s_state_reg_n_0_[1]\,
      I5 => \user_reg1[7]_i_2_n_0\,
      O => \user_reg4[7]_i_1_n_0\
    );
\user_reg4_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg4[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[0]\,
      Q => \user_reg4_reg_n_0_[0]\
    );
\user_reg4_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg4[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[1]\,
      Q => \user_reg4_reg_n_0_[1]\
    );
\user_reg4_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg4[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[2]\,
      Q => \user_reg4_reg_n_0_[2]\
    );
\user_reg4_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg4[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[3]\,
      Q => \user_reg4_reg_n_0_[3]\
    );
\user_reg4_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg4[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[4]\,
      Q => \user_reg4_reg_n_0_[4]\
    );
\user_reg4_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg4[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[5]\,
      Q => \user_reg4_reg_n_0_[5]\
    );
\user_reg4_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg4[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[6]\,
      Q => \user_reg4_reg_n_0_[6]\
    );
\user_reg4_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \user_reg4[7]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \wdata_reg_n_0_[7]\,
      Q => \user_reg4_reg_n_0_[7]\
    );
\wa_sckn_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \wa_sckn_cnt_reg_n_0_[0]\,
      I1 => \s_state_reg_n_0_[2]\,
      I2 => \s_state_reg_n_0_[1]\,
      I3 => \s_state_reg_n_0_[0]\,
      O => \p_0_in__4\(0)
    );
\wa_sckn_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000600"
    )
        port map (
      I0 => \wa_sckn_cnt_reg_n_0_[0]\,
      I1 => \wa_sckn_cnt_reg_n_0_[1]\,
      I2 => \s_state_reg_n_0_[2]\,
      I3 => \s_state_reg_n_0_[1]\,
      I4 => \s_state_reg_n_0_[0]\,
      O => \p_0_in__4\(1)
    );
\wa_sckn_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000780000"
    )
        port map (
      I0 => \wa_sckn_cnt_reg_n_0_[1]\,
      I1 => \wa_sckn_cnt_reg_n_0_[0]\,
      I2 => \wa_sckn_cnt_reg_n_0_[2]\,
      I3 => \s_state_reg_n_0_[2]\,
      I4 => \s_state_reg_n_0_[1]\,
      I5 => \s_state_reg_n_0_[0]\,
      O => \p_0_in__4\(2)
    );
\wa_sckn_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF4FF"
    )
        port map (
      I0 => sck_1d,
      I1 => sck_2d,
      I2 => \s_state_reg_n_0_[2]\,
      I3 => \s_state_reg_n_0_[1]\,
      I4 => \s_state_reg_n_0_[0]\,
      O => \wa_sckn_cnt[3]_i_1_n_0\
    );
\wa_sckn_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \wa_sckn_cnt_reg_n_0_[2]\,
      I1 => \wa_sckn_cnt_reg_n_0_[0]\,
      I2 => \wa_sckn_cnt_reg_n_0_[1]\,
      I3 => \wa_sckn_cnt_reg_n_0_[3]\,
      I4 => \wa_sckn_cnt[3]_i_3_n_0\,
      O => \p_0_in__4\(3)
    );
\wa_sckn_cnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \s_state_reg_n_0_[0]\,
      I1 => \s_state_reg_n_0_[1]\,
      I2 => \s_state_reg_n_0_[2]\,
      O => \wa_sckn_cnt[3]_i_3_n_0\
    );
\wa_sckn_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wa_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__4\(0),
      Q => \wa_sckn_cnt_reg_n_0_[0]\
    );
\wa_sckn_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wa_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__4\(1),
      Q => \wa_sckn_cnt_reg_n_0_[1]\
    );
\wa_sckn_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wa_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__4\(2),
      Q => \wa_sckn_cnt_reg_n_0_[2]\
    );
\wa_sckn_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wa_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__4\(3),
      Q => \wa_sckn_cnt_reg_n_0_[3]\
    );
\waddr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233333302000000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \waddr[3]_i_2_n_0\,
      I3 => \waddr[4]_i_2_n_0\,
      I4 => \waddr[7]_i_4_n_0\,
      I5 => \waddr_reg_n_0_[0]\,
      O => \waddr[0]_i_1_n_0\
    );
\waddr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \waddr[3]_i_2_n_0\,
      I3 => \waddr[5]_i_2_n_0\,
      I4 => \waddr[7]_i_4_n_0\,
      I5 => \waddr_reg_n_0_[1]\,
      O => \waddr[1]_i_1_n_0\
    );
\waddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \waddr[3]_i_2_n_0\,
      I3 => \waddr[6]_i_2_n_0\,
      I4 => \waddr[7]_i_4_n_0\,
      I5 => \waddr_reg_n_0_[2]\,
      O => \waddr[2]_i_1_n_0\
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \waddr[3]_i_2_n_0\,
      I3 => \waddr[7]_i_2_n_0\,
      I4 => \waddr[7]_i_4_n_0\,
      I5 => \waddr_reg_n_0_[3]\,
      O => \waddr[3]_i_1_n_0\
    );
\waddr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \wa_sckn_cnt_reg_n_0_[3]\,
      I1 => \wa_sckn_cnt_reg_n_0_[2]\,
      O => \waddr[3]_i_2_n_0\
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233333302000000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \waddr[7]_i_3_n_0\,
      I3 => \waddr[4]_i_2_n_0\,
      I4 => \waddr[7]_i_4_n_0\,
      I5 => \waddr_reg_n_0_[4]\,
      O => \waddr[4]_i_1_n_0\
    );
\waddr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \wa_sckn_cnt_reg_n_0_[1]\,
      I1 => \wa_sckn_cnt_reg_n_0_[0]\,
      O => \waddr[4]_i_2_n_0\
    );
\waddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \waddr[5]_i_2_n_0\,
      I3 => \waddr[7]_i_3_n_0\,
      I4 => \waddr[7]_i_4_n_0\,
      I5 => \waddr_reg_n_0_[5]\,
      O => \waddr[5]_i_1_n_0\
    );
\waddr[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \wa_sckn_cnt_reg_n_0_[0]\,
      I1 => \wa_sckn_cnt_reg_n_0_[1]\,
      O => \waddr[5]_i_2_n_0\
    );
\waddr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \waddr[6]_i_2_n_0\,
      I3 => \waddr[7]_i_3_n_0\,
      I4 => \waddr[7]_i_4_n_0\,
      I5 => \waddr_reg_n_0_[6]\,
      O => \waddr[6]_i_1_n_0\
    );
\waddr[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \wa_sckn_cnt_reg_n_0_[1]\,
      I1 => \wa_sckn_cnt_reg_n_0_[0]\,
      O => \waddr[6]_i_2_n_0\
    );
\waddr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \waddr[7]_i_2_n_0\,
      I3 => \waddr[7]_i_3_n_0\,
      I4 => \waddr[7]_i_4_n_0\,
      I5 => \waddr_reg_n_0_[7]\,
      O => \waddr[7]_i_1_n_0\
    );
\waddr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \wa_sckn_cnt_reg_n_0_[1]\,
      I1 => \wa_sckn_cnt_reg_n_0_[0]\,
      O => \waddr[7]_i_2_n_0\
    );
\waddr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \wa_sckn_cnt_reg_n_0_[2]\,
      I1 => \wa_sckn_cnt_reg_n_0_[3]\,
      O => \waddr[7]_i_3_n_0\
    );
\waddr[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => sck_2d,
      I1 => sck_1d,
      I2 => \s_state_reg_n_0_[2]\,
      I3 => \s_state_reg_n_0_[1]\,
      I4 => \s_state_reg_n_0_[0]\,
      O => \waddr[7]_i_4_n_0\
    );
\waddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \waddr[0]_i_1_n_0\,
      Q => \waddr_reg_n_0_[0]\
    );
\waddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \waddr[1]_i_1_n_0\,
      Q => \waddr_reg_n_0_[1]\
    );
\waddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \waddr[2]_i_1_n_0\,
      Q => \waddr_reg_n_0_[2]\
    );
\waddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \waddr[3]_i_1_n_0\,
      Q => \waddr_reg_n_0_[3]\
    );
\waddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \waddr[4]_i_1_n_0\,
      Q => \waddr_reg_n_0_[4]\
    );
\waddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \waddr[5]_i_1_n_0\,
      Q => \waddr_reg_n_0_[5]\
    );
\waddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \waddr[6]_i_1_n_0\,
      Q => \waddr_reg_n_0_[6]\
    );
\waddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \waddr[7]_i_1_n_0\,
      Q => \waddr_reg_n_0_[7]\
    );
\wd_sckn_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \s_state_reg_n_0_[2]\,
      I1 => \s_state_reg_n_0_[1]\,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \wd_sckn_cnt_reg_n_0_[0]\,
      O => \p_0_in__7\(0)
    );
\wd_sckn_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404000"
    )
        port map (
      I0 => \s_state_reg_n_0_[2]\,
      I1 => \s_state_reg_n_0_[1]\,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \wd_sckn_cnt_reg_n_0_[1]\,
      I4 => \wd_sckn_cnt_reg_n_0_[0]\,
      O => \p_0_in__7\(1)
    );
\wd_sckn_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040404040000000"
    )
        port map (
      I0 => \s_state_reg_n_0_[2]\,
      I1 => \s_state_reg_n_0_[1]\,
      I2 => \s_state_reg_n_0_[0]\,
      I3 => \wd_sckn_cnt_reg_n_0_[1]\,
      I4 => \wd_sckn_cnt_reg_n_0_[0]\,
      I5 => \wd_sckn_cnt_reg_n_0_[2]\,
      O => \p_0_in__7\(2)
    );
\wd_sckn_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFFFFF"
    )
        port map (
      I0 => sck_1d,
      I1 => sck_2d,
      I2 => \s_state_reg_n_0_[2]\,
      I3 => \s_state_reg_n_0_[1]\,
      I4 => \s_state_reg_n_0_[0]\,
      O => \wd_sckn_cnt[3]_i_1_n_0\
    );
\wd_sckn_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \wd_sckn_cnt[3]_i_3_n_0\,
      I1 => \wd_sckn_cnt_reg_n_0_[2]\,
      I2 => \wd_sckn_cnt_reg_n_0_[0]\,
      I3 => \wd_sckn_cnt_reg_n_0_[1]\,
      I4 => \wd_sckn_cnt_reg_n_0_[3]\,
      O => \p_0_in__7\(3)
    );
\wd_sckn_cnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \s_state_reg_n_0_[0]\,
      I1 => \s_state_reg_n_0_[1]\,
      I2 => \s_state_reg_n_0_[2]\,
      O => \wd_sckn_cnt[3]_i_3_n_0\
    );
\wd_sckn_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wd_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__7\(0),
      Q => \wd_sckn_cnt_reg_n_0_[0]\
    );
\wd_sckn_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wd_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__7\(1),
      Q => \wd_sckn_cnt_reg_n_0_[1]\
    );
\wd_sckn_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wd_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__7\(2),
      Q => \wd_sckn_cnt_reg_n_0_[2]\
    );
\wd_sckn_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \wd_sckn_cnt[3]_i_1_n_0\,
      CLR => \^reset_0\,
      D => \p_0_in__7\(3),
      Q => \wd_sckn_cnt_reg_n_0_[3]\
    );
\wdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233333302000000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \wdata[3]_i_2_n_0\,
      I3 => \wdata[4]_i_2_n_0\,
      I4 => \wdata[7]_i_4_n_0\,
      I5 => \wdata_reg_n_0_[0]\,
      O => \wdata[0]_i_1_n_0\
    );
\wdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \wdata[3]_i_2_n_0\,
      I3 => \wdata[5]_i_2_n_0\,
      I4 => \wdata[7]_i_4_n_0\,
      I5 => \wdata_reg_n_0_[1]\,
      O => \wdata[1]_i_1_n_0\
    );
\wdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \wdata[3]_i_2_n_0\,
      I3 => \wdata[6]_i_2_n_0\,
      I4 => \wdata[7]_i_4_n_0\,
      I5 => \wdata_reg_n_0_[2]\,
      O => \wdata[2]_i_1_n_0\
    );
\wdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \wdata[3]_i_2_n_0\,
      I3 => \wdata[7]_i_2_n_0\,
      I4 => \wdata[7]_i_4_n_0\,
      I5 => \wdata_reg_n_0_[3]\,
      O => \wdata[3]_i_1_n_0\
    );
\wdata[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \wd_sckn_cnt_reg_n_0_[3]\,
      I1 => \wd_sckn_cnt_reg_n_0_[2]\,
      O => \wdata[3]_i_2_n_0\
    );
\wdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233333302000000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \wdata[7]_i_3_n_0\,
      I3 => \wdata[4]_i_2_n_0\,
      I4 => \wdata[7]_i_4_n_0\,
      I5 => \wdata_reg_n_0_[4]\,
      O => \wdata[4]_i_1_n_0\
    );
\wdata[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \wd_sckn_cnt_reg_n_0_[1]\,
      I1 => \wd_sckn_cnt_reg_n_0_[0]\,
      O => \wdata[4]_i_2_n_0\
    );
\wdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \wdata[5]_i_2_n_0\,
      I3 => \wdata[7]_i_3_n_0\,
      I4 => \wdata[7]_i_4_n_0\,
      I5 => \wdata_reg_n_0_[5]\,
      O => \wdata[5]_i_1_n_0\
    );
\wdata[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \wd_sckn_cnt_reg_n_0_[0]\,
      I1 => \wd_sckn_cnt_reg_n_0_[1]\,
      O => \wdata[5]_i_2_n_0\
    );
\wdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \wdata[6]_i_2_n_0\,
      I3 => \wdata[7]_i_3_n_0\,
      I4 => \wdata[7]_i_4_n_0\,
      I5 => \wdata_reg_n_0_[6]\,
      O => \wdata[6]_i_1_n_0\
    );
\wdata[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \wd_sckn_cnt_reg_n_0_[1]\,
      I1 => \wd_sckn_cnt_reg_n_0_[0]\,
      O => \wdata[6]_i_2_n_0\
    );
\wdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332333300020000"
    )
        port map (
      I0 => mosi_2d_reg_n_0,
      I1 => \slave_id[7]_i_2_n_0\,
      I2 => \wdata[7]_i_2_n_0\,
      I3 => \wdata[7]_i_3_n_0\,
      I4 => \wdata[7]_i_4_n_0\,
      I5 => \wdata_reg_n_0_[7]\,
      O => \wdata[7]_i_1_n_0\
    );
\wdata[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \wd_sckn_cnt_reg_n_0_[1]\,
      I1 => \wd_sckn_cnt_reg_n_0_[0]\,
      O => \wdata[7]_i_2_n_0\
    );
\wdata[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \wd_sckn_cnt_reg_n_0_[2]\,
      I1 => \wd_sckn_cnt_reg_n_0_[3]\,
      O => \wdata[7]_i_3_n_0\
    );
\wdata[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => sck_2d,
      I1 => sck_1d,
      I2 => \s_state_reg_n_0_[2]\,
      I3 => \s_state_reg_n_0_[1]\,
      I4 => \s_state_reg_n_0_[0]\,
      O => \wdata[7]_i_4_n_0\
    );
\wdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \wdata[0]_i_1_n_0\,
      Q => \wdata_reg_n_0_[0]\
    );
\wdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \wdata[1]_i_1_n_0\,
      Q => \wdata_reg_n_0_[1]\
    );
\wdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \wdata[2]_i_1_n_0\,
      Q => \wdata_reg_n_0_[2]\
    );
\wdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \wdata[3]_i_1_n_0\,
      Q => \wdata_reg_n_0_[3]\
    );
\wdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \wdata[4]_i_1_n_0\,
      Q => \wdata_reg_n_0_[4]\
    );
\wdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \wdata[5]_i_1_n_0\,
      Q => \wdata_reg_n_0_[5]\
    );
\wdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \wdata[6]_i_1_n_0\,
      Q => \wdata_reg_n_0_[6]\
    );
\wdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \wdata[7]_i_1_n_0\,
      Q => \wdata_reg_n_0_[7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_con_exam_IP_top_fndcontrol2_0_0_spi_task is
  port (
    reset_0 : out STD_LOGIC;
    fnd : out STD_LOGIC_VECTOR ( 6 downto 0 );
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mode : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spi_con_exam_IP_top_fndcontrol2_0_0_spi_task : entity is "spi_task";
end spi_con_exam_IP_top_fndcontrol2_0_0_spi_task;

architecture STRUCTURE of spi_con_exam_IP_top_fndcontrol2_0_0_spi_task is
  signal addr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal btn2_0 : STD_LOGIC;
  signal btn2_1 : STD_LOGIC;
  signal btn2_2 : STD_LOGIC;
  signal btn2_3 : STD_LOGIC;
  signal btn_id : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal btn_in_u3_n_0 : STD_LOGIC;
  signal btn_in_u3_n_2 : STD_LOGIC;
  signal btn_in_u3_n_3 : STD_LOGIC;
  signal \fnd[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \fnd[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \fnd[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \fnd[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal led0 : STD_LOGIC;
  signal \led[7]_i_3_n_0\ : STD_LOGIC;
  signal \^led_out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \m_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal miso : STD_LOGIC;
  signal mosi : STD_LOGIC;
  signal \p_0_in__10\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__11\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__8\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__9\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal read_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \read_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \^reset_0\ : STD_LOGIC;
  signal rready_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rready_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \rready_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal sck : STD_LOGIC;
  signal spi_master_u1_n_4 : STD_LOGIC;
  signal spi_master_u1_n_5 : STD_LOGIC;
  signal spi_master_u1_n_6 : STD_LOGIC;
  signal ss : STD_LOGIC;
  signal start_r : STD_LOGIC;
  signal start_r0 : STD_LOGIC;
  signal start_w : STD_LOGIC;
  signal start_w_i_1_n_0 : STD_LOGIC;
  signal wdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wdata0[7]_i_2_n_0\ : STD_LOGIC;
  signal wdata0_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wdata1[7]_i_2_n_0\ : STD_LOGIC;
  signal wdata1_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wdata2[7]_i_2_n_0\ : STD_LOGIC;
  signal wdata2_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wdata3[7]_i_2_n_0\ : STD_LOGIC;
  signal wdata3_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wready_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wready_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \wready_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal write_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \write_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_cnt[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fnd[0]_INST_0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \fnd[1]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \fnd[2]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \fnd[3]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \fnd[5]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \fnd[6]_INST_0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \read_cnt[0]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \read_cnt[1]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \read_cnt[2]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \read_cnt[3]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \rready_cnt[0]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \rready_cnt[1]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of start_r_i_1 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \wdata0[1]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \wdata0[2]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \wdata0[3]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \wdata0[4]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \wdata0[6]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \wdata0[7]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \wdata1[1]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \wdata1[2]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \wdata1[3]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \wdata1[4]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \wdata1[6]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \wdata1[7]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \wdata2[1]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \wdata2[2]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \wdata2[3]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \wdata2[4]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \wdata2[6]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \wdata2[7]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \wdata3[1]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \wdata3[2]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \wdata3[3]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \wdata3[4]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \wdata3[6]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \wdata3[7]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \wready_cnt[0]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \wready_cnt[1]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \write_cnt[0]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \write_cnt[1]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \write_cnt[2]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \write_cnt[3]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \write_cnt[3]_i_2\ : label is "soft_lutpair107";
begin
  led_out(7 downto 0) <= \^led_out\(7 downto 0);
  reset_0 <= \^reset_0\;
\addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start_w_i_1_n_0,
      CLR => \^reset_0\,
      D => btn_id(0),
      Q => addr(0)
    );
\addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start_w_i_1_n_0,
      CLR => \^reset_0\,
      D => btn_id(1),
      Q => addr(1)
    );
\addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start_w_i_1_n_0,
      CLR => \^reset_0\,
      D => '1',
      Q => addr(4)
    );
\btn_id_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => btn_in_u3_n_3,
      Q => btn_id(0)
    );
\btn_id_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => btn_in_u3_n_2,
      Q => btn_id(1)
    );
btn_in_u1: entity work.spi_con_exam_IP_top_fndcontrol2_0_0_btn_in
     port map (
      btn(0) => btn(0),
      btn2_reg_0 => \^reset_0\,
      btn_out => btn2_0,
      clk => clk
    );
btn_in_u2: entity work.spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_0
     port map (
      btn(0) => btn(1),
      btn2_reg_0 => \^reset_0\,
      btn_out => btn2_1,
      clk => clk
    );
btn_in_u3: entity work.spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_1
     port map (
      btn(0) => btn(2),
      btn2_reg_0 => \^reset_0\,
      btn_id(1 downto 0) => btn_id(1 downto 0),
      \btn_id_reg[1]\ => btn2_3,
      \btn_id_reg[1]_0\ => btn2_1,
      \btn_id_reg[1]_1\ => btn2_0,
      btn_out => btn2_2,
      btn_out_reg_0 => btn_in_u3_n_2,
      btn_out_reg_1 => btn_in_u3_n_3,
      clk => clk,
      m_state(2 downto 0) => m_state(2 downto 0),
      \m_state_reg[0]\ => btn_in_u3_n_0
    );
btn_in_u4: entity work.spi_con_exam_IP_top_fndcontrol2_0_0_btn_in_2
     port map (
      btn(0) => btn(3),
      btn2_reg_0 => \^reset_0\,
      btn_out => btn2_3,
      clk => clk
    );
\fnd[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D55DD5D7"
    )
        port map (
      I0 => reset,
      I1 => \fnd[6]_INST_0_i_3_n_0\,
      I2 => \fnd[6]_INST_0_i_1_n_0\,
      I3 => \fnd[6]_INST_0_i_2_n_0\,
      I4 => \fnd[6]_INST_0_i_4_n_0\,
      O => fnd(0)
    );
\fnd[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2883FFFF"
    )
        port map (
      I0 => \fnd[6]_INST_0_i_1_n_0\,
      I1 => \fnd[6]_INST_0_i_4_n_0\,
      I2 => \fnd[6]_INST_0_i_2_n_0\,
      I3 => \fnd[6]_INST_0_i_3_n_0\,
      I4 => reset,
      O => fnd(1)
    );
\fnd[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1A02FFFF"
    )
        port map (
      I0 => \fnd[6]_INST_0_i_1_n_0\,
      I1 => \fnd[6]_INST_0_i_3_n_0\,
      I2 => \fnd[6]_INST_0_i_4_n_0\,
      I3 => \fnd[6]_INST_0_i_2_n_0\,
      I4 => reset,
      O => fnd(2)
    );
\fnd[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9410FFFF"
    )
        port map (
      I0 => \fnd[6]_INST_0_i_2_n_0\,
      I1 => \fnd[6]_INST_0_i_3_n_0\,
      I2 => \fnd[6]_INST_0_i_1_n_0\,
      I3 => \fnd[6]_INST_0_i_4_n_0\,
      I4 => reset,
      O => fnd(3)
    );
\fnd[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB3B3F3B"
    )
        port map (
      I0 => \fnd[6]_INST_0_i_4_n_0\,
      I1 => reset,
      I2 => \fnd[6]_INST_0_i_2_n_0\,
      I3 => \fnd[6]_INST_0_i_3_n_0\,
      I4 => \fnd[6]_INST_0_i_1_n_0\,
      O => fnd(4)
    );
\fnd[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C72FFFF"
    )
        port map (
      I0 => \fnd[6]_INST_0_i_2_n_0\,
      I1 => \fnd[6]_INST_0_i_3_n_0\,
      I2 => \fnd[6]_INST_0_i_4_n_0\,
      I3 => \fnd[6]_INST_0_i_1_n_0\,
      I4 => reset,
      O => fnd(5)
    );
\fnd[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5200FFFF"
    )
        port map (
      I0 => \fnd[6]_INST_0_i_1_n_0\,
      I1 => \fnd[6]_INST_0_i_2_n_0\,
      I2 => \fnd[6]_INST_0_i_3_n_0\,
      I3 => \fnd[6]_INST_0_i_4_n_0\,
      I4 => reset,
      O => fnd(6)
    );
\fnd[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAA0000C0C0"
    )
        port map (
      I0 => \^led_out\(2),
      I1 => btn(2),
      I2 => mode,
      I3 => \^led_out\(6),
      I4 => Q(0),
      I5 => Q(1),
      O => \fnd[6]_INST_0_i_1_n_0\
    );
\fnd[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"737370737F7F7C7F"
    )
        port map (
      I0 => \^led_out\(4),
      I1 => Q(1),
      I2 => Q(0),
      I3 => btn(0),
      I4 => mode,
      I5 => \^led_out\(0),
      O => \fnd[6]_INST_0_i_2_n_0\
    );
\fnd[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"37370737F7F7C7F7"
    )
        port map (
      I0 => \^led_out\(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => btn(1),
      I4 => mode,
      I5 => \^led_out\(5),
      O => \fnd[6]_INST_0_i_3_n_0\
    );
\fnd[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07373737C7F7F7F7"
    )
        port map (
      I0 => \^led_out\(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => btn(3),
      I4 => mode,
      I5 => \^led_out\(7),
      O => \fnd[6]_INST_0_i_4_n_0\
    );
\led[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => m_state(1),
      I1 => m_state(2),
      I2 => m_state(0),
      O => \led[7]_i_3_n_0\
    );
\led_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => led0,
      CLR => \^reset_0\,
      D => rdata(0),
      Q => \^led_out\(0)
    );
\led_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => led0,
      CLR => \^reset_0\,
      D => rdata(1),
      Q => \^led_out\(1)
    );
\led_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => led0,
      CLR => \^reset_0\,
      D => rdata(2),
      Q => \^led_out\(2)
    );
\led_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => led0,
      CLR => \^reset_0\,
      D => rdata(3),
      Q => \^led_out\(3)
    );
\led_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => led0,
      CLR => \^reset_0\,
      D => rdata(4),
      Q => \^led_out\(4)
    );
\led_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => led0,
      CLR => \^reset_0\,
      D => rdata(5),
      Q => \^led_out\(5)
    );
\led_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => led0,
      CLR => \^reset_0\,
      D => rdata(6),
      Q => \^led_out\(6)
    );
\led_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => led0,
      CLR => \^reset_0\,
      D => rdata(7),
      Q => \^led_out\(7)
    );
\m_state[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => write_cnt(3),
      I1 => write_cnt(0),
      I2 => write_cnt(1),
      I3 => write_cnt(2),
      O => \m_state[1]_i_2__0_n_0\
    );
\m_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => spi_master_u1_n_6,
      Q => m_state(0)
    );
\m_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => spi_master_u1_n_5,
      Q => m_state(1)
    );
\m_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => spi_master_u1_n_4,
      Q => m_state(2)
    );
\read_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A0A0A0A"
    )
        port map (
      I0 => \led[7]_i_3_n_0\,
      I1 => read_cnt(2),
      I2 => read_cnt(0),
      I3 => read_cnt(1),
      I4 => read_cnt(3),
      O => \read_cnt[0]_i_1_n_0\
    );
\read_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8282828"
    )
        port map (
      I0 => \led[7]_i_3_n_0\,
      I1 => read_cnt(0),
      I2 => read_cnt(1),
      I3 => read_cnt(2),
      I4 => read_cnt(3),
      O => \read_cnt[1]_i_1_n_0\
    );
\read_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8882888"
    )
        port map (
      I0 => \led[7]_i_3_n_0\,
      I1 => read_cnt(2),
      I2 => read_cnt(1),
      I3 => read_cnt(0),
      I4 => read_cnt(3),
      O => \read_cnt[2]_i_1_n_0\
    );
\read_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8888888"
    )
        port map (
      I0 => \led[7]_i_3_n_0\,
      I1 => read_cnt(3),
      I2 => read_cnt(1),
      I3 => read_cnt(0),
      I4 => read_cnt(2),
      O => \read_cnt[3]_i_1_n_0\
    );
\read_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \read_cnt[0]_i_1_n_0\,
      Q => read_cnt(0)
    );
\read_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \read_cnt[1]_i_1_n_0\,
      Q => read_cnt(1)
    );
\read_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \read_cnt[2]_i_1_n_0\,
      Q => read_cnt(2)
    );
\read_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \read_cnt[3]_i_1_n_0\,
      Q => read_cnt(3)
    );
\rready_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => m_state(2),
      I1 => m_state(0),
      I2 => m_state(1),
      I3 => rready_cnt(0),
      O => \rready_cnt[0]_i_1_n_0\
    );
\rready_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404000"
    )
        port map (
      I0 => m_state(2),
      I1 => m_state(0),
      I2 => m_state(1),
      I3 => rready_cnt(0),
      I4 => rready_cnt(1),
      O => \rready_cnt[1]_i_1_n_0\
    );
\rready_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \rready_cnt[0]_i_1_n_0\,
      Q => rready_cnt(0)
    );
\rready_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \rready_cnt[1]_i_1_n_0\,
      Q => rready_cnt(1)
    );
spi_master_u1: entity work.spi_con_exam_IP_top_fndcontrol2_0_0_spi_master
     port map (
      D(7 downto 0) => rdata(7 downto 0),
      E(0) => led0,
      Q(7 downto 0) => wdata(7 downto 0),
      clk => clk,
      \done_cnt_reg[3]_0\ => \^reset_0\,
      done_reg_0 => spi_master_u1_n_5,
      \led_reg[0]\ => \led[7]_i_3_n_0\,
      \led_reg[0]_0\(3 downto 0) => read_cnt(3 downto 0),
      m_state(2 downto 0) => m_state(2 downto 0),
      \m_state_reg[0]_0\ => spi_master_u1_n_4,
      \m_state_reg[0]_1\ => spi_master_u1_n_6,
      \m_state_reg[0]_2\ => btn_in_u3_n_0,
      \m_state_reg[0]_3\(3 downto 0) => write_cnt(3 downto 0),
      \m_state_reg[1]_0\ => start_w_i_1_n_0,
      \m_state_reg[1]_1\ => \m_state[1]_i_2__0_n_0\,
      \m_state_reg[1]_2\ => \write_cnt[3]_i_2_n_0\,
      \m_state_reg[2]\(1 downto 0) => rready_cnt(1 downto 0),
      miso => miso,
      mosi => mosi,
      mosi_i_11_0(2) => addr(4),
      mosi_i_11_0(1 downto 0) => addr(1 downto 0),
      sck => sck,
      ss => ss,
      start_r => start_r,
      start_r0 => start_r0,
      start_w => start_w
    );
spi_slave_u1: entity work.spi_con_exam_IP_top_fndcontrol2_0_0_spi_slave
     port map (
      clk => clk,
      miso => miso,
      mosi => mosi,
      reset => reset,
      reset_0 => \^reset_0\,
      sck => sck,
      ss => ss
    );
start_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => m_state(2),
      I1 => m_state(0),
      I2 => m_state(1),
      I3 => rready_cnt(0),
      I4 => rready_cnt(1),
      O => start_r0
    );
start_r_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => start_r0,
      Q => start_r
    );
start_w_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => m_state(2),
      I1 => m_state(0),
      I2 => m_state(1),
      I3 => wready_cnt(1),
      I4 => wready_cnt(0),
      O => start_w_i_1_n_0
    );
start_w_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => start_w_i_1_n_0,
      Q => start_w
    );
\wdata0[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wdata0_reg(0),
      O => \p_0_in__11\(0)
    );
\wdata0[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wdata0_reg(0),
      I1 => wdata0_reg(1),
      O => \p_0_in__11\(1)
    );
\wdata0[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => wdata0_reg(2),
      I1 => wdata0_reg(0),
      I2 => wdata0_reg(1),
      O => \p_0_in__11\(2)
    );
\wdata0[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => wdata0_reg(3),
      I1 => wdata0_reg(1),
      I2 => wdata0_reg(0),
      I3 => wdata0_reg(2),
      O => \p_0_in__11\(3)
    );
\wdata0[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => wdata0_reg(4),
      I1 => wdata0_reg(2),
      I2 => wdata0_reg(0),
      I3 => wdata0_reg(1),
      I4 => wdata0_reg(3),
      O => \p_0_in__11\(4)
    );
\wdata0[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => wdata0_reg(5),
      I1 => wdata0_reg(3),
      I2 => wdata0_reg(1),
      I3 => wdata0_reg(0),
      I4 => wdata0_reg(2),
      I5 => wdata0_reg(4),
      O => \p_0_in__11\(5)
    );
\wdata0[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wdata0[7]_i_2_n_0\,
      I1 => wdata0_reg(6),
      O => \p_0_in__11\(6)
    );
\wdata0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => wdata0_reg(7),
      I1 => \wdata0[7]_i_2_n_0\,
      I2 => wdata0_reg(6),
      O => \p_0_in__11\(7)
    );
\wdata0[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => wdata0_reg(4),
      I1 => wdata0_reg(2),
      I2 => wdata0_reg(0),
      I3 => wdata0_reg(1),
      I4 => wdata0_reg(3),
      I5 => wdata0_reg(5),
      O => \wdata0[7]_i_2_n_0\
    );
\wdata0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_0,
      CLR => \^reset_0\,
      D => \p_0_in__11\(0),
      Q => wdata0_reg(0)
    );
\wdata0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_0,
      CLR => \^reset_0\,
      D => \p_0_in__11\(1),
      Q => wdata0_reg(1)
    );
\wdata0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_0,
      CLR => \^reset_0\,
      D => \p_0_in__11\(2),
      Q => wdata0_reg(2)
    );
\wdata0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_0,
      CLR => \^reset_0\,
      D => \p_0_in__11\(3),
      Q => wdata0_reg(3)
    );
\wdata0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_0,
      CLR => \^reset_0\,
      D => \p_0_in__11\(4),
      Q => wdata0_reg(4)
    );
\wdata0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_0,
      CLR => \^reset_0\,
      D => \p_0_in__11\(5),
      Q => wdata0_reg(5)
    );
\wdata0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_0,
      CLR => \^reset_0\,
      D => \p_0_in__11\(6),
      Q => wdata0_reg(6)
    );
\wdata0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_0,
      CLR => \^reset_0\,
      D => \p_0_in__11\(7),
      Q => wdata0_reg(7)
    );
\wdata1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wdata1_reg(0),
      O => \p_0_in__10\(0)
    );
\wdata1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wdata1_reg(0),
      I1 => wdata1_reg(1),
      O => \p_0_in__10\(1)
    );
\wdata1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => wdata1_reg(2),
      I1 => wdata1_reg(0),
      I2 => wdata1_reg(1),
      O => \p_0_in__10\(2)
    );
\wdata1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => wdata1_reg(3),
      I1 => wdata1_reg(1),
      I2 => wdata1_reg(0),
      I3 => wdata1_reg(2),
      O => \p_0_in__10\(3)
    );
\wdata1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => wdata1_reg(4),
      I1 => wdata1_reg(2),
      I2 => wdata1_reg(0),
      I3 => wdata1_reg(1),
      I4 => wdata1_reg(3),
      O => \p_0_in__10\(4)
    );
\wdata1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => wdata1_reg(5),
      I1 => wdata1_reg(3),
      I2 => wdata1_reg(1),
      I3 => wdata1_reg(0),
      I4 => wdata1_reg(2),
      I5 => wdata1_reg(4),
      O => \p_0_in__10\(5)
    );
\wdata1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wdata1[7]_i_2_n_0\,
      I1 => wdata1_reg(6),
      O => \p_0_in__10\(6)
    );
\wdata1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => wdata1_reg(7),
      I1 => \wdata1[7]_i_2_n_0\,
      I2 => wdata1_reg(6),
      O => \p_0_in__10\(7)
    );
\wdata1[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => wdata1_reg(4),
      I1 => wdata1_reg(2),
      I2 => wdata1_reg(0),
      I3 => wdata1_reg(1),
      I4 => wdata1_reg(3),
      I5 => wdata1_reg(5),
      O => \wdata1[7]_i_2_n_0\
    );
\wdata1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_1,
      CLR => \^reset_0\,
      D => \p_0_in__10\(0),
      Q => wdata1_reg(0)
    );
\wdata1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_1,
      CLR => \^reset_0\,
      D => \p_0_in__10\(1),
      Q => wdata1_reg(1)
    );
\wdata1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_1,
      CLR => \^reset_0\,
      D => \p_0_in__10\(2),
      Q => wdata1_reg(2)
    );
\wdata1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_1,
      CLR => \^reset_0\,
      D => \p_0_in__10\(3),
      Q => wdata1_reg(3)
    );
\wdata1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_1,
      CLR => \^reset_0\,
      D => \p_0_in__10\(4),
      Q => wdata1_reg(4)
    );
\wdata1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_1,
      CLR => \^reset_0\,
      D => \p_0_in__10\(5),
      Q => wdata1_reg(5)
    );
\wdata1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_1,
      CLR => \^reset_0\,
      D => \p_0_in__10\(6),
      Q => wdata1_reg(6)
    );
\wdata1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_1,
      CLR => \^reset_0\,
      D => \p_0_in__10\(7),
      Q => wdata1_reg(7)
    );
\wdata2[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wdata2_reg(0),
      O => \p_0_in__9\(0)
    );
\wdata2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wdata2_reg(0),
      I1 => wdata2_reg(1),
      O => \p_0_in__9\(1)
    );
\wdata2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => wdata2_reg(2),
      I1 => wdata2_reg(0),
      I2 => wdata2_reg(1),
      O => \p_0_in__9\(2)
    );
\wdata2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => wdata2_reg(3),
      I1 => wdata2_reg(1),
      I2 => wdata2_reg(0),
      I3 => wdata2_reg(2),
      O => \p_0_in__9\(3)
    );
\wdata2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => wdata2_reg(4),
      I1 => wdata2_reg(2),
      I2 => wdata2_reg(0),
      I3 => wdata2_reg(1),
      I4 => wdata2_reg(3),
      O => \p_0_in__9\(4)
    );
\wdata2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => wdata2_reg(5),
      I1 => wdata2_reg(3),
      I2 => wdata2_reg(1),
      I3 => wdata2_reg(0),
      I4 => wdata2_reg(2),
      I5 => wdata2_reg(4),
      O => \p_0_in__9\(5)
    );
\wdata2[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wdata2[7]_i_2_n_0\,
      I1 => wdata2_reg(6),
      O => \p_0_in__9\(6)
    );
\wdata2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => wdata2_reg(7),
      I1 => \wdata2[7]_i_2_n_0\,
      I2 => wdata2_reg(6),
      O => \p_0_in__9\(7)
    );
\wdata2[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => wdata2_reg(4),
      I1 => wdata2_reg(2),
      I2 => wdata2_reg(0),
      I3 => wdata2_reg(1),
      I4 => wdata2_reg(3),
      I5 => wdata2_reg(5),
      O => \wdata2[7]_i_2_n_0\
    );
\wdata2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_2,
      CLR => \^reset_0\,
      D => \p_0_in__9\(0),
      Q => wdata2_reg(0)
    );
\wdata2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_2,
      CLR => \^reset_0\,
      D => \p_0_in__9\(1),
      Q => wdata2_reg(1)
    );
\wdata2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_2,
      CLR => \^reset_0\,
      D => \p_0_in__9\(2),
      Q => wdata2_reg(2)
    );
\wdata2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_2,
      CLR => \^reset_0\,
      D => \p_0_in__9\(3),
      Q => wdata2_reg(3)
    );
\wdata2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_2,
      CLR => \^reset_0\,
      D => \p_0_in__9\(4),
      Q => wdata2_reg(4)
    );
\wdata2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_2,
      CLR => \^reset_0\,
      D => \p_0_in__9\(5),
      Q => wdata2_reg(5)
    );
\wdata2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_2,
      CLR => \^reset_0\,
      D => \p_0_in__9\(6),
      Q => wdata2_reg(6)
    );
\wdata2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_2,
      CLR => \^reset_0\,
      D => \p_0_in__9\(7),
      Q => wdata2_reg(7)
    );
\wdata3[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wdata3_reg(0),
      O => \p_0_in__8\(0)
    );
\wdata3[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wdata3_reg(0),
      I1 => wdata3_reg(1),
      O => \p_0_in__8\(1)
    );
\wdata3[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => wdata3_reg(2),
      I1 => wdata3_reg(0),
      I2 => wdata3_reg(1),
      O => \p_0_in__8\(2)
    );
\wdata3[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => wdata3_reg(3),
      I1 => wdata3_reg(1),
      I2 => wdata3_reg(0),
      I3 => wdata3_reg(2),
      O => \p_0_in__8\(3)
    );
\wdata3[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => wdata3_reg(4),
      I1 => wdata3_reg(2),
      I2 => wdata3_reg(0),
      I3 => wdata3_reg(1),
      I4 => wdata3_reg(3),
      O => \p_0_in__8\(4)
    );
\wdata3[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => wdata3_reg(5),
      I1 => wdata3_reg(3),
      I2 => wdata3_reg(1),
      I3 => wdata3_reg(0),
      I4 => wdata3_reg(2),
      I5 => wdata3_reg(4),
      O => \p_0_in__8\(5)
    );
\wdata3[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wdata3[7]_i_2_n_0\,
      I1 => wdata3_reg(6),
      O => \p_0_in__8\(6)
    );
\wdata3[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => wdata3_reg(7),
      I1 => \wdata3[7]_i_2_n_0\,
      I2 => wdata3_reg(6),
      O => \p_0_in__8\(7)
    );
\wdata3[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => wdata3_reg(4),
      I1 => wdata3_reg(2),
      I2 => wdata3_reg(0),
      I3 => wdata3_reg(1),
      I4 => wdata3_reg(3),
      I5 => wdata3_reg(5),
      O => \wdata3[7]_i_2_n_0\
    );
\wdata3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_3,
      CLR => \^reset_0\,
      D => \p_0_in__8\(0),
      Q => wdata3_reg(0)
    );
\wdata3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_3,
      CLR => \^reset_0\,
      D => \p_0_in__8\(1),
      Q => wdata3_reg(1)
    );
\wdata3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_3,
      CLR => \^reset_0\,
      D => \p_0_in__8\(2),
      Q => wdata3_reg(2)
    );
\wdata3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_3,
      CLR => \^reset_0\,
      D => \p_0_in__8\(3),
      Q => wdata3_reg(3)
    );
\wdata3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_3,
      CLR => \^reset_0\,
      D => \p_0_in__8\(4),
      Q => wdata3_reg(4)
    );
\wdata3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_3,
      CLR => \^reset_0\,
      D => \p_0_in__8\(5),
      Q => wdata3_reg(5)
    );
\wdata3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_3,
      CLR => \^reset_0\,
      D => \p_0_in__8\(6),
      Q => wdata3_reg(6)
    );
\wdata3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => btn2_3,
      CLR => \^reset_0\,
      D => \p_0_in__8\(7),
      Q => wdata3_reg(7)
    );
\wdata[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => wdata2_reg(0),
      I1 => wdata3_reg(0),
      I2 => wdata0_reg(0),
      I3 => btn_id(0),
      I4 => btn_id(1),
      I5 => wdata1_reg(0),
      O => p_1_in(0)
    );
\wdata[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => wdata0_reg(1),
      I1 => wdata1_reg(1),
      I2 => wdata2_reg(1),
      I3 => btn_id(1),
      I4 => btn_id(0),
      I5 => wdata3_reg(1),
      O => p_1_in(1)
    );
\wdata[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => wdata2_reg(2),
      I1 => wdata3_reg(2),
      I2 => wdata1_reg(2),
      I3 => btn_id(0),
      I4 => btn_id(1),
      I5 => wdata0_reg(2),
      O => p_1_in(2)
    );
\wdata[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => wdata2_reg(3),
      I1 => wdata3_reg(3),
      I2 => wdata1_reg(3),
      I3 => btn_id(0),
      I4 => btn_id(1),
      I5 => wdata0_reg(3),
      O => p_1_in(3)
    );
\wdata[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => wdata0_reg(4),
      I1 => wdata1_reg(4),
      I2 => wdata2_reg(4),
      I3 => btn_id(1),
      I4 => btn_id(0),
      I5 => wdata3_reg(4),
      O => p_1_in(4)
    );
\wdata[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => wdata0_reg(5),
      I1 => wdata1_reg(5),
      I2 => wdata2_reg(5),
      I3 => btn_id(1),
      I4 => btn_id(0),
      I5 => wdata3_reg(5),
      O => p_1_in(5)
    );
\wdata[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => wdata0_reg(6),
      I1 => wdata1_reg(6),
      I2 => wdata2_reg(6),
      I3 => btn_id(1),
      I4 => btn_id(0),
      I5 => wdata3_reg(6),
      O => p_1_in(6)
    );
\wdata[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => wdata0_reg(7),
      I1 => wdata1_reg(7),
      I2 => wdata2_reg(7),
      I3 => btn_id(1),
      I4 => btn_id(0),
      I5 => wdata3_reg(7),
      O => p_1_in(7)
    );
\wdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start_w_i_1_n_0,
      CLR => \^reset_0\,
      D => p_1_in(0),
      Q => wdata(0)
    );
\wdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start_w_i_1_n_0,
      CLR => \^reset_0\,
      D => p_1_in(1),
      Q => wdata(1)
    );
\wdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start_w_i_1_n_0,
      CLR => \^reset_0\,
      D => p_1_in(2),
      Q => wdata(2)
    );
\wdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start_w_i_1_n_0,
      CLR => \^reset_0\,
      D => p_1_in(3),
      Q => wdata(3)
    );
\wdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start_w_i_1_n_0,
      CLR => \^reset_0\,
      D => p_1_in(4),
      Q => wdata(4)
    );
\wdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start_w_i_1_n_0,
      CLR => \^reset_0\,
      D => p_1_in(5),
      Q => wdata(5)
    );
\wdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start_w_i_1_n_0,
      CLR => \^reset_0\,
      D => p_1_in(6),
      Q => wdata(6)
    );
\wdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => start_w_i_1_n_0,
      CLR => \^reset_0\,
      D => p_1_in(7),
      Q => wdata(7)
    );
\wready_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => m_state(2),
      I1 => m_state(0),
      I2 => m_state(1),
      I3 => wready_cnt(0),
      O => \wready_cnt[0]_i_1_n_0\
    );
\wready_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040400"
    )
        port map (
      I0 => m_state(2),
      I1 => m_state(0),
      I2 => m_state(1),
      I3 => wready_cnt(1),
      I4 => wready_cnt(0),
      O => \wready_cnt[1]_i_1_n_0\
    );
\wready_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \wready_cnt[0]_i_1_n_0\,
      Q => wready_cnt(0)
    );
\wready_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \wready_cnt[1]_i_1_n_0\,
      Q => wready_cnt(1)
    );
\write_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A0A0A0A"
    )
        port map (
      I0 => \write_cnt[3]_i_2_n_0\,
      I1 => write_cnt(3),
      I2 => write_cnt(0),
      I3 => write_cnt(1),
      I4 => write_cnt(2),
      O => \write_cnt[0]_i_1_n_0\
    );
\write_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8282828"
    )
        port map (
      I0 => \write_cnt[3]_i_2_n_0\,
      I1 => write_cnt(0),
      I2 => write_cnt(1),
      I3 => write_cnt(3),
      I4 => write_cnt(2),
      O => \write_cnt[1]_i_1_n_0\
    );
\write_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8882888"
    )
        port map (
      I0 => \write_cnt[3]_i_2_n_0\,
      I1 => write_cnt(2),
      I2 => write_cnt(1),
      I3 => write_cnt(0),
      I4 => write_cnt(3),
      O => \write_cnt[2]_i_1_n_0\
    );
\write_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8000"
    )
        port map (
      I0 => \write_cnt[3]_i_2_n_0\,
      I1 => write_cnt(2),
      I2 => write_cnt(1),
      I3 => write_cnt(0),
      I4 => write_cnt(3),
      O => \write_cnt[3]_i_1_n_0\
    );
\write_cnt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => m_state(1),
      I1 => m_state(2),
      I2 => m_state(0),
      O => \write_cnt[3]_i_2_n_0\
    );
\write_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \write_cnt[0]_i_1_n_0\,
      Q => write_cnt(0)
    );
\write_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \write_cnt[1]_i_1_n_0\,
      Q => write_cnt(1)
    );
\write_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \write_cnt[2]_i_1_n_0\,
      Q => write_cnt(2)
    );
\write_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_0\,
      D => \write_cnt[3]_i_1_n_0\,
      Q => write_cnt(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_con_exam_IP_top_fndcontrol2_0_0_top_fndcontrol2 is
  port (
    fnd : out STD_LOGIC_VECTOR ( 6 downto 0 );
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fndsel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mode : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spi_con_exam_IP_top_fndcontrol2_0_0_top_fndcontrol2 : entity is "top_fndcontrol2";
end spi_con_exam_IP_top_fndcontrol2_0_0_top_fndcontrol2;

architecture STRUCTURE of spi_con_exam_IP_top_fndcontrol2_0_0_top_fndcontrol2 is
  signal U0_n_0 : STD_LOGIC;
  signal clk1000Hz : STD_LOGIC;
  signal s : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
U0: entity work.spi_con_exam_IP_top_fndcontrol2_0_0_spi_task
     port map (
      Q(1 downto 0) => s(1 downto 0),
      btn(3 downto 0) => btn(3 downto 0),
      clk => clk,
      fnd(6 downto 0) => fnd(6 downto 0),
      led_out(7 downto 0) => led_out(7 downto 0),
      mode => mode,
      reset => reset,
      reset_0 => U0_n_0
    );
U1: entity work.spi_con_exam_IP_top_fndcontrol2_0_0_counter
     port map (
      CLK => clk1000Hz,
      Q(1 downto 0) => s(1 downto 0),
      fndsel(3 downto 0) => fndsel(3 downto 0),
      \out_counter_reg[1]_0\ => U0_n_0
    );
U2: entity work.spi_con_exam_IP_top_fndcontrol2_0_0_clockdivider
     port map (
      CLK => clk1000Hz,
      \^clk\ => clk,
      \cnt_reg[0]_0\ => U0_n_0,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_con_exam_IP_top_fndcontrol2_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    mode : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    fndsel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fnd : out STD_LOGIC_VECTOR ( 6 downto 0 );
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of spi_con_exam_IP_top_fndcontrol2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of spi_con_exam_IP_top_fndcontrol2_0_0 : entity is "spi_con_exam_IP_top_fndcontrol2_0_0,top_fndcontrol2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of spi_con_exam_IP_top_fndcontrol2_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of spi_con_exam_IP_top_fndcontrol2_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of spi_con_exam_IP_top_fndcontrol2_0_0 : entity is "top_fndcontrol2,Vivado 2024.1";
end spi_con_exam_IP_top_fndcontrol2_0_0;

architecture STRUCTURE of spi_con_exam_IP_top_fndcontrol2_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.spi_con_exam_IP_top_fndcontrol2_0_0_top_fndcontrol2
     port map (
      btn(3 downto 0) => btn(3 downto 0),
      clk => clk,
      fnd(6 downto 0) => fnd(6 downto 0),
      fndsel(3 downto 0) => fndsel(3 downto 0),
      led_out(7 downto 0) => led_out(7 downto 0),
      mode => mode,
      reset => reset
    );
end STRUCTURE;
