-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
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
-- VERSION "Version 15.0.0 Build 145 04/22/2015 Patches 0.01we SJ Web Edition"

-- DATE "04/21/2020 22:49:46"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ADN IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	e : IN std_logic;
	a2 : IN std_logic;
	b2 : IN std_logic;
	c2 : IN std_logic;
	d2 : IN std_logic;
	e2 : IN std_logic;
	b_out : BUFFER std_logic
	);
END ADN;

-- Design Ports Information
-- d	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e2	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c2	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ADN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_c2 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_e2 : std_logic;
SIGNAL ww_b_out : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \d2~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \c2~input_o\ : std_logic;
SIGNAL \e2~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \b_out~0_combout\ : std_logic;
SIGNAL \ALT_INV_c2~input_o\ : std_logic;
SIGNAL \ALT_INV_c~input_o\ : std_logic;
SIGNAL \ALT_INV_d2~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_e2~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_e <= e;
ww_a2 <= a2;
ww_b2 <= b2;
ww_c2 <= c2;
ww_d2 <= d2;
ww_e2 <= e2;
b_out <= ww_b_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_c2~input_o\ <= NOT \c2~input_o\;
\ALT_INV_c~input_o\ <= NOT \c~input_o\;
\ALT_INV_d2~input_o\ <= NOT \d2~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_e2~input_o\ <= NOT \e2~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;

-- Location: IOOBUF_X6_Y0_N2
\b_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out~0_combout\,
	devoe => ww_devoe,
	o => ww_b_out);

-- Location: IOIBUF_X6_Y0_N52
\d2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2,
	o => \d2~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\c~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\c2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c2,
	o => \c2~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\e2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e2,
	o => \e2~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: MLABCELL_X8_Y1_N30
\b_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_out~0_combout\ = ( \e2~input_o\ & ( \b~input_o\ & ( (((\c~input_o\ & \c2~input_o\)) # (\a~input_o\)) # (\d2~input_o\) ) ) ) # ( !\e2~input_o\ & ( \b~input_o\ & ( ((\c~input_o\ & \c2~input_o\)) # (\d2~input_o\) ) ) ) # ( \e2~input_o\ & ( !\b~input_o\ & 
-- ( ((\c~input_o\ & \c2~input_o\)) # (\a~input_o\) ) ) ) # ( !\e2~input_o\ & ( !\b~input_o\ & ( (\c~input_o\ & \c2~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110011111101010101010111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d2~input_o\,
	datab => \ALT_INV_a~input_o\,
	datac => \ALT_INV_c~input_o\,
	datad => \ALT_INV_c2~input_o\,
	datae => \ALT_INV_e2~input_o\,
	dataf => \ALT_INV_b~input_o\,
	combout => \b_out~0_combout\);

-- Location: IOIBUF_X66_Y81_N58
\d~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X54_Y81_N18
\e~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\a2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\b2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: LABCELL_X43_Y66_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


