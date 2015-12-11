-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "11/19/2015 16:31:30"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_controller IS
    PORT (
	pixel_clk : IN std_logic;
	reset_n : IN std_logic;
	h_sync : BUFFER std_logic;
	v_sync : BUFFER std_logic;
	disp_ena : BUFFER std_logic;
	column : BUFFER std_logic_vector(31 DOWNTO 0);
	row : BUFFER std_logic_vector(31 DOWNTO 0);
	n_blank : BUFFER std_logic;
	n_sync : BUFFER std_logic
	);
END vga_controller;

-- Design Ports Information
-- h_sync	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v_sync	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_ena	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[1]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[2]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[4]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[5]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[7]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[8]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[9]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[10]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[11]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[13]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[14]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[15]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[16]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[17]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[18]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[19]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[20]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[21]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[22]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[23]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[24]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[25]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[26]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[27]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[28]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[29]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[30]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[31]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[1]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[2]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[4]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[5]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[6]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[7]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[8]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[9]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[10]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[12]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[13]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[14]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[15]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[16]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[17]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[18]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[19]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[20]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[21]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[22]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[23]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[24]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[25]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[26]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[27]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[28]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[29]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[30]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[31]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_blank	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_sync	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pixel_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_h_sync : std_logic;
SIGNAL ww_v_sync : std_logic;
SIGNAL ww_disp_ena : std_logic;
SIGNAL ww_column : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_n_blank : std_logic;
SIGNAL ww_n_sync : std_logic;
SIGNAL \pixel_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \h_sync~output_o\ : std_logic;
SIGNAL \v_sync~output_o\ : std_logic;
SIGNAL \disp_ena~output_o\ : std_logic;
SIGNAL \column[0]~output_o\ : std_logic;
SIGNAL \column[1]~output_o\ : std_logic;
SIGNAL \column[2]~output_o\ : std_logic;
SIGNAL \column[3]~output_o\ : std_logic;
SIGNAL \column[4]~output_o\ : std_logic;
SIGNAL \column[5]~output_o\ : std_logic;
SIGNAL \column[6]~output_o\ : std_logic;
SIGNAL \column[7]~output_o\ : std_logic;
SIGNAL \column[8]~output_o\ : std_logic;
SIGNAL \column[9]~output_o\ : std_logic;
SIGNAL \column[10]~output_o\ : std_logic;
SIGNAL \column[11]~output_o\ : std_logic;
SIGNAL \column[12]~output_o\ : std_logic;
SIGNAL \column[13]~output_o\ : std_logic;
SIGNAL \column[14]~output_o\ : std_logic;
SIGNAL \column[15]~output_o\ : std_logic;
SIGNAL \column[16]~output_o\ : std_logic;
SIGNAL \column[17]~output_o\ : std_logic;
SIGNAL \column[18]~output_o\ : std_logic;
SIGNAL \column[19]~output_o\ : std_logic;
SIGNAL \column[20]~output_o\ : std_logic;
SIGNAL \column[21]~output_o\ : std_logic;
SIGNAL \column[22]~output_o\ : std_logic;
SIGNAL \column[23]~output_o\ : std_logic;
SIGNAL \column[24]~output_o\ : std_logic;
SIGNAL \column[25]~output_o\ : std_logic;
SIGNAL \column[26]~output_o\ : std_logic;
SIGNAL \column[27]~output_o\ : std_logic;
SIGNAL \column[28]~output_o\ : std_logic;
SIGNAL \column[29]~output_o\ : std_logic;
SIGNAL \column[30]~output_o\ : std_logic;
SIGNAL \column[31]~output_o\ : std_logic;
SIGNAL \row[0]~output_o\ : std_logic;
SIGNAL \row[1]~output_o\ : std_logic;
SIGNAL \row[2]~output_o\ : std_logic;
SIGNAL \row[3]~output_o\ : std_logic;
SIGNAL \row[4]~output_o\ : std_logic;
SIGNAL \row[5]~output_o\ : std_logic;
SIGNAL \row[6]~output_o\ : std_logic;
SIGNAL \row[7]~output_o\ : std_logic;
SIGNAL \row[8]~output_o\ : std_logic;
SIGNAL \row[9]~output_o\ : std_logic;
SIGNAL \row[10]~output_o\ : std_logic;
SIGNAL \row[11]~output_o\ : std_logic;
SIGNAL \row[12]~output_o\ : std_logic;
SIGNAL \row[13]~output_o\ : std_logic;
SIGNAL \row[14]~output_o\ : std_logic;
SIGNAL \row[15]~output_o\ : std_logic;
SIGNAL \row[16]~output_o\ : std_logic;
SIGNAL \row[17]~output_o\ : std_logic;
SIGNAL \row[18]~output_o\ : std_logic;
SIGNAL \row[19]~output_o\ : std_logic;
SIGNAL \row[20]~output_o\ : std_logic;
SIGNAL \row[21]~output_o\ : std_logic;
SIGNAL \row[22]~output_o\ : std_logic;
SIGNAL \row[23]~output_o\ : std_logic;
SIGNAL \row[24]~output_o\ : std_logic;
SIGNAL \row[25]~output_o\ : std_logic;
SIGNAL \row[26]~output_o\ : std_logic;
SIGNAL \row[27]~output_o\ : std_logic;
SIGNAL \row[28]~output_o\ : std_logic;
SIGNAL \row[29]~output_o\ : std_logic;
SIGNAL \row[30]~output_o\ : std_logic;
SIGNAL \row[31]~output_o\ : std_logic;
SIGNAL \n_blank~output_o\ : std_logic;
SIGNAL \n_sync~output_o\ : std_logic;
SIGNAL \pixel_clk~input_o\ : std_logic;
SIGNAL \pixel_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \h_count~1_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \h_count~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \h_count~3_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \h_count~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \h_count~5_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \h_count~6_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \h_count~7_combout\ : std_logic;
SIGNAL \h_count[6]~feeder_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \h_count~8_combout\ : std_logic;
SIGNAL \h_count[7]~feeder_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \h_count~9_combout\ : std_logic;
SIGNAL \h_count[8]~feeder_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \h_count~10_combout\ : std_logic;
SIGNAL \h_count[9]~feeder_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \h_count~0_combout\ : std_logic;
SIGNAL \h_count[11]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \h_count~11_combout\ : std_logic;
SIGNAL \h_count[10]~feeder_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \h_sync~reg0_q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \v_count[4]~feeder_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~31_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \v_sync~reg0_q\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \disp_ena~reg0_q\ : std_logic;
SIGNAL \column[0]~reg0_q\ : std_logic;
SIGNAL \column[1]~reg0_q\ : std_logic;
SIGNAL \column[2]~reg0_q\ : std_logic;
SIGNAL \column[3]~reg0_q\ : std_logic;
SIGNAL \column[4]~reg0_q\ : std_logic;
SIGNAL \column[5]~reg0_q\ : std_logic;
SIGNAL \column[6]~reg0_q\ : std_logic;
SIGNAL \column[7]~reg0_q\ : std_logic;
SIGNAL \column[8]~reg0_q\ : std_logic;
SIGNAL \column[9]~reg0feeder_combout\ : std_logic;
SIGNAL \column[9]~reg0_q\ : std_logic;
SIGNAL \column[10]~reg0_q\ : std_logic;
SIGNAL \column[11]~reg0_q\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \row[0]~reg0_q\ : std_logic;
SIGNAL \row[1]~reg0_q\ : std_logic;
SIGNAL \row[2]~reg0_q\ : std_logic;
SIGNAL \row[3]~reg0_q\ : std_logic;
SIGNAL \row[4]~reg0_q\ : std_logic;
SIGNAL \row[5]~reg0_q\ : std_logic;
SIGNAL \row[6]~reg0_q\ : std_logic;
SIGNAL \row[7]~reg0_q\ : std_logic;
SIGNAL \row[8]~reg0_q\ : std_logic;
SIGNAL \row[9]~reg0_q\ : std_logic;
SIGNAL \row[10]~reg0_q\ : std_logic;
SIGNAL h_count : std_logic_vector(11 DOWNTO 0);
SIGNAL v_count : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_h_sync~reg0_q\ : std_logic;

BEGIN

ww_pixel_clk <= pixel_clk;
ww_reset_n <= reset_n;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
disp_ena <= ww_disp_ena;
column <= ww_column;
row <= ww_row;
n_blank <= ww_n_blank;
n_sync <= ww_n_sync;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pixel_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pixel_clk~input_o\);
\ALT_INV_h_sync~reg0_q\ <= NOT \h_sync~reg0_q\;

-- Location: IOOBUF_X115_Y36_N9
\h_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_h_sync~reg0_q\,
	devoe => ww_devoe,
	o => \h_sync~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\v_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \v_sync~reg0_q\,
	devoe => ww_devoe,
	o => \v_sync~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\disp_ena~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_ena~reg0_q\,
	devoe => ww_devoe,
	o => \disp_ena~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\column[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[0]~reg0_q\,
	devoe => ww_devoe,
	o => \column[0]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\column[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[1]~reg0_q\,
	devoe => ww_devoe,
	o => \column[1]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\column[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[2]~reg0_q\,
	devoe => ww_devoe,
	o => \column[2]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\column[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[3]~reg0_q\,
	devoe => ww_devoe,
	o => \column[3]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\column[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[4]~reg0_q\,
	devoe => ww_devoe,
	o => \column[4]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\column[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[5]~reg0_q\,
	devoe => ww_devoe,
	o => \column[5]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\column[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[6]~reg0_q\,
	devoe => ww_devoe,
	o => \column[6]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\column[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[7]~reg0_q\,
	devoe => ww_devoe,
	o => \column[7]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\column[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[8]~reg0_q\,
	devoe => ww_devoe,
	o => \column[8]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\column[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[9]~reg0_q\,
	devoe => ww_devoe,
	o => \column[9]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\column[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[10]~reg0_q\,
	devoe => ww_devoe,
	o => \column[10]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\column[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \column[11]~reg0_q\,
	devoe => ww_devoe,
	o => \column[11]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\column[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[12]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\column[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[13]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\column[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[14]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\column[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[15]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\column[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[16]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\column[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[17]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\column[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[18]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\column[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[19]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\column[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[20]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\column[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[21]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\column[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[22]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\column[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[23]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\column[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[24]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\column[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[25]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\column[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[26]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\column[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[27]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\column[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[28]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\column[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[29]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\column[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[30]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\column[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \column[31]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\row[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[0]~reg0_q\,
	devoe => ww_devoe,
	o => \row[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\row[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[1]~reg0_q\,
	devoe => ww_devoe,
	o => \row[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\row[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[2]~reg0_q\,
	devoe => ww_devoe,
	o => \row[2]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\row[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[3]~reg0_q\,
	devoe => ww_devoe,
	o => \row[3]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\row[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[4]~reg0_q\,
	devoe => ww_devoe,
	o => \row[4]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\row[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[5]~reg0_q\,
	devoe => ww_devoe,
	o => \row[5]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\row[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[6]~reg0_q\,
	devoe => ww_devoe,
	o => \row[6]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\row[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[7]~reg0_q\,
	devoe => ww_devoe,
	o => \row[7]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\row[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[8]~reg0_q\,
	devoe => ww_devoe,
	o => \row[8]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\row[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[9]~reg0_q\,
	devoe => ww_devoe,
	o => \row[9]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\row[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[10]~reg0_q\,
	devoe => ww_devoe,
	o => \row[10]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\row[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[11]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\row[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[12]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\row[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[13]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\row[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[14]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\row[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[15]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\row[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[16]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\row[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[17]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\row[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[18]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\row[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[19]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\row[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[20]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\row[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[21]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\row[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[22]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\row[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[23]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\row[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[24]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\row[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[25]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\row[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[26]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\row[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[27]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\row[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[28]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\row[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[29]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\row[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[30]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\row[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[31]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\n_blank~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \n_blank~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\n_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \n_sync~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\pixel_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_clk,
	o => \pixel_clk~input_o\);

-- Location: CLKCTRL_G4
\pixel_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pixel_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pixel_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X89_Y33_N2
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = h_count(0) $ (VCC)
-- \Add0~1\ = CARRY(h_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X88_Y33_N16
\h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count~1_combout\ = (\Add0~0_combout\ & \LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \h_count~1_combout\);

-- Location: IOIBUF_X115_Y17_N1
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X89_Y33_N1
\h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \h_count~1_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(0));

-- Location: LCCOMB_X89_Y33_N4
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (h_count(1) & (!\Add0~1\)) # (!h_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!h_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X88_Y33_N22
\h_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count~2_combout\ = (\LessThan0~3_combout\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \Add0~2_combout\,
	combout => \h_count~2_combout\);

-- Location: FF_X88_Y33_N23
\h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_count~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(1));

-- Location: LCCOMB_X89_Y33_N6
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (h_count(2) & (\Add0~3\ $ (GND))) # (!h_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((h_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X88_Y33_N12
\h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count~3_combout\ = (\LessThan0~3_combout\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \Add0~4_combout\,
	combout => \h_count~3_combout\);

-- Location: FF_X88_Y33_N13
\h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_count~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(2));

-- Location: LCCOMB_X89_Y33_N8
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (h_count(3) & (!\Add0~5\)) # (!h_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!h_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X88_Y33_N14
\h_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count~4_combout\ = (\Add0~6_combout\ & \LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \LessThan0~3_combout\,
	combout => \h_count~4_combout\);

-- Location: FF_X88_Y33_N15
\h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_count~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(3));

-- Location: LCCOMB_X89_Y33_N10
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (h_count(4) & (\Add0~7\ $ (GND))) # (!h_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((h_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X89_Y33_N26
\h_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count~5_combout\ = (\LessThan0~3_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \Add0~8_combout\,
	combout => \h_count~5_combout\);

-- Location: FF_X89_Y33_N27
\h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_count~5_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(4));

-- Location: LCCOMB_X89_Y33_N12
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (h_count(5) & (!\Add0~9\)) # (!h_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!h_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X89_Y33_N28
\h_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count~6_combout\ = (\Add0~10_combout\ & \LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \LessThan0~3_combout\,
	combout => \h_count~6_combout\);

-- Location: FF_X89_Y33_N29
\h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_count~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(5));

-- Location: LCCOMB_X89_Y33_N14
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (h_count(6) & (\Add0~11\ $ (GND))) # (!h_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((h_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X87_Y33_N20
\h_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count~7_combout\ = (\LessThan0~3_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \Add0~12_combout\,
	combout => \h_count~7_combout\);

-- Location: LCCOMB_X87_Y33_N26
\h_count[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count[6]~feeder_combout\ = \h_count~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \h_count~7_combout\,
	combout => \h_count[6]~feeder_combout\);

-- Location: FF_X87_Y33_N27
\h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_count[6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(6));

-- Location: LCCOMB_X89_Y33_N16
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (h_count(7) & (!\Add0~13\)) # (!h_count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!h_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X87_Y33_N28
\h_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count~8_combout\ = (\LessThan0~3_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \Add0~14_combout\,
	combout => \h_count~8_combout\);

-- Location: LCCOMB_X87_Y33_N4
\h_count[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count[7]~feeder_combout\ = \h_count~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \h_count~8_combout\,
	combout => \h_count[7]~feeder_combout\);

-- Location: FF_X87_Y33_N5
\h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_count[7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(7));

-- Location: LCCOMB_X89_Y33_N18
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (h_count(8) & (\Add0~15\ $ (GND))) # (!h_count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((h_count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X87_Y33_N24
\h_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count~9_combout\ = (\LessThan0~3_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \Add0~16_combout\,
	combout => \h_count~9_combout\);

-- Location: LCCOMB_X87_Y33_N18
\h_count[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count[8]~feeder_combout\ = \h_count~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \h_count~9_combout\,
	combout => \h_count[8]~feeder_combout\);

-- Location: FF_X87_Y33_N19
\h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_count[8]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(8));

-- Location: LCCOMB_X89_Y33_N20
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (h_count(9) & (!\Add0~17\)) # (!h_count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!h_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X88_Y33_N2
\h_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count~10_combout\ = (\Add0~18_combout\ & \LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datad => \LessThan0~3_combout\,
	combout => \h_count~10_combout\);

-- Location: LCCOMB_X88_Y33_N0
\h_count[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count[9]~feeder_combout\ = \h_count~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \h_count~10_combout\,
	combout => \h_count[9]~feeder_combout\);

-- Location: FF_X88_Y33_N1
\h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_count[9]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(9));

-- Location: LCCOMB_X89_Y33_N22
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (h_count(10) & (\Add0~19\ $ (GND))) # (!h_count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((h_count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X89_Y33_N24
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = \Add0~21\ $ (h_count(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => h_count(11),
	cin => \Add0~21\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X88_Y33_N24
\h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count~0_combout\ = (\Add0~22_combout\ & \LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \LessThan0~3_combout\,
	combout => \h_count~0_combout\);

-- Location: LCCOMB_X88_Y33_N30
\h_count[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count[11]~feeder_combout\ = \h_count~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \h_count~0_combout\,
	combout => \h_count[11]~feeder_combout\);

-- Location: FF_X88_Y33_N31
\h_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_count[11]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(11));

-- Location: LCCOMB_X88_Y33_N4
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!h_count(4)) # (!h_count(1))) # (!h_count(3))) # (!h_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(2),
	datab => h_count(3),
	datac => h_count(1),
	datad => h_count(4),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X87_Y33_N14
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!h_count(6) & (!h_count(10) & (!h_count(7) & !h_count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(6),
	datab => h_count(10),
	datac => h_count(7),
	datad => h_count(8),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X88_Y33_N18
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!h_count(5) & (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # (!h_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(5),
	datab => h_count(0),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X88_Y33_N8
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((\LessThan0~2_combout\) # ((!h_count(9) & !h_count(10)))) # (!h_count(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(11),
	datab => h_count(9),
	datac => h_count(10),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X87_Y33_N30
\h_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count~11_combout\ = (\LessThan0~3_combout\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \Add0~20_combout\,
	combout => \h_count~11_combout\);

-- Location: LCCOMB_X87_Y33_N16
\h_count[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_count[10]~feeder_combout\ = \h_count~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \h_count~11_combout\,
	combout => \h_count[10]~feeder_combout\);

-- Location: FF_X87_Y33_N17
\h_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \h_count[10]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(10));

-- Location: LCCOMB_X89_Y33_N30
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\Add0~4_combout\) # ((\Add0~6_combout\) # ((\Add0~2_combout\) # (\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~6_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~0_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X89_Y33_N0
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (\Add0~10_combout\) # ((\LessThan3~0_combout\ & \Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \Add0~10_combout\,
	datad => \Add0~8_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X88_Y33_N28
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ((\Add0~14_combout\ & (\LessThan3~1_combout\ & \Add0~12_combout\))) # (!\h_count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \LessThan3~1_combout\,
	datac => \h_count~0_combout\,
	datad => \Add0~12_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X88_Y33_N20
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!\Add0~20_combout\ & (!\Add0~16_combout\ & (!\Add0~18_combout\ & !\process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~18_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~1_combout\);

-- Location: FF_X88_Y33_N21
\h_sync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \process_0~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_sync~reg0_q\);

-- Location: FF_X83_Y63_N17
\v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~29_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(7));

-- Location: LCCOMB_X84_Y63_N8
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = v_count(0) $ (VCC)
-- \Add1~1\ = CARRY(v_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_count(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X83_Y63_N2
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\LessThan0~3_combout\ & (((v_count(0))))) # (!\LessThan0~3_combout\ & (\LessThan1~3_combout\ & (\Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \Add1~0_combout\,
	datac => v_count(0),
	datad => \LessThan0~3_combout\,
	combout => \Add1~10_combout\);

-- Location: FF_X84_Y63_N31
\v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \Add1~10_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(0));

-- Location: LCCOMB_X84_Y63_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (v_count(1) & (!\Add1~1\)) # (!v_count(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!v_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X84_Y63_N2
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (\LessThan0~3_combout\ & (((v_count(1))))) # (!\LessThan0~3_combout\ & (\Add1~2_combout\ & (\LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \LessThan1~3_combout\,
	datac => v_count(1),
	datad => \LessThan0~3_combout\,
	combout => \Add1~11_combout\);

-- Location: FF_X84_Y63_N3
\v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~11_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(1));

-- Location: LCCOMB_X84_Y63_N12
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (v_count(2) & (\Add1~3\ $ (GND))) # (!v_count(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((v_count(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X84_Y63_N4
\Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (\LessThan0~3_combout\ & (((v_count(2))))) # (!\LessThan0~3_combout\ & (\Add1~4_combout\ & (\LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \LessThan1~3_combout\,
	datac => v_count(2),
	datad => \LessThan0~3_combout\,
	combout => \Add1~9_combout\);

-- Location: FF_X84_Y63_N5
\v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~9_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(2));

-- Location: LCCOMB_X84_Y63_N14
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (v_count(3) & (!\Add1~5\)) # (!v_count(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!v_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X84_Y63_N6
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\LessThan0~3_combout\ & (((v_count(3))))) # (!\LessThan0~3_combout\ & (\Add1~6_combout\ & (\LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \LessThan1~3_combout\,
	datac => v_count(3),
	datad => \LessThan0~3_combout\,
	combout => \Add1~8_combout\);

-- Location: FF_X84_Y63_N7
\v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(3));

-- Location: LCCOMB_X84_Y63_N16
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (v_count(4) & (\Add1~7\ $ (GND))) # (!v_count(4) & (!\Add1~7\ & VCC))
-- \Add1~13\ = CARRY((v_count(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X83_Y63_N4
\Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (\LessThan0~3_combout\ & (((v_count(4))))) # (!\LessThan0~3_combout\ & (\LessThan1~3_combout\ & (\Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \Add1~12_combout\,
	datac => v_count(4),
	datad => \LessThan0~3_combout\,
	combout => \Add1~27_combout\);

-- Location: LCCOMB_X83_Y63_N24
\v_count[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_count[4]~feeder_combout\ = \Add1~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~27_combout\,
	combout => \v_count[4]~feeder_combout\);

-- Location: FF_X83_Y63_N25
\v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \v_count[4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(4));

-- Location: LCCOMB_X84_Y63_N18
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (v_count(5) & (!\Add1~13\)) # (!v_count(5) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!v_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(5),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X83_Y63_N26
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\LessThan0~3_combout\ & (((v_count(5))))) # (!\LessThan0~3_combout\ & (\LessThan1~3_combout\ & (\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \Add1~14_combout\,
	datac => v_count(5),
	datad => \LessThan0~3_combout\,
	combout => \Add1~28_combout\);

-- Location: FF_X83_Y63_N27
\v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(5));

-- Location: LCCOMB_X84_Y63_N20
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (v_count(6) & (\Add1~15\ $ (GND))) # (!v_count(6) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((v_count(6) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(6),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X83_Y63_N6
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\LessThan0~3_combout\ & (((v_count(6))))) # (!\LessThan0~3_combout\ & (\LessThan1~3_combout\ & (\Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \Add1~16_combout\,
	datac => v_count(6),
	datad => \LessThan0~3_combout\,
	combout => \Add1~30_combout\);

-- Location: FF_X83_Y63_N7
\v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(6));

-- Location: LCCOMB_X84_Y63_N22
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (v_count(7) & (!\Add1~17\)) # (!v_count(7) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!v_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(7),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X84_Y63_N24
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (v_count(8) & (\Add1~19\ $ (GND))) # (!v_count(8) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((v_count(8) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(8),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X83_Y63_N8
\Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~31_combout\ = (\LessThan0~3_combout\ & (((v_count(8))))) # (!\LessThan0~3_combout\ & (\LessThan1~3_combout\ & (\Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \Add1~20_combout\,
	datac => v_count(8),
	datad => \LessThan0~3_combout\,
	combout => \Add1~31_combout\);

-- Location: FF_X83_Y63_N9
\v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~31_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(8));

-- Location: LCCOMB_X84_Y63_N26
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (v_count(9) & (!\Add1~21\)) # (!v_count(9) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!v_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(9),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X83_Y63_N14
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\LessThan0~3_combout\ & (((v_count(9))))) # (!\LessThan0~3_combout\ & (\LessThan1~3_combout\ & (\Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \Add1~22_combout\,
	datac => v_count(9),
	datad => \LessThan0~3_combout\,
	combout => \Add1~32_combout\);

-- Location: FF_X83_Y63_N15
\v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(9));

-- Location: LCCOMB_X84_Y63_N28
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = \Add1~23\ $ (!v_count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => v_count(10),
	cin => \Add1~23\,
	combout => \Add1~24_combout\);

-- Location: LCCOMB_X83_Y63_N30
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\LessThan0~3_combout\ & (((v_count(10))))) # (!\LessThan0~3_combout\ & (\LessThan1~3_combout\ & (\Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \Add1~24_combout\,
	datac => v_count(10),
	datad => \LessThan0~3_combout\,
	combout => \Add1~26_combout\);

-- Location: FF_X83_Y63_N31
\v_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(10));

-- Location: LCCOMB_X82_Y63_N28
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!v_count(2) & (!v_count(1) & !v_count(0)))) # (!v_count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(2),
	datab => v_count(4),
	datac => v_count(1),
	datad => v_count(0),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X82_Y63_N18
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (v_count(5)) # ((v_count(3) & !\LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(3),
	datab => v_count(5),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X82_Y63_N16
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (v_count(7) & (v_count(6) & \LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(7),
	datac => v_count(6),
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X82_Y63_N14
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ((!v_count(8) & (!v_count(9) & !\LessThan1~2_combout\))) # (!v_count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(8),
	datab => v_count(10),
	datac => v_count(9),
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X83_Y63_N16
\Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (\LessThan0~3_combout\ & (((v_count(7))))) # (!\LessThan0~3_combout\ & (\LessThan1~3_combout\ & (\Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \Add1~18_combout\,
	datac => v_count(7),
	datad => \LessThan0~3_combout\,
	combout => \Add1~29_combout\);

-- Location: LCCOMB_X83_Y63_N18
\process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = ((!\Add1~27_combout\) # (!\Add1~28_combout\)) # (!\Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \Add1~28_combout\,
	datad => \Add1~27_combout\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X84_Y63_N30
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\Add1~8_combout\) # (\Add1~9_combout\ $ (((!\Add1~10_combout\ & !\Add1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~9_combout\,
	datac => \Add1~10_combout\,
	datad => \Add1~11_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X83_Y63_N22
\LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (!\Add1~30_combout\ & (!\Add1~32_combout\ & !\Add1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Add1~32_combout\,
	datad => \Add1~31_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X84_Y63_N0
\process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\Add1~29_combout\ & (!\process_0~3_combout\ & (!\process_0~2_combout\ & \LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~29_combout\,
	datab => \process_0~3_combout\,
	datac => \process_0~2_combout\,
	datad => \LessThan7~0_combout\,
	combout => \process_0~4_combout\);

-- Location: FF_X84_Y63_N1
\v_sync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \process_0~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v_sync~reg0_q\);

-- Location: LCCOMB_X83_Y63_N12
\LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = ((!\Add1~31_combout\ & (!\Add1~32_combout\ & !\Add1~29_combout\))) # (!\Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~31_combout\,
	datab => \Add1~32_combout\,
	datac => \Add1~26_combout\,
	datad => \Add1~29_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X83_Y63_N28
\process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\Add1~28_combout\ & \Add1~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datad => \Add1~27_combout\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X88_Y33_N10
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (((!\Add0~20_combout\) # (!\Add0~14_combout\)) # (!\Add0~16_combout\)) # (!\Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~20_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X88_Y33_N26
\LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = ((!\Add0~22_combout\ & \LessThan6~0_combout\)) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \LessThan0~3_combout\,
	datad => \LessThan6~0_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X83_Y63_N0
\process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\LessThan6~1_combout\ & ((\LessThan7~1_combout\) # ((!\process_0~5_combout\ & \LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~1_combout\,
	datab => \process_0~5_combout\,
	datac => \LessThan7~0_combout\,
	datad => \LessThan6~1_combout\,
	combout => \process_0~6_combout\);

-- Location: FF_X83_Y63_N1
\disp_ena~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \process_0~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp_ena~reg0_q\);

-- Location: FF_X88_Y33_N27
\column[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \h_count~1_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[0]~reg0_q\);

-- Location: FF_X89_Y33_N15
\column[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \h_count~2_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[1]~reg0_q\);

-- Location: FF_X88_Y33_N25
\column[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \h_count~3_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[2]~reg0_q\);

-- Location: FF_X88_Y33_N3
\column[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \h_count~4_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[3]~reg0_q\);

-- Location: FF_X89_Y33_N5
\column[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \h_count~5_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[4]~reg0_q\);

-- Location: FF_X89_Y33_N3
\column[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \h_count~6_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[5]~reg0_q\);

-- Location: FF_X88_Y33_N17
\column[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \h_count~7_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[6]~reg0_q\);

-- Location: FF_X87_Y33_N21
\column[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \h_count~8_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[7]~reg0_q\);

-- Location: FF_X87_Y33_N31
\column[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \h_count~9_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[8]~reg0_q\);

-- Location: LCCOMB_X88_Y33_N6
\column[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \column[9]~reg0feeder_combout\ = \h_count~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \h_count~10_combout\,
	combout => \column[9]~reg0feeder_combout\);

-- Location: FF_X88_Y33_N7
\column[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \column[9]~reg0feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[9]~reg0_q\);

-- Location: FF_X87_Y33_N25
\column[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \h_count~11_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[10]~reg0_q\);

-- Location: FF_X88_Y33_N29
\column[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \h_count~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \column[11]~reg0_q\);

-- Location: LCCOMB_X83_Y63_N10
\LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = ((!\Add1~30_combout\ & ((!\Add1~28_combout\) # (!\Add1~27_combout\)))) # (!\Add1~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~27_combout\,
	datab => \Add1~29_combout\,
	datac => \Add1~28_combout\,
	datad => \Add1~30_combout\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X83_Y63_N20
\LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~3_combout\ = ((!\Add1~32_combout\ & (!\Add1~31_combout\ & \LessThan7~2_combout\))) # (!\Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \Add1~32_combout\,
	datac => \Add1~31_combout\,
	datad => \LessThan7~2_combout\,
	combout => \LessThan7~3_combout\);

-- Location: FF_X83_Y63_N3
\row[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	clrn => \reset_n~input_o\,
	ena => \LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[0]~reg0_q\);

-- Location: FF_X84_Y63_N21
\row[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \Add1~11_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[1]~reg0_q\);

-- Location: FF_X84_Y63_N13
\row[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \Add1~9_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[2]~reg0_q\);

-- Location: FF_X84_Y63_N9
\row[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \Add1~8_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[3]~reg0_q\);

-- Location: FF_X83_Y63_N5
\row[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	d => \Add1~27_combout\,
	clrn => \reset_n~input_o\,
	ena => \LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[4]~reg0_q\);

-- Location: FF_X83_Y63_N11
\row[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \Add1~28_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[5]~reg0_q\);

-- Location: FF_X83_Y63_N29
\row[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \Add1~30_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[6]~reg0_q\);

-- Location: FF_X83_Y63_N23
\row[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \Add1~29_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[7]~reg0_q\);

-- Location: FF_X83_Y63_N21
\row[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \Add1~31_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[8]~reg0_q\);

-- Location: FF_X83_Y63_N19
\row[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \Add1~32_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[9]~reg0_q\);

-- Location: FF_X83_Y63_N13
\row[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pixel_clk~inputclkctrl_outclk\,
	asdata => \Add1~26_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[10]~reg0_q\);

ww_h_sync <= \h_sync~output_o\;

ww_v_sync <= \v_sync~output_o\;

ww_disp_ena <= \disp_ena~output_o\;

ww_column(0) <= \column[0]~output_o\;

ww_column(1) <= \column[1]~output_o\;

ww_column(2) <= \column[2]~output_o\;

ww_column(3) <= \column[3]~output_o\;

ww_column(4) <= \column[4]~output_o\;

ww_column(5) <= \column[5]~output_o\;

ww_column(6) <= \column[6]~output_o\;

ww_column(7) <= \column[7]~output_o\;

ww_column(8) <= \column[8]~output_o\;

ww_column(9) <= \column[9]~output_o\;

ww_column(10) <= \column[10]~output_o\;

ww_column(11) <= \column[11]~output_o\;

ww_column(12) <= \column[12]~output_o\;

ww_column(13) <= \column[13]~output_o\;

ww_column(14) <= \column[14]~output_o\;

ww_column(15) <= \column[15]~output_o\;

ww_column(16) <= \column[16]~output_o\;

ww_column(17) <= \column[17]~output_o\;

ww_column(18) <= \column[18]~output_o\;

ww_column(19) <= \column[19]~output_o\;

ww_column(20) <= \column[20]~output_o\;

ww_column(21) <= \column[21]~output_o\;

ww_column(22) <= \column[22]~output_o\;

ww_column(23) <= \column[23]~output_o\;

ww_column(24) <= \column[24]~output_o\;

ww_column(25) <= \column[25]~output_o\;

ww_column(26) <= \column[26]~output_o\;

ww_column(27) <= \column[27]~output_o\;

ww_column(28) <= \column[28]~output_o\;

ww_column(29) <= \column[29]~output_o\;

ww_column(30) <= \column[30]~output_o\;

ww_column(31) <= \column[31]~output_o\;

ww_row(0) <= \row[0]~output_o\;

ww_row(1) <= \row[1]~output_o\;

ww_row(2) <= \row[2]~output_o\;

ww_row(3) <= \row[3]~output_o\;

ww_row(4) <= \row[4]~output_o\;

ww_row(5) <= \row[5]~output_o\;

ww_row(6) <= \row[6]~output_o\;

ww_row(7) <= \row[7]~output_o\;

ww_row(8) <= \row[8]~output_o\;

ww_row(9) <= \row[9]~output_o\;

ww_row(10) <= \row[10]~output_o\;

ww_row(11) <= \row[11]~output_o\;

ww_row(12) <= \row[12]~output_o\;

ww_row(13) <= \row[13]~output_o\;

ww_row(14) <= \row[14]~output_o\;

ww_row(15) <= \row[15]~output_o\;

ww_row(16) <= \row[16]~output_o\;

ww_row(17) <= \row[17]~output_o\;

ww_row(18) <= \row[18]~output_o\;

ww_row(19) <= \row[19]~output_o\;

ww_row(20) <= \row[20]~output_o\;

ww_row(21) <= \row[21]~output_o\;

ww_row(22) <= \row[22]~output_o\;

ww_row(23) <= \row[23]~output_o\;

ww_row(24) <= \row[24]~output_o\;

ww_row(25) <= \row[25]~output_o\;

ww_row(26) <= \row[26]~output_o\;

ww_row(27) <= \row[27]~output_o\;

ww_row(28) <= \row[28]~output_o\;

ww_row(29) <= \row[29]~output_o\;

ww_row(30) <= \row[30]~output_o\;

ww_row(31) <= \row[31]~output_o\;

ww_n_blank <= \n_blank~output_o\;

ww_n_sync <= \n_sync~output_o\;
END structure;


