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

-- DATE "03/10/2023 12:40:47"

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
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	CLK : IN std_logic;
	Reset : IN std_logic;
	Kpress : OUT std_logic;
	O0 : OUT std_logic;
	O1 : OUT std_logic;
	O2 : OUT std_logic;
	K : OUT std_logic_vector(3 DOWNTO 0)
	);
END KeyScan;

-- Design Ports Information
-- Kpress	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O0	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O1	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KScan	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_I0 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Kpress : std_logic;
SIGNAL ww_O0 : std_logic;
SIGNAL ww_O1 : std_logic;
SIGNAL ww_O2 : std_logic;
SIGNAL ww_K : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Kpress~output_o\ : std_logic;
SIGNAL \O0~output_o\ : std_logic;
SIGNAL \O1~output_o\ : std_logic;
SIGNAL \O2~output_o\ : std_logic;
SIGNAL \K[0]~output_o\ : std_logic;
SIGNAL \K[1]~output_o\ : std_logic;
SIGNAL \K[2]~output_o\ : std_logic;
SIGNAL \K[3]~output_o\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \KScan~input_o\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \count|mux|Y~0_combout\ : std_logic;
SIGNAL \count|reg|ff0|Q~q\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \count|mux|Y~1_combout\ : std_logic;
SIGNAL \count|reg|ff1|Q~q\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \mux|Y~0_combout\ : std_logic;
SIGNAL \mux|Y~1_combout\ : std_logic;
SIGNAL \count|ad|fa2|Co~0_combout\ : std_logic;
SIGNAL \count|mux|Y~2_combout\ : std_logic;
SIGNAL \count|reg|ff2|Q~q\ : std_logic;
SIGNAL \count|mux|Y~3_combout\ : std_logic;
SIGNAL \count|reg|ff3|Q~q\ : std_logic;
SIGNAL \dec|O1~0_combout\ : std_logic;
SIGNAL \dec|O1~1_combout\ : std_logic;
SIGNAL \dec|O1~2_combout\ : std_logic;
SIGNAL \dec|ALT_INV_O1~0_combout\ : std_logic;
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
ww_I0 <= I0;
ww_I1 <= I1;
ww_I2 <= I2;
ww_I3 <= I3;
ww_CLK <= CLK;
ww_Reset <= Reset;
Kpress <= ww_Kpress;
O0 <= ww_O0;
O1 <= ww_O1;
O2 <= ww_O2;
K <= ww_K;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\dec|ALT_INV_O1~0_combout\ <= NOT \dec|O1~0_combout\;
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X20_Y0_N30
\O0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|ALT_INV_O1~0_combout\,
	devoe => ww_devoe,
	o => \O0~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\O1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|O1~1_combout\,
	devoe => ww_devoe,
	o => \O1~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\O2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|O1~2_combout\,
	devoe => ww_devoe,
	o => \O2~output_o\);

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X18_Y0_N30
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

-- Location: IOOBUF_X20_Y0_N23
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

-- Location: IOIBUF_X16_Y0_N22
\I1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

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

-- Location: IOIBUF_X20_Y0_N15
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

-- Location: IOIBUF_X20_Y0_N1
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

-- Location: LCCOMB_X19_Y1_N4
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

-- Location: FF_X19_Y1_N5
\count|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count|mux|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|reg|ff0|Q~q\);

-- Location: IOIBUF_X16_Y0_N8
\I3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: LCCOMB_X19_Y1_N6
\count|mux|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count|mux|Y~1_combout\ = (\Reset~input_o\) # (\count|reg|ff1|Q~q\ $ (((\KScan~input_o\ & !\count|reg|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KScan~input_o\,
	datab => \Reset~input_o\,
	datac => \count|reg|ff1|Q~q\,
	datad => \count|reg|ff0|Q~q\,
	combout => \count|mux|Y~1_combout\);

-- Location: FF_X19_Y1_N7
\count|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count|mux|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|reg|ff1|Q~q\);

-- Location: IOIBUF_X16_Y0_N29
\I2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\I0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: LCCOMB_X19_Y1_N20
\mux|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux|Y~0_combout\ = (\count|reg|ff1|Q~q\ & (\count|reg|ff0|Q~q\ & ((\I0~input_o\)))) # (!\count|reg|ff1|Q~q\ & (((\I2~input_o\)) # (!\count|reg|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|reg|ff1|Q~q\,
	datab => \count|reg|ff0|Q~q\,
	datac => \I2~input_o\,
	datad => \I0~input_o\,
	combout => \mux|Y~0_combout\);

-- Location: LCCOMB_X19_Y1_N30
\mux|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux|Y~1_combout\ = (\count|reg|ff0|Q~q\ & (((\mux|Y~0_combout\)))) # (!\count|reg|ff0|Q~q\ & ((\mux|Y~0_combout\ & ((\I3~input_o\))) # (!\mux|Y~0_combout\ & (\I1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1~input_o\,
	datab => \count|reg|ff0|Q~q\,
	datac => \I3~input_o\,
	datad => \mux|Y~0_combout\,
	combout => \mux|Y~1_combout\);

-- Location: LCCOMB_X19_Y1_N18
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

-- Location: LCCOMB_X19_Y1_N28
\count|mux|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count|mux|Y~2_combout\ = (\Reset~input_o\) # (\count|reg|ff2|Q~q\ $ (\count|ad|fa2|Co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \count|reg|ff2|Q~q\,
	datad => \count|ad|fa2|Co~0_combout\,
	combout => \count|mux|Y~2_combout\);

-- Location: FF_X19_Y1_N29
\count|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count|mux|Y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|reg|ff2|Q~q\);

-- Location: LCCOMB_X19_Y1_N26
\count|mux|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count|mux|Y~3_combout\ = (\Reset~input_o\) # (\count|reg|ff3|Q~q\ $ (((!\count|reg|ff2|Q~q\ & \count|ad|fa2|Co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|reg|ff2|Q~q\,
	datab => \Reset~input_o\,
	datac => \count|reg|ff3|Q~q\,
	datad => \count|ad|fa2|Co~0_combout\,
	combout => \count|mux|Y~3_combout\);

-- Location: FF_X19_Y1_N27
\count|reg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count|mux|Y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|reg|ff3|Q~q\);

-- Location: LCCOMB_X19_Y1_N16
\dec|O1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec|O1~0_combout\ = (!\count|reg|ff3|Q~q\) # (!\count|reg|ff2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|reg|ff2|Q~q\,
	datac => \count|reg|ff3|Q~q\,
	combout => \dec|O1~0_combout\);

-- Location: LCCOMB_X19_Y1_N14
\dec|O1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec|O1~1_combout\ = (!\count|reg|ff2|Q~q\ & \count|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|reg|ff2|Q~q\,
	datac => \count|reg|ff3|Q~q\,
	combout => \dec|O1~1_combout\);

-- Location: LCCOMB_X19_Y1_N24
\dec|O1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec|O1~2_combout\ = (\count|reg|ff2|Q~q\ & !\count|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|reg|ff2|Q~q\,
	datac => \count|reg|ff3|Q~q\,
	combout => \dec|O1~2_combout\);

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

ww_O0 <= \O0~output_o\;

ww_O1 <= \O1~output_o\;

ww_O2 <= \O2~output_o\;

ww_K(0) <= \K[0]~output_o\;

ww_K(1) <= \K[1]~output_o\;

ww_K(2) <= \K[2]~output_o\;

ww_K(3) <= \K[3]~output_o\;
END structure;


