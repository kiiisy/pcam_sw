# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/user/work/2024/pcam/pcam_sw/pcam_app_system/_ide/scripts/debugger_pcam_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/user/work/2024/pcam/pcam_sw/pcam_app_system/_ide/scripts/debugger_pcam_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx Virtual Cable host.docker.internal:2542" && level==0 && jtag_device_ctx=="jsn-XVC-host.docker.internal:2542-13722093-0"}
fpga -file /home/user/work/2024/pcam/pcam_sw/pcam_app/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/user/work/2024/pcam/pcam_sw/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/user/work/2024/pcam/pcam_sw/pcam_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/user/work/2024/pcam/pcam_sw/pcam_app/Debug/pcam_app.elf
configparams force-mem-access 0
bpadd -addr &main
