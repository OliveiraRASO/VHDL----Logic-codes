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

-- DATE "04/30/2020 19:28:41"

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

ENTITY 	contjose IS
    PORT (
	corProposta : IN std_logic_vector(7 DOWNTO 0);
	corPrincipal : IN std_logic_vector(7 DOWNTO 0);
	saida : BUFFER std_logic
	);
END contjose;

-- Design Ports Information
-- corProposta[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corProposta[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corProposta[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corProposta[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corProposta[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corProposta[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corProposta[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corProposta[7]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corPrincipal[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corPrincipal[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corPrincipal[2]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corPrincipal[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corPrincipal[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corPrincipal[5]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corPrincipal[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- corPrincipal[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contjose IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_corProposta : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_corPrincipal : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida : std_logic;
SIGNAL \corProposta[0]~input_o\ : std_logic;
SIGNAL \corProposta[1]~input_o\ : std_logic;
SIGNAL \corProposta[2]~input_o\ : std_logic;
SIGNAL \corProposta[3]~input_o\ : std_logic;
SIGNAL \corProposta[4]~input_o\ : std_logic;
SIGNAL \corProposta[5]~input_o\ : std_logic;
SIGNAL \corProposta[6]~input_o\ : std_logic;
SIGNAL \corProposta[7]~input_o\ : std_logic;
SIGNAL \corPrincipal[0]~input_o\ : std_logic;
SIGNAL \corPrincipal[1]~input_o\ : std_logic;
SIGNAL \corPrincipal[2]~input_o\ : std_logic;
SIGNAL \corPrincipal[3]~input_o\ : std_logic;
SIGNAL \corPrincipal[4]~input_o\ : std_logic;
SIGNAL \corPrincipal[5]~input_o\ : std_logic;
SIGNAL \corPrincipal[6]~input_o\ : std_logic;
SIGNAL \corPrincipal[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_corProposta <= corProposta;
ww_corPrincipal <= corPrincipal;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X34_Y81_N59
\saida~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_saida);

-- Location: IOIBUF_X62_Y81_N18
\corProposta[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corProposta(0),
	o => \corProposta[0]~input_o\);

-- Location: IOIBUF_X66_Y81_N58
\corProposta[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corProposta(1),
	o => \corProposta[1]~input_o\);

-- Location: IOIBUF_X70_Y81_N52
\corProposta[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corProposta(2),
	o => \corProposta[2]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\corProposta[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corProposta(3),
	o => \corProposta[3]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\corProposta[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corProposta(4),
	o => \corProposta[4]~input_o\);

-- Location: IOIBUF_X28_Y81_N52
\corProposta[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corProposta(5),
	o => \corProposta[5]~input_o\);

-- Location: IOIBUF_X36_Y81_N35
\corProposta[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corProposta(6),
	o => \corProposta[6]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\corProposta[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corProposta(7),
	o => \corProposta[7]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\corPrincipal[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corPrincipal(0),
	o => \corPrincipal[0]~input_o\);

-- Location: IOIBUF_X74_Y81_N41
\corPrincipal[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corPrincipal(1),
	o => \corPrincipal[1]~input_o\);

-- Location: IOIBUF_X36_Y81_N18
\corPrincipal[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corPrincipal(2),
	o => \corPrincipal[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\corPrincipal[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corPrincipal(3),
	o => \corPrincipal[3]~input_o\);

-- Location: IOIBUF_X50_Y81_N75
\corPrincipal[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corPrincipal(4),
	o => \corPrincipal[4]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\corPrincipal[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corPrincipal(5),
	o => \corPrincipal[5]~input_o\);

-- Location: IOIBUF_X76_Y81_N52
\corPrincipal[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corPrincipal(6),
	o => \corPrincipal[6]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\corPrincipal[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_corPrincipal(7),
	o => \corPrincipal[7]~input_o\);

-- Location: LABCELL_X29_Y64_N3
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


