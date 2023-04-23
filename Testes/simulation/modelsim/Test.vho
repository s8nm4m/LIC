-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/23/2023 11:15:51"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SerialReceiver IS
    PORT (
	SS : IN std_logic;
	SCLK : IN std_logic;
	CLK : IN std_logic;
	SDX : IN std_logic;
	accept : IN std_logic;
	Reset : IN std_logic;
	DXval : BUFFER std_logic;
	D : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END SerialReceiver;

-- Design Ports Information
-- DXval	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accept	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SS	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDX	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SerialReceiver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SS : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_SDX : std_logic;
SIGNAL ww_accept : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_DXval : std_logic;
SIGNAL ww_D : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \DXval~output_o\ : std_logic;
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[2]~output_o\ : std_logic;
SIGNAL \D[3]~output_o\ : std_logic;
SIGNAL \D[4]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \accept~input_o\ : std_logic;
SIGNAL \SS~input_o\ : std_logic;
SIGNAL \SCLK~input_o\ : std_logic;
SIGNAL \SCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \c|mux|Y~1_combout\ : std_logic;
SIGNAL \c|reg|ff0|Q~q\ : std_logic;
SIGNAL \c|mux|Y~0_combout\ : std_logic;
SIGNAL \c|reg|ff1|Q~q\ : std_logic;
SIGNAL \c|ad|fa3|S~combout\ : std_logic;
SIGNAL \c|mux|Y~2_combout\ : std_logic;
SIGNAL \c|reg|ff2|Q~q\ : std_logic;
SIGNAL \sc|Selector2~2_combout\ : std_logic;
SIGNAL \sc|Selector0~0_combout\ : std_logic;
SIGNAL \sc|Selector0~1_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \sc|CurrentState.FIRST~q\ : std_logic;
SIGNAL \sc|NextState.FORTH~0_combout\ : std_logic;
SIGNAL \sc|CurrentState.FORTH~q\ : std_logic;
SIGNAL \sc|Selector1~0_combout\ : std_logic;
SIGNAL \sc|CurrentState.SECOND~q\ : std_logic;
SIGNAL \sc|Selector2~0_combout\ : std_logic;
SIGNAL \sc|Selector2~1_combout\ : std_logic;
SIGNAL \sc|CurrentState.THIRD~q\ : std_logic;
SIGNAL \SDX~input_o\ : std_logic;
SIGNAL \sr|ffd4|Q~0_combout\ : std_logic;
SIGNAL \sr|ffd4|Q~q\ : std_logic;
SIGNAL \sr|ffd3|Q~feeder_combout\ : std_logic;
SIGNAL \sr|ffd3|Q~q\ : std_logic;
SIGNAL \sr|ffd2|Q~feeder_combout\ : std_logic;
SIGNAL \sr|ffd2|Q~q\ : std_logic;
SIGNAL \sr|ffd1|Q~feeder_combout\ : std_logic;
SIGNAL \sr|ffd1|Q~q\ : std_logic;
SIGNAL \sr|ffd0|Q~feeder_combout\ : std_logic;
SIGNAL \sr|ffd0|Q~q\ : std_logic;
SIGNAL \sr|ffd4|ALT_INV_Q~q\ : std_logic;
SIGNAL \sr|ffd3|ALT_INV_Q~q\ : std_logic;
SIGNAL \sr|ffd2|ALT_INV_Q~q\ : std_logic;
SIGNAL \sr|ffd1|ALT_INV_Q~q\ : std_logic;
SIGNAL \sr|ffd0|ALT_INV_Q~q\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SS <= SS;
ww_SCLK <= SCLK;
ww_CLK <= CLK;
ww_SDX <= SDX;
ww_accept <= accept;
ww_Reset <= Reset;
DXval <= ww_DXval;
D <= ww_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\SCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCLK~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\sr|ffd4|ALT_INV_Q~q\ <= NOT \sr|ffd4|Q~q\;
\sr|ffd3|ALT_INV_Q~q\ <= NOT \sr|ffd3|Q~q\;
\sr|ffd2|ALT_INV_Q~q\ <= NOT \sr|ffd2|Q~q\;
\sr|ffd1|ALT_INV_Q~q\ <= NOT \sr|ffd1|Q~q\;
\sr|ffd0|ALT_INV_Q~q\ <= NOT \sr|ffd0|Q~q\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y37_N9
\DXval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc|CurrentState.THIRD~q\,
	devoe => ww_devoe,
	o => \DXval~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sr|ffd0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sr|ffd1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sr|ffd2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \D[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sr|ffd3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \D[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sr|ffd4|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \D[4]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X78_Y37_N15
\accept~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accept,
	o => \accept~input_o\);

-- Location: IOIBUF_X78_Y36_N23
\SS~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SS,
	o => \SS~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\SCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCLK,
	o => \SCLK~input_o\);

-- Location: CLKCTRL_G18
\SCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SCLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X76_Y39_N22
\c|mux|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c|mux|Y~1_combout\ = (\sc|CurrentState.SECOND~q\ $ (\c|reg|ff0|Q~q\)) # (!\sc|CurrentState.FIRST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc|CurrentState.FIRST~q\,
	datab => \sc|CurrentState.SECOND~q\,
	datac => \c|reg|ff0|Q~q\,
	combout => \c|mux|Y~1_combout\);

-- Location: FF_X76_Y39_N23
\c|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \c|mux|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|reg|ff0|Q~q\);

-- Location: LCCOMB_X76_Y39_N8
\c|mux|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c|mux|Y~0_combout\ = (\c|reg|ff1|Q~q\ $ (((\sc|CurrentState.SECOND~q\ & !\c|reg|ff0|Q~q\)))) # (!\sc|CurrentState.FIRST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc|CurrentState.FIRST~q\,
	datab => \sc|CurrentState.SECOND~q\,
	datac => \c|reg|ff1|Q~q\,
	datad => \c|reg|ff0|Q~q\,
	combout => \c|mux|Y~0_combout\);

-- Location: FF_X76_Y39_N9
\c|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \c|mux|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|reg|ff1|Q~q\);

-- Location: LCCOMB_X76_Y39_N16
\c|ad|fa3|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c|ad|fa3|S~combout\ = \c|reg|ff2|Q~q\ $ (((\c|reg|ff0|Q~q\) # ((\c|reg|ff1|Q~q\) # (!\sc|CurrentState.SECOND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c|reg|ff0|Q~q\,
	datab => \c|reg|ff2|Q~q\,
	datac => \c|reg|ff1|Q~q\,
	datad => \sc|CurrentState.SECOND~q\,
	combout => \c|ad|fa3|S~combout\);

-- Location: LCCOMB_X76_Y39_N24
\c|mux|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c|mux|Y~2_combout\ = (!\c|ad|fa3|S~combout\) # (!\sc|CurrentState.FIRST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc|CurrentState.FIRST~q\,
	datad => \c|ad|fa3|S~combout\,
	combout => \c|mux|Y~2_combout\);

-- Location: FF_X76_Y39_N25
\c|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \c|mux|Y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c|reg|ff2|Q~q\);

-- Location: LCCOMB_X76_Y39_N4
\sc|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sc|Selector2~2_combout\ = (\c|reg|ff1|Q~q\ & (!\c|reg|ff0|Q~q\ & !\c|reg|ff2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c|reg|ff1|Q~q\,
	datac => \c|reg|ff0|Q~q\,
	datad => \c|reg|ff2|Q~q\,
	combout => \sc|Selector2~2_combout\);

-- Location: LCCOMB_X76_Y39_N18
\sc|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sc|Selector0~0_combout\ = (\SS~input_o\ & (((!\accept~input_o\ & \sc|CurrentState.FORTH~q\)) # (!\sc|CurrentState.FIRST~q\))) # (!\SS~input_o\ & (!\accept~input_o\ & ((\sc|CurrentState.FORTH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~input_o\,
	datab => \accept~input_o\,
	datac => \sc|CurrentState.FIRST~q\,
	datad => \sc|CurrentState.FORTH~q\,
	combout => \sc|Selector0~0_combout\);

-- Location: LCCOMB_X76_Y39_N10
\sc|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sc|Selector0~1_combout\ = (!\sc|Selector0~0_combout\ & (((\sc|Selector2~2_combout\) # (!\SS~input_o\)) # (!\sc|CurrentState.SECOND~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc|CurrentState.SECOND~q\,
	datab => \SS~input_o\,
	datac => \sc|Selector2~2_combout\,
	datad => \sc|Selector0~0_combout\,
	combout => \sc|Selector0~1_combout\);

-- Location: IOIBUF_X51_Y54_N29
\Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X76_Y39_N11
\sc|CurrentState.FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sc|Selector0~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|CurrentState.FIRST~q\);

-- Location: LCCOMB_X76_Y39_N12
\sc|NextState.FORTH~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sc|NextState.FORTH~0_combout\ = (\accept~input_o\ & (\sc|CurrentState.FIRST~q\ & !\sc|CurrentState.SECOND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \accept~input_o\,
	datac => \sc|CurrentState.FIRST~q\,
	datad => \sc|CurrentState.SECOND~q\,
	combout => \sc|NextState.FORTH~0_combout\);

-- Location: FF_X76_Y39_N13
\sc|CurrentState.FORTH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sc|NextState.FORTH~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|CurrentState.FORTH~q\);

-- Location: LCCOMB_X76_Y39_N6
\sc|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sc|Selector1~0_combout\ = (!\SS~input_o\ & (!\sc|CurrentState.FORTH~q\ & !\sc|CurrentState.THIRD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~input_o\,
	datac => \sc|CurrentState.FORTH~q\,
	datad => \sc|CurrentState.THIRD~q\,
	combout => \sc|Selector1~0_combout\);

-- Location: FF_X76_Y39_N7
\sc|CurrentState.SECOND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sc|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|CurrentState.SECOND~q\);

-- Location: LCCOMB_X76_Y39_N2
\sc|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sc|Selector2~0_combout\ = (\SS~input_o\ & (\c|reg|ff1|Q~q\ & (!\c|reg|ff0|Q~q\ & !\c|reg|ff2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~input_o\,
	datab => \c|reg|ff1|Q~q\,
	datac => \c|reg|ff0|Q~q\,
	datad => \c|reg|ff2|Q~q\,
	combout => \sc|Selector2~0_combout\);

-- Location: LCCOMB_X76_Y39_N28
\sc|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sc|Selector2~1_combout\ = (\accept~input_o\ & (\sc|CurrentState.SECOND~q\ & ((\sc|Selector2~0_combout\)))) # (!\accept~input_o\ & ((\sc|CurrentState.THIRD~q\) # ((\sc|CurrentState.SECOND~q\ & \sc|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accept~input_o\,
	datab => \sc|CurrentState.SECOND~q\,
	datac => \sc|CurrentState.THIRD~q\,
	datad => \sc|Selector2~0_combout\,
	combout => \sc|Selector2~1_combout\);

-- Location: FF_X76_Y39_N29
\sc|CurrentState.THIRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sc|Selector2~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|CurrentState.THIRD~q\);

-- Location: IOIBUF_X78_Y37_N22
\SDX~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDX,
	o => \SDX~input_o\);

-- Location: LCCOMB_X77_Y39_N16
\sr|ffd4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|ffd4|Q~0_combout\ = !\SDX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDX~input_o\,
	combout => \sr|ffd4|Q~0_combout\);

-- Location: FF_X77_Y39_N17
\sr|ffd4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \sr|ffd4|Q~0_combout\,
	ena => \sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|ffd4|Q~q\);

-- Location: LCCOMB_X77_Y39_N18
\sr|ffd3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|ffd3|Q~feeder_combout\ = \sr|ffd4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr|ffd4|Q~q\,
	combout => \sr|ffd3|Q~feeder_combout\);

-- Location: FF_X77_Y39_N19
\sr|ffd3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \sr|ffd3|Q~feeder_combout\,
	ena => \sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|ffd3|Q~q\);

-- Location: LCCOMB_X77_Y39_N12
\sr|ffd2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|ffd2|Q~feeder_combout\ = \sr|ffd3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr|ffd3|Q~q\,
	combout => \sr|ffd2|Q~feeder_combout\);

-- Location: FF_X77_Y39_N13
\sr|ffd2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \sr|ffd2|Q~feeder_combout\,
	ena => \sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|ffd2|Q~q\);

-- Location: LCCOMB_X77_Y39_N2
\sr|ffd1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|ffd1|Q~feeder_combout\ = \sr|ffd2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr|ffd2|Q~q\,
	combout => \sr|ffd1|Q~feeder_combout\);

-- Location: FF_X77_Y39_N3
\sr|ffd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \sr|ffd1|Q~feeder_combout\,
	ena => \sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|ffd1|Q~q\);

-- Location: LCCOMB_X77_Y39_N0
\sr|ffd0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sr|ffd0|Q~feeder_combout\ = \sr|ffd1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sr|ffd1|Q~q\,
	combout => \sr|ffd0|Q~feeder_combout\);

-- Location: FF_X77_Y39_N1
\sr|ffd0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \sr|ffd0|Q~feeder_combout\,
	ena => \sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|ffd0|Q~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_DXval <= \DXval~output_o\;

ww_D(0) <= \D[0]~output_o\;

ww_D(1) <= \D[1]~output_o\;

ww_D(2) <= \D[2]~output_o\;

ww_D(3) <= \D[3]~output_o\;

ww_D(4) <= \D[4]~output_o\;
END structure;


