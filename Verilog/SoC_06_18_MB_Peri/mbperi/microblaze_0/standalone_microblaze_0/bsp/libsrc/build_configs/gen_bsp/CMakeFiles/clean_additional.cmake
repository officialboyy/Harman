# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\Harman\\Verilog\\SoC_06_18_MB_Peri\\mbperi\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\sleep.h"
  "C:\\Harman\\Verilog\\SoC_06_18_MB_Peri\\mbperi\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\xiltimer.h"
  "C:\\Harman\\Verilog\\SoC_06_18_MB_Peri\\mbperi\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\xtimer_config.h"
  "C:\\Harman\\Verilog\\SoC_06_18_MB_Peri\\mbperi\\microblaze_0\\standalone_microblaze_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
