
# All IO pins are of LVCMOS 3.3 standard
# Do not change this line
set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "3.3-V LVCMOS"

# -------------------------------------------------------------------------- #
# Location Assignments

# Clock and POR Reset
set_location_assignment PIN_A14 -to clk_100m
set_location_assignment PIN_A15 -to reset_n

#### PMOD headers ####

# uncomment and change signal names according to your external modules!
# each pmod header has 8 io pins
# numbered 0-7 according to Digilent's specification

# set_location_assignment PIN_C19 -to pmod1_io[0]
# set_location_assignment PIN_B19 -to pmod1_io[1]
# set_location_assignment PIN_A19 -to pmod1_io[2]
# set_location_assignment PIN_C20 -to pmod1_io[3]
# set_location_assignment PIN_A18 -to pmod1_io[4]
# set_location_assignment PIN_B18 -to pmod1_io[5]
# set_location_assignment PIN_C18 -to pmod1_io[6]
# set_location_assignment PIN_A17 -to pmod1_io[7]

# set_location_assignment PIN_C15 -to pmod2_io[0]
# set_location_assignment PIN_C16 -to pmod2_io[1]
# set_location_assignment PIN_C17 -to pmod2_io[2]
# set_location_assignment PIN_B17 -to pmod2_io[3]
# set_location_assignment PIN_C14 -to pmod2_io[4]
# set_location_assignment PIN_C13 -to pmod2_io[5]
# set_location_assignment PIN_A12 -to pmod2_io[6]
# set_location_assignment PIN_C12 -to pmod2_io[7]

# set_location_assignment PIN_C10 -to pmod3_io[0]
# set_location_assignment PIN_B11 -to pmod3_io[1]
# set_location_assignment PIN_A11 -to pmod3_io[2]
# set_location_assignment PIN_C11 -to pmod3_io[3]
# set_location_assignment PIN_A10 -to pmod3_io[4]
# set_location_assignment PIN_B10 -to pmod3_io[5]
# set_location_assignment PIN_C9 -to pmod3_io[6]
# set_location_assignment PIN_A8 -to pmod3_io[7]

# set_location_assignment PIN_C6 -to pmod4_io[0]
# set_location_assignment PIN_A7 -to pmod4_io[1]
# set_location_assignment PIN_B7 -to pmod4_io[2]
# set_location_assignment PIN_C7 -to pmod4_io[3]
# set_location_assignment PIN_B6 -to pmod4_io[4]
# set_location_assignment PIN_A6 -to pmod4_io[5]
# set_location_assignment PIN_C5 -to pmod4_io[6]
# set_location_assignment PIN_C4 -to pmod4_io[7]

# set_location_assignment PIN_E3 -to pmod5_io[0]
# set_location_assignment PIN_D1 -to pmod5_io[1]
# set_location_assignment PIN_D2 -to pmod5_io[2]
# set_location_assignment PIN_C2 -to pmod5_io[3]
# set_location_assignment PIN_E2 -to pmod5_io[4]
# set_location_assignment PIN_E1 -to pmod5_io[5]
# set_location_assignment PIN_F3 -to pmod5_io[6]
# set_location_assignment PIN_F2 -to pmod5_io[7]

# set_location_assignment PIN_C3 -to pmod6_io[0]
# set_location_assignment PIN_D5 -to pmod6_io[1]
# set_location_assignment PIN_D4 -to pmod6_io[2]
# set_location_assignment PIN_D6 -to pmod6_io[3]
# set_location_assignment PIN_B3 -to pmod6_io[4]
# set_location_assignment PIN_A3 -to pmod6_io[5]
# set_location_assignment PIN_B4 -to pmod6_io[6]
# set_location_assignment PIN_A4 -to pmod6_io[7]

# set_location_assignment PIN_Y4 -to pmod7_io[0]
# set_location_assignment PIN_AA6 -to pmod7_io[1]
# set_location_assignment PIN_AA5 -to pmod7_io[2]
# set_location_assignment PIN_AA4 -to pmod7_io[3]
# set_location_assignment PIN_Y5 -to pmod7_io[4]
# set_location_assignment PIN_Y6 -to pmod7_io[5]
# set_location_assignment PIN_W4 -to pmod7_io[6]
# set_location_assignment PIN_V4 -to pmod7_io[7]

# set_location_assignment PIN_AC4 -to pmod8_io[0]
# set_location_assignment PIN_AE3 -to pmod8_io[1]
# set_location_assignment PIN_AE2 -to pmod8_io[2]
# set_location_assignment PIN_AF2 -to pmod8_io[3]
# set_location_assignment PIN_AC5 -to pmod8_io[4]
# set_location_assignment PIN_AB4 -to pmod8_io[5]
# set_location_assignment PIN_AB5 -to pmod8_io[6]
# set_location_assignment PIN_AB6 -to pmod8_io[7]

# BaseRAM
set_location_assignment PIN_AD19 -to base_ram_addr[0]
set_location_assignment PIN_AC19 -to base_ram_addr[1]
set_location_assignment PIN_AF20 -to base_ram_addr[2]
set_location_assignment PIN_AE20 -to base_ram_addr[3]
set_location_assignment PIN_AE21 -to base_ram_addr[4]
set_location_assignment PIN_AD25 -to base_ram_addr[5]
set_location_assignment PIN_AE25 -to base_ram_addr[6]
set_location_assignment PIN_AD24 -to base_ram_addr[7]
set_location_assignment PIN_AE24 -to base_ram_addr[8]
set_location_assignment PIN_AE23 -to base_ram_addr[9]
set_location_assignment PIN_AC22 -to base_ram_addr[10]
set_location_assignment PIN_AD22 -to base_ram_addr[11]
set_location_assignment PIN_AE22 -to base_ram_addr[12]
set_location_assignment PIN_AC21 -to base_ram_addr[13]
set_location_assignment PIN_AD21 -to base_ram_addr[14]
set_location_assignment PIN_AE17 -to base_ram_addr[15]
set_location_assignment PIN_AD17 -to base_ram_addr[16]
set_location_assignment PIN_AC17 -to base_ram_addr[17]
set_location_assignment PIN_AE18 -to base_ram_addr[18]
set_location_assignment PIN_AD18 -to base_ram_addr[19]
set_location_assignment PIN_AB25 -to base_ram_be_n[0]
set_location_assignment PIN_AC25 -to base_ram_be_n[1]
set_location_assignment PIN_AF22 -to base_ram_be_n[2]
set_location_assignment PIN_AH23 -to base_ram_be_n[3]
set_location_assignment PIN_AE19 -to base_ram_ce_n
set_location_assignment PIN_AC15 -to base_ram_data[0]
set_location_assignment PIN_AD15 -to base_ram_data[1]
set_location_assignment PIN_AE15 -to base_ram_data[2]
set_location_assignment PIN_AB15 -to base_ram_data[3]
set_location_assignment PIN_AB16 -to base_ram_data[4]
set_location_assignment PIN_AE16 -to base_ram_data[5]
set_location_assignment PIN_AB17 -to base_ram_data[6]
set_location_assignment PIN_AB18 -to base_ram_data[7]
set_location_assignment PIN_AG23 -to base_ram_data[8]
set_location_assignment PIN_AF23 -to base_ram_data[9]
set_location_assignment PIN_AH25 -to base_ram_data[10]
set_location_assignment PIN_AG25 -to base_ram_data[11]
set_location_assignment PIN_AF25 -to base_ram_data[12]
set_location_assignment PIN_AH26 -to base_ram_data[13]
set_location_assignment PIN_AG26 -to base_ram_data[14]
set_location_assignment PIN_AF26 -to base_ram_data[15]
set_location_assignment PIN_AF15 -to base_ram_data[16]
set_location_assignment PIN_AF16 -to base_ram_data[17]
set_location_assignment PIN_AH17 -to base_ram_data[18]
set_location_assignment PIN_AG17 -to base_ram_data[19]
set_location_assignment PIN_AF17 -to base_ram_data[20]
set_location_assignment PIN_AH18 -to base_ram_data[21]
set_location_assignment PIN_AG18 -to base_ram_data[22]
set_location_assignment PIN_AF18 -to base_ram_data[23]
set_location_assignment PIN_AH19 -to base_ram_data[24]
set_location_assignment PIN_AG19 -to base_ram_data[25]
set_location_assignment PIN_AF19 -to base_ram_data[26]
set_location_assignment PIN_AH21 -to base_ram_data[27]
set_location_assignment PIN_AG21 -to base_ram_data[28]
set_location_assignment PIN_AF21 -to base_ram_data[29]
set_location_assignment PIN_AH22 -to base_ram_data[30]
set_location_assignment PIN_AG22 -to base_ram_data[31]
set_location_assignment PIN_AF24 -to base_ram_oe_n
set_location_assignment PIN_AC18 -to base_ram_we_n

# buttons
set_location_assignment PIN_F1 -to clock_btn
set_location_assignment PIN_G3 -to reset_btn
## SD_test
#set_location_assignment PIN_M24 -to HX0
#set_location_assignment PIN_M25 -to HX1
#set_location_assignment PIN_L23 -to HX2
#set_location_assignment PIN_L24 -to HX3
#set_location_assignment PIN_L25 -to HX4
#set_location_assignment PIN_K22 -to HX5
#set_location_assignment PIN_J22 -to HX6
#set_location_assignment PIN_K25 -to HX7
# DPY
set_location_assignment PIN_M24 -to dpy_digit[0]
set_location_assignment PIN_M25 -to dpy_digit[1]
set_location_assignment PIN_L23 -to dpy_digit[2]
set_location_assignment PIN_L24 -to dpy_digit[3]
set_location_assignment PIN_L25 -to dpy_digit[4]
set_location_assignment PIN_K22 -to dpy_digit[5]
set_location_assignment PIN_J22 -to dpy_digit[6]
set_location_assignment PIN_K25 -to dpy_digit[7]
set_location_assignment PIN_H23 -to dpy_segment[0]
set_location_assignment PIN_J23 -to dpy_segment[1]
set_location_assignment PIN_H24 -to dpy_segment[2]
set_location_assignment PIN_G24 -to dpy_segment[3]
set_location_assignment PIN_F24 -to dpy_segment[4]
set_location_assignment PIN_J25 -to dpy_segment[5]
set_location_assignment PIN_J24 -to dpy_segment[6]
set_location_assignment PIN_H25 -to dpy_segment[7]

# Gigabit Ethernet GMII
set_location_assignment PIN_C21 -to eth_col
set_location_assignment PIN_A22 -to eth_crs
set_location_assignment PIN_D23 -to eth_gtx_clk
set_location_assignment PIN_F25 -to eth_mdc
set_location_assignment PIN_G25 -to eth_mdio
set_location_assignment PIN_A23 -to eth_rst_n
set_location_assignment PIN_D21 -to eth_rx_clk
set_location_assignment PIN_A21 -to eth_rx_dv
set_location_assignment PIN_B21 -to eth_rx_er
set_location_assignment PIN_E25 -to eth_rxd[0]
set_location_assignment PIN_D25 -to eth_rxd[1]
set_location_assignment PIN_E24 -to eth_rxd[2]
set_location_assignment PIN_D24 -to eth_rxd[3]
set_location_assignment PIN_G22 -to eth_rxd[4]
set_location_assignment PIN_F22 -to eth_rxd[5]
set_location_assignment PIN_D22 -to eth_rxd[6]
set_location_assignment PIN_E22 -to eth_rxd[7]
set_location_assignment PIN_B25 -to eth_tx_clk
set_location_assignment PIN_B22 -to eth_tx_en
set_location_assignment PIN_C27 -to eth_tx_er
set_location_assignment PIN_C22 -to eth_txd[0]
set_location_assignment PIN_B23 -to eth_txd[1]
set_location_assignment PIN_C23 -to eth_txd[2]
set_location_assignment PIN_A25 -to eth_txd[3]
set_location_assignment PIN_C25 -to eth_txd[4]
set_location_assignment PIN_A26 -to eth_txd[5]
set_location_assignment PIN_B26 -to eth_txd[6]
set_location_assignment PIN_C26 -to eth_txd[7]

# HDMI/DVI video
set_location_assignment PIN_P27 -to video_blue[0]
set_location_assignment PIN_P28 -to video_blue[1]
set_location_assignment PIN_P26 -to video_blue[2]
set_location_assignment PIN_N26 -to video_blue[3]
set_location_assignment PIN_M28 -to video_blue[4]
set_location_assignment PIN_M27 -to video_blue[5]
set_location_assignment PIN_L28 -to video_blue[6]
set_location_assignment PIN_L27 -to video_blue[7]
set_location_assignment PIN_M26 -to video_clk
set_location_assignment PIN_R26 -to video_de
set_location_assignment PIN_L26 -to video_green[0]
set_location_assignment PIN_K28 -to video_green[1]
set_location_assignment PIN_K27 -to video_green[2]
set_location_assignment PIN_K26 -to video_green[3]
set_location_assignment PIN_J26 -to video_green[4]
set_location_assignment PIN_H26 -to video_green[5]
set_location_assignment PIN_G28 -to video_green[6]
set_location_assignment PIN_F26 -to video_green[7]
set_location_assignment PIN_R28 -to video_hsync
set_location_assignment PIN_F27 -to video_red[0]
set_location_assignment PIN_F28 -to video_red[1]
set_location_assignment PIN_E26 -to video_red[2]
set_location_assignment PIN_E27 -to video_red[3]
set_location_assignment PIN_E28 -to video_red[4]
set_location_assignment PIN_D26 -to video_red[5]
set_location_assignment PIN_D27 -to video_red[6]
set_location_assignment PIN_D28 -to video_red[7]
set_location_assignment PIN_R27 -to video_vsync

# Touch Buttons
set_location_assignment PIN_G2 -to touch_btn[0]
set_location_assignment PIN_F4 -to touch_btn[1]
set_location_assignment PIN_G1 -to touch_btn[2]
set_location_assignment PIN_F5 -to touch_btn[3]

# LEDs
set_location_assignment PIN_M23 -to leds[0]
set_location_assignment PIN_N25 -to leds[1]
set_location_assignment PIN_L22 -to leds[2]
set_location_assignment PIN_L21 -to leds[3]
set_location_assignment PIN_T26 -to leds[4]
set_location_assignment PIN_U28 -to leds[5]
set_location_assignment PIN_U27 -to leds[6]
set_location_assignment PIN_U26 -to leds[7]
set_location_assignment PIN_W27 -to leds[8]
set_location_assignment PIN_W26 -to leds[9]
set_location_assignment PIN_Y26 -to leds[10]
set_location_assignment PIN_AA26 -to leds[11]
set_location_assignment PIN_AC27 -to leds[12]
set_location_assignment PIN_AC26 -to leds[13]
set_location_assignment PIN_AD28 -to leds[14]
set_location_assignment PIN_AD27 -to leds[15]
set_location_assignment PIN_P25 -to leds[16]
set_location_assignment PIN_M21 -to leds[17]
set_location_assignment PIN_N21 -to leds[18]
set_location_assignment PIN_P21 -to leds[19]
set_location_assignment PIN_V28 -to leds[20]
set_location_assignment PIN_V27 -to leds[21]
set_location_assignment PIN_V26 -to leds[22]
set_location_assignment PIN_W28 -to leds[23]
set_location_assignment PIN_AB28 -to leds[24]
set_location_assignment PIN_AB27 -to leds[25]
set_location_assignment PIN_AB26 -to leds[26]
set_location_assignment PIN_AC28 -to leds[27]
set_location_assignment PIN_AD26 -to leds[28]
set_location_assignment PIN_AE28 -to leds[29]
set_location_assignment PIN_AE27 -to leds[30]
set_location_assignment PIN_AE26 -to leds[31]

# PS/2
set_location_assignment PIN_R23 -to ps2_clock
set_location_assignment PIN_R22 -to ps2_data

# RS232
set_location_assignment PIN_T22 -to rs232_cts
set_location_assignment PIN_T21 -to rs232_rts
set_location_assignment PIN_R24 -to rs232_rxd
set_location_assignment PIN_R25 -to rs232_txd

# SD Card
set_location_assignment PIN_U25 -to sd_wp
set_location_assignment PIN_V25 -to sd_cd

# Choose one of the two interfaces below
# (SPI Mode)
set_location_assignment PIN_V23 -to sd_sclk
set_location_assignment PIN_V22 -to sd_mosi
set_location_assignment PIN_V24 -to sd_miso
set_location_assignment PIN_W22 -to sd_cs

# (SD Mode)
# set_location_assignment PIN_V23 -to sd_clk
# set_location_assignment PIN_V22 -to sd_cmd
# set_location_assignment PIN_V24 -to sd_data[0]
# set_location_assignment PIN_U24 -to sd_data[1]
# set_location_assignment PIN_Y22 -to sd_data[2]
# set_location_assignment PIN_W22 -to sd_data[3]

# SDRAM
set_location_assignment PIN_Y3 -to sdram_addr[0]
set_location_assignment PIN_AA3 -to sdram_addr[1]
set_location_assignment PIN_AB1 -to sdram_addr[2]
set_location_assignment PIN_AB2 -to sdram_addr[3]
set_location_assignment PIN_U2 -to sdram_addr[4]
set_location_assignment PIN_U1 -to sdram_addr[5]
set_location_assignment PIN_T3 -to sdram_addr[6]
set_location_assignment PIN_R3 -to sdram_addr[7]
set_location_assignment PIN_R1 -to sdram_addr[8]
set_location_assignment PIN_R2 -to sdram_addr[9]
set_location_assignment PIN_W3 -to sdram_addr[10]
set_location_assignment PIN_P2 -to sdram_addr[11]
set_location_assignment PIN_P1 -to sdram_addr[12]
set_location_assignment PIN_W1 -to sdram_bank[0]
set_location_assignment PIN_W2 -to sdram_bank[1]
set_location_assignment PIN_V1 -to sdram_cas_n
set_location_assignment PIN_V3 -to sdram_ce_n
set_location_assignment PIN_N3 -to sdram_cke
set_location_assignment PIN_M1 -to sdram_clk
set_location_assignment PIN_R6 -to sdram_dq[0]
set_location_assignment PIN_R5 -to sdram_dq[1]
set_location_assignment PIN_R4 -to sdram_dq[2]
set_location_assignment PIN_T4 -to sdram_dq[3]
set_location_assignment PIN_U6 -to sdram_dq[4]
set_location_assignment PIN_U5 -to sdram_dq[5]
set_location_assignment PIN_U4 -to sdram_dq[6]
set_location_assignment PIN_V6 -to sdram_dq[7]
set_location_assignment PIN_M3 -to sdram_dq[8]
set_location_assignment PIN_L1 -to sdram_dq[9]
set_location_assignment PIN_L2 -to sdram_dq[10]
set_location_assignment PIN_L3 -to sdram_dq[11]
set_location_assignment PIN_K1 -to sdram_dq[12]
set_location_assignment PIN_K2 -to sdram_dq[13]
set_location_assignment PIN_K3 -to sdram_dq[14]
set_location_assignment PIN_H3 -to sdram_dq[15]
set_location_assignment PIN_M2 -to sdram_dqmh
set_location_assignment PIN_V5 -to sdram_dqml
set_location_assignment PIN_V2 -to sdram_ras_n
set_location_assignment PIN_U3 -to sdram_we_n

# DIP Switches
set_location_assignment PIN_J5 -to dip_sw[0]
set_location_assignment PIN_J6 -to dip_sw[1]
set_location_assignment PIN_H4 -to dip_sw[2]
set_location_assignment PIN_H5 -to dip_sw[3]
set_location_assignment PIN_H6 -to dip_sw[4]
set_location_assignment PIN_G4 -to dip_sw[5]
set_location_assignment PIN_G5 -to dip_sw[6]
set_location_assignment PIN_G6 -to dip_sw[7]
set_location_assignment PIN_AE1 -to dip_sw[8]
set_location_assignment PIN_AD3 -to dip_sw[9]
set_location_assignment PIN_AD2 -to dip_sw[10]
set_location_assignment PIN_AD1 -to dip_sw[11]
set_location_assignment PIN_AC3 -to dip_sw[12]
set_location_assignment PIN_AC2 -to dip_sw[13]
set_location_assignment PIN_AC1 -to dip_sw[14]
set_location_assignment PIN_AB3 -to dip_sw[15]

# USB to UART
set_location_assignment PIN_T25 -to uart_rxd
set_location_assignment PIN_U23 -to uart_txd

# ExtRAM
# This bank of SRAM isn't populated on mass production boards
# set_location_assignment PIN_AE10 -to ext_ram_addr[0]
# set_location_assignment PIN_AD10 -to ext_ram_addr[1]
# set_location_assignment PIN_AC10 -to ext_ram_addr[2]
# set_location_assignment PIN_AE11 -to ext_ram_addr[3]
# set_location_assignment PIN_AD11 -to ext_ram_addr[4]
# set_location_assignment PIN_AA14 -to ext_ram_addr[5]
# set_location_assignment PIN_AB14 -to ext_ram_addr[6]
# set_location_assignment PIN_AC14 -to ext_ram_addr[7]
# set_location_assignment PIN_AA13 -to ext_ram_addr[8]
# set_location_assignment PIN_AB12 -to ext_ram_addr[9]
# set_location_assignment PIN_AE13 -to ext_ram_addr[10]
# set_location_assignment PIN_AC12 -to ext_ram_addr[11]
# set_location_assignment PIN_AD12 -to ext_ram_addr[12]
# set_location_assignment PIN_AE12 -to ext_ram_addr[13]
# set_location_assignment PIN_AC11 -to ext_ram_addr[14]
# set_location_assignment PIN_AE8 -to ext_ram_addr[15]
# set_location_assignment PIN_AD8 -to ext_ram_addr[16]
# set_location_assignment PIN_AC8 -to ext_ram_addr[17]
# set_location_assignment PIN_AF9 -to ext_ram_addr[18]
# set_location_assignment PIN_AE9 -to ext_ram_addr[19]
# set_location_assignment PIN_AD14 -to ext_ram_be_n[0]
# set_location_assignment PIN_AE14 -to ext_ram_be_n[1]
# set_location_assignment PIN_AG10 -to ext_ram_be_n[2]
# set_location_assignment PIN_AH10 -to ext_ram_be_n[3]
# set_location_assignment PIN_AB10 -to ext_ram_ce_n
# set_location_assignment PIN_AD4 -to ext_ram_data[0]
# set_location_assignment PIN_AF5 -to ext_ram_data[1]
# set_location_assignment PIN_AE5 -to ext_ram_data[2]
# set_location_assignment PIN_AD5 -to ext_ram_data[3]
# set_location_assignment PIN_AE6 -to ext_ram_data[4]
# set_location_assignment PIN_AE7 -to ext_ram_data[5]
# set_location_assignment PIN_AD7 -to ext_ram_data[6]
# set_location_assignment PIN_AC7 -to ext_ram_data[7]
# set_location_assignment PIN_AF11 -to ext_ram_data[8]
# set_location_assignment PIN_AG11 -to ext_ram_data[9]
# set_location_assignment PIN_AH11 -to ext_ram_data[10]
# set_location_assignment PIN_AF12 -to ext_ram_data[11]
# set_location_assignment PIN_AG12 -to ext_ram_data[12]
# set_location_assignment PIN_AH12 -to ext_ram_data[13]
# set_location_assignment PIN_AF13 -to ext_ram_data[14]
# set_location_assignment PIN_AF14 -to ext_ram_data[15]
# set_location_assignment PIN_AF3 -to ext_ram_data[16]
# set_location_assignment PIN_AG3 -to ext_ram_data[17]
# set_location_assignment PIN_AH3 -to ext_ram_data[18]
# set_location_assignment PIN_AF4 -to ext_ram_data[19]
# set_location_assignment PIN_AG4 -to ext_ram_data[20]
# set_location_assignment PIN_AH4 -to ext_ram_data[21]
# set_location_assignment PIN_AF6 -to ext_ram_data[22]
# set_location_assignment PIN_AG6 -to ext_ram_data[23]
# set_location_assignment PIN_AH6 -to ext_ram_data[24]
# set_location_assignment PIN_AF7 -to ext_ram_data[25]
# set_location_assignment PIN_AG7 -to ext_ram_data[26]
# set_location_assignment PIN_AH7 -to ext_ram_data[27]
# set_location_assignment PIN_AF8 -to ext_ram_data[28]
# set_location_assignment PIN_AG8 -to ext_ram_data[29]
# set_location_assignment PIN_AH8 -to ext_ram_data[30]
# set_location_assignment PIN_AF10 -to ext_ram_data[31]
# set_location_assignment PIN_AB13 -to ext_ram_oe_n
# set_location_assignment PIN_AB9 -to ext_ram_we_n

# End Location Assignments
# -------------------------------------------------------------------------- #