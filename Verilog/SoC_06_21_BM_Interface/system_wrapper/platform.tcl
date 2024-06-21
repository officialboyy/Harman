# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Harman\Verilog\SoC_06_21_BM_Interface\system_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Harman\Verilog\SoC_06_21_BM_Interface\system_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {system_wrapper}\
-hw {C:\Harman\Verilog\SoC_06_21_BM_Interface\system_wrapper.xsa}\
-out {C:/Harman/Verilog/SoC_06_21_BM_Interface}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {system_wrapper}
platform generate -quick
platform generate
