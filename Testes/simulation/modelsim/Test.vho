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

-- DATE "03/17/2023 12:35:40"

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

ENTITY 	KeyScan IS
    PORT (
	KScan : IN std_logic;
	CLK : IN std_logic;
	Reset : IN std_logic;
	I : IN std_logic_vector(3 DOWNTO 0);
	Kpress : BUFFER std_logic;
	K : BUFFER std_logic_vector(3 DOWNTO 0);
	O : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END KeyScan;

-- Design Ports Information
-- Kpress	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KScan	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KeyScan IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KScan : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_I : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Kpress : std_logic;
SIGNAL ww_K : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_O : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Kpress~output_o\ : std_logic;
SIGNAL \K[0]~output_o\ : std_logic;
SIGNAL \K[1]~output_o\ : std_logic;
SIGNAL \K[2]~output_o\ : std_logic;
SIGNAL \K[3]~output_o\ : std_logic;
SIGNAL \O[0]~output_o\ : std_logic;
SIGNAL \O[1]~output_o\ : std_logic;
SIGNAL \O[2]~output_o\ : std_logic;
SIGNAL \I[3]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock|Add0~0_combout\ : std_logic;
SIGNAL \clock|count[0]~20_combout\ : std_logic;
SIGNAL \clock|Add0~1\ : std_logic;
SIGNAL \clock|Add0~2_combout\ : std_logic;
SIGNAL \clock|Add0~3\ : std_logic;
SIGNAL \clock|Add0~4_combout\ : std_logic;
SIGNAL \clock|Add0~5\ : std_logic;
SIGNAL \clock|Add0~6_combout\ : std_logic;
SIGNAL \clock|Add0~7\ : std_logic;
SIGNAL \clock|Add0~8_combout\ : std_logic;
SIGNAL \clock|Add0~9\ : std_logic;
SIGNAL \clock|Add0~10_combout\ : std_logic;
SIGNAL \clock|Add0~11\ : std_logic;
SIGNAL \clock|Add0~12_combout\ : std_logic;
SIGNAL \clock|count~8_combout\ : std_logic;
SIGNAL \clock|Add0~13\ : std_logic;
SIGNAL \clock|Add0~14_combout\ : std_logic;
SIGNAL \clock|Add0~15\ : std_logic;
SIGNAL \clock|Add0~16_combout\ : std_logic;
SIGNAL \clock|Add0~17\ : std_logic;
SIGNAL \clock|Add0~18_combout\ : std_logic;
SIGNAL \clock|Add0~19\ : std_logic;
SIGNAL \clock|Add0~20_combout\ : std_logic;
SIGNAL \clock|Add0~21\ : std_logic;
SIGNAL \clock|Add0~22_combout\ : std_logic;
SIGNAL \clock|count~9_combout\ : std_logic;
SIGNAL \clock|Add0~23\ : std_logic;
SIGNAL \clock|Add0~25\ : std_logic;
SIGNAL \clock|Add0~26_combout\ : std_logic;
SIGNAL \clock|count~11_combout\ : std_logic;
SIGNAL \clock|Add0~27\ : std_logic;
SIGNAL \clock|Add0~28_combout\ : std_logic;
SIGNAL \clock|count~12_combout\ : std_logic;
SIGNAL \clock|Add0~29\ : std_logic;
SIGNAL \clock|Add0~30_combout\ : std_logic;
SIGNAL \clock|Add0~31\ : std_logic;
SIGNAL \clock|Add0~32_combout\ : std_logic;
SIGNAL \clock|count~13_combout\ : std_logic;
SIGNAL \clock|Add0~33\ : std_logic;
SIGNAL \clock|Add0~34_combout\ : std_logic;
SIGNAL \clock|Add0~35\ : std_logic;
SIGNAL \clock|Add0~36_combout\ : std_logic;
SIGNAL \clock|count~14_combout\ : std_logic;
SIGNAL \clock|Add0~37\ : std_logic;
SIGNAL \clock|Add0~38_combout\ : std_logic;
SIGNAL \clock|count~15_combout\ : std_logic;
SIGNAL \clock|Equal0~5_combout\ : std_logic;
SIGNAL \clock|Add0~39\ : std_logic;
SIGNAL \clock|Add0~40_combout\ : std_logic;
SIGNAL \clock|count~16_combout\ : std_logic;
SIGNAL \clock|Add0~41\ : std_logic;
SIGNAL \clock|Add0~42_combout\ : std_logic;
SIGNAL \clock|count~17_combout\ : std_logic;
SIGNAL \clock|Add0~43\ : std_logic;
SIGNAL \clock|Add0~44_combout\ : std_logic;
SIGNAL \clock|count~18_combout\ : std_logic;
SIGNAL \clock|Add0~45\ : std_logic;
SIGNAL \clock|Add0~46_combout\ : std_logic;
SIGNAL \clock|Equal0~6_combout\ : std_logic;
SIGNAL \clock|Add0~47\ : std_logic;
SIGNAL \clock|Add0~48_combout\ : std_logic;
SIGNAL \clock|count~19_combout\ : std_logic;
SIGNAL \clock|Add0~49\ : std_logic;
SIGNAL \clock|Add0~50_combout\ : std_logic;
SIGNAL \clock|Add0~51\ : std_logic;
SIGNAL \clock|Add0~52_combout\ : std_logic;
SIGNAL \clock|Add0~53\ : std_logic;
SIGNAL \clock|Add0~54_combout\ : std_logic;
SIGNAL \clock|Equal0~7_combout\ : std_logic;
SIGNAL \clock|Add0~55\ : std_logic;
SIGNAL \clock|Add0~56_combout\ : std_logic;
SIGNAL \clock|Add0~57\ : std_logic;
SIGNAL \clock|Add0~58_combout\ : std_logic;
SIGNAL \clock|Add0~59\ : std_logic;
SIGNAL \clock|Add0~60_combout\ : std_logic;
SIGNAL \clock|Add0~61\ : std_logic;
SIGNAL \clock|Add0~62_combout\ : std_logic;
SIGNAL \clock|Equal0~8_combout\ : std_logic;
SIGNAL \clock|Equal0~9_combout\ : std_logic;
SIGNAL \clock|Add0~24_combout\ : std_logic;
SIGNAL \clock|count~10_combout\ : std_logic;
SIGNAL \clock|Equal0~3_combout\ : std_logic;
SIGNAL \clock|Equal0~1_combout\ : std_logic;
SIGNAL \clock|Equal0~2_combout\ : std_logic;
SIGNAL \clock|Equal0~0_combout\ : std_logic;
SIGNAL \clock|Equal0~4_combout\ : std_logic;
SIGNAL \clock|tmp~0_combout\ : std_logic;
SIGNAL \clock|tmp~feeder_combout\ : std_logic;
SIGNAL \clock|tmp~q\ : std_logic;
SIGNAL \clock|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \KScan~input_o\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \count|mux|Y~0_combout\ : std_logic;
SIGNAL \count|reg|ff0|Q~q\ : std_logic;
SIGNAL \count|mux|Y~1_combout\ : std_logic;
SIGNAL \count|reg|ff1|Q~q\ : std_logic;
SIGNAL \I[0]~input_o\ : std_logic;
SIGNAL \I[2]~input_o\ : std_logic;
SIGNAL \mux|Y~0_combout\ : std_logic;
SIGNAL \I[1]~input_o\ : std_logic;
SIGNAL \mux|Y~1_combout\ : std_logic;
SIGNAL \count|mux|Y~2_combout\ : std_logic;
SIGNAL \count|mux|Y~3_combout\ : std_logic;
SIGNAL \count|reg|ff2|Q~q\ : std_logic;
SIGNAL \count|ad|fa2|Co~0_combout\ : std_logic;
SIGNAL \count|mux|Y~4_combout\ : std_logic;
SIGNAL \count|reg|ff3|Q~q\ : std_logic;
SIGNAL \dec|O[1]~0_combout\ : std_logic;
SIGNAL \dec|O[1]~1_combout\ : std_logic;
SIGNAL \dec|O[1]~2_combout\ : std_logic;
SIGNAL \clock|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dec|ALT_INV_O[1]~0_combout\ : std_logic;
SIGNAL \count|reg|ff3|ALT_INV_Q~q\ : std_logic;
SIGNAL \count|reg|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \mux|ALT_INV_Y~1_combout\ : std_logic;
SIGNAL \count|reg|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \count|reg|ff0|ALT_INV_Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_KScan <= KScan;
ww_CLK <= CLK;
ww_Reset <= Reset;
ww_I <= I;
Kpress <= ww_Kpress;
K <= ww_K;
O <= ww_O;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock|tmp~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\dec|ALT_INV_O[1]~0_combout\ <= NOT \dec|O[1]~0_combout\;
\count|reg|ff3|ALT_INV_Q~q\ <= NOT \count|reg|ff3|Q~q\;
\count|reg|ff2|ALT_INV_Q~q\ <= NOT \count|reg|ff2|Q~q\;
\mux|ALT_INV_Y~1_combout\ <= NOT \mux|Y~1_combout\;
\count|reg|ff1|ALT_INV_Q~q\ <= NOT \count|reg|ff1|Q~q\;
\count|reg|ff0|ALT_INV_Q~q\ <= NOT \count|reg|ff0|Q~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X46_Y54_N2
\Kpress~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|ALT_INV_Y~1_combout\,
	devoe => ww_devoe,
	o => \Kpress~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\K[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|reg|ff0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \K[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\K[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|reg|ff1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \K[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\K[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|reg|ff2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \K[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\K[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|reg|ff3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \K[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\O[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|ALT_INV_O[1]~0_combout\,
	devoe => ww_devoe,
	o => \O[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\O[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|O[1]~1_combout\,
	devoe => ww_devoe,
	o => \O[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\O[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|O[1]~2_combout\,
	devoe => ww_devoe,
	o => \O[2]~output_o\);

-- Location: IOIBUF_X40_Y0_N22
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

-- Location: LCCOMB_X57_Y43_N0
\clock|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~0_combout\ = \clock|count\(0) $ (GND)
-- \clock|Add0~1\ = CARRY(!\clock|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(0),
	datad => VCC,
	combout => \clock|Add0~0_combout\,
	cout => \clock|Add0~1\);

-- Location: LCCOMB_X56_Y43_N16
\clock|count[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|count[0]~20_combout\ = !\clock|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock|Add0~0_combout\,
	combout => \clock|count[0]~20_combout\);

-- Location: FF_X57_Y43_N1
\clock|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \clock|count[0]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(0));

-- Location: LCCOMB_X57_Y43_N2
\clock|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~2_combout\ = (\clock|count\(1) & (!\clock|Add0~1\)) # (!\clock|count\(1) & ((\clock|Add0~1\) # (GND)))
-- \clock|Add0~3\ = CARRY((!\clock|Add0~1\) # (!\clock|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(1),
	datad => VCC,
	cin => \clock|Add0~1\,
	combout => \clock|Add0~2_combout\,
	cout => \clock|Add0~3\);

-- Location: FF_X57_Y43_N3
\clock|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(1));

-- Location: LCCOMB_X57_Y43_N4
\clock|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~4_combout\ = (\clock|count\(2) & (\clock|Add0~3\ $ (GND))) # (!\clock|count\(2) & (!\clock|Add0~3\ & VCC))
-- \clock|Add0~5\ = CARRY((\clock|count\(2) & !\clock|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(2),
	datad => VCC,
	cin => \clock|Add0~3\,
	combout => \clock|Add0~4_combout\,
	cout => \clock|Add0~5\);

-- Location: FF_X57_Y43_N5
\clock|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(2));

-- Location: LCCOMB_X57_Y43_N6
\clock|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~6_combout\ = (\clock|count\(3) & (!\clock|Add0~5\)) # (!\clock|count\(3) & ((\clock|Add0~5\) # (GND)))
-- \clock|Add0~7\ = CARRY((!\clock|Add0~5\) # (!\clock|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(3),
	datad => VCC,
	cin => \clock|Add0~5\,
	combout => \clock|Add0~6_combout\,
	cout => \clock|Add0~7\);

-- Location: FF_X57_Y43_N7
\clock|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(3));

-- Location: LCCOMB_X57_Y43_N8
\clock|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~8_combout\ = (\clock|count\(4) & (\clock|Add0~7\ $ (GND))) # (!\clock|count\(4) & (!\clock|Add0~7\ & VCC))
-- \clock|Add0~9\ = CARRY((\clock|count\(4) & !\clock|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(4),
	datad => VCC,
	cin => \clock|Add0~7\,
	combout => \clock|Add0~8_combout\,
	cout => \clock|Add0~9\);

-- Location: FF_X57_Y43_N9
\clock|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(4));

-- Location: LCCOMB_X57_Y43_N10
\clock|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~10_combout\ = (\clock|count\(5) & (!\clock|Add0~9\)) # (!\clock|count\(5) & ((\clock|Add0~9\) # (GND)))
-- \clock|Add0~11\ = CARRY((!\clock|Add0~9\) # (!\clock|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(5),
	datad => VCC,
	cin => \clock|Add0~9\,
	combout => \clock|Add0~10_combout\,
	cout => \clock|Add0~11\);

-- Location: FF_X57_Y43_N11
\clock|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(5));

-- Location: LCCOMB_X57_Y43_N12
\clock|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~12_combout\ = (\clock|count\(6) & (\clock|Add0~11\ $ (GND))) # (!\clock|count\(6) & (!\clock|Add0~11\ & VCC))
-- \clock|Add0~13\ = CARRY((\clock|count\(6) & !\clock|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(6),
	datad => VCC,
	cin => \clock|Add0~11\,
	combout => \clock|Add0~12_combout\,
	cout => \clock|Add0~13\);

-- Location: LCCOMB_X58_Y43_N4
\clock|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|count~8_combout\ = (\clock|Add0~12_combout\ & ((!\clock|Equal0~9_combout\) # (!\clock|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|Add0~12_combout\,
	datac => \clock|Equal0~4_combout\,
	datad => \clock|Equal0~9_combout\,
	combout => \clock|count~8_combout\);

-- Location: FF_X58_Y43_N5
\clock|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(6));

-- Location: LCCOMB_X57_Y43_N14
\clock|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~14_combout\ = (\clock|count\(7) & (!\clock|Add0~13\)) # (!\clock|count\(7) & ((\clock|Add0~13\) # (GND)))
-- \clock|Add0~15\ = CARRY((!\clock|Add0~13\) # (!\clock|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(7),
	datad => VCC,
	cin => \clock|Add0~13\,
	combout => \clock|Add0~14_combout\,
	cout => \clock|Add0~15\);

-- Location: FF_X57_Y43_N15
\clock|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(7));

-- Location: LCCOMB_X57_Y43_N16
\clock|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~16_combout\ = (\clock|count\(8) & (\clock|Add0~15\ $ (GND))) # (!\clock|count\(8) & (!\clock|Add0~15\ & VCC))
-- \clock|Add0~17\ = CARRY((\clock|count\(8) & !\clock|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(8),
	datad => VCC,
	cin => \clock|Add0~15\,
	combout => \clock|Add0~16_combout\,
	cout => \clock|Add0~17\);

-- Location: FF_X57_Y43_N17
\clock|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(8));

-- Location: LCCOMB_X57_Y43_N18
\clock|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~18_combout\ = (\clock|count\(9) & (!\clock|Add0~17\)) # (!\clock|count\(9) & ((\clock|Add0~17\) # (GND)))
-- \clock|Add0~19\ = CARRY((!\clock|Add0~17\) # (!\clock|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(9),
	datad => VCC,
	cin => \clock|Add0~17\,
	combout => \clock|Add0~18_combout\,
	cout => \clock|Add0~19\);

-- Location: FF_X57_Y43_N19
\clock|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(9));

-- Location: LCCOMB_X57_Y43_N20
\clock|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~20_combout\ = (\clock|count\(10) & (\clock|Add0~19\ $ (GND))) # (!\clock|count\(10) & (!\clock|Add0~19\ & VCC))
-- \clock|Add0~21\ = CARRY((\clock|count\(10) & !\clock|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(10),
	datad => VCC,
	cin => \clock|Add0~19\,
	combout => \clock|Add0~20_combout\,
	cout => \clock|Add0~21\);

-- Location: FF_X57_Y43_N21
\clock|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(10));

-- Location: LCCOMB_X57_Y43_N22
\clock|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~22_combout\ = (\clock|count\(11) & (!\clock|Add0~21\)) # (!\clock|count\(11) & ((\clock|Add0~21\) # (GND)))
-- \clock|Add0~23\ = CARRY((!\clock|Add0~21\) # (!\clock|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(11),
	datad => VCC,
	cin => \clock|Add0~21\,
	combout => \clock|Add0~22_combout\,
	cout => \clock|Add0~23\);

-- Location: LCCOMB_X58_Y43_N8
\clock|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|count~9_combout\ = (\clock|Add0~22_combout\ & ((!\clock|Equal0~4_combout\) # (!\clock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|Equal0~9_combout\,
	datac => \clock|Equal0~4_combout\,
	datad => \clock|Add0~22_combout\,
	combout => \clock|count~9_combout\);

-- Location: FF_X58_Y43_N9
\clock|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(11));

-- Location: LCCOMB_X57_Y43_N24
\clock|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~24_combout\ = (\clock|count\(12) & (\clock|Add0~23\ $ (GND))) # (!\clock|count\(12) & (!\clock|Add0~23\ & VCC))
-- \clock|Add0~25\ = CARRY((\clock|count\(12) & !\clock|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(12),
	datad => VCC,
	cin => \clock|Add0~23\,
	combout => \clock|Add0~24_combout\,
	cout => \clock|Add0~25\);

-- Location: LCCOMB_X57_Y43_N26
\clock|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~26_combout\ = (\clock|count\(13) & (!\clock|Add0~25\)) # (!\clock|count\(13) & ((\clock|Add0~25\) # (GND)))
-- \clock|Add0~27\ = CARRY((!\clock|Add0~25\) # (!\clock|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(13),
	datad => VCC,
	cin => \clock|Add0~25\,
	combout => \clock|Add0~26_combout\,
	cout => \clock|Add0~27\);

-- Location: LCCOMB_X58_Y43_N2
\clock|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|count~11_combout\ = (\clock|Add0~26_combout\ & ((!\clock|Equal0~9_combout\) # (!\clock|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|Equal0~4_combout\,
	datac => \clock|Add0~26_combout\,
	datad => \clock|Equal0~9_combout\,
	combout => \clock|count~11_combout\);

-- Location: FF_X58_Y43_N3
\clock|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(13));

-- Location: LCCOMB_X57_Y43_N28
\clock|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~28_combout\ = (\clock|count\(14) & (\clock|Add0~27\ $ (GND))) # (!\clock|count\(14) & (!\clock|Add0~27\ & VCC))
-- \clock|Add0~29\ = CARRY((\clock|count\(14) & !\clock|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(14),
	datad => VCC,
	cin => \clock|Add0~27\,
	combout => \clock|Add0~28_combout\,
	cout => \clock|Add0~29\);

-- Location: LCCOMB_X58_Y43_N10
\clock|count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|count~12_combout\ = (\clock|Add0~28_combout\ & ((!\clock|Equal0~4_combout\) # (!\clock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|Equal0~9_combout\,
	datac => \clock|Equal0~4_combout\,
	datad => \clock|Add0~28_combout\,
	combout => \clock|count~12_combout\);

-- Location: FF_X58_Y43_N11
\clock|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(14));

-- Location: LCCOMB_X57_Y43_N30
\clock|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~30_combout\ = (\clock|count\(15) & (!\clock|Add0~29\)) # (!\clock|count\(15) & ((\clock|Add0~29\) # (GND)))
-- \clock|Add0~31\ = CARRY((!\clock|Add0~29\) # (!\clock|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(15),
	datad => VCC,
	cin => \clock|Add0~29\,
	combout => \clock|Add0~30_combout\,
	cout => \clock|Add0~31\);

-- Location: FF_X57_Y43_N31
\clock|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(15));

-- Location: LCCOMB_X57_Y42_N0
\clock|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~32_combout\ = (\clock|count\(16) & (\clock|Add0~31\ $ (GND))) # (!\clock|count\(16) & (!\clock|Add0~31\ & VCC))
-- \clock|Add0~33\ = CARRY((\clock|count\(16) & !\clock|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(16),
	datad => VCC,
	cin => \clock|Add0~31\,
	combout => \clock|Add0~32_combout\,
	cout => \clock|Add0~33\);

-- Location: LCCOMB_X58_Y42_N8
\clock|count~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|count~13_combout\ = (\clock|Add0~32_combout\ & ((!\clock|Equal0~4_combout\) # (!\clock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock|Equal0~9_combout\,
	datac => \clock|Add0~32_combout\,
	datad => \clock|Equal0~4_combout\,
	combout => \clock|count~13_combout\);

-- Location: FF_X58_Y42_N9
\clock|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(16));

-- Location: LCCOMB_X57_Y42_N2
\clock|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~34_combout\ = (\clock|count\(17) & (!\clock|Add0~33\)) # (!\clock|count\(17) & ((\clock|Add0~33\) # (GND)))
-- \clock|Add0~35\ = CARRY((!\clock|Add0~33\) # (!\clock|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(17),
	datad => VCC,
	cin => \clock|Add0~33\,
	combout => \clock|Add0~34_combout\,
	cout => \clock|Add0~35\);

-- Location: FF_X57_Y42_N3
\clock|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(17));

-- Location: LCCOMB_X57_Y42_N4
\clock|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~36_combout\ = (\clock|count\(18) & (\clock|Add0~35\ $ (GND))) # (!\clock|count\(18) & (!\clock|Add0~35\ & VCC))
-- \clock|Add0~37\ = CARRY((\clock|count\(18) & !\clock|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(18),
	datad => VCC,
	cin => \clock|Add0~35\,
	combout => \clock|Add0~36_combout\,
	cout => \clock|Add0~37\);

-- Location: LCCOMB_X58_Y42_N6
\clock|count~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|count~14_combout\ = (\clock|Add0~36_combout\ & ((!\clock|Equal0~4_combout\) # (!\clock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock|Equal0~9_combout\,
	datac => \clock|Add0~36_combout\,
	datad => \clock|Equal0~4_combout\,
	combout => \clock|count~14_combout\);

-- Location: FF_X58_Y42_N7
\clock|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(18));

-- Location: LCCOMB_X57_Y42_N6
\clock|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~38_combout\ = (\clock|count\(19) & (!\clock|Add0~37\)) # (!\clock|count\(19) & ((\clock|Add0~37\) # (GND)))
-- \clock|Add0~39\ = CARRY((!\clock|Add0~37\) # (!\clock|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(19),
	datad => VCC,
	cin => \clock|Add0~37\,
	combout => \clock|Add0~38_combout\,
	cout => \clock|Add0~39\);

-- Location: LCCOMB_X58_Y42_N16
\clock|count~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|count~15_combout\ = (\clock|Add0~38_combout\ & ((!\clock|Equal0~4_combout\) # (!\clock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock|Equal0~9_combout\,
	datac => \clock|Add0~38_combout\,
	datad => \clock|Equal0~4_combout\,
	combout => \clock|count~15_combout\);

-- Location: FF_X58_Y42_N17
\clock|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(19));

-- Location: LCCOMB_X58_Y42_N26
\clock|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Equal0~5_combout\ = (\clock|count\(18) & (\clock|count\(19) & (\clock|count\(16) & !\clock|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(18),
	datab => \clock|count\(19),
	datac => \clock|count\(16),
	datad => \clock|count\(17),
	combout => \clock|Equal0~5_combout\);

-- Location: LCCOMB_X57_Y42_N8
\clock|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~40_combout\ = (\clock|count\(20) & (\clock|Add0~39\ $ (GND))) # (!\clock|count\(20) & (!\clock|Add0~39\ & VCC))
-- \clock|Add0~41\ = CARRY((\clock|count\(20) & !\clock|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(20),
	datad => VCC,
	cin => \clock|Add0~39\,
	combout => \clock|Add0~40_combout\,
	cout => \clock|Add0~41\);

-- Location: LCCOMB_X58_Y42_N28
\clock|count~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|count~16_combout\ = (\clock|Add0~40_combout\ & ((!\clock|Equal0~9_combout\) # (!\clock|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock|Equal0~4_combout\,
	datac => \clock|Equal0~9_combout\,
	datad => \clock|Add0~40_combout\,
	combout => \clock|count~16_combout\);

-- Location: FF_X58_Y42_N29
\clock|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(20));

-- Location: LCCOMB_X57_Y42_N10
\clock|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~42_combout\ = (\clock|count\(21) & (!\clock|Add0~41\)) # (!\clock|count\(21) & ((\clock|Add0~41\) # (GND)))
-- \clock|Add0~43\ = CARRY((!\clock|Add0~41\) # (!\clock|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(21),
	datad => VCC,
	cin => \clock|Add0~41\,
	combout => \clock|Add0~42_combout\,
	cout => \clock|Add0~43\);

-- Location: LCCOMB_X58_Y42_N10
\clock|count~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|count~17_combout\ = (\clock|Add0~42_combout\ & ((!\clock|Equal0~9_combout\) # (!\clock|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock|Equal0~4_combout\,
	datac => \clock|Equal0~9_combout\,
	datad => \clock|Add0~42_combout\,
	combout => \clock|count~17_combout\);

-- Location: FF_X58_Y42_N11
\clock|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(21));

-- Location: LCCOMB_X57_Y42_N12
\clock|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~44_combout\ = (\clock|count\(22) & (\clock|Add0~43\ $ (GND))) # (!\clock|count\(22) & (!\clock|Add0~43\ & VCC))
-- \clock|Add0~45\ = CARRY((\clock|count\(22) & !\clock|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(22),
	datad => VCC,
	cin => \clock|Add0~43\,
	combout => \clock|Add0~44_combout\,
	cout => \clock|Add0~45\);

-- Location: LCCOMB_X58_Y42_N24
\clock|count~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|count~18_combout\ = (\clock|Add0~44_combout\ & ((!\clock|Equal0~9_combout\) # (!\clock|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock|Equal0~4_combout\,
	datac => \clock|Equal0~9_combout\,
	datad => \clock|Add0~44_combout\,
	combout => \clock|count~18_combout\);

-- Location: FF_X58_Y42_N25
\clock|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(22));

-- Location: LCCOMB_X57_Y42_N14
\clock|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~46_combout\ = (\clock|count\(23) & (!\clock|Add0~45\)) # (!\clock|count\(23) & ((\clock|Add0~45\) # (GND)))
-- \clock|Add0~47\ = CARRY((!\clock|Add0~45\) # (!\clock|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(23),
	datad => VCC,
	cin => \clock|Add0~45\,
	combout => \clock|Add0~46_combout\,
	cout => \clock|Add0~47\);

-- Location: FF_X57_Y42_N15
\clock|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(23));

-- Location: LCCOMB_X58_Y42_N18
\clock|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Equal0~6_combout\ = (\clock|count\(21) & (\clock|count\(22) & (\clock|count\(20) & !\clock|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(21),
	datab => \clock|count\(22),
	datac => \clock|count\(20),
	datad => \clock|count\(23),
	combout => \clock|Equal0~6_combout\);

-- Location: LCCOMB_X57_Y42_N16
\clock|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~48_combout\ = (\clock|count\(24) & (\clock|Add0~47\ $ (GND))) # (!\clock|count\(24) & (!\clock|Add0~47\ & VCC))
-- \clock|Add0~49\ = CARRY((\clock|count\(24) & !\clock|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(24),
	datad => VCC,
	cin => \clock|Add0~47\,
	combout => \clock|Add0~48_combout\,
	cout => \clock|Add0~49\);

-- Location: LCCOMB_X58_Y42_N12
\clock|count~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|count~19_combout\ = (\clock|Add0~48_combout\ & ((!\clock|Equal0~4_combout\) # (!\clock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock|Equal0~9_combout\,
	datac => \clock|Add0~48_combout\,
	datad => \clock|Equal0~4_combout\,
	combout => \clock|count~19_combout\);

-- Location: FF_X58_Y42_N13
\clock|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(24));

-- Location: LCCOMB_X57_Y42_N18
\clock|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~50_combout\ = (\clock|count\(25) & (!\clock|Add0~49\)) # (!\clock|count\(25) & ((\clock|Add0~49\) # (GND)))
-- \clock|Add0~51\ = CARRY((!\clock|Add0~49\) # (!\clock|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(25),
	datad => VCC,
	cin => \clock|Add0~49\,
	combout => \clock|Add0~50_combout\,
	cout => \clock|Add0~51\);

-- Location: FF_X57_Y42_N19
\clock|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(25));

-- Location: LCCOMB_X57_Y42_N20
\clock|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~52_combout\ = (\clock|count\(26) & (\clock|Add0~51\ $ (GND))) # (!\clock|count\(26) & (!\clock|Add0~51\ & VCC))
-- \clock|Add0~53\ = CARRY((\clock|count\(26) & !\clock|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(26),
	datad => VCC,
	cin => \clock|Add0~51\,
	combout => \clock|Add0~52_combout\,
	cout => \clock|Add0~53\);

-- Location: FF_X57_Y42_N21
\clock|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(26));

-- Location: LCCOMB_X57_Y42_N22
\clock|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~54_combout\ = (\clock|count\(27) & (!\clock|Add0~53\)) # (!\clock|count\(27) & ((\clock|Add0~53\) # (GND)))
-- \clock|Add0~55\ = CARRY((!\clock|Add0~53\) # (!\clock|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(27),
	datad => VCC,
	cin => \clock|Add0~53\,
	combout => \clock|Add0~54_combout\,
	cout => \clock|Add0~55\);

-- Location: FF_X57_Y42_N23
\clock|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(27));

-- Location: LCCOMB_X58_Y42_N30
\clock|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Equal0~7_combout\ = (\clock|count\(24) & (!\clock|count\(25) & (!\clock|count\(26) & !\clock|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(24),
	datab => \clock|count\(25),
	datac => \clock|count\(26),
	datad => \clock|count\(27),
	combout => \clock|Equal0~7_combout\);

-- Location: LCCOMB_X57_Y42_N24
\clock|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~56_combout\ = (\clock|count\(28) & (\clock|Add0~55\ $ (GND))) # (!\clock|count\(28) & (!\clock|Add0~55\ & VCC))
-- \clock|Add0~57\ = CARRY((\clock|count\(28) & !\clock|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(28),
	datad => VCC,
	cin => \clock|Add0~55\,
	combout => \clock|Add0~56_combout\,
	cout => \clock|Add0~57\);

-- Location: FF_X57_Y42_N25
\clock|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(28));

-- Location: LCCOMB_X57_Y42_N26
\clock|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~58_combout\ = (\clock|count\(29) & (!\clock|Add0~57\)) # (!\clock|count\(29) & ((\clock|Add0~57\) # (GND)))
-- \clock|Add0~59\ = CARRY((!\clock|Add0~57\) # (!\clock|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(29),
	datad => VCC,
	cin => \clock|Add0~57\,
	combout => \clock|Add0~58_combout\,
	cout => \clock|Add0~59\);

-- Location: FF_X57_Y42_N27
\clock|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(29));

-- Location: LCCOMB_X57_Y42_N28
\clock|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~60_combout\ = (\clock|count\(30) & (\clock|Add0~59\ $ (GND))) # (!\clock|count\(30) & (!\clock|Add0~59\ & VCC))
-- \clock|Add0~61\ = CARRY((\clock|count\(30) & !\clock|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|count\(30),
	datad => VCC,
	cin => \clock|Add0~59\,
	combout => \clock|Add0~60_combout\,
	cout => \clock|Add0~61\);

-- Location: FF_X57_Y42_N29
\clock|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(30));

-- Location: LCCOMB_X57_Y42_N30
\clock|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Add0~62_combout\ = \clock|count\(31) $ (\clock|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(31),
	cin => \clock|Add0~61\,
	combout => \clock|Add0~62_combout\);

-- Location: FF_X57_Y42_N31
\clock|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(31));

-- Location: LCCOMB_X58_Y42_N20
\clock|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Equal0~8_combout\ = (!\clock|count\(29) & (!\clock|count\(30) & (!\clock|count\(28) & !\clock|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(29),
	datab => \clock|count\(30),
	datac => \clock|count\(28),
	datad => \clock|count\(31),
	combout => \clock|Equal0~8_combout\);

-- Location: LCCOMB_X58_Y42_N14
\clock|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Equal0~9_combout\ = (\clock|Equal0~5_combout\ & (\clock|Equal0~6_combout\ & (\clock|Equal0~7_combout\ & \clock|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|Equal0~5_combout\,
	datab => \clock|Equal0~6_combout\,
	datac => \clock|Equal0~7_combout\,
	datad => \clock|Equal0~8_combout\,
	combout => \clock|Equal0~9_combout\);

-- Location: LCCOMB_X58_Y43_N12
\clock|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|count~10_combout\ = (\clock|Add0~24_combout\ & ((!\clock|Equal0~4_combout\) # (!\clock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|Equal0~9_combout\,
	datac => \clock|Equal0~4_combout\,
	datad => \clock|Add0~24_combout\,
	combout => \clock|count~10_combout\);

-- Location: FF_X58_Y43_N13
\clock|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|count\(12));

-- Location: LCCOMB_X58_Y43_N22
\clock|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Equal0~3_combout\ = (\clock|count\(12) & (\clock|count\(13) & (\clock|count\(14) & !\clock|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(12),
	datab => \clock|count\(13),
	datac => \clock|count\(14),
	datad => \clock|count\(15),
	combout => \clock|Equal0~3_combout\);

-- Location: LCCOMB_X58_Y43_N24
\clock|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Equal0~1_combout\ = (!\clock|count\(1) & (!\clock|count\(2) & (!\clock|count\(3) & !\clock|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(1),
	datab => \clock|count\(2),
	datac => \clock|count\(3),
	datad => \clock|count\(4),
	combout => \clock|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y43_N26
\clock|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Equal0~2_combout\ = (\clock|count\(0) & (!\clock|count\(10) & (\clock|count\(11) & !\clock|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(0),
	datab => \clock|count\(10),
	datac => \clock|count\(11),
	datad => \clock|count\(9),
	combout => \clock|Equal0~2_combout\);

-- Location: LCCOMB_X58_Y43_N18
\clock|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Equal0~0_combout\ = (!\clock|count\(5) & (\clock|count\(6) & (!\clock|count\(8) & !\clock|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|count\(5),
	datab => \clock|count\(6),
	datac => \clock|count\(8),
	datad => \clock|count\(7),
	combout => \clock|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y43_N30
\clock|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|Equal0~4_combout\ = (\clock|Equal0~3_combout\ & (\clock|Equal0~1_combout\ & (\clock|Equal0~2_combout\ & \clock|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|Equal0~3_combout\,
	datab => \clock|Equal0~1_combout\,
	datac => \clock|Equal0~2_combout\,
	datad => \clock|Equal0~0_combout\,
	combout => \clock|Equal0~4_combout\);

-- Location: LCCOMB_X58_Y43_N28
\clock|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|tmp~0_combout\ = \clock|tmp~q\ $ (((\clock|Equal0~4_combout\ & \clock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|tmp~q\,
	datac => \clock|Equal0~4_combout\,
	datad => \clock|Equal0~9_combout\,
	combout => \clock|tmp~0_combout\);

-- Location: LCCOMB_X58_Y43_N6
\clock|tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock|tmp~feeder_combout\ = \clock|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock|tmp~0_combout\,
	combout => \clock|tmp~feeder_combout\);

-- Location: FF_X58_Y43_N7
\clock|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|tmp~q\);

-- Location: CLKCTRL_G6
\clock|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\KScan~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KScan,
	o => \KScan~input_o\);

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: LCCOMB_X47_Y22_N4
\count|mux|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count|mux|Y~0_combout\ = (\Reset~input_o\) # (\KScan~input_o\ $ (\count|reg|ff0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KScan~input_o\,
	datab => \Reset~input_o\,
	datac => \count|reg|ff0|Q~q\,
	combout => \count|mux|Y~0_combout\);

-- Location: FF_X47_Y22_N5
\count|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|tmp~clkctrl_outclk\,
	d => \count|mux|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|reg|ff0|Q~q\);

-- Location: LCCOMB_X47_Y22_N6
\count|mux|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count|mux|Y~1_combout\ = (\Reset~input_o\) # (\count|reg|ff1|Q~q\ $ (((\KScan~input_o\ & !\count|reg|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KScan~input_o\,
	datab => \count|reg|ff0|Q~q\,
	datac => \count|reg|ff1|Q~q\,
	datad => \Reset~input_o\,
	combout => \count|mux|Y~1_combout\);

-- Location: FF_X47_Y22_N7
\count|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|tmp~clkctrl_outclk\,
	d => \count|mux|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|reg|ff1|Q~q\);

-- Location: IOIBUF_X14_Y0_N1
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

-- Location: IOIBUF_X46_Y0_N8
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

-- Location: LCCOMB_X47_Y22_N0
\mux|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux|Y~0_combout\ = (\count|reg|ff1|Q~q\ & (\I[0]~input_o\ & (\count|reg|ff0|Q~q\))) # (!\count|reg|ff1|Q~q\ & (((\I[2]~input_o\) # (!\count|reg|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|reg|ff1|Q~q\,
	datab => \I[0]~input_o\,
	datac => \count|reg|ff0|Q~q\,
	datad => \I[2]~input_o\,
	combout => \mux|Y~0_combout\);

-- Location: IOIBUF_X51_Y0_N22
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

-- Location: LCCOMB_X47_Y22_N26
\mux|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux|Y~1_combout\ = (\mux|Y~0_combout\ & ((\I[3]~input_o\) # ((\count|reg|ff0|Q~q\)))) # (!\mux|Y~0_combout\ & (((!\count|reg|ff0|Q~q\ & \I[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I[3]~input_o\,
	datab => \mux|Y~0_combout\,
	datac => \count|reg|ff0|Q~q\,
	datad => \I[1]~input_o\,
	combout => \mux|Y~1_combout\);

-- Location: LCCOMB_X47_Y22_N18
\count|mux|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count|mux|Y~2_combout\ = (\KScan~input_o\ & !\count|reg|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KScan~input_o\,
	datad => \count|reg|ff1|Q~q\,
	combout => \count|mux|Y~2_combout\);

-- Location: LCCOMB_X47_Y22_N20
\count|mux|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count|mux|Y~3_combout\ = (\Reset~input_o\) # (\count|reg|ff2|Q~q\ $ (((!\count|reg|ff0|Q~q\ & \count|mux|Y~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \count|reg|ff0|Q~q\,
	datac => \count|reg|ff2|Q~q\,
	datad => \count|mux|Y~2_combout\,
	combout => \count|mux|Y~3_combout\);

-- Location: FF_X47_Y22_N21
\count|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|tmp~clkctrl_outclk\,
	d => \count|mux|Y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|reg|ff2|Q~q\);

-- Location: LCCOMB_X47_Y22_N16
\count|ad|fa2|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count|ad|fa2|Co~0_combout\ = (\KScan~input_o\ & (!\count|reg|ff0|Q~q\ & !\count|reg|ff1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KScan~input_o\,
	datac => \count|reg|ff0|Q~q\,
	datad => \count|reg|ff1|Q~q\,
	combout => \count|ad|fa2|Co~0_combout\);

-- Location: LCCOMB_X47_Y22_N22
\count|mux|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count|mux|Y~4_combout\ = (\Reset~input_o\) # (\count|reg|ff3|Q~q\ $ (((!\count|reg|ff2|Q~q\ & \count|ad|fa2|Co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \count|reg|ff2|Q~q\,
	datac => \count|reg|ff3|Q~q\,
	datad => \count|ad|fa2|Co~0_combout\,
	combout => \count|mux|Y~4_combout\);

-- Location: FF_X47_Y22_N23
\count|reg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|tmp~clkctrl_outclk\,
	d => \count|mux|Y~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|reg|ff3|Q~q\);

-- Location: LCCOMB_X47_Y22_N24
\dec|O[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec|O[1]~0_combout\ = (!\count|reg|ff2|Q~q\) # (!\count|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|reg|ff3|Q~q\,
	datad => \count|reg|ff2|Q~q\,
	combout => \dec|O[1]~0_combout\);

-- Location: LCCOMB_X47_Y22_N30
\dec|O[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec|O[1]~1_combout\ = (\count|reg|ff3|Q~q\ & !\count|reg|ff2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|reg|ff3|Q~q\,
	datad => \count|reg|ff2|Q~q\,
	combout => \dec|O[1]~1_combout\);

-- Location: LCCOMB_X47_Y22_N28
\dec|O[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec|O[1]~2_combout\ = (!\count|reg|ff3|Q~q\ & \count|reg|ff2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|reg|ff3|Q~q\,
	datad => \count|reg|ff2|Q~q\,
	combout => \dec|O[1]~2_combout\);

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

ww_Kpress <= \Kpress~output_o\;

ww_K(0) <= \K[0]~output_o\;

ww_K(1) <= \K[1]~output_o\;

ww_K(2) <= \K[2]~output_o\;

ww_K(3) <= \K[3]~output_o\;

ww_O(0) <= \O[0]~output_o\;

ww_O(1) <= \O[1]~output_o\;

ww_O(2) <= \O[2]~output_o\;
END structure;


