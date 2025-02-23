# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/user/work/2024/pcam/pcam_sw/design_1_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/user/work/2024/pcam/pcam_sw/design_1_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}\
-out {/home/user/work/2024/pcam/pcam_sw}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform clean
platform generate
platform active {design_1_wrapper}
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
platform generate -domains 
platform active {design_1_wrapper}
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
platform clean
platform clean
platform generate
platform clean
platform clean
platform generate
platform active {design_1_wrapper}
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
platform generate
platform clean
platform clean
platform generate
platform clean
platform clean
platform generate
platform active {design_1_wrapper}
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
platform clean
platform generate
domain active {zynq_fsbl}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp config sleep_timer "none"
bsp reload
domain active {zynq_fsbl}
bsp reload
bsp setdriver -ip grayscale_0 -driver generic -ver 3.1
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp setdriver -ip grayscale_0 -driver generic -ver 3.1
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform active {design_1_wrapper}
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
platform clean
domain active {zynq_fsbl}
domain active {zynq_fsbl}
domain active {zynq_fsbl}
domain active {zynq_fsbl}
domain active {zynq_fsbl}
platform active {design_1_wrapper}
platform clean
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
domain active {zynq_fsbl}
domain active {zynq_fsbl}
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
platform active {design_1_wrapper}
platform clean
platform clean
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
platform clean
platform clean
platform active {design_1_wrapper}
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
platform clean
platform active {design_1_wrapper}
platform clean
platform active {design_1_wrapper}
platform clean
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
bsp reload
domain active {zynq_fsbl}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
platform generate
platform clean
platform generate
platform clean
platform clean
platform clean
platform generate
platform clean
platform clean
platform active {design_1_wrapper}
platform generate
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
domain active {zynq_fsbl}
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
platform config -updatehw {/home/user/work/2024/pcam/pcam_sw/from_hw/design_1_wrapper.xsa}
