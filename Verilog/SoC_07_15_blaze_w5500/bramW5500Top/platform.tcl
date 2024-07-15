# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Harman\Verilog\SoC_07_15_blaze_w5500\bramW5500Top\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Harman\Verilog\SoC_07_15_blaze_w5500\bramW5500Top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {bramW5500Top}\
-hw {C:\Harman\Verilog\SoC_07_15_blaze_w5500\bramW5500Top.xsa}\
-out {C:/Harman/Verilog/SoC_07_15_blaze_w5500}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {bramW5500Top}
platform generate -quick
platform generate
