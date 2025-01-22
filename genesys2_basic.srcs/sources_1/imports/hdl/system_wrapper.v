//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Wed Jan 22 19:41:25 2025
//Host        : DESKTOP-3VUNQ5R running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (GPIOs_tri_io,
    ddr3_sdram_addr,
    ddr3_sdram_ba,
    ddr3_sdram_cas_n,
    ddr3_sdram_ck_n,
    ddr3_sdram_ck_p,
    ddr3_sdram_cke,
    ddr3_sdram_cs_n,
    ddr3_sdram_dm,
    ddr3_sdram_dq,
    ddr3_sdram_dqs_n,
    ddr3_sdram_dqs_p,
    ddr3_sdram_odt,
    ddr3_sdram_ras_n,
    ddr3_sdram_reset_n,
    ddr3_sdram_we_n,
    reset,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p,
    usb_uart_rxd,
    usb_uart_txd);
  inout [31:0]GPIOs_tri_io;
  output [14:0]ddr3_sdram_addr;
  output [2:0]ddr3_sdram_ba;
  output ddr3_sdram_cas_n;
  output [0:0]ddr3_sdram_ck_n;
  output [0:0]ddr3_sdram_ck_p;
  output [0:0]ddr3_sdram_cke;
  output [0:0]ddr3_sdram_cs_n;
  output [3:0]ddr3_sdram_dm;
  inout [31:0]ddr3_sdram_dq;
  inout [3:0]ddr3_sdram_dqs_n;
  inout [3:0]ddr3_sdram_dqs_p;
  output [0:0]ddr3_sdram_odt;
  output ddr3_sdram_ras_n;
  output ddr3_sdram_reset_n;
  output ddr3_sdram_we_n;
  input reset;
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [0:0]GPIOs_tri_i_0;
  wire [1:1]GPIOs_tri_i_1;
  wire [10:10]GPIOs_tri_i_10;
  wire [11:11]GPIOs_tri_i_11;
  wire [12:12]GPIOs_tri_i_12;
  wire [13:13]GPIOs_tri_i_13;
  wire [14:14]GPIOs_tri_i_14;
  wire [15:15]GPIOs_tri_i_15;
  wire [16:16]GPIOs_tri_i_16;
  wire [17:17]GPIOs_tri_i_17;
  wire [18:18]GPIOs_tri_i_18;
  wire [19:19]GPIOs_tri_i_19;
  wire [2:2]GPIOs_tri_i_2;
  wire [20:20]GPIOs_tri_i_20;
  wire [21:21]GPIOs_tri_i_21;
  wire [22:22]GPIOs_tri_i_22;
  wire [23:23]GPIOs_tri_i_23;
  wire [24:24]GPIOs_tri_i_24;
  wire [25:25]GPIOs_tri_i_25;
  wire [26:26]GPIOs_tri_i_26;
  wire [27:27]GPIOs_tri_i_27;
  wire [28:28]GPIOs_tri_i_28;
  wire [29:29]GPIOs_tri_i_29;
  wire [3:3]GPIOs_tri_i_3;
  wire [30:30]GPIOs_tri_i_30;
  wire [31:31]GPIOs_tri_i_31;
  wire [4:4]GPIOs_tri_i_4;
  wire [5:5]GPIOs_tri_i_5;
  wire [6:6]GPIOs_tri_i_6;
  wire [7:7]GPIOs_tri_i_7;
  wire [8:8]GPIOs_tri_i_8;
  wire [9:9]GPIOs_tri_i_9;
  wire [0:0]GPIOs_tri_io_0;
  wire [1:1]GPIOs_tri_io_1;
  wire [10:10]GPIOs_tri_io_10;
  wire [11:11]GPIOs_tri_io_11;
  wire [12:12]GPIOs_tri_io_12;
  wire [13:13]GPIOs_tri_io_13;
  wire [14:14]GPIOs_tri_io_14;
  wire [15:15]GPIOs_tri_io_15;
  wire [16:16]GPIOs_tri_io_16;
  wire [17:17]GPIOs_tri_io_17;
  wire [18:18]GPIOs_tri_io_18;
  wire [19:19]GPIOs_tri_io_19;
  wire [2:2]GPIOs_tri_io_2;
  wire [20:20]GPIOs_tri_io_20;
  wire [21:21]GPIOs_tri_io_21;
  wire [22:22]GPIOs_tri_io_22;
  wire [23:23]GPIOs_tri_io_23;
  wire [24:24]GPIOs_tri_io_24;
  wire [25:25]GPIOs_tri_io_25;
  wire [26:26]GPIOs_tri_io_26;
  wire [27:27]GPIOs_tri_io_27;
  wire [28:28]GPIOs_tri_io_28;
  wire [29:29]GPIOs_tri_io_29;
  wire [3:3]GPIOs_tri_io_3;
  wire [30:30]GPIOs_tri_io_30;
  wire [31:31]GPIOs_tri_io_31;
  wire [4:4]GPIOs_tri_io_4;
  wire [5:5]GPIOs_tri_io_5;
  wire [6:6]GPIOs_tri_io_6;
  wire [7:7]GPIOs_tri_io_7;
  wire [8:8]GPIOs_tri_io_8;
  wire [9:9]GPIOs_tri_io_9;
  wire [0:0]GPIOs_tri_o_0;
  wire [1:1]GPIOs_tri_o_1;
  wire [10:10]GPIOs_tri_o_10;
  wire [11:11]GPIOs_tri_o_11;
  wire [12:12]GPIOs_tri_o_12;
  wire [13:13]GPIOs_tri_o_13;
  wire [14:14]GPIOs_tri_o_14;
  wire [15:15]GPIOs_tri_o_15;
  wire [16:16]GPIOs_tri_o_16;
  wire [17:17]GPIOs_tri_o_17;
  wire [18:18]GPIOs_tri_o_18;
  wire [19:19]GPIOs_tri_o_19;
  wire [2:2]GPIOs_tri_o_2;
  wire [20:20]GPIOs_tri_o_20;
  wire [21:21]GPIOs_tri_o_21;
  wire [22:22]GPIOs_tri_o_22;
  wire [23:23]GPIOs_tri_o_23;
  wire [24:24]GPIOs_tri_o_24;
  wire [25:25]GPIOs_tri_o_25;
  wire [26:26]GPIOs_tri_o_26;
  wire [27:27]GPIOs_tri_o_27;
  wire [28:28]GPIOs_tri_o_28;
  wire [29:29]GPIOs_tri_o_29;
  wire [3:3]GPIOs_tri_o_3;
  wire [30:30]GPIOs_tri_o_30;
  wire [31:31]GPIOs_tri_o_31;
  wire [4:4]GPIOs_tri_o_4;
  wire [5:5]GPIOs_tri_o_5;
  wire [6:6]GPIOs_tri_o_6;
  wire [7:7]GPIOs_tri_o_7;
  wire [8:8]GPIOs_tri_o_8;
  wire [9:9]GPIOs_tri_o_9;
  wire [0:0]GPIOs_tri_t_0;
  wire [1:1]GPIOs_tri_t_1;
  wire [10:10]GPIOs_tri_t_10;
  wire [11:11]GPIOs_tri_t_11;
  wire [12:12]GPIOs_tri_t_12;
  wire [13:13]GPIOs_tri_t_13;
  wire [14:14]GPIOs_tri_t_14;
  wire [15:15]GPIOs_tri_t_15;
  wire [16:16]GPIOs_tri_t_16;
  wire [17:17]GPIOs_tri_t_17;
  wire [18:18]GPIOs_tri_t_18;
  wire [19:19]GPIOs_tri_t_19;
  wire [2:2]GPIOs_tri_t_2;
  wire [20:20]GPIOs_tri_t_20;
  wire [21:21]GPIOs_tri_t_21;
  wire [22:22]GPIOs_tri_t_22;
  wire [23:23]GPIOs_tri_t_23;
  wire [24:24]GPIOs_tri_t_24;
  wire [25:25]GPIOs_tri_t_25;
  wire [26:26]GPIOs_tri_t_26;
  wire [27:27]GPIOs_tri_t_27;
  wire [28:28]GPIOs_tri_t_28;
  wire [29:29]GPIOs_tri_t_29;
  wire [3:3]GPIOs_tri_t_3;
  wire [30:30]GPIOs_tri_t_30;
  wire [31:31]GPIOs_tri_t_31;
  wire [4:4]GPIOs_tri_t_4;
  wire [5:5]GPIOs_tri_t_5;
  wire [6:6]GPIOs_tri_t_6;
  wire [7:7]GPIOs_tri_t_7;
  wire [8:8]GPIOs_tri_t_8;
  wire [9:9]GPIOs_tri_t_9;
  wire [14:0]ddr3_sdram_addr;
  wire [2:0]ddr3_sdram_ba;
  wire ddr3_sdram_cas_n;
  wire [0:0]ddr3_sdram_ck_n;
  wire [0:0]ddr3_sdram_ck_p;
  wire [0:0]ddr3_sdram_cke;
  wire [0:0]ddr3_sdram_cs_n;
  wire [3:0]ddr3_sdram_dm;
  wire [31:0]ddr3_sdram_dq;
  wire [3:0]ddr3_sdram_dqs_n;
  wire [3:0]ddr3_sdram_dqs_p;
  wire [0:0]ddr3_sdram_odt;
  wire ddr3_sdram_ras_n;
  wire ddr3_sdram_reset_n;
  wire ddr3_sdram_we_n;
  wire reset;
  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  IOBUF GPIOs_tri_iobuf_0
       (.I(GPIOs_tri_o_0),
        .IO(GPIOs_tri_io[0]),
        .O(GPIOs_tri_i_0),
        .T(GPIOs_tri_t_0));
  IOBUF GPIOs_tri_iobuf_1
       (.I(GPIOs_tri_o_1),
        .IO(GPIOs_tri_io[1]),
        .O(GPIOs_tri_i_1),
        .T(GPIOs_tri_t_1));
  IOBUF GPIOs_tri_iobuf_10
       (.I(GPIOs_tri_o_10),
        .IO(GPIOs_tri_io[10]),
        .O(GPIOs_tri_i_10),
        .T(GPIOs_tri_t_10));
  IOBUF GPIOs_tri_iobuf_11
       (.I(GPIOs_tri_o_11),
        .IO(GPIOs_tri_io[11]),
        .O(GPIOs_tri_i_11),
        .T(GPIOs_tri_t_11));
  IOBUF GPIOs_tri_iobuf_12
       (.I(GPIOs_tri_o_12),
        .IO(GPIOs_tri_io[12]),
        .O(GPIOs_tri_i_12),
        .T(GPIOs_tri_t_12));
  IOBUF GPIOs_tri_iobuf_13
       (.I(GPIOs_tri_o_13),
        .IO(GPIOs_tri_io[13]),
        .O(GPIOs_tri_i_13),
        .T(GPIOs_tri_t_13));
  IOBUF GPIOs_tri_iobuf_14
       (.I(GPIOs_tri_o_14),
        .IO(GPIOs_tri_io[14]),
        .O(GPIOs_tri_i_14),
        .T(GPIOs_tri_t_14));
  IOBUF GPIOs_tri_iobuf_15
       (.I(GPIOs_tri_o_15),
        .IO(GPIOs_tri_io[15]),
        .O(GPIOs_tri_i_15),
        .T(GPIOs_tri_t_15));
  IOBUF GPIOs_tri_iobuf_16
       (.I(GPIOs_tri_o_16),
        .IO(GPIOs_tri_io[16]),
        .O(GPIOs_tri_i_16),
        .T(GPIOs_tri_t_16));
  IOBUF GPIOs_tri_iobuf_17
       (.I(GPIOs_tri_o_17),
        .IO(GPIOs_tri_io[17]),
        .O(GPIOs_tri_i_17),
        .T(GPIOs_tri_t_17));
  IOBUF GPIOs_tri_iobuf_18
       (.I(GPIOs_tri_o_18),
        .IO(GPIOs_tri_io[18]),
        .O(GPIOs_tri_i_18),
        .T(GPIOs_tri_t_18));
  IOBUF GPIOs_tri_iobuf_19
       (.I(GPIOs_tri_o_19),
        .IO(GPIOs_tri_io[19]),
        .O(GPIOs_tri_i_19),
        .T(GPIOs_tri_t_19));
  IOBUF GPIOs_tri_iobuf_2
       (.I(GPIOs_tri_o_2),
        .IO(GPIOs_tri_io[2]),
        .O(GPIOs_tri_i_2),
        .T(GPIOs_tri_t_2));
  IOBUF GPIOs_tri_iobuf_20
       (.I(GPIOs_tri_o_20),
        .IO(GPIOs_tri_io[20]),
        .O(GPIOs_tri_i_20),
        .T(GPIOs_tri_t_20));
  IOBUF GPIOs_tri_iobuf_21
       (.I(GPIOs_tri_o_21),
        .IO(GPIOs_tri_io[21]),
        .O(GPIOs_tri_i_21),
        .T(GPIOs_tri_t_21));
  IOBUF GPIOs_tri_iobuf_22
       (.I(GPIOs_tri_o_22),
        .IO(GPIOs_tri_io[22]),
        .O(GPIOs_tri_i_22),
        .T(GPIOs_tri_t_22));
  IOBUF GPIOs_tri_iobuf_23
       (.I(GPIOs_tri_o_23),
        .IO(GPIOs_tri_io[23]),
        .O(GPIOs_tri_i_23),
        .T(GPIOs_tri_t_23));
  IOBUF GPIOs_tri_iobuf_24
       (.I(GPIOs_tri_o_24),
        .IO(GPIOs_tri_io[24]),
        .O(GPIOs_tri_i_24),
        .T(GPIOs_tri_t_24));
  IOBUF GPIOs_tri_iobuf_25
       (.I(GPIOs_tri_o_25),
        .IO(GPIOs_tri_io[25]),
        .O(GPIOs_tri_i_25),
        .T(GPIOs_tri_t_25));
  IOBUF GPIOs_tri_iobuf_26
       (.I(GPIOs_tri_o_26),
        .IO(GPIOs_tri_io[26]),
        .O(GPIOs_tri_i_26),
        .T(GPIOs_tri_t_26));
  IOBUF GPIOs_tri_iobuf_27
       (.I(GPIOs_tri_o_27),
        .IO(GPIOs_tri_io[27]),
        .O(GPIOs_tri_i_27),
        .T(GPIOs_tri_t_27));
  IOBUF GPIOs_tri_iobuf_28
       (.I(GPIOs_tri_o_28),
        .IO(GPIOs_tri_io[28]),
        .O(GPIOs_tri_i_28),
        .T(GPIOs_tri_t_28));
  IOBUF GPIOs_tri_iobuf_29
       (.I(GPIOs_tri_o_29),
        .IO(GPIOs_tri_io[29]),
        .O(GPIOs_tri_i_29),
        .T(GPIOs_tri_t_29));
  IOBUF GPIOs_tri_iobuf_3
       (.I(GPIOs_tri_o_3),
        .IO(GPIOs_tri_io[3]),
        .O(GPIOs_tri_i_3),
        .T(GPIOs_tri_t_3));
  IOBUF GPIOs_tri_iobuf_30
       (.I(GPIOs_tri_o_30),
        .IO(GPIOs_tri_io[30]),
        .O(GPIOs_tri_i_30),
        .T(GPIOs_tri_t_30));
  IOBUF GPIOs_tri_iobuf_31
       (.I(GPIOs_tri_o_31),
        .IO(GPIOs_tri_io[31]),
        .O(GPIOs_tri_i_31),
        .T(GPIOs_tri_t_31));
  IOBUF GPIOs_tri_iobuf_4
       (.I(GPIOs_tri_o_4),
        .IO(GPIOs_tri_io[4]),
        .O(GPIOs_tri_i_4),
        .T(GPIOs_tri_t_4));
  IOBUF GPIOs_tri_iobuf_5
       (.I(GPIOs_tri_o_5),
        .IO(GPIOs_tri_io[5]),
        .O(GPIOs_tri_i_5),
        .T(GPIOs_tri_t_5));
  IOBUF GPIOs_tri_iobuf_6
       (.I(GPIOs_tri_o_6),
        .IO(GPIOs_tri_io[6]),
        .O(GPIOs_tri_i_6),
        .T(GPIOs_tri_t_6));
  IOBUF GPIOs_tri_iobuf_7
       (.I(GPIOs_tri_o_7),
        .IO(GPIOs_tri_io[7]),
        .O(GPIOs_tri_i_7),
        .T(GPIOs_tri_t_7));
  IOBUF GPIOs_tri_iobuf_8
       (.I(GPIOs_tri_o_8),
        .IO(GPIOs_tri_io[8]),
        .O(GPIOs_tri_i_8),
        .T(GPIOs_tri_t_8));
  IOBUF GPIOs_tri_iobuf_9
       (.I(GPIOs_tri_o_9),
        .IO(GPIOs_tri_io[9]),
        .O(GPIOs_tri_i_9),
        .T(GPIOs_tri_t_9));
  system system_i
       (.GPIOs_tri_i({GPIOs_tri_i_31,GPIOs_tri_i_30,GPIOs_tri_i_29,GPIOs_tri_i_28,GPIOs_tri_i_27,GPIOs_tri_i_26,GPIOs_tri_i_25,GPIOs_tri_i_24,GPIOs_tri_i_23,GPIOs_tri_i_22,GPIOs_tri_i_21,GPIOs_tri_i_20,GPIOs_tri_i_19,GPIOs_tri_i_18,GPIOs_tri_i_17,GPIOs_tri_i_16,GPIOs_tri_i_15,GPIOs_tri_i_14,GPIOs_tri_i_13,GPIOs_tri_i_12,GPIOs_tri_i_11,GPIOs_tri_i_10,GPIOs_tri_i_9,GPIOs_tri_i_8,GPIOs_tri_i_7,GPIOs_tri_i_6,GPIOs_tri_i_5,GPIOs_tri_i_4,GPIOs_tri_i_3,GPIOs_tri_i_2,GPIOs_tri_i_1,GPIOs_tri_i_0}),
        .GPIOs_tri_o({GPIOs_tri_o_31,GPIOs_tri_o_30,GPIOs_tri_o_29,GPIOs_tri_o_28,GPIOs_tri_o_27,GPIOs_tri_o_26,GPIOs_tri_o_25,GPIOs_tri_o_24,GPIOs_tri_o_23,GPIOs_tri_o_22,GPIOs_tri_o_21,GPIOs_tri_o_20,GPIOs_tri_o_19,GPIOs_tri_o_18,GPIOs_tri_o_17,GPIOs_tri_o_16,GPIOs_tri_o_15,GPIOs_tri_o_14,GPIOs_tri_o_13,GPIOs_tri_o_12,GPIOs_tri_o_11,GPIOs_tri_o_10,GPIOs_tri_o_9,GPIOs_tri_o_8,GPIOs_tri_o_7,GPIOs_tri_o_6,GPIOs_tri_o_5,GPIOs_tri_o_4,GPIOs_tri_o_3,GPIOs_tri_o_2,GPIOs_tri_o_1,GPIOs_tri_o_0}),
        .GPIOs_tri_t({GPIOs_tri_t_31,GPIOs_tri_t_30,GPIOs_tri_t_29,GPIOs_tri_t_28,GPIOs_tri_t_27,GPIOs_tri_t_26,GPIOs_tri_t_25,GPIOs_tri_t_24,GPIOs_tri_t_23,GPIOs_tri_t_22,GPIOs_tri_t_21,GPIOs_tri_t_20,GPIOs_tri_t_19,GPIOs_tri_t_18,GPIOs_tri_t_17,GPIOs_tri_t_16,GPIOs_tri_t_15,GPIOs_tri_t_14,GPIOs_tri_t_13,GPIOs_tri_t_12,GPIOs_tri_t_11,GPIOs_tri_t_10,GPIOs_tri_t_9,GPIOs_tri_t_8,GPIOs_tri_t_7,GPIOs_tri_t_6,GPIOs_tri_t_5,GPIOs_tri_t_4,GPIOs_tri_t_3,GPIOs_tri_t_2,GPIOs_tri_t_1,GPIOs_tri_t_0}),
        .ddr3_sdram_addr(ddr3_sdram_addr),
        .ddr3_sdram_ba(ddr3_sdram_ba),
        .ddr3_sdram_cas_n(ddr3_sdram_cas_n),
        .ddr3_sdram_ck_n(ddr3_sdram_ck_n),
        .ddr3_sdram_ck_p(ddr3_sdram_ck_p),
        .ddr3_sdram_cke(ddr3_sdram_cke),
        .ddr3_sdram_cs_n(ddr3_sdram_cs_n),
        .ddr3_sdram_dm(ddr3_sdram_dm),
        .ddr3_sdram_dq(ddr3_sdram_dq),
        .ddr3_sdram_dqs_n(ddr3_sdram_dqs_n),
        .ddr3_sdram_dqs_p(ddr3_sdram_dqs_p),
        .ddr3_sdram_odt(ddr3_sdram_odt),
        .ddr3_sdram_ras_n(ddr3_sdram_ras_n),
        .ddr3_sdram_reset_n(ddr3_sdram_reset_n),
        .ddr3_sdram_we_n(ddr3_sdram_we_n),
        .reset(reset),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
