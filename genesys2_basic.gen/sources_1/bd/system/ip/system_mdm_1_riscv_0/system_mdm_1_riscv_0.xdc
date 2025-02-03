# file: system_mdm_1_riscv_0.xdc
create_clock -period 33.333 [get_pins {Use*.BSCAN*/*/TCK}]
create_clock -period 33.333 [get_pins {Use*.BSCAN*/*/DRCK}]
create_clock -period 33.333 [get_pins {Use*.BSCAN*/*/UPDATE}]
create_generated_clock -source [get_pins {Use*.BSCAN*/*/TCK}] -divide_by 2 [get_pins */*/*.BUFG_UPDATE/*/O]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/TCK"]]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/DRCK"]]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/UPDATE"]]
set_clock_groups -asynchronous -group [get_clocks -quiet -of_objects [get_pins */*/*.BUFG_UPDATE/*/O]]
set_false_path -through [get_pins "Use*.BSCAN*/*/CAPTURE"]
set_false_path -through [get_pins "Use*.BSCAN*/*/SEL"]
set_false_path -through [get_pins "Use*.BSCAN*/*/SHIFT"]
set_false_path -through [get_pins "Use*.BSCAN*/*/TDI"]
set_false_path -through [get_pins "Use*.BSCAN*/*/TMS"]
set_clock_groups -logically_exclusive  -group [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/TCK"]] -group [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/DRCK"]] -group [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/UPDATE"]] -group [get_clocks -of_objects [get_pins */*/*.BUFG_UPDATE/*/O]]

create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-10 -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/C]

# Methodology waivers for internal BSCAN clock constraints
create_waiver -internal -quiet -scoped -user mdm_riscv -tags IPCPG-503 -type METHODOLOGY -id TIMING-54 \
  -object [get_clocks -quiet -of_objects [get_pins "Use*.BSCAN*/*/DRCK"]] \
  -description "Avoid warning for valid DRCK clock constraint"
create_waiver -internal -quiet -scoped -user mdm_riscv -tags IPCPG-503 -type METHODOLOGY -id TIMING-54 \
  -object [get_clocks -quiet -of_objects [get_pins "Use*.BSCAN*/*/UPDATE"]] \
  -description "Avoid warning for valid UPDATE clock constraint"
create_waiver -internal -quiet -scoped -user mdm_riscv -tags IPCPG-503 -type METHODOLOGY -id TIMING-54 \
  -object [get_clocks -quiet -of_objects [get_pins "Use*.BSCAN*/*/TCK"]] \
  -description "Avoid warning for valid TCK clock constraint"
create_waiver -internal -quiet -scoped -user mdm_riscv -tags IPCPG-503 -type METHODOLOGY -id TIMING-54 \
  -object [get_clocks -quiet -of_objects [get_pins */*/*.BUFG_UPDATE/*/O]] \
  -description "Avoid warning for valid UPDATE clock constraint"

# Waivers for BSCAN
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/C]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TDI]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/UPDATE]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/CE]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/D]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/R]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet Use_JTAG_BSCAN.*/CE]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet Use_JTAG_BSCAN.*/D]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet Use_JTAG_BSCAN.*/R]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-2  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-7  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-10 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-11 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/C]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/*/O]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TDI]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/C]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TDI]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/UPDATE]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/R]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -to [get_pins -quiet Use_JTAG_BSCAN.*/R]

create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet Internal_BSCANID.bscanid*reg/D]

