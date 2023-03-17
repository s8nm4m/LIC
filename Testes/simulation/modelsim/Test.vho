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

-- DATE "03/17/2023 09:07:20"

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

ENTITY 	KeyDecode IS
    PORT (
	Kack : IN std_logic;
	CLK : IN std_logic;
	Reset : IN std_logic;
	I : IN std_logic_vector(3 DOWNTO 0);
	Kval : BUFFER std_logic;
	O : BUFFER std_logic_vector(2 DOWNTO 0);
	K : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END KeyDecode;

-- Design Ports Information
-- Kval	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[0]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kack	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KeyDecode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Kack : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_I : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Kval : std_logic;
SIGNAL ww_O : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_K : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Kval~output_o\ : std_logic;
SIGNAL \O[0]~output_o\ : std_logic;
SIGNAL \O[1]~output_o\ : std_logic;
SIGNAL \O[2]~output_o\ : std_logic;
SIGNAL \K[0]~output_o\ : std_logic;
SIGNAL \K[1]~output_o\ : std_logic;
SIGNAL \K[2]~output_o\ : std_logic;
SIGNAL \K[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Kack~input_o\ : std_logic;
SIGNAL \I[3]~input_o\ : std_logic;
SIGNAL \I[1]~input_o\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \scan|count|mux|Y~2_combout\ : std_logic;
SIGNAL \scan|count|reg|ff0|Q~q\ : std_logic;
SIGNAL \I[0]~input_o\ : std_logic;
SIGNAL \I[2]~input_o\ : std_logic;
SIGNAL \scan|count|mux|Y~3_combout\ : std_logic;
SIGNAL \scan|count|reg|ff1|Q~q\ : std_logic;
SIGNAL \scan|mux|Y~0_combout\ : std_logic;
SIGNAL \scan|mux|Y~1_combout\ : std_logic;
SIGNAL \control|Selector1~0_combout\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \control|CurrentState.SECOND~q\ : std_logic;
SIGNAL \control|Selector0~0_combout\ : std_logic;
SIGNAL \control|CurrentState.FIRST~q\ : std_logic;
SIGNAL \scan|count|ad|fa2|Co~0_combout\ : std_logic;
SIGNAL \scan|count|mux|Y~0_combout\ : std_logic;
SIGNAL \scan|count|reg|ff2|Q~q\ : std_logic;
SIGNAL \scan|count|mux|Y~1_combout\ : std_logic;
SIGNAL \scan|count|reg|ff3|Q~q\ : std_logic;
SIGNAL \scan|dec|O[1]~0_combout\ : std_logic;
SIGNAL \scan|dec|O[1]~1_combout\ : std_logic;
SIGNAL \scan|dec|O[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \scan|count|reg|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \scan|count|reg|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \scan|dec|ALT_INV_O[1]~0_combout\ : std_logic;
SIGNAL \scan|count|reg|ff3|ALT_INV_Q~q\ : std_logic;
SIGNAL \scan|count|reg|ff2|ALT_INV_Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Kack <= Kack;
ww_CLK <= CLK;
ww_Reset <= Reset;
ww_I <= I;
Kval <= ww_Kval;
O <= ww_O;
K <= ww_K;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
\scan|count|reg|ff1|ALT_INV_Q~q\ <= NOT \scan|count|reg|ff1|Q~q\;
\scan|count|reg|ff0|ALT_INV_Q~q\ <= NOT \scan|count|reg|ff0|Q~q\;
\scan|dec|ALT_INV_O[1]~0_combout\ <= NOT \scan|dec|O[1]~0_combout\;
\scan|count|reg|ff3|ALT_INV_Q~q\ <= NOT \scan|count|reg|ff3|Q~q\;
\scan|count|reg|ff2|ALT_INV_Q~q\ <= NOT \scan|count|reg|ff2|Q~q\;
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

-- Location: IOOBUF_X18_Y0_N30
\Kval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control|CurrentState.FIRST~q\,
	devoe => ww_devoe,
	o => \Kval~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\O[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scan|dec|ALT_INV_O[1]~0_combout\,
	devoe => ww_devoe,
	o => \O[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\O[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scan|dec|O[1]~1_combout\,
	devoe => ww_devoe,
	o => \O[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\O[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scan|dec|O[1]~2_combout\,
	devoe => ww_devoe,
	o => \O[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\K[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scan|count|reg|ff0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \K[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\K[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scan|count|reg|ff1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \K[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\K[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scan|count|reg|ff2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \K[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\K[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \scan|count|reg|ff3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \K[3]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: IOIBUF_X16_Y0_N29
\Kack~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kack,
	o => \Kack~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\I[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(3),
	o => \I[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\I[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(1),
	o => \I[1]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: LCCOMB_X17_Y1_N8
\scan|count|mux|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan|count|mux|Y~2_combout\ = (\Reset~input_o\) # (\scan|count|reg|ff0|Q~q\ $ (\control|CurrentState.FIRST~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \scan|count|reg|ff0|Q~q\,
	datad => \control|CurrentState.FIRST~q\,
	combout => \scan|count|mux|Y~2_combout\);

-- Location: FF_X17_Y1_N9
\scan|count|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan|count|mux|Y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scan|count|reg|ff0|Q~q\);

-- Location: IOIBUF_X18_Y0_N8
\I[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(0),
	o => \I[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\I[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(2),
	o => \I[2]~input_o\);

-- Location: LCCOMB_X17_Y1_N2
\scan|count|mux|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan|count|mux|Y~3_combout\ = (\Reset~input_o\) # (\scan|count|reg|ff1|Q~q\ $ (((!\scan|count|reg|ff0|Q~q\ & \control|CurrentState.FIRST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scan|count|reg|ff0|Q~q\,
	datab => \Reset~input_o\,
	datac => \scan|count|reg|ff1|Q~q\,
	datad => \control|CurrentState.FIRST~q\,
	combout => \scan|count|mux|Y~3_combout\);

-- Location: FF_X17_Y1_N3
\scan|count|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan|count|mux|Y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scan|count|reg|ff1|Q~q\);

-- Location: LCCOMB_X17_Y1_N28
\scan|mux|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan|mux|Y~0_combout\ = (\scan|count|reg|ff0|Q~q\ & ((\scan|count|reg|ff1|Q~q\ & (\I[0]~input_o\)) # (!\scan|count|reg|ff1|Q~q\ & ((\I[2]~input_o\))))) # (!\scan|count|reg|ff0|Q~q\ & (((!\scan|count|reg|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I[0]~input_o\,
	datab => \I[2]~input_o\,
	datac => \scan|count|reg|ff0|Q~q\,
	datad => \scan|count|reg|ff1|Q~q\,
	combout => \scan|mux|Y~0_combout\);

-- Location: LCCOMB_X17_Y1_N10
\scan|mux|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan|mux|Y~1_combout\ = (\scan|count|reg|ff0|Q~q\ & (((\scan|mux|Y~0_combout\)))) # (!\scan|count|reg|ff0|Q~q\ & ((\scan|mux|Y~0_combout\ & (\I[3]~input_o\)) # (!\scan|mux|Y~0_combout\ & ((\I[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I[3]~input_o\,
	datab => \I[1]~input_o\,
	datac => \scan|count|reg|ff0|Q~q\,
	datad => \scan|mux|Y~0_combout\,
	combout => \scan|mux|Y~1_combout\);

-- Location: LCCOMB_X17_Y1_N24
\control|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control|Selector1~0_combout\ = (\Kack~input_o\ & (!\control|CurrentState.FIRST~q\ & ((!\scan|mux|Y~1_combout\)))) # (!\Kack~input_o\ & ((\control|CurrentState.SECOND~q\) # ((!\control|CurrentState.FIRST~q\ & !\scan|mux|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Kack~input_o\,
	datab => \control|CurrentState.FIRST~q\,
	datac => \control|CurrentState.SECOND~q\,
	datad => \scan|mux|Y~1_combout\,
	combout => \control|Selector1~0_combout\);

-- Location: CLKCTRL_G4
\Reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: FF_X17_Y1_N25
\control|CurrentState.SECOND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \control|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|CurrentState.SECOND~q\);

-- Location: LCCOMB_X17_Y1_N16
\control|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control|Selector0~0_combout\ = (\control|CurrentState.SECOND~q\) # (!\scan|mux|Y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|CurrentState.SECOND~q\,
	datad => \scan|mux|Y~1_combout\,
	combout => \control|Selector0~0_combout\);

-- Location: FF_X17_Y1_N17
\control|CurrentState.FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \control|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|CurrentState.FIRST~q\);

-- Location: LCCOMB_X17_Y1_N18
\scan|count|ad|fa2|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan|count|ad|fa2|Co~0_combout\ = (!\scan|count|reg|ff1|Q~q\ & (!\scan|count|reg|ff0|Q~q\ & \control|CurrentState.FIRST~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scan|count|reg|ff1|Q~q\,
	datac => \scan|count|reg|ff0|Q~q\,
	datad => \control|CurrentState.FIRST~q\,
	combout => \scan|count|ad|fa2|Co~0_combout\);

-- Location: LCCOMB_X17_Y1_N22
\scan|count|mux|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan|count|mux|Y~0_combout\ = (\Reset~input_o\) # (\scan|count|reg|ff2|Q~q\ $ (\scan|count|ad|fa2|Co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \scan|count|reg|ff2|Q~q\,
	datad => \scan|count|ad|fa2|Co~0_combout\,
	combout => \scan|count|mux|Y~0_combout\);

-- Location: FF_X17_Y1_N23
\scan|count|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan|count|mux|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scan|count|reg|ff2|Q~q\);

-- Location: LCCOMB_X17_Y1_N12
\scan|count|mux|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan|count|mux|Y~1_combout\ = (\Reset~input_o\) # (\scan|count|reg|ff3|Q~q\ $ (((!\scan|count|reg|ff2|Q~q\ & \scan|count|ad|fa2|Co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scan|count|reg|ff2|Q~q\,
	datab => \Reset~input_o\,
	datac => \scan|count|reg|ff3|Q~q\,
	datad => \scan|count|ad|fa2|Co~0_combout\,
	combout => \scan|count|mux|Y~1_combout\);

-- Location: FF_X17_Y1_N13
\scan|count|reg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \scan|count|mux|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scan|count|reg|ff3|Q~q\);

-- Location: LCCOMB_X17_Y1_N30
\scan|dec|O[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan|dec|O[1]~0_combout\ = (!\scan|count|reg|ff3|Q~q\) # (!\scan|count|reg|ff2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scan|count|reg|ff2|Q~q\,
	datad => \scan|count|reg|ff3|Q~q\,
	combout => \scan|dec|O[1]~0_combout\);

-- Location: LCCOMB_X17_Y1_N20
\scan|dec|O[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan|dec|O[1]~1_combout\ = (!\scan|count|reg|ff2|Q~q\ & \scan|count|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scan|count|reg|ff2|Q~q\,
	datad => \scan|count|reg|ff3|Q~q\,
	combout => \scan|dec|O[1]~1_combout\);

-- Location: LCCOMB_X17_Y1_N26
\scan|dec|O[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scan|dec|O[1]~2_combout\ = (\scan|count|reg|ff2|Q~q\ & !\scan|count|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scan|count|reg|ff2|Q~q\,
	datad => \scan|count|reg|ff3|Q~q\,
	combout => \scan|dec|O[1]~2_combout\);

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

ww_Kval <= \Kval~output_o\;

ww_O(0) <= \O[0]~output_o\;

ww_O(1) <= \O[1]~output_o\;

ww_O(2) <= \O[2]~output_o\;

ww_K(0) <= \K[0]~output_o\;

ww_K(1) <= \K[1]~output_o\;

ww_K(2) <= \K[2]~output_o\;

ww_K(3) <= \K[3]~output_o\;
END structure;


