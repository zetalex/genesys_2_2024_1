# Microblaze V on Genesys 2
This readme explains the steps followed to create a Microblaze V soft CPU on the Genesys 2 board sporting a Kintex 7 FPGA from AMD Xilinx.

## Creating the project
The project has been created using the board xml file from Digilent corresponding to Genesys 2 and the XDC constraints files that can be found in Digilent repository on Github: [https://github.com/Digilent/digilent-xdc/blob/master/Genesys-2-Master.xdc](https://github.com/Digilent/digilent-xdc/blob/master/Genesys-2-Master.xdc). The constraints have to be manually added to the Constraints set of the project

## Block diagram project

IP integrator is used as a way to provide an easy manner for instantiating IPs in a graphical fashion. [https://docs.amd.com/r/en-US/ug994-vivado-ip-subsystems/Getting-Started-with-Vivado-IP-Integrator](https://docs.amd.com/r/en-US/ug994-vivado-ip-subsystems/Getting-Started-with-Vivado-IP-Integrator)

The following things have been instantiated in the block diagram design:

- Microblaze V CPU
- MIG (Memory Interface Generator) for 1GB DDR3 RAM
- AXI Interrupt Controller
- Microblaze Local Memory
- Microblaze Debug Module V
- Processor System Reset
- AXI UART Lite
- AXI GPIO: The switches and buttons are concatenated using Concat block and connected to GPIO channel 1. The LEDs are connected to GPIO channel 2.
- AXI Interconnect for connecting the peripherals labelled as AXI with the Microblaze CPU

<img src="img/BlockDiagram.png">

Remember to generate the block design afterwards using the *Generate Block Design* button in Flow Navigator.
## Configuration of the different elements

The elements in the block diagram are configured with double click as follows:
- Microblaze V, click on Advanced:
    - Disable all instruction, data cache and disecrete ports.
    - Make sure that in Debug tab, the Debug Module Interface is enabled
    - In Buses, enable both Local Memory Bus Interfaces (Data and Instruction) and both AXI Interfaces (Data and Instruction)
- Local memory: Use the Block automation from Vivado to get the correct core
- MIG 7 series: follow the images shown below. For the pages that no corresponding image is found, just leave it in the default settings.

<img src="img/Pag1.png">

<img src="img/Pag2.png">

<img src="img/Pag3.png">

<img src="img/Pag4.png">

<img src="img/Pag5.png">

- AXI UART Lite:
    - Baud Rate: 115200
    - Bits: 8
    - Stop bits:1
    - Parity: None

- AXI GPIO:
    - Use Dual Channel: ON
    - Channel 1: Tick "All Inputs"
    - Channel 2: Tick "All Outputs"
- AXI Interconnect:
    - Number of Slave Interfaces: 2
    - Number of Master Interfaces: 3

- AXI Interrupt Controller
    - Use Fast Logic: ON

Also, go in Vivado to Window > Address Editor and ensure that you have exactly what is displayed in the below image:
<img src="img/AddressEditor.png">

If there is some Unassigned memory spaces just right click on them and click *Assign*.

## Pin configuration
The following inputs and outputs are currently present in the design:

- sys_diff_clock: Pins AD11 and AD12, present in the XDC file, uncomment them in the file and be very careful with the pin name
- reset: R19 pin. Low level reset asserted by a push button in the Genesys 2 board.
- ddr3_sdram: this ping assignment is automatic after configuring and validating MIG 7 IP.
- usb_uart: uart_txd is pin Y23 and uart_rxd is pin Y20. They go to the microUSB labelled as UART in the Genesys 2 PCB.