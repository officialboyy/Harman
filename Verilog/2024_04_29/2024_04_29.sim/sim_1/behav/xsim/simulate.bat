@echo off
REM ****************************************************************************
REM Vivado (TM) v2023.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : AMD Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Mon Apr 29 10:14:31 +0900 2024
REM SW Build 4029153 on Fri Oct 13 20:14:34 MDT 2023
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim Full_Adder_4bit_tb_behav -key {Behavioral:sim_1:Functional:Full_Adder_4bit_tb} -tclbatch Full_Adder_4bit_tb.tcl -log simulate.log"
call xsim  Full_Adder_4bit_tb_behav -key {Behavioral:sim_1:Functional:Full_Adder_4bit_tb} -tclbatch Full_Adder_4bit_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
