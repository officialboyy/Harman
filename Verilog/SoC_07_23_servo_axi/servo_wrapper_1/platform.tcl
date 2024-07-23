# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Harman\Verilog\SoC_07_23_servo_axi\servo_wrapper_1\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Harman\Verilog\SoC_07_23_servo_axi\servo_wrapper_1\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {servo_wrapper_1}\
-hw {C:\Harman\Verilog\SoC_07_23_servo_axi\servo_wrapper.xsa}\
-out {C:/Harman/Verilog/SoC_07_23_servo_axi}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {servo_wrapper_1}
platform generate -quick
catch {platform remove servo_wrapper}
platform clean
