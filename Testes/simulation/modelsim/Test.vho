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

-- DATE "05/24/2023 18:15:06"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SCA IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	Reset : IN std_logic;
	CLK : IN std_logic;
	Pswitch : IN std_logic;
	M : IN std_logic;
	I : IN std_logic_vector(3 DOWNTO 0);
	LCD_RS : OUT std_logic;
	LCD_EN : OUT std_logic;
	OC : OUT std_logic;
	OO : OUT std_logic;
	O : OUT std_logic_vector(2 DOWNTO 0);
	LCD_data : OUT std_logic_vector(3 DOWNTO 0);
	Door_data : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	HEX4 : OUT std_logic_vector(7 DOWNTO 0);
	HEX5 : OUT std_logic_vector(7 DOWNTO 0)
	);
END SCA;

-- Design Ports Information
-- M	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_EN	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OC	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OO	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_data[0]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_data[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_data[2]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_data[3]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Door_data[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Door_data[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Door_data[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Door_data[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pswitch	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SCA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Pswitch : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_I : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_OC : std_logic;
SIGNAL ww_OO : std_logic;
SIGNAL ww_O : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LCD_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Door_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \kr|kd|clock|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|shift_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsc|Q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|UCLK|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sl|lcdd|CurrentState.FIRST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~15clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~12clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~14clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \serialDoorC|serialR|sc|CurrentState.FIRST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sl|sr|sc|CurrentState.FIRST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \kr|kd|clock|Add0~0_combout\ : std_logic;
SIGNAL \kr|kd|clock|count[0]~6_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~1\ : std_logic;
SIGNAL \kr|kd|clock|Add0~2_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~3\ : std_logic;
SIGNAL \kr|kd|clock|Add0~4_combout\ : std_logic;
SIGNAL \kr|kd|clock|count~0_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~5\ : std_logic;
SIGNAL \kr|kd|clock|Add0~6_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~7\ : std_logic;
SIGNAL \kr|kd|clock|Add0~8_combout\ : std_logic;
SIGNAL \kr|kd|clock|count~1_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~9\ : std_logic;
SIGNAL \kr|kd|clock|Add0~10_combout\ : std_logic;
SIGNAL \kr|kd|clock|count~2_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~11\ : std_logic;
SIGNAL \kr|kd|clock|Add0~12_combout\ : std_logic;
SIGNAL \kr|kd|clock|count~3_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~13\ : std_logic;
SIGNAL \kr|kd|clock|Add0~14_combout\ : std_logic;
SIGNAL \kr|kd|clock|count~4_combout\ : std_logic;
SIGNAL \kr|kd|clock|Equal0~1_combout\ : std_logic;
SIGNAL \kr|kd|clock|Equal0~0_combout\ : std_logic;
SIGNAL \kr|kd|clock|Equal0~2_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~15\ : std_logic;
SIGNAL \kr|kd|clock|Add0~16_combout\ : std_logic;
SIGNAL \kr|kd|clock|count~5_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~17\ : std_logic;
SIGNAL \kr|kd|clock|Add0~18_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~19\ : std_logic;
SIGNAL \kr|kd|clock|Add0~20_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~21\ : std_logic;
SIGNAL \kr|kd|clock|Add0~22_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~23\ : std_logic;
SIGNAL \kr|kd|clock|Add0~24_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~25\ : std_logic;
SIGNAL \kr|kd|clock|Add0~26_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~27\ : std_logic;
SIGNAL \kr|kd|clock|Add0~28_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~29\ : std_logic;
SIGNAL \kr|kd|clock|Add0~30_combout\ : std_logic;
SIGNAL \kr|kd|clock|Equal0~4_combout\ : std_logic;
SIGNAL \kr|kd|clock|Equal0~3_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~31\ : std_logic;
SIGNAL \kr|kd|clock|Add0~32_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~33\ : std_logic;
SIGNAL \kr|kd|clock|Add0~34_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~35\ : std_logic;
SIGNAL \kr|kd|clock|Add0~36_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~37\ : std_logic;
SIGNAL \kr|kd|clock|Add0~38_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~39\ : std_logic;
SIGNAL \kr|kd|clock|Add0~40_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~41\ : std_logic;
SIGNAL \kr|kd|clock|Add0~42_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~43\ : std_logic;
SIGNAL \kr|kd|clock|Add0~44_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~45\ : std_logic;
SIGNAL \kr|kd|clock|Add0~46_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~47\ : std_logic;
SIGNAL \kr|kd|clock|Add0~48_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~49\ : std_logic;
SIGNAL \kr|kd|clock|Add0~50_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~51\ : std_logic;
SIGNAL \kr|kd|clock|Add0~52_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~53\ : std_logic;
SIGNAL \kr|kd|clock|Add0~54_combout\ : std_logic;
SIGNAL \kr|kd|clock|Equal0~7_combout\ : std_logic;
SIGNAL \kr|kd|clock|Equal0~5_combout\ : std_logic;
SIGNAL \kr|kd|clock|Equal0~6_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~55\ : std_logic;
SIGNAL \kr|kd|clock|Add0~56_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~57\ : std_logic;
SIGNAL \kr|kd|clock|Add0~58_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~59\ : std_logic;
SIGNAL \kr|kd|clock|Add0~60_combout\ : std_logic;
SIGNAL \kr|kd|clock|Add0~61\ : std_logic;
SIGNAL \kr|kd|clock|Add0~62_combout\ : std_logic;
SIGNAL \kr|kd|clock|Equal0~8_combout\ : std_logic;
SIGNAL \kr|kd|clock|Equal0~9_combout\ : std_logic;
SIGNAL \kr|kd|clock|Equal0~10_combout\ : std_logic;
SIGNAL \kr|kd|clock|tmp~0_combout\ : std_logic;
SIGNAL \kr|kd|clock|tmp~q\ : std_logic;
SIGNAL \kr|kd|clock|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \I[3]~input_o\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementPut|ad|fa1|S~combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementGet|ad|fa3|S~combout\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementGet|reg|ff2|Q~q\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementGet|ad|fa3|Cout~0_combout\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementGet|ad|fa4|S~combout\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementGet|reg|ff3|Q~q\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementPut|ad|fa2|S~combout\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementPut|ad|fa3|S~combout\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementPut|ad|fa3|Cout~0_combout\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementPut|ad|fa4|S~combout\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementPut|reg|ff3|Q~q\ : std_logic;
SIGNAL \kr|rbuff|control|Selector2~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \kr|obuff|control|NextState.WRITE_DATA~0_combout\ : std_logic;
SIGNAL \kr|obuff|control|CurrentState.WRITE_DATA~q\ : std_logic;
SIGNAL \kr|obuff|control|NextState.WAIT_ACK~0_combout\ : std_logic;
SIGNAL \kr|obuff|control|CurrentState.WAIT_ACK~q\ : std_logic;
SIGNAL \kr|obuff|control|Selector0~0_combout\ : std_logic;
SIGNAL \kr|obuff|control|CurrentState.CAN_RECEIVE~q\ : std_logic;
SIGNAL \kr|rbuff|control|Selector0~0_combout\ : std_logic;
SIGNAL \kr|rbuff|mac|empty~0_combout\ : std_logic;
SIGNAL \kr|rbuff|control|Selector0~1_combout\ : std_logic;
SIGNAL \kr|rbuff|control|Selector0~2_combout\ : std_logic;
SIGNAL \kr|rbuff|control|CurrentState.ZEN~q\ : std_logic;
SIGNAL \kr|rbuff|control|Selector2~2_combout\ : std_logic;
SIGNAL \kr|rbuff|control|CurrentState.WRITE_REG~q\ : std_logic;
SIGNAL \kr|rbuff|control|NextState.INC_GET~0_combout\ : std_logic;
SIGNAL \kr|rbuff|control|CurrentState.INC_GET~q\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementGet|ad|fa1|S~combout\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementGet|reg|ff0|Q~q\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementGet|ad|fa2|S~combout\ : std_logic;
SIGNAL \kr|rbuff|mac|incrementGet|reg|ff1|Q~q\ : std_logic;
SIGNAL \kr|rbuff|mac|Equal0~0_combout\ : std_logic;
SIGNAL \kr|rbuff|mac|Equal0~1_combout\ : std_logic;
SIGNAL \kr|rbuff|control|NextState.SELECT_PUT~0_combout\ : std_logic;
SIGNAL \kr|rbuff|control|CurrentState.SELECT_PUT~q\ : std_logic;
SIGNAL \kr|rbuff|control|CurrentState.WRITE_RAM~feeder_combout\ : std_logic;
SIGNAL \kr|rbuff|control|CurrentState.WRITE_RAM~q\ : std_logic;
SIGNAL \kr|rbuff|control|CurrentState.INC_PUT~feeder_combout\ : std_logic;
SIGNAL \kr|rbuff|control|CurrentState.INC_PUT~q\ : std_logic;
SIGNAL \kr|rbuff|control|Selector1~0_combout\ : std_logic;
SIGNAL \kr|rbuff|control|CurrentState.ACCEPTED~q\ : std_logic;
SIGNAL \kr|kd|control|Selector1~0_combout\ : std_logic;
SIGNAL \kr|kd|control|CurrentState.SECOND~q\ : std_logic;
SIGNAL \kr|kd|control|Selector2~0_combout\ : std_logic;
SIGNAL \kr|kd|control|CurrentState.THIRD~q\ : std_logic;
SIGNAL \kr|kd|control|Selector0~0_combout\ : std_logic;
SIGNAL \kr|kd|control|CurrentState.FIRST~q\ : std_logic;
SIGNAL \kr|kd|scan|count|reg|ff0|Q~0_combout\ : std_logic;
SIGNAL \kr|kd|scan|count|reg|ff0|Q~q\ : std_logic;
SIGNAL \I[0]~input_o\ : std_logic;
SIGNAL \I[2]~input_o\ : std_logic;
SIGNAL \kr|kd|scan|mux|Y~0_combout\ : std_logic;
SIGNAL \I[1]~input_o\ : std_logic;
SIGNAL \kr|kd|scan|mux|Y~1_combout\ : std_logic;
SIGNAL \kr|kd|scan|count|reg|ff1|Q~0_combout\ : std_logic;
SIGNAL \kr|kd|scan|count|reg|ff1|Q~q\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \rtl~12clkctrl_outclk\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~9_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \rtl~15clkctrl_outclk\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~13_combout\ : std_logic;
SIGNAL \kr|rbuff|mac|idxDecider|Y[1]~1_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \rtl~14clkctrl_outclk\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~1_combout\ : std_logic;
SIGNAL \kr|rbuff|mac|idxDecider|Y[0]~0_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \rtl~13clkctrl_outclk\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~5_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~39_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~40_combout\ : std_logic;
SIGNAL \kr|rbuff|mac|idxDecider|Y[2]~2_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \rtl~11clkctrl_outclk\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~29_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \rtl~9clkctrl_outclk\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~25_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \rtl~10clkctrl_outclk\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~17_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~37_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \rtl~8clkctrl_outclk\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~21_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~38_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~41_combout\ : std_logic;
SIGNAL \kr|obuff|outreg|ff1|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \kr|kd|scan|count|reg|ff2|Q~0_combout\ : std_logic;
SIGNAL \kr|kd|scan|count|reg|ff2|Q~1_combout\ : std_logic;
SIGNAL \kr|kd|scan|count|reg|ff2|Q~q\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~6_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~2_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~44_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~14_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~10_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~45_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~22_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~30_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~26_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~18_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~42_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~43_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~46_combout\ : std_logic;
SIGNAL \kr|obuff|outreg|ff2|Q~q\ : std_logic;
SIGNAL \serialDoorC|serialR|c|reg|ff0|Q~0_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sc|CurrentState.FIRST~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \fdoor|Q~0_combout\ : std_logic;
SIGNAL \fdoor|Q~q\ : std_logic;
SIGNAL \serialDoorC|serialR|c|reg|ff2|Q~0_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|c|reg|ff2|Q~q\ : std_logic;
SIGNAL \serialDoorC|serialR|sc|Selector2~0_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~1_cout\ : std_logic;
SIGNAL \dm|UCLK|Add0~2_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~3\ : std_logic;
SIGNAL \dm|UCLK|Add0~4_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~5\ : std_logic;
SIGNAL \dm|UCLK|Add0~6_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~7\ : std_logic;
SIGNAL \dm|UCLK|Add0~8_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~9\ : std_logic;
SIGNAL \dm|UCLK|Add0~10_combout\ : std_logic;
SIGNAL \dm|UCLK|count~0_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~11\ : std_logic;
SIGNAL \dm|UCLK|Add0~12_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~13\ : std_logic;
SIGNAL \dm|UCLK|Add0~14_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~15\ : std_logic;
SIGNAL \dm|UCLK|Add0~16_combout\ : std_logic;
SIGNAL \dm|UCLK|count~1_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~17\ : std_logic;
SIGNAL \dm|UCLK|Add0~18_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~19\ : std_logic;
SIGNAL \dm|UCLK|Add0~20_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~21\ : std_logic;
SIGNAL \dm|UCLK|Add0~22_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~23\ : std_logic;
SIGNAL \dm|UCLK|Add0~24_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~25\ : std_logic;
SIGNAL \dm|UCLK|Add0~26_combout\ : std_logic;
SIGNAL \dm|UCLK|count~2_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~27\ : std_logic;
SIGNAL \dm|UCLK|Add0~28_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~29\ : std_logic;
SIGNAL \dm|UCLK|Add0~30_combout\ : std_logic;
SIGNAL \dm|UCLK|count~3_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~31\ : std_logic;
SIGNAL \dm|UCLK|Add0~32_combout\ : std_logic;
SIGNAL \dm|UCLK|count~4_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~33\ : std_logic;
SIGNAL \dm|UCLK|Add0~34_combout\ : std_logic;
SIGNAL \dm|UCLK|count~5_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~35\ : std_logic;
SIGNAL \dm|UCLK|Add0~36_combout\ : std_logic;
SIGNAL \dm|UCLK|count~6_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~37\ : std_logic;
SIGNAL \dm|UCLK|Add0~38_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~39\ : std_logic;
SIGNAL \dm|UCLK|Add0~40_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~41\ : std_logic;
SIGNAL \dm|UCLK|Add0~42_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~43\ : std_logic;
SIGNAL \dm|UCLK|Add0~44_combout\ : std_logic;
SIGNAL \dm|UCLK|Equal0~5_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~45\ : std_logic;
SIGNAL \dm|UCLK|Add0~46_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~47\ : std_logic;
SIGNAL \dm|UCLK|Add0~48_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~49\ : std_logic;
SIGNAL \dm|UCLK|Add0~50_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~51\ : std_logic;
SIGNAL \dm|UCLK|Add0~52_combout\ : std_logic;
SIGNAL \dm|UCLK|Equal0~6_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~53\ : std_logic;
SIGNAL \dm|UCLK|Add0~54_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~55\ : std_logic;
SIGNAL \dm|UCLK|Add0~56_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~57\ : std_logic;
SIGNAL \dm|UCLK|Add0~58_combout\ : std_logic;
SIGNAL \dm|UCLK|Add0~59\ : std_logic;
SIGNAL \dm|UCLK|Add0~60_combout\ : std_logic;
SIGNAL \dm|UCLK|Equal0~7_combout\ : std_logic;
SIGNAL \dm|UCLK|Equal0~4_combout\ : std_logic;
SIGNAL \dm|UCLK|Equal0~8_combout\ : std_logic;
SIGNAL \dm|UCLK|Equal0~3_combout\ : std_logic;
SIGNAL \dm|UCLK|Equal0~2_combout\ : std_logic;
SIGNAL \dm|UCLK|Equal0~0_combout\ : std_logic;
SIGNAL \dm|UCLK|Equal0~1_combout\ : std_logic;
SIGNAL \dm|UCLK|Equal0~9_combout\ : std_logic;
SIGNAL \dm|UCLK|tmp~0_combout\ : std_logic;
SIGNAL \dm|UCLK|tmp~q\ : std_logic;
SIGNAL \dm|UCLK|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd4|Q~0_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd4|Q~q\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd3|Q~feeder_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd3|Q~q\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd2|Q~feeder_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd2|Q~q\ : std_logic;
SIGNAL \dm|U6|cnt_atual_pl[0]~3_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd1|Q~feeder_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd1|Q~q\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd0|Q~feeder_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd0|Q~q\ : std_logic;
SIGNAL \serialDoorC|doorControl|Selector2~0_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|CurrentState.THIRD~q\ : std_logic;
SIGNAL \serialDoorC|doorControl|Selector0~0_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|CurrentState.FIRST~q\ : std_logic;
SIGNAL \serialDoorC|doorControl|Selector1~1_combout\ : std_logic;
SIGNAL \Pswitch~input_o\ : std_logic;
SIGNAL \serialDoorC|doorControl|Selector1~0_combout\ : std_logic;
SIGNAL \dm|U7|dataShift_in[6]~7_combout\ : std_logic;
SIGNAL \dm|U7|dataShift_in[7]~8_combout\ : std_logic;
SIGNAL \dm|U7|dataShift_in[8]~0_combout\ : std_logic;
SIGNAL \dm|U7|dataShift_in[2]~3_combout\ : std_logic;
SIGNAL \dm|U7|dataShift_in[3]~4_combout\ : std_logic;
SIGNAL \dm|U7|dataShift_in[4]~5_combout\ : std_logic;
SIGNAL \dm|Equal0~1_combout\ : std_logic;
SIGNAL \dm|U7|dataShift_in[0]~1_combout\ : std_logic;
SIGNAL \dm|Equal0~0_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|OnOff~0_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|Selector1~2_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|CurrentState.SECOND~q\ : std_logic;
SIGNAL \dm|U7|dataShift_in[1]~2_combout\ : std_logic;
SIGNAL \dm|Equal1~0_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|Selector3~0_combout\ : std_logic;
SIGNAL \dm|Equal1~2_combout\ : std_logic;
SIGNAL \dm|Equal1~1_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|OnOff~1_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|OnOff~combout\ : std_logic;
SIGNAL \dm|U6|cnt_atual_pl[1]~4_combout\ : std_logic;
SIGNAL \dm|U6|U1|SC:2:U1|S~combout\ : std_logic;
SIGNAL \dm|U6|cnt_atual_pl[2]~2_combout\ : std_logic;
SIGNAL \dm|U6|U1|SC:3:U1|S~combout\ : std_logic;
SIGNAL \dm|U6|cnt_atual_pl[3]~1_combout\ : std_logic;
SIGNAL \dm|shift_clk~0_combout\ : std_logic;
SIGNAL \dm|U6|cnt_atual_pl[4]~0_combout\ : std_logic;
SIGNAL \dm|shift_clk~combout\ : std_logic;
SIGNAL \dm|shift_clk~clkctrl_outclk\ : std_logic;
SIGNAL \dm|U7|dataShift_in[5]~6_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|Selector3~1_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|Selector3~2_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|Selector3~3_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|Selector3~4_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|Selector3~5_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|Selector3~6_combout\ : std_logic;
SIGNAL \serialDoorC|doorControl|CurrentState.FORTH~q\ : std_logic;
SIGNAL \serialDoorC|serialR|sc|Selector2~1_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sc|CurrentState.THIRD~q\ : std_logic;
SIGNAL \serialDoorC|serialR|sc|NextState.FORTH~0_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sc|CurrentState.FORTH~q\ : std_logic;
SIGNAL \serialDoorC|serialR|sc|Selector1~0_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sc|CurrentState.SECOND~q\ : std_logic;
SIGNAL \serialDoorC|serialR|c|reg|ff0|Q~q\ : std_logic;
SIGNAL \serialDoorC|serialR|c|reg|ff1|Q~0_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|c|reg|ff1|Q~q\ : std_logic;
SIGNAL \serialDoorC|serialR|sc|Selector0~1_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sc|Selector0~0_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sc|Selector0~2_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sc|CurrentState.FIRST~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \kr|kd|scan|count|ad|fa2|Cout~0_combout\ : std_logic;
SIGNAL \kr|kd|scan|count|reg|ff3|Q~0_combout\ : std_logic;
SIGNAL \kr|kd|scan|count|reg|ff3|Q~q\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~19_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~27_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~47_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~23_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~31_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~48_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~11_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~3_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~7_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~49_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~15_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~50_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~51_combout\ : std_logic;
SIGNAL \kr|obuff|outreg|ff3|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~12_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~8_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~4_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~0_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~34_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~35_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~24_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~16_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~32_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~20_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~28_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~33_combout\ : std_logic;
SIGNAL \kr|rbuff|memory|ram~36_combout\ : std_logic;
SIGNAL \kr|obuff|outreg|ff0|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \kr|obuff|control|Selector1~0_combout\ : std_logic;
SIGNAL \kr|obuff|control|CurrentState.SEND_DATA~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \fsc|Q~0_combout\ : std_logic;
SIGNAL \fsc|Q~q\ : std_logic;
SIGNAL \fsc|Q~clkctrl_outclk\ : std_logic;
SIGNAL \sl|sr|sr|ffd4|Q~0_combout\ : std_logic;
SIGNAL \sl|sr|c|reg|ff0|Q~0_combout\ : std_logic;
SIGNAL \sl|lcdd|Selector0~0_combout\ : std_logic;
SIGNAL \sl|lcdd|CurrentState.FIRST~q\ : std_logic;
SIGNAL \sl|lcdd|Selector1~0_combout\ : std_logic;
SIGNAL \sl|lcdd|CurrentState.SECOND~q\ : std_logic;
SIGNAL \sl|lcdd|cup|reg|ff0|Q~0_combout\ : std_logic;
SIGNAL \sl|lcdd|CurrentState.FIRST~clkctrl_outclk\ : std_logic;
SIGNAL \sl|lcdd|cup|reg|ff0|Q~q\ : std_logic;
SIGNAL \sl|lcdd|cup|reg|ff1|Q~0_combout\ : std_logic;
SIGNAL \sl|lcdd|cup|reg|ff1|Q~q\ : std_logic;
SIGNAL \sl|lcdd|cup|reg|ff2|Q~0_combout\ : std_logic;
SIGNAL \sl|lcdd|cup|reg|ff2|Q~q\ : std_logic;
SIGNAL \sl|lcdd|cup|ad|fa3|Cout~0_combout\ : std_logic;
SIGNAL \sl|lcdd|cup|reg|ff3|Q~0_combout\ : std_logic;
SIGNAL \sl|lcdd|cup|reg|ff3|Q~q\ : std_logic;
SIGNAL \sl|lcdd|Selector2~0_combout\ : std_logic;
SIGNAL \sl|lcdd|Selector2~1_combout\ : std_logic;
SIGNAL \sl|lcdd|CurrentState.THIRD~q\ : std_logic;
SIGNAL \sl|sr|sc|NextState.FORTH~0_combout\ : std_logic;
SIGNAL \sl|sr|sc|CurrentState.FORTH~q\ : std_logic;
SIGNAL \sl|sr|sc|Selector0~0_combout\ : std_logic;
SIGNAL \sl|sr|c|reg|ff2|Q~0_combout\ : std_logic;
SIGNAL \sl|sr|c|reg|ff2|Q~q\ : std_logic;
SIGNAL \sl|sr|sc|Selector0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \flcd|Q~0_combout\ : std_logic;
SIGNAL \flcd|Q~q\ : std_logic;
SIGNAL \sl|sr|sc|Selector0~2_combout\ : std_logic;
SIGNAL \sl|sr|sc|CurrentState.FIRST~q\ : std_logic;
SIGNAL \sl|sr|sc|CurrentState.FIRST~clkctrl_outclk\ : std_logic;
SIGNAL \sl|sr|c|reg|ff0|Q~q\ : std_logic;
SIGNAL \sl|sr|c|reg|ff1|Q~0_combout\ : std_logic;
SIGNAL \sl|sr|c|reg|ff1|Q~q\ : std_logic;
SIGNAL \sl|sr|sc|Selector2~0_combout\ : std_logic;
SIGNAL \sl|sr|sc|Selector2~1_combout\ : std_logic;
SIGNAL \sl|sr|sc|CurrentState.THIRD~q\ : std_logic;
SIGNAL \sl|sr|sc|Selector1~0_combout\ : std_logic;
SIGNAL \sl|sr|sc|CurrentState.SECOND~q\ : std_logic;
SIGNAL \sl|sr|sr|ffd4|Q~q\ : std_logic;
SIGNAL \sl|sr|sr|ffd3|Q~feeder_combout\ : std_logic;
SIGNAL \sl|sr|sr|ffd3|Q~q\ : std_logic;
SIGNAL \sl|sr|sr|ffd2|Q~feeder_combout\ : std_logic;
SIGNAL \sl|sr|sr|ffd2|Q~q\ : std_logic;
SIGNAL \sl|sr|sr|ffd1|Q~feeder_combout\ : std_logic;
SIGNAL \sl|sr|sr|ffd1|Q~q\ : std_logic;
SIGNAL \sl|sr|sr|ffd0|Q~feeder_combout\ : std_logic;
SIGNAL \sl|sr|sr|ffd0|Q~q\ : std_logic;
SIGNAL \kr|kd|scan|dec|O[1]~0_combout\ : std_logic;
SIGNAL \kr|kd|scan|dec|O[1]~1_combout\ : std_logic;
SIGNAL \kr|kd|scan|dec|O[1]~2_combout\ : std_logic;
SIGNAL \dm|U0|dOut[1]~0_combout\ : std_logic;
SIGNAL \dm|U5|dOut~0_combout\ : std_logic;
SIGNAL \dm|U1|dOut[1]~0_combout\ : std_logic;
SIGNAL \dm|U4|dOut~0_combout\ : std_logic;
SIGNAL \dm|U2|dOut[1]~0_combout\ : std_logic;
SIGNAL \dm|U3|dOut~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|UCLK|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dm|U7|U1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dm|U6|U2|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \kr|kd|clock|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|U3|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \dm|U4|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \dm|U5|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd4|ALT_INV_Q~q\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd3|ALT_INV_Q~q\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd2|ALT_INV_Q~q\ : std_logic;
SIGNAL \serialDoorC|serialR|sr|ffd1|ALT_INV_Q~q\ : std_logic;
SIGNAL \sl|sr|sr|ffd4|ALT_INV_Q~q\ : std_logic;
SIGNAL \sl|sr|sr|ffd3|ALT_INV_Q~q\ : std_logic;
SIGNAL \sl|sr|sr|ffd2|ALT_INV_Q~q\ : std_logic;
SIGNAL \sl|sr|sr|ffd1|ALT_INV_Q~q\ : std_logic;
SIGNAL \kr|kd|scan|dec|ALT_INV_O[1]~2_combout\ : std_logic;
SIGNAL \kr|kd|scan|dec|ALT_INV_O[1]~1_combout\ : std_logic;
SIGNAL \dm|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \dm|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \dm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \sl|sr|sr|ffd0|ALT_INV_Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \fsc|ALT_INV_Q~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_Reset <= Reset;
ww_CLK <= CLK;
ww_Pswitch <= Pswitch;
ww_M <= M;
ww_I <= I;
LCD_RS <= ww_LCD_RS;
LCD_EN <= ww_LCD_EN;
OC <= ww_OC;
OO <= ww_OO;
O <= ww_O;
LCD_data <= ww_LCD_data;
Door_data <= ww_Door_data;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~10_combout\);

\kr|kd|clock|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \kr|kd|clock|tmp~q\);

\dm|shift_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dm|shift_clk~combout\);

\fsc|Q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fsc|Q~q\);

\dm|UCLK|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dm|UCLK|tmp~q\);

\sl|lcdd|CurrentState.FIRST~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sl|lcdd|CurrentState.FIRST~q\);

\rtl~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~13_combout\);

\rtl~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~9_combout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\rtl~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~8_combout\);

\rtl~15clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~15_combout\);

\rtl~12clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~12_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\rtl~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~11_combout\);

\rtl~14clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~14_combout\);

\serialDoorC|serialR|sc|CurrentState.FIRST~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \serialDoorC|serialR|sc|CurrentState.FIRST~q\);

\sl|sr|sc|CurrentState.FIRST~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sl|sr|sc|CurrentState.FIRST~q\);
\dm|U3|ALT_INV_dOut~0_combout\ <= NOT \dm|U3|dOut~0_combout\;
\dm|U4|ALT_INV_dOut~0_combout\ <= NOT \dm|U4|dOut~0_combout\;
\dm|U5|ALT_INV_dOut~0_combout\ <= NOT \dm|U5|dOut~0_combout\;
\serialDoorC|serialR|sr|ffd4|ALT_INV_Q~q\ <= NOT \serialDoorC|serialR|sr|ffd4|Q~q\;
\serialDoorC|serialR|sr|ffd3|ALT_INV_Q~q\ <= NOT \serialDoorC|serialR|sr|ffd3|Q~q\;
\serialDoorC|serialR|sr|ffd2|ALT_INV_Q~q\ <= NOT \serialDoorC|serialR|sr|ffd2|Q~q\;
\serialDoorC|serialR|sr|ffd1|ALT_INV_Q~q\ <= NOT \serialDoorC|serialR|sr|ffd1|Q~q\;
\sl|sr|sr|ffd4|ALT_INV_Q~q\ <= NOT \sl|sr|sr|ffd4|Q~q\;
\sl|sr|sr|ffd3|ALT_INV_Q~q\ <= NOT \sl|sr|sr|ffd3|Q~q\;
\sl|sr|sr|ffd2|ALT_INV_Q~q\ <= NOT \sl|sr|sr|ffd2|Q~q\;
\sl|sr|sr|ffd1|ALT_INV_Q~q\ <= NOT \sl|sr|sr|ffd1|Q~q\;
\kr|kd|scan|dec|ALT_INV_O[1]~2_combout\ <= NOT \kr|kd|scan|dec|O[1]~2_combout\;
\kr|kd|scan|dec|ALT_INV_O[1]~1_combout\ <= NOT \kr|kd|scan|dec|O[1]~1_combout\;
\dm|ALT_INV_Equal1~2_combout\ <= NOT \dm|Equal1~2_combout\;
\dm|ALT_INV_Equal1~1_combout\ <= NOT \dm|Equal1~1_combout\;
\dm|ALT_INV_Equal1~0_combout\ <= NOT \dm|Equal1~0_combout\;
\sl|sr|sr|ffd0|ALT_INV_Q~q\ <= NOT \sl|sr|sr|ffd0|Q~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\fsc|ALT_INV_Q~clkctrl_outclk\ <= NOT \fsc|Q~clkctrl_outclk\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;

-- Location: FF_X47_Y37_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LCCOMB_X47_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X47_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X49_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X49_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LCCOMB_X47_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\);

-- Location: LCCOMB_X44_Y50_N8
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

-- Location: LCCOMB_X50_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\);

-- Location: LCCOMB_X50_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\);

-- Location: LCCOMB_X50_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: IOOBUF_X24_Y0_N2
\LCD_RS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sl|sr|sr|ffd0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_LCD_RS);

-- Location: IOOBUF_X14_Y0_N9
\LCD_EN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sl|lcdd|CurrentState.SECOND~q\,
	devoe => ww_devoe,
	o => ww_LCD_EN);

-- Location: IOOBUF_X56_Y54_N30
\OC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialDoorC|doorControl|CurrentState.SECOND~q\,
	devoe => ww_devoe,
	o => ww_OC);

-- Location: IOOBUF_X58_Y54_N23
\OO~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialDoorC|doorControl|OnOff~combout\,
	devoe => ww_devoe,
	o => ww_OO);

-- Location: IOOBUF_X38_Y0_N9
\O[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kr|kd|scan|dec|O[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_O(0));

-- Location: IOOBUF_X38_Y0_N16
\O[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kr|kd|scan|dec|ALT_INV_O[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_O(1));

-- Location: IOOBUF_X34_Y0_N23
\O[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kr|kd|scan|dec|ALT_INV_O[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_O(2));

-- Location: IOOBUF_X36_Y0_N9
\LCD_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sl|sr|sr|ffd1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_LCD_data(0));

-- Location: IOOBUF_X34_Y0_N2
\LCD_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sl|sr|sr|ffd2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_LCD_data(1));

-- Location: IOOBUF_X20_Y0_N2
\LCD_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sl|sr|sr|ffd3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_LCD_data(2));

-- Location: IOOBUF_X20_Y0_N9
\LCD_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sl|sr|sr|ffd4|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_LCD_data(3));

-- Location: IOOBUF_X46_Y54_N2
\Door_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialDoorC|serialR|sr|ffd1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_Door_data(0));

-- Location: IOOBUF_X46_Y54_N23
\Door_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialDoorC|serialR|sr|ffd2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_Door_data(1));

-- Location: IOOBUF_X51_Y54_N16
\Door_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialDoorC|serialR|sr|ffd3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_Door_data(2));

-- Location: IOOBUF_X46_Y54_N9
\Door_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialDoorC|serialR|sr|ffd4|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_Door_data(3));

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U5|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(7));

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U4|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(7));

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|ALT_INV_Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|ALT_INV_Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U3|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(7));

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|ALT_INV_Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|ALT_INV_Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U3|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(7));

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U4|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(7));

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm|U5|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(7));

-- Location: IOOBUF_X0_Y28_N23
\altera_reserved_tdo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

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

-- Location: IOIBUF_X0_Y29_N15
\altera_reserved_tms~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\altera_reserved_tck~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\altera_reserved_tdi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: JTAG_X43_Y40_N0
altera_internal_jtag : fiftyfivenm_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X49_Y36_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X49_Y36_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X49_Y36_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X49_Y36_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X49_Y36_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X49_Y36_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X49_Y36_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X49_Y38_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X49_Y36_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X49_Y36_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X49_Y36_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X49_Y36_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X49_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X49_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X49_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X49_Y37_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X49_Y36_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X49_Y36_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X49_Y36_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X49_Y36_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X49_Y36_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X49_Y36_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X49_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X49_Y37_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X49_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X49_Y37_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X49_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X49_Y37_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X49_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X49_Y37_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: LCCOMB_X49_Y36_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X49_Y36_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X49_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X49_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X47_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X47_Y37_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X49_Y36_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X49_Y36_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X49_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X49_Y38_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X31_Y24_N0
\kr|kd|clock|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~0_combout\ = \kr|kd|clock|count\(0) $ (GND)
-- \kr|kd|clock|Add0~1\ = CARRY(!\kr|kd|clock|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(0),
	datad => VCC,
	combout => \kr|kd|clock|Add0~0_combout\,
	cout => \kr|kd|clock|Add0~1\);

-- Location: LCCOMB_X32_Y24_N18
\kr|kd|clock|count[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|count[0]~6_combout\ = !\kr|kd|clock|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kr|kd|clock|Add0~0_combout\,
	combout => \kr|kd|clock|count[0]~6_combout\);

-- Location: FF_X32_Y24_N19
\kr|kd|clock|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|count[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(0));

-- Location: LCCOMB_X31_Y24_N2
\kr|kd|clock|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~2_combout\ = (\kr|kd|clock|count\(1) & (!\kr|kd|clock|Add0~1\)) # (!\kr|kd|clock|count\(1) & ((\kr|kd|clock|Add0~1\) # (GND)))
-- \kr|kd|clock|Add0~3\ = CARRY((!\kr|kd|clock|Add0~1\) # (!\kr|kd|clock|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(1),
	datad => VCC,
	cin => \kr|kd|clock|Add0~1\,
	combout => \kr|kd|clock|Add0~2_combout\,
	cout => \kr|kd|clock|Add0~3\);

-- Location: FF_X31_Y24_N3
\kr|kd|clock|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(1));

-- Location: LCCOMB_X31_Y24_N4
\kr|kd|clock|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~4_combout\ = (\kr|kd|clock|count\(2) & (\kr|kd|clock|Add0~3\ $ (GND))) # (!\kr|kd|clock|count\(2) & (!\kr|kd|clock|Add0~3\ & VCC))
-- \kr|kd|clock|Add0~5\ = CARRY((\kr|kd|clock|count\(2) & !\kr|kd|clock|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(2),
	datad => VCC,
	cin => \kr|kd|clock|Add0~3\,
	combout => \kr|kd|clock|Add0~4_combout\,
	cout => \kr|kd|clock|Add0~5\);

-- Location: LCCOMB_X32_Y24_N6
\kr|kd|clock|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|count~0_combout\ = (!\kr|kd|clock|Equal0~10_combout\ & \kr|kd|clock|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|Equal0~10_combout\,
	datac => \kr|kd|clock|Add0~4_combout\,
	combout => \kr|kd|clock|count~0_combout\);

-- Location: FF_X32_Y24_N7
\kr|kd|clock|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(2));

-- Location: LCCOMB_X31_Y24_N6
\kr|kd|clock|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~6_combout\ = (\kr|kd|clock|count\(3) & (!\kr|kd|clock|Add0~5\)) # (!\kr|kd|clock|count\(3) & ((\kr|kd|clock|Add0~5\) # (GND)))
-- \kr|kd|clock|Add0~7\ = CARRY((!\kr|kd|clock|Add0~5\) # (!\kr|kd|clock|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(3),
	datad => VCC,
	cin => \kr|kd|clock|Add0~5\,
	combout => \kr|kd|clock|Add0~6_combout\,
	cout => \kr|kd|clock|Add0~7\);

-- Location: FF_X31_Y24_N7
\kr|kd|clock|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(3));

-- Location: LCCOMB_X31_Y24_N8
\kr|kd|clock|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~8_combout\ = (\kr|kd|clock|count\(4) & (\kr|kd|clock|Add0~7\ $ (GND))) # (!\kr|kd|clock|count\(4) & (!\kr|kd|clock|Add0~7\ & VCC))
-- \kr|kd|clock|Add0~9\ = CARRY((\kr|kd|clock|count\(4) & !\kr|kd|clock|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(4),
	datad => VCC,
	cin => \kr|kd|clock|Add0~7\,
	combout => \kr|kd|clock|Add0~8_combout\,
	cout => \kr|kd|clock|Add0~9\);

-- Location: LCCOMB_X32_Y24_N0
\kr|kd|clock|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|count~1_combout\ = (\kr|kd|clock|Add0~8_combout\ & !\kr|kd|clock|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|Add0~8_combout\,
	datac => \kr|kd|clock|Equal0~10_combout\,
	combout => \kr|kd|clock|count~1_combout\);

-- Location: FF_X32_Y24_N1
\kr|kd|clock|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(4));

-- Location: LCCOMB_X31_Y24_N10
\kr|kd|clock|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~10_combout\ = (\kr|kd|clock|count\(5) & (!\kr|kd|clock|Add0~9\)) # (!\kr|kd|clock|count\(5) & ((\kr|kd|clock|Add0~9\) # (GND)))
-- \kr|kd|clock|Add0~11\ = CARRY((!\kr|kd|clock|Add0~9\) # (!\kr|kd|clock|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(5),
	datad => VCC,
	cin => \kr|kd|clock|Add0~9\,
	combout => \kr|kd|clock|Add0~10_combout\,
	cout => \kr|kd|clock|Add0~11\);

-- Location: LCCOMB_X32_Y24_N2
\kr|kd|clock|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|count~2_combout\ = (\kr|kd|clock|Add0~10_combout\ & !\kr|kd|clock|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|Add0~10_combout\,
	datac => \kr|kd|clock|Equal0~10_combout\,
	combout => \kr|kd|clock|count~2_combout\);

-- Location: FF_X32_Y24_N3
\kr|kd|clock|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(5));

-- Location: LCCOMB_X31_Y24_N12
\kr|kd|clock|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~12_combout\ = (\kr|kd|clock|count\(6) & (\kr|kd|clock|Add0~11\ $ (GND))) # (!\kr|kd|clock|count\(6) & (!\kr|kd|clock|Add0~11\ & VCC))
-- \kr|kd|clock|Add0~13\ = CARRY((\kr|kd|clock|count\(6) & !\kr|kd|clock|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(6),
	datad => VCC,
	cin => \kr|kd|clock|Add0~11\,
	combout => \kr|kd|clock|Add0~12_combout\,
	cout => \kr|kd|clock|Add0~13\);

-- Location: LCCOMB_X32_Y24_N20
\kr|kd|clock|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|count~3_combout\ = (\kr|kd|clock|Add0~12_combout\ & !\kr|kd|clock|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|Add0~12_combout\,
	datac => \kr|kd|clock|Equal0~10_combout\,
	combout => \kr|kd|clock|count~3_combout\);

-- Location: FF_X32_Y24_N21
\kr|kd|clock|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(6));

-- Location: LCCOMB_X31_Y24_N14
\kr|kd|clock|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~14_combout\ = (\kr|kd|clock|count\(7) & (!\kr|kd|clock|Add0~13\)) # (!\kr|kd|clock|count\(7) & ((\kr|kd|clock|Add0~13\) # (GND)))
-- \kr|kd|clock|Add0~15\ = CARRY((!\kr|kd|clock|Add0~13\) # (!\kr|kd|clock|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(7),
	datad => VCC,
	cin => \kr|kd|clock|Add0~13\,
	combout => \kr|kd|clock|Add0~14_combout\,
	cout => \kr|kd|clock|Add0~15\);

-- Location: LCCOMB_X32_Y24_N22
\kr|kd|clock|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|count~4_combout\ = (\kr|kd|clock|Add0~14_combout\ & !\kr|kd|clock|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|Add0~14_combout\,
	datac => \kr|kd|clock|Equal0~10_combout\,
	combout => \kr|kd|clock|count~4_combout\);

-- Location: FF_X32_Y24_N23
\kr|kd|clock|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(7));

-- Location: LCCOMB_X32_Y24_N24
\kr|kd|clock|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Equal0~1_combout\ = (\kr|kd|clock|count\(6) & (\kr|kd|clock|count\(4) & (\kr|kd|clock|count\(7) & \kr|kd|clock|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(6),
	datab => \kr|kd|clock|count\(4),
	datac => \kr|kd|clock|count\(7),
	datad => \kr|kd|clock|count\(5),
	combout => \kr|kd|clock|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y24_N12
\kr|kd|clock|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Equal0~0_combout\ = (!\kr|kd|clock|count\(1) & \kr|kd|clock|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(1),
	datad => \kr|kd|clock|count\(0),
	combout => \kr|kd|clock|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y24_N10
\kr|kd|clock|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Equal0~2_combout\ = (\kr|kd|clock|count\(2) & (\kr|kd|clock|Equal0~1_combout\ & (!\kr|kd|clock|count\(3) & \kr|kd|clock|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(2),
	datab => \kr|kd|clock|Equal0~1_combout\,
	datac => \kr|kd|clock|count\(3),
	datad => \kr|kd|clock|Equal0~0_combout\,
	combout => \kr|kd|clock|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y24_N16
\kr|kd|clock|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~16_combout\ = (\kr|kd|clock|count\(8) & (\kr|kd|clock|Add0~15\ $ (GND))) # (!\kr|kd|clock|count\(8) & (!\kr|kd|clock|Add0~15\ & VCC))
-- \kr|kd|clock|Add0~17\ = CARRY((\kr|kd|clock|count\(8) & !\kr|kd|clock|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(8),
	datad => VCC,
	cin => \kr|kd|clock|Add0~15\,
	combout => \kr|kd|clock|Add0~16_combout\,
	cout => \kr|kd|clock|Add0~17\);

-- Location: LCCOMB_X32_Y24_N28
\kr|kd|clock|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|count~5_combout\ = (!\kr|kd|clock|Equal0~10_combout\ & \kr|kd|clock|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|Equal0~10_combout\,
	datac => \kr|kd|clock|Add0~16_combout\,
	combout => \kr|kd|clock|count~5_combout\);

-- Location: FF_X32_Y24_N29
\kr|kd|clock|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(8));

-- Location: LCCOMB_X31_Y24_N18
\kr|kd|clock|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~18_combout\ = (\kr|kd|clock|count\(9) & (!\kr|kd|clock|Add0~17\)) # (!\kr|kd|clock|count\(9) & ((\kr|kd|clock|Add0~17\) # (GND)))
-- \kr|kd|clock|Add0~19\ = CARRY((!\kr|kd|clock|Add0~17\) # (!\kr|kd|clock|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(9),
	datad => VCC,
	cin => \kr|kd|clock|Add0~17\,
	combout => \kr|kd|clock|Add0~18_combout\,
	cout => \kr|kd|clock|Add0~19\);

-- Location: FF_X31_Y24_N19
\kr|kd|clock|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(9));

-- Location: LCCOMB_X31_Y24_N20
\kr|kd|clock|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~20_combout\ = (\kr|kd|clock|count\(10) & (\kr|kd|clock|Add0~19\ $ (GND))) # (!\kr|kd|clock|count\(10) & (!\kr|kd|clock|Add0~19\ & VCC))
-- \kr|kd|clock|Add0~21\ = CARRY((\kr|kd|clock|count\(10) & !\kr|kd|clock|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(10),
	datad => VCC,
	cin => \kr|kd|clock|Add0~19\,
	combout => \kr|kd|clock|Add0~20_combout\,
	cout => \kr|kd|clock|Add0~21\);

-- Location: FF_X31_Y24_N21
\kr|kd|clock|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(10));

-- Location: LCCOMB_X31_Y24_N22
\kr|kd|clock|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~22_combout\ = (\kr|kd|clock|count\(11) & (!\kr|kd|clock|Add0~21\)) # (!\kr|kd|clock|count\(11) & ((\kr|kd|clock|Add0~21\) # (GND)))
-- \kr|kd|clock|Add0~23\ = CARRY((!\kr|kd|clock|Add0~21\) # (!\kr|kd|clock|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(11),
	datad => VCC,
	cin => \kr|kd|clock|Add0~21\,
	combout => \kr|kd|clock|Add0~22_combout\,
	cout => \kr|kd|clock|Add0~23\);

-- Location: FF_X31_Y24_N23
\kr|kd|clock|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(11));

-- Location: LCCOMB_X31_Y24_N24
\kr|kd|clock|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~24_combout\ = (\kr|kd|clock|count\(12) & (\kr|kd|clock|Add0~23\ $ (GND))) # (!\kr|kd|clock|count\(12) & (!\kr|kd|clock|Add0~23\ & VCC))
-- \kr|kd|clock|Add0~25\ = CARRY((\kr|kd|clock|count\(12) & !\kr|kd|clock|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(12),
	datad => VCC,
	cin => \kr|kd|clock|Add0~23\,
	combout => \kr|kd|clock|Add0~24_combout\,
	cout => \kr|kd|clock|Add0~25\);

-- Location: FF_X31_Y24_N25
\kr|kd|clock|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(12));

-- Location: LCCOMB_X31_Y24_N26
\kr|kd|clock|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~26_combout\ = (\kr|kd|clock|count\(13) & (!\kr|kd|clock|Add0~25\)) # (!\kr|kd|clock|count\(13) & ((\kr|kd|clock|Add0~25\) # (GND)))
-- \kr|kd|clock|Add0~27\ = CARRY((!\kr|kd|clock|Add0~25\) # (!\kr|kd|clock|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(13),
	datad => VCC,
	cin => \kr|kd|clock|Add0~25\,
	combout => \kr|kd|clock|Add0~26_combout\,
	cout => \kr|kd|clock|Add0~27\);

-- Location: FF_X31_Y24_N27
\kr|kd|clock|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(13));

-- Location: LCCOMB_X31_Y24_N28
\kr|kd|clock|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~28_combout\ = (\kr|kd|clock|count\(14) & (\kr|kd|clock|Add0~27\ $ (GND))) # (!\kr|kd|clock|count\(14) & (!\kr|kd|clock|Add0~27\ & VCC))
-- \kr|kd|clock|Add0~29\ = CARRY((\kr|kd|clock|count\(14) & !\kr|kd|clock|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(14),
	datad => VCC,
	cin => \kr|kd|clock|Add0~27\,
	combout => \kr|kd|clock|Add0~28_combout\,
	cout => \kr|kd|clock|Add0~29\);

-- Location: FF_X31_Y24_N29
\kr|kd|clock|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(14));

-- Location: LCCOMB_X31_Y24_N30
\kr|kd|clock|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~30_combout\ = (\kr|kd|clock|count\(15) & (!\kr|kd|clock|Add0~29\)) # (!\kr|kd|clock|count\(15) & ((\kr|kd|clock|Add0~29\) # (GND)))
-- \kr|kd|clock|Add0~31\ = CARRY((!\kr|kd|clock|Add0~29\) # (!\kr|kd|clock|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(15),
	datad => VCC,
	cin => \kr|kd|clock|Add0~29\,
	combout => \kr|kd|clock|Add0~30_combout\,
	cout => \kr|kd|clock|Add0~31\);

-- Location: FF_X31_Y24_N31
\kr|kd|clock|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(15));

-- Location: LCCOMB_X32_Y24_N8
\kr|kd|clock|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Equal0~4_combout\ = (!\kr|kd|clock|count\(15) & (!\kr|kd|clock|count\(12) & (!\kr|kd|clock|count\(13) & !\kr|kd|clock|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(15),
	datab => \kr|kd|clock|count\(12),
	datac => \kr|kd|clock|count\(13),
	datad => \kr|kd|clock|count\(14),
	combout => \kr|kd|clock|Equal0~4_combout\);

-- Location: LCCOMB_X32_Y24_N30
\kr|kd|clock|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Equal0~3_combout\ = (!\kr|kd|clock|count\(11) & (!\kr|kd|clock|count\(9) & (!\kr|kd|clock|count\(10) & \kr|kd|clock|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(11),
	datab => \kr|kd|clock|count\(9),
	datac => \kr|kd|clock|count\(10),
	datad => \kr|kd|clock|count\(8),
	combout => \kr|kd|clock|Equal0~3_combout\);

-- Location: LCCOMB_X31_Y23_N0
\kr|kd|clock|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~32_combout\ = (\kr|kd|clock|count\(16) & (\kr|kd|clock|Add0~31\ $ (GND))) # (!\kr|kd|clock|count\(16) & (!\kr|kd|clock|Add0~31\ & VCC))
-- \kr|kd|clock|Add0~33\ = CARRY((\kr|kd|clock|count\(16) & !\kr|kd|clock|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(16),
	datad => VCC,
	cin => \kr|kd|clock|Add0~31\,
	combout => \kr|kd|clock|Add0~32_combout\,
	cout => \kr|kd|clock|Add0~33\);

-- Location: FF_X31_Y23_N1
\kr|kd|clock|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(16));

-- Location: LCCOMB_X31_Y23_N2
\kr|kd|clock|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~34_combout\ = (\kr|kd|clock|count\(17) & (!\kr|kd|clock|Add0~33\)) # (!\kr|kd|clock|count\(17) & ((\kr|kd|clock|Add0~33\) # (GND)))
-- \kr|kd|clock|Add0~35\ = CARRY((!\kr|kd|clock|Add0~33\) # (!\kr|kd|clock|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(17),
	datad => VCC,
	cin => \kr|kd|clock|Add0~33\,
	combout => \kr|kd|clock|Add0~34_combout\,
	cout => \kr|kd|clock|Add0~35\);

-- Location: FF_X31_Y23_N3
\kr|kd|clock|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(17));

-- Location: LCCOMB_X31_Y23_N4
\kr|kd|clock|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~36_combout\ = (\kr|kd|clock|count\(18) & (\kr|kd|clock|Add0~35\ $ (GND))) # (!\kr|kd|clock|count\(18) & (!\kr|kd|clock|Add0~35\ & VCC))
-- \kr|kd|clock|Add0~37\ = CARRY((\kr|kd|clock|count\(18) & !\kr|kd|clock|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(18),
	datad => VCC,
	cin => \kr|kd|clock|Add0~35\,
	combout => \kr|kd|clock|Add0~36_combout\,
	cout => \kr|kd|clock|Add0~37\);

-- Location: FF_X31_Y23_N5
\kr|kd|clock|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(18));

-- Location: LCCOMB_X31_Y23_N6
\kr|kd|clock|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~38_combout\ = (\kr|kd|clock|count\(19) & (!\kr|kd|clock|Add0~37\)) # (!\kr|kd|clock|count\(19) & ((\kr|kd|clock|Add0~37\) # (GND)))
-- \kr|kd|clock|Add0~39\ = CARRY((!\kr|kd|clock|Add0~37\) # (!\kr|kd|clock|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(19),
	datad => VCC,
	cin => \kr|kd|clock|Add0~37\,
	combout => \kr|kd|clock|Add0~38_combout\,
	cout => \kr|kd|clock|Add0~39\);

-- Location: FF_X31_Y23_N7
\kr|kd|clock|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(19));

-- Location: LCCOMB_X31_Y23_N8
\kr|kd|clock|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~40_combout\ = (\kr|kd|clock|count\(20) & (\kr|kd|clock|Add0~39\ $ (GND))) # (!\kr|kd|clock|count\(20) & (!\kr|kd|clock|Add0~39\ & VCC))
-- \kr|kd|clock|Add0~41\ = CARRY((\kr|kd|clock|count\(20) & !\kr|kd|clock|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(20),
	datad => VCC,
	cin => \kr|kd|clock|Add0~39\,
	combout => \kr|kd|clock|Add0~40_combout\,
	cout => \kr|kd|clock|Add0~41\);

-- Location: FF_X31_Y23_N9
\kr|kd|clock|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(20));

-- Location: LCCOMB_X31_Y23_N10
\kr|kd|clock|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~42_combout\ = (\kr|kd|clock|count\(21) & (!\kr|kd|clock|Add0~41\)) # (!\kr|kd|clock|count\(21) & ((\kr|kd|clock|Add0~41\) # (GND)))
-- \kr|kd|clock|Add0~43\ = CARRY((!\kr|kd|clock|Add0~41\) # (!\kr|kd|clock|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(21),
	datad => VCC,
	cin => \kr|kd|clock|Add0~41\,
	combout => \kr|kd|clock|Add0~42_combout\,
	cout => \kr|kd|clock|Add0~43\);

-- Location: FF_X31_Y23_N11
\kr|kd|clock|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(21));

-- Location: LCCOMB_X31_Y23_N12
\kr|kd|clock|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~44_combout\ = (\kr|kd|clock|count\(22) & (\kr|kd|clock|Add0~43\ $ (GND))) # (!\kr|kd|clock|count\(22) & (!\kr|kd|clock|Add0~43\ & VCC))
-- \kr|kd|clock|Add0~45\ = CARRY((\kr|kd|clock|count\(22) & !\kr|kd|clock|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(22),
	datad => VCC,
	cin => \kr|kd|clock|Add0~43\,
	combout => \kr|kd|clock|Add0~44_combout\,
	cout => \kr|kd|clock|Add0~45\);

-- Location: FF_X31_Y23_N13
\kr|kd|clock|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(22));

-- Location: LCCOMB_X31_Y23_N14
\kr|kd|clock|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~46_combout\ = (\kr|kd|clock|count\(23) & (!\kr|kd|clock|Add0~45\)) # (!\kr|kd|clock|count\(23) & ((\kr|kd|clock|Add0~45\) # (GND)))
-- \kr|kd|clock|Add0~47\ = CARRY((!\kr|kd|clock|Add0~45\) # (!\kr|kd|clock|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(23),
	datad => VCC,
	cin => \kr|kd|clock|Add0~45\,
	combout => \kr|kd|clock|Add0~46_combout\,
	cout => \kr|kd|clock|Add0~47\);

-- Location: FF_X31_Y23_N15
\kr|kd|clock|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(23));

-- Location: LCCOMB_X31_Y23_N16
\kr|kd|clock|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~48_combout\ = (\kr|kd|clock|count\(24) & (\kr|kd|clock|Add0~47\ $ (GND))) # (!\kr|kd|clock|count\(24) & (!\kr|kd|clock|Add0~47\ & VCC))
-- \kr|kd|clock|Add0~49\ = CARRY((\kr|kd|clock|count\(24) & !\kr|kd|clock|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(24),
	datad => VCC,
	cin => \kr|kd|clock|Add0~47\,
	combout => \kr|kd|clock|Add0~48_combout\,
	cout => \kr|kd|clock|Add0~49\);

-- Location: FF_X31_Y23_N17
\kr|kd|clock|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(24));

-- Location: LCCOMB_X31_Y23_N18
\kr|kd|clock|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~50_combout\ = (\kr|kd|clock|count\(25) & (!\kr|kd|clock|Add0~49\)) # (!\kr|kd|clock|count\(25) & ((\kr|kd|clock|Add0~49\) # (GND)))
-- \kr|kd|clock|Add0~51\ = CARRY((!\kr|kd|clock|Add0~49\) # (!\kr|kd|clock|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(25),
	datad => VCC,
	cin => \kr|kd|clock|Add0~49\,
	combout => \kr|kd|clock|Add0~50_combout\,
	cout => \kr|kd|clock|Add0~51\);

-- Location: FF_X31_Y23_N19
\kr|kd|clock|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(25));

-- Location: LCCOMB_X31_Y23_N20
\kr|kd|clock|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~52_combout\ = (\kr|kd|clock|count\(26) & (\kr|kd|clock|Add0~51\ $ (GND))) # (!\kr|kd|clock|count\(26) & (!\kr|kd|clock|Add0~51\ & VCC))
-- \kr|kd|clock|Add0~53\ = CARRY((\kr|kd|clock|count\(26) & !\kr|kd|clock|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(26),
	datad => VCC,
	cin => \kr|kd|clock|Add0~51\,
	combout => \kr|kd|clock|Add0~52_combout\,
	cout => \kr|kd|clock|Add0~53\);

-- Location: FF_X31_Y23_N21
\kr|kd|clock|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(26));

-- Location: LCCOMB_X31_Y23_N22
\kr|kd|clock|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~54_combout\ = (\kr|kd|clock|count\(27) & (!\kr|kd|clock|Add0~53\)) # (!\kr|kd|clock|count\(27) & ((\kr|kd|clock|Add0~53\) # (GND)))
-- \kr|kd|clock|Add0~55\ = CARRY((!\kr|kd|clock|Add0~53\) # (!\kr|kd|clock|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(27),
	datad => VCC,
	cin => \kr|kd|clock|Add0~53\,
	combout => \kr|kd|clock|Add0~54_combout\,
	cout => \kr|kd|clock|Add0~55\);

-- Location: FF_X31_Y23_N23
\kr|kd|clock|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(27));

-- Location: LCCOMB_X32_Y23_N12
\kr|kd|clock|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Equal0~7_combout\ = (!\kr|kd|clock|count\(26) & (!\kr|kd|clock|count\(27) & (!\kr|kd|clock|count\(24) & !\kr|kd|clock|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(26),
	datab => \kr|kd|clock|count\(27),
	datac => \kr|kd|clock|count\(24),
	datad => \kr|kd|clock|count\(25),
	combout => \kr|kd|clock|Equal0~7_combout\);

-- Location: LCCOMB_X32_Y23_N24
\kr|kd|clock|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Equal0~5_combout\ = (!\kr|kd|clock|count\(16) & (!\kr|kd|clock|count\(19) & (!\kr|kd|clock|count\(18) & !\kr|kd|clock|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(16),
	datab => \kr|kd|clock|count\(19),
	datac => \kr|kd|clock|count\(18),
	datad => \kr|kd|clock|count\(17),
	combout => \kr|kd|clock|Equal0~5_combout\);

-- Location: LCCOMB_X32_Y23_N26
\kr|kd|clock|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Equal0~6_combout\ = (!\kr|kd|clock|count\(23) & (!\kr|kd|clock|count\(22) & (!\kr|kd|clock|count\(21) & !\kr|kd|clock|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(23),
	datab => \kr|kd|clock|count\(22),
	datac => \kr|kd|clock|count\(21),
	datad => \kr|kd|clock|count\(20),
	combout => \kr|kd|clock|Equal0~6_combout\);

-- Location: LCCOMB_X31_Y23_N24
\kr|kd|clock|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~56_combout\ = (\kr|kd|clock|count\(28) & (\kr|kd|clock|Add0~55\ $ (GND))) # (!\kr|kd|clock|count\(28) & (!\kr|kd|clock|Add0~55\ & VCC))
-- \kr|kd|clock|Add0~57\ = CARRY((\kr|kd|clock|count\(28) & !\kr|kd|clock|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(28),
	datad => VCC,
	cin => \kr|kd|clock|Add0~55\,
	combout => \kr|kd|clock|Add0~56_combout\,
	cout => \kr|kd|clock|Add0~57\);

-- Location: FF_X31_Y23_N25
\kr|kd|clock|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(28));

-- Location: LCCOMB_X31_Y23_N26
\kr|kd|clock|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~58_combout\ = (\kr|kd|clock|count\(29) & (!\kr|kd|clock|Add0~57\)) # (!\kr|kd|clock|count\(29) & ((\kr|kd|clock|Add0~57\) # (GND)))
-- \kr|kd|clock|Add0~59\ = CARRY((!\kr|kd|clock|Add0~57\) # (!\kr|kd|clock|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(29),
	datad => VCC,
	cin => \kr|kd|clock|Add0~57\,
	combout => \kr|kd|clock|Add0~58_combout\,
	cout => \kr|kd|clock|Add0~59\);

-- Location: FF_X31_Y23_N27
\kr|kd|clock|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(29));

-- Location: LCCOMB_X31_Y23_N28
\kr|kd|clock|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~60_combout\ = (\kr|kd|clock|count\(30) & (\kr|kd|clock|Add0~59\ $ (GND))) # (!\kr|kd|clock|count\(30) & (!\kr|kd|clock|Add0~59\ & VCC))
-- \kr|kd|clock|Add0~61\ = CARRY((\kr|kd|clock|count\(30) & !\kr|kd|clock|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|clock|count\(30),
	datad => VCC,
	cin => \kr|kd|clock|Add0~59\,
	combout => \kr|kd|clock|Add0~60_combout\,
	cout => \kr|kd|clock|Add0~61\);

-- Location: FF_X31_Y23_N29
\kr|kd|clock|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(30));

-- Location: LCCOMB_X31_Y23_N30
\kr|kd|clock|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Add0~62_combout\ = \kr|kd|clock|count\(31) $ (\kr|kd|clock|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(31),
	cin => \kr|kd|clock|Add0~61\,
	combout => \kr|kd|clock|Add0~62_combout\);

-- Location: FF_X31_Y23_N31
\kr|kd|clock|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|count\(31));

-- Location: LCCOMB_X32_Y23_N6
\kr|kd|clock|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Equal0~8_combout\ = (!\kr|kd|clock|count\(31) & (!\kr|kd|clock|count\(28) & (!\kr|kd|clock|count\(29) & !\kr|kd|clock|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(31),
	datab => \kr|kd|clock|count\(28),
	datac => \kr|kd|clock|count\(29),
	datad => \kr|kd|clock|count\(30),
	combout => \kr|kd|clock|Equal0~8_combout\);

-- Location: LCCOMB_X32_Y23_N0
\kr|kd|clock|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Equal0~9_combout\ = (\kr|kd|clock|Equal0~7_combout\ & (\kr|kd|clock|Equal0~5_combout\ & (\kr|kd|clock|Equal0~6_combout\ & \kr|kd|clock|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|Equal0~7_combout\,
	datab => \kr|kd|clock|Equal0~5_combout\,
	datac => \kr|kd|clock|Equal0~6_combout\,
	datad => \kr|kd|clock|Equal0~8_combout\,
	combout => \kr|kd|clock|Equal0~9_combout\);

-- Location: LCCOMB_X32_Y24_N26
\kr|kd|clock|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|Equal0~10_combout\ = (\kr|kd|clock|Equal0~2_combout\ & (\kr|kd|clock|Equal0~4_combout\ & (\kr|kd|clock|Equal0~3_combout\ & \kr|kd|clock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|Equal0~2_combout\,
	datab => \kr|kd|clock|Equal0~4_combout\,
	datac => \kr|kd|clock|Equal0~3_combout\,
	datad => \kr|kd|clock|Equal0~9_combout\,
	combout => \kr|kd|clock|Equal0~10_combout\);

-- Location: LCCOMB_X32_Y24_N16
\kr|kd|clock|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|clock|tmp~0_combout\ = \kr|kd|clock|Equal0~10_combout\ $ (\kr|kd|clock|tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|Equal0~10_combout\,
	datac => \kr|kd|clock|tmp~q\,
	combout => \kr|kd|clock|tmp~0_combout\);

-- Location: FF_X32_Y24_N17
\kr|kd|clock|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|kd|clock|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|clock|tmp~q\);

-- Location: CLKCTRL_G16
\kr|kd|clock|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \kr|kd|clock|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \kr|kd|clock|tmp~clkctrl_outclk\);

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

-- Location: LCCOMB_X47_Y35_N0
\kr|rbuff|mac|incrementPut|ad|fa1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|incrementPut|ad|fa1|S~combout\ = \kr|rbuff|control|CurrentState.INC_PUT~q\ $ (\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|control|CurrentState.INC_PUT~q\,
	datac => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	combout => \kr|rbuff|mac|incrementPut|ad|fa1|S~combout\);

-- Location: IOIBUF_X69_Y54_N1
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

-- Location: FF_X47_Y35_N1
\kr|rbuff|mac|incrementPut|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|mac|incrementPut|ad|fa1|S~combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\);

-- Location: LCCOMB_X45_Y33_N20
\kr|rbuff|mac|incrementGet|ad|fa3|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|incrementGet|ad|fa3|S~combout\ = \kr|rbuff|mac|incrementGet|reg|ff2|Q~q\ $ (((\kr|rbuff|mac|incrementGet|reg|ff1|Q~q\ & (\kr|rbuff|mac|incrementGet|reg|ff0|Q~q\ & \kr|rbuff|control|CurrentState.INC_GET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementGet|reg|ff1|Q~q\,
	datab => \kr|rbuff|mac|incrementGet|reg|ff0|Q~q\,
	datac => \kr|rbuff|mac|incrementGet|reg|ff2|Q~q\,
	datad => \kr|rbuff|control|CurrentState.INC_GET~q\,
	combout => \kr|rbuff|mac|incrementGet|ad|fa3|S~combout\);

-- Location: FF_X45_Y33_N21
\kr|rbuff|mac|incrementGet|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|mac|incrementGet|ad|fa3|S~combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|mac|incrementGet|reg|ff2|Q~q\);

-- Location: LCCOMB_X45_Y33_N12
\kr|rbuff|mac|incrementGet|ad|fa3|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|incrementGet|ad|fa3|Cout~0_combout\ = (\kr|rbuff|mac|incrementGet|reg|ff2|Q~q\ & (\kr|rbuff|mac|incrementGet|reg|ff0|Q~q\ & (\kr|rbuff|mac|incrementGet|reg|ff1|Q~q\ & \kr|rbuff|control|CurrentState.INC_GET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementGet|reg|ff2|Q~q\,
	datab => \kr|rbuff|mac|incrementGet|reg|ff0|Q~q\,
	datac => \kr|rbuff|mac|incrementGet|reg|ff1|Q~q\,
	datad => \kr|rbuff|control|CurrentState.INC_GET~q\,
	combout => \kr|rbuff|mac|incrementGet|ad|fa3|Cout~0_combout\);

-- Location: LCCOMB_X45_Y33_N22
\kr|rbuff|mac|incrementGet|ad|fa4|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|incrementGet|ad|fa4|S~combout\ = \kr|rbuff|mac|incrementGet|reg|ff3|Q~q\ $ (\kr|rbuff|mac|incrementGet|ad|fa3|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kr|rbuff|mac|incrementGet|reg|ff3|Q~q\,
	datad => \kr|rbuff|mac|incrementGet|ad|fa3|Cout~0_combout\,
	combout => \kr|rbuff|mac|incrementGet|ad|fa4|S~combout\);

-- Location: FF_X45_Y33_N23
\kr|rbuff|mac|incrementGet|reg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|mac|incrementGet|ad|fa4|S~combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|mac|incrementGet|reg|ff3|Q~q\);

-- Location: LCCOMB_X47_Y35_N2
\kr|rbuff|mac|incrementPut|ad|fa2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|incrementPut|ad|fa2|S~combout\ = \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\ $ (((\kr|rbuff|control|CurrentState.INC_PUT~q\ & \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|control|CurrentState.INC_PUT~q\,
	datab => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datac => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \kr|rbuff|mac|incrementPut|ad|fa2|S~combout\);

-- Location: FF_X47_Y35_N3
\kr|rbuff|mac|incrementPut|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|mac|incrementPut|ad|fa2|S~combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\);

-- Location: LCCOMB_X47_Y35_N28
\kr|rbuff|mac|incrementPut|ad|fa3|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|incrementPut|ad|fa3|S~combout\ = \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\ $ (((\kr|rbuff|control|CurrentState.INC_PUT~q\ & (\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\ & \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|control|CurrentState.INC_PUT~q\,
	datab => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datac => \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datad => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \kr|rbuff|mac|incrementPut|ad|fa3|S~combout\);

-- Location: FF_X47_Y35_N29
\kr|rbuff|mac|incrementPut|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|mac|incrementPut|ad|fa3|S~combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\);

-- Location: LCCOMB_X47_Y35_N18
\kr|rbuff|mac|incrementPut|ad|fa3|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|incrementPut|ad|fa3|Cout~0_combout\ = (\kr|rbuff|mac|incrementPut|reg|ff2|Q~q\ & (\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\kr|rbuff|control|CurrentState.INC_PUT~q\ & \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datab => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datac => \kr|rbuff|control|CurrentState.INC_PUT~q\,
	datad => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \kr|rbuff|mac|incrementPut|ad|fa3|Cout~0_combout\);

-- Location: LCCOMB_X47_Y35_N14
\kr|rbuff|mac|incrementPut|ad|fa4|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|incrementPut|ad|fa4|S~combout\ = \kr|rbuff|mac|incrementPut|reg|ff3|Q~q\ $ (\kr|rbuff|mac|incrementPut|ad|fa3|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kr|rbuff|mac|incrementPut|reg|ff3|Q~q\,
	datad => \kr|rbuff|mac|incrementPut|ad|fa3|Cout~0_combout\,
	combout => \kr|rbuff|mac|incrementPut|ad|fa4|S~combout\);

-- Location: FF_X47_Y35_N15
\kr|rbuff|mac|incrementPut|reg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|mac|incrementPut|ad|fa4|S~combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|mac|incrementPut|reg|ff3|Q~q\);

-- Location: LCCOMB_X45_Y33_N6
\kr|rbuff|control|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|control|Selector2~3_combout\ = (\kr|rbuff|mac|Equal0~1_combout\ & ((\kr|rbuff|mac|incrementGet|reg|ff3|Q~q\ $ (!\kr|rbuff|mac|incrementPut|reg|ff3|Q~q\)))) # (!\kr|rbuff|mac|Equal0~1_combout\ & (\kr|kd|control|CurrentState.SECOND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|control|CurrentState.SECOND~q\,
	datab => \kr|rbuff|mac|Equal0~1_combout\,
	datac => \kr|rbuff|mac|incrementGet|reg|ff3|Q~q\,
	datad => \kr|rbuff|mac|incrementPut|reg|ff3|Q~q\,
	combout => \kr|rbuff|control|Selector2~3_combout\);

-- Location: LCCOMB_X49_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X47_Y36_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: FF_X47_Y36_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: FF_X47_Y36_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X47_Y36_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X47_Y36_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X47_Y36_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X47_Y36_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: FF_X47_Y36_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X47_Y36_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X47_Y36_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LCCOMB_X47_Y36_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X47_Y36_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LCCOMB_X47_Y36_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X47_Y36_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X47_Y36_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y36_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X47_Y36_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X47_Y36_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X47_Y36_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X47_Y36_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y36_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X47_Y36_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X47_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X47_Y37_N10
\~QIC_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: FF_X47_Y37_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: LCCOMB_X49_Y38_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X49_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X49_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: FF_X49_Y38_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X47_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\);

-- Location: LCCOMB_X49_Y36_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X49_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\);

-- Location: FF_X49_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X49_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X49_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X49_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X49_Y37_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: LCCOMB_X50_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X50_Y37_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: LCCOMB_X44_Y33_N2
\kr|obuff|control|NextState.WRITE_DATA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|obuff|control|NextState.WRITE_DATA~0_combout\ = (\kr|rbuff|control|CurrentState.WRITE_REG~q\ & ((\kr|obuff|control|CurrentState.WRITE_DATA~q\) # (!\kr|obuff|control|CurrentState.CAN_RECEIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|rbuff|control|CurrentState.WRITE_REG~q\,
	datac => \kr|obuff|control|CurrentState.WRITE_DATA~q\,
	datad => \kr|obuff|control|CurrentState.CAN_RECEIVE~q\,
	combout => \kr|obuff|control|NextState.WRITE_DATA~0_combout\);

-- Location: FF_X44_Y33_N3
\kr|obuff|control|CurrentState.WRITE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|obuff|control|NextState.WRITE_DATA~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|obuff|control|CurrentState.WRITE_DATA~q\);

-- Location: LCCOMB_X44_Y33_N0
\kr|obuff|control|NextState.WAIT_ACK~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|obuff|control|NextState.WAIT_ACK~0_combout\ = (\kr|obuff|control|CurrentState.CAN_RECEIVE~q\ & (!\kr|obuff|control|CurrentState.WRITE_DATA~q\ & 
-- \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|obuff|control|CurrentState.CAN_RECEIVE~q\,
	datab => \kr|obuff|control|CurrentState.WRITE_DATA~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \kr|obuff|control|NextState.WAIT_ACK~0_combout\);

-- Location: FF_X44_Y33_N1
\kr|obuff|control|CurrentState.WAIT_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|obuff|control|NextState.WAIT_ACK~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|obuff|control|CurrentState.WAIT_ACK~q\);

-- Location: LCCOMB_X44_Y33_N6
\kr|obuff|control|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|obuff|control|Selector0~0_combout\ = (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ & 
-- ((\kr|rbuff|control|CurrentState.WRITE_REG~q\) # ((\kr|obuff|control|CurrentState.CAN_RECEIVE~q\)))) # 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ & (!\kr|obuff|control|CurrentState.WAIT_ACK~q\ & 
-- ((\kr|rbuff|control|CurrentState.WRITE_REG~q\) # (\kr|obuff|control|CurrentState.CAN_RECEIVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datab => \kr|rbuff|control|CurrentState.WRITE_REG~q\,
	datac => \kr|obuff|control|CurrentState.CAN_RECEIVE~q\,
	datad => \kr|obuff|control|CurrentState.WAIT_ACK~q\,
	combout => \kr|obuff|control|Selector0~0_combout\);

-- Location: FF_X44_Y33_N7
\kr|obuff|control|CurrentState.CAN_RECEIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|obuff|control|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|obuff|control|CurrentState.CAN_RECEIVE~q\);

-- Location: LCCOMB_X45_Y30_N18
\kr|rbuff|control|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|control|Selector0~0_combout\ = (!\kr|kd|control|CurrentState.SECOND~q\ & ((\kr|rbuff|control|CurrentState.ACCEPTED~q\) # ((!\kr|rbuff|control|CurrentState.ZEN~q\ & \kr|obuff|control|CurrentState.CAN_RECEIVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|control|CurrentState.ZEN~q\,
	datab => \kr|obuff|control|CurrentState.CAN_RECEIVE~q\,
	datac => \kr|kd|control|CurrentState.SECOND~q\,
	datad => \kr|rbuff|control|CurrentState.ACCEPTED~q\,
	combout => \kr|rbuff|control|Selector0~0_combout\);

-- Location: LCCOMB_X45_Y33_N28
\kr|rbuff|mac|empty~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|empty~0_combout\ = \kr|rbuff|mac|incrementGet|reg|ff3|Q~q\ $ (\kr|rbuff|mac|incrementPut|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementGet|reg|ff3|Q~q\,
	datad => \kr|rbuff|mac|incrementPut|reg|ff3|Q~q\,
	combout => \kr|rbuff|mac|empty~0_combout\);

-- Location: LCCOMB_X45_Y30_N4
\kr|rbuff|control|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|control|Selector0~1_combout\ = (!\kr|rbuff|control|CurrentState.ZEN~q\ & ((\kr|rbuff|mac|empty~0_combout\ & ((\kr|obuff|control|CurrentState.CAN_RECEIVE~q\))) # (!\kr|rbuff|mac|empty~0_combout\ & (!\kr|kd|control|CurrentState.SECOND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|control|CurrentState.ZEN~q\,
	datab => \kr|kd|control|CurrentState.SECOND~q\,
	datac => \kr|rbuff|mac|empty~0_combout\,
	datad => \kr|obuff|control|CurrentState.CAN_RECEIVE~q\,
	combout => \kr|rbuff|control|Selector0~1_combout\);

-- Location: LCCOMB_X45_Y30_N30
\kr|rbuff|control|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|control|Selector0~2_combout\ = (!\kr|rbuff|control|Selector0~0_combout\ & (!\kr|rbuff|control|CurrentState.INC_GET~q\ & ((!\kr|rbuff|mac|Equal0~1_combout\) # (!\kr|rbuff|control|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|control|Selector0~0_combout\,
	datab => \kr|rbuff|control|Selector0~1_combout\,
	datac => \kr|rbuff|control|CurrentState.INC_GET~q\,
	datad => \kr|rbuff|mac|Equal0~1_combout\,
	combout => \kr|rbuff|control|Selector0~2_combout\);

-- Location: FF_X45_Y30_N31
\kr|rbuff|control|CurrentState.ZEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|control|Selector0~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|control|CurrentState.ZEN~q\);

-- Location: LCCOMB_X45_Y33_N8
\kr|rbuff|control|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|control|Selector2~2_combout\ = (!\kr|obuff|control|CurrentState.CAN_RECEIVE~q\ & ((\kr|rbuff|control|CurrentState.WRITE_REG~q\) # ((!\kr|rbuff|control|Selector2~3_combout\ & !\kr|rbuff|control|CurrentState.ZEN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|control|Selector2~3_combout\,
	datab => \kr|obuff|control|CurrentState.CAN_RECEIVE~q\,
	datac => \kr|rbuff|control|CurrentState.WRITE_REG~q\,
	datad => \kr|rbuff|control|CurrentState.ZEN~q\,
	combout => \kr|rbuff|control|Selector2~2_combout\);

-- Location: FF_X45_Y33_N9
\kr|rbuff|control|CurrentState.WRITE_REG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|control|Selector2~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|control|CurrentState.WRITE_REG~q\);

-- Location: LCCOMB_X45_Y33_N2
\kr|rbuff|control|NextState.INC_GET~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|control|NextState.INC_GET~0_combout\ = (\kr|rbuff|control|CurrentState.WRITE_REG~q\ & \kr|obuff|control|CurrentState.CAN_RECEIVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|rbuff|control|CurrentState.WRITE_REG~q\,
	datac => \kr|obuff|control|CurrentState.CAN_RECEIVE~q\,
	combout => \kr|rbuff|control|NextState.INC_GET~0_combout\);

-- Location: FF_X45_Y33_N3
\kr|rbuff|control|CurrentState.INC_GET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|control|NextState.INC_GET~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|control|CurrentState.INC_GET~q\);

-- Location: LCCOMB_X45_Y33_N0
\kr|rbuff|mac|incrementGet|ad|fa1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|incrementGet|ad|fa1|S~combout\ = \kr|rbuff|mac|incrementGet|reg|ff0|Q~q\ $ (\kr|rbuff|control|CurrentState.INC_GET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kr|rbuff|mac|incrementGet|reg|ff0|Q~q\,
	datad => \kr|rbuff|control|CurrentState.INC_GET~q\,
	combout => \kr|rbuff|mac|incrementGet|ad|fa1|S~combout\);

-- Location: FF_X45_Y33_N1
\kr|rbuff|mac|incrementGet|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|mac|incrementGet|ad|fa1|S~combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|mac|incrementGet|reg|ff0|Q~q\);

-- Location: LCCOMB_X45_Y33_N26
\kr|rbuff|mac|incrementGet|ad|fa2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|incrementGet|ad|fa2|S~combout\ = \kr|rbuff|mac|incrementGet|reg|ff1|Q~q\ $ (((\kr|rbuff|mac|incrementGet|reg|ff0|Q~q\ & \kr|rbuff|control|CurrentState.INC_GET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|rbuff|mac|incrementGet|reg|ff0|Q~q\,
	datac => \kr|rbuff|mac|incrementGet|reg|ff1|Q~q\,
	datad => \kr|rbuff|control|CurrentState.INC_GET~q\,
	combout => \kr|rbuff|mac|incrementGet|ad|fa2|S~combout\);

-- Location: FF_X45_Y33_N27
\kr|rbuff|mac|incrementGet|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|mac|incrementGet|ad|fa2|S~combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|mac|incrementGet|reg|ff1|Q~q\);

-- Location: LCCOMB_X45_Y33_N30
\kr|rbuff|mac|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|Equal0~0_combout\ = (\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\kr|rbuff|mac|incrementGet|reg|ff0|Q~q\ & (\kr|rbuff|mac|incrementGet|reg|ff1|Q~q\ $ (!\kr|rbuff|mac|incrementPut|reg|ff1|Q~q\)))) # (!\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\ & 
-- (!\kr|rbuff|mac|incrementGet|reg|ff0|Q~q\ & (\kr|rbuff|mac|incrementGet|reg|ff1|Q~q\ $ (!\kr|rbuff|mac|incrementPut|reg|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datab => \kr|rbuff|mac|incrementGet|reg|ff1|Q~q\,
	datac => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\,
	datad => \kr|rbuff|mac|incrementGet|reg|ff0|Q~q\,
	combout => \kr|rbuff|mac|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y33_N24
\kr|rbuff|mac|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|Equal0~1_combout\ = (\kr|rbuff|mac|Equal0~0_combout\ & (\kr|rbuff|mac|incrementGet|reg|ff2|Q~q\ $ (!\kr|rbuff|mac|incrementPut|reg|ff2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|Equal0~0_combout\,
	datab => \kr|rbuff|mac|incrementGet|reg|ff2|Q~q\,
	datac => \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\,
	combout => \kr|rbuff|mac|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y33_N18
\kr|rbuff|control|NextState.SELECT_PUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|control|NextState.SELECT_PUT~0_combout\ = (\kr|kd|control|CurrentState.SECOND~q\ & (!\kr|rbuff|control|CurrentState.ZEN~q\ & ((!\kr|rbuff|mac|empty~0_combout\) # (!\kr|rbuff|mac|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|control|CurrentState.SECOND~q\,
	datab => \kr|rbuff|mac|Equal0~1_combout\,
	datac => \kr|rbuff|mac|empty~0_combout\,
	datad => \kr|rbuff|control|CurrentState.ZEN~q\,
	combout => \kr|rbuff|control|NextState.SELECT_PUT~0_combout\);

-- Location: FF_X45_Y33_N19
\kr|rbuff|control|CurrentState.SELECT_PUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|control|NextState.SELECT_PUT~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|control|CurrentState.SELECT_PUT~q\);

-- Location: LCCOMB_X45_Y33_N4
\kr|rbuff|control|CurrentState.WRITE_RAM~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|control|CurrentState.WRITE_RAM~feeder_combout\ = \kr|rbuff|control|CurrentState.SELECT_PUT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kr|rbuff|control|CurrentState.SELECT_PUT~q\,
	combout => \kr|rbuff|control|CurrentState.WRITE_RAM~feeder_combout\);

-- Location: FF_X45_Y33_N5
\kr|rbuff|control|CurrentState.WRITE_RAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|control|CurrentState.WRITE_RAM~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|control|CurrentState.WRITE_RAM~q\);

-- Location: LCCOMB_X47_Y35_N26
\kr|rbuff|control|CurrentState.INC_PUT~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|control|CurrentState.INC_PUT~feeder_combout\ = \kr|rbuff|control|CurrentState.WRITE_RAM~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kr|rbuff|control|CurrentState.WRITE_RAM~q\,
	combout => \kr|rbuff|control|CurrentState.INC_PUT~feeder_combout\);

-- Location: FF_X47_Y35_N27
\kr|rbuff|control|CurrentState.INC_PUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|control|CurrentState.INC_PUT~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|control|CurrentState.INC_PUT~q\);

-- Location: LCCOMB_X45_Y30_N20
\kr|rbuff|control|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|control|Selector1~0_combout\ = (\kr|rbuff|control|CurrentState.INC_PUT~q\) # ((\kr|kd|control|CurrentState.SECOND~q\ & \kr|rbuff|control|CurrentState.ACCEPTED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|control|CurrentState.SECOND~q\,
	datac => \kr|rbuff|control|CurrentState.ACCEPTED~q\,
	datad => \kr|rbuff|control|CurrentState.INC_PUT~q\,
	combout => \kr|rbuff|control|Selector1~0_combout\);

-- Location: FF_X45_Y30_N21
\kr|rbuff|control|CurrentState.ACCEPTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|control|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|rbuff|control|CurrentState.ACCEPTED~q\);

-- Location: LCCOMB_X45_Y30_N8
\kr|kd|control|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|control|Selector1~0_combout\ = (\kr|kd|scan|mux|Y~1_combout\ & (((\kr|kd|control|CurrentState.SECOND~q\ & !\kr|rbuff|control|CurrentState.ACCEPTED~q\)))) # (!\kr|kd|scan|mux|Y~1_combout\ & (((\kr|kd|control|CurrentState.SECOND~q\)) # 
-- (!\kr|kd|control|CurrentState.FIRST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|mux|Y~1_combout\,
	datab => \kr|kd|control|CurrentState.FIRST~q\,
	datac => \kr|kd|control|CurrentState.SECOND~q\,
	datad => \kr|rbuff|control|CurrentState.ACCEPTED~q\,
	combout => \kr|kd|control|Selector1~0_combout\);

-- Location: FF_X45_Y30_N9
\kr|kd|control|CurrentState.SECOND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kr|kd|clock|tmp~clkctrl_outclk\,
	d => \kr|kd|control|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|control|CurrentState.SECOND~q\);

-- Location: LCCOMB_X45_Y30_N2
\kr|kd|control|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|control|Selector2~0_combout\ = (\kr|rbuff|control|CurrentState.ACCEPTED~q\ & ((\kr|kd|control|CurrentState.THIRD~q\) # ((\kr|kd|scan|mux|Y~1_combout\ & \kr|kd|control|CurrentState.SECOND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|mux|Y~1_combout\,
	datab => \kr|kd|control|CurrentState.SECOND~q\,
	datac => \kr|kd|control|CurrentState.THIRD~q\,
	datad => \kr|rbuff|control|CurrentState.ACCEPTED~q\,
	combout => \kr|kd|control|Selector2~0_combout\);

-- Location: FF_X45_Y30_N3
\kr|kd|control|CurrentState.THIRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kr|kd|clock|tmp~clkctrl_outclk\,
	d => \kr|kd|control|Selector2~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|control|CurrentState.THIRD~q\);

-- Location: LCCOMB_X45_Y30_N28
\kr|kd|control|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|control|Selector0~0_combout\ = (\kr|kd|scan|mux|Y~1_combout\ & (\kr|kd|control|CurrentState.FIRST~q\ & ((\kr|rbuff|control|CurrentState.ACCEPTED~q\) # (!\kr|kd|control|CurrentState.THIRD~q\)))) # (!\kr|kd|scan|mux|Y~1_combout\ & 
-- (((\kr|rbuff|control|CurrentState.ACCEPTED~q\)) # (!\kr|kd|control|CurrentState.THIRD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|mux|Y~1_combout\,
	datab => \kr|kd|control|CurrentState.THIRD~q\,
	datac => \kr|kd|control|CurrentState.FIRST~q\,
	datad => \kr|rbuff|control|CurrentState.ACCEPTED~q\,
	combout => \kr|kd|control|Selector0~0_combout\);

-- Location: FF_X45_Y30_N29
\kr|kd|control|CurrentState.FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kr|kd|clock|tmp~clkctrl_outclk\,
	d => \kr|kd|control|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|control|CurrentState.FIRST~q\);

-- Location: LCCOMB_X45_Y30_N12
\kr|kd|scan|count|reg|ff0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|scan|count|reg|ff0|Q~0_combout\ = \kr|kd|scan|count|reg|ff0|Q~q\ $ (((\kr|kd|scan|mux|Y~1_combout\ & !\kr|kd|control|CurrentState.FIRST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|mux|Y~1_combout\,
	datab => \kr|kd|control|CurrentState.FIRST~q\,
	datac => \kr|kd|scan|count|reg|ff0|Q~q\,
	combout => \kr|kd|scan|count|reg|ff0|Q~0_combout\);

-- Location: FF_X45_Y30_N13
\kr|kd|scan|count|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kr|kd|clock|tmp~clkctrl_outclk\,
	d => \kr|kd|scan|count|reg|ff0|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|scan|count|reg|ff0|Q~q\);

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

-- Location: LCCOMB_X45_Y30_N24
\kr|kd|scan|mux|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|scan|mux|Y~0_combout\ = (\kr|kd|scan|count|reg|ff0|Q~q\ & (\kr|kd|scan|count|reg|ff1|Q~q\)) # (!\kr|kd|scan|count|reg|ff0|Q~q\ & ((\kr|kd|scan|count|reg|ff1|Q~q\ & ((\I[2]~input_o\))) # (!\kr|kd|scan|count|reg|ff1|Q~q\ & (\I[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff0|Q~q\,
	datab => \kr|kd|scan|count|reg|ff1|Q~q\,
	datac => \I[0]~input_o\,
	datad => \I[2]~input_o\,
	combout => \kr|kd|scan|mux|Y~0_combout\);

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

-- Location: LCCOMB_X45_Y30_N26
\kr|kd|scan|mux|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|scan|mux|Y~1_combout\ = (\kr|kd|scan|mux|Y~0_combout\ & ((\I[3]~input_o\) # ((!\kr|kd|scan|count|reg|ff0|Q~q\)))) # (!\kr|kd|scan|mux|Y~0_combout\ & (((\I[1]~input_o\ & \kr|kd|scan|count|reg|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I[3]~input_o\,
	datab => \kr|kd|scan|mux|Y~0_combout\,
	datac => \I[1]~input_o\,
	datad => \kr|kd|scan|count|reg|ff0|Q~q\,
	combout => \kr|kd|scan|mux|Y~1_combout\);

-- Location: LCCOMB_X45_Y30_N22
\kr|kd|scan|count|reg|ff1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|scan|count|reg|ff1|Q~0_combout\ = \kr|kd|scan|count|reg|ff1|Q~q\ $ (((\kr|kd|scan|mux|Y~1_combout\ & (!\kr|kd|control|CurrentState.FIRST~q\ & \kr|kd|scan|count|reg|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|mux|Y~1_combout\,
	datab => \kr|kd|control|CurrentState.FIRST~q\,
	datac => \kr|kd|scan|count|reg|ff1|Q~q\,
	datad => \kr|kd|scan|count|reg|ff0|Q~q\,
	combout => \kr|kd|scan|count|reg|ff1|Q~0_combout\);

-- Location: FF_X45_Y30_N23
\kr|kd|scan|count|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kr|kd|clock|tmp~clkctrl_outclk\,
	d => \kr|kd|scan|count|reg|ff1|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|scan|count|reg|ff1|Q~q\);

-- Location: LCCOMB_X47_Y35_N10
\rtl~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = (!\kr|rbuff|mac|incrementPut|reg|ff2|Q~q\ & (!\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datab => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datac => \kr|rbuff|control|CurrentState.WRITE_RAM~q\,
	datad => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~12_combout\);

-- Location: CLKCTRL_G5
\rtl~12clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~12clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~12clkctrl_outclk\);

-- Location: LCCOMB_X44_Y30_N2
\kr|rbuff|memory|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~9_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\kr|rbuff|memory|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff1|Q~q\,
	datac => \rtl~12clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~9_combout\,
	combout => \kr|rbuff|memory|ram~9_combout\);

-- Location: LCCOMB_X47_Y35_N8
\rtl~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = (!\kr|rbuff|mac|incrementPut|reg|ff2|Q~q\ & (\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datab => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datac => \kr|rbuff|control|CurrentState.WRITE_RAM~q\,
	datad => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~15_combout\);

-- Location: CLKCTRL_G14
\rtl~15clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~15clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~15clkctrl_outclk\);

-- Location: LCCOMB_X43_Y31_N20
\kr|rbuff|memory|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~13_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\kr|rbuff|memory|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff1|Q~q\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~13_combout\,
	combout => \kr|rbuff|memory|ram~13_combout\);

-- Location: LCCOMB_X45_Y33_N16
\kr|rbuff|mac|idxDecider|Y[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|idxDecider|Y[1]~1_combout\ = (\kr|rbuff|control|CurrentState.SELECT_PUT~q\ & (((\kr|rbuff|mac|incrementPut|reg|ff1|Q~q\)))) # (!\kr|rbuff|control|CurrentState.SELECT_PUT~q\ & ((\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & 
-- ((\kr|rbuff|mac|incrementPut|reg|ff1|Q~q\))) # (!\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & (\kr|rbuff|mac|incrementGet|reg|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementGet|reg|ff1|Q~q\,
	datab => \kr|rbuff|control|CurrentState.SELECT_PUT~q\,
	datac => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\,
	datad => \kr|rbuff|control|CurrentState.WRITE_RAM~q\,
	combout => \kr|rbuff|mac|idxDecider|Y[1]~1_combout\);

-- Location: LCCOMB_X47_Y35_N30
\rtl~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = (!\kr|rbuff|mac|incrementPut|reg|ff2|Q~q\ & (!\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & !\kr|rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datab => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datac => \kr|rbuff|control|CurrentState.WRITE_RAM~q\,
	datad => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~14_combout\);

-- Location: CLKCTRL_G10
\rtl~14clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~14clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~14clkctrl_outclk\);

-- Location: LCCOMB_X43_Y31_N10
\kr|rbuff|memory|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~1_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\kr|rbuff|memory|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~14clkctrl_outclk\,
	datab => \kr|kd|scan|count|reg|ff1|Q~q\,
	datad => \kr|rbuff|memory|ram~1_combout\,
	combout => \kr|rbuff|memory|ram~1_combout\);

-- Location: LCCOMB_X45_Y33_N14
\kr|rbuff|mac|idxDecider|Y[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|idxDecider|Y[0]~0_combout\ = (\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & (((\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\)))) # (!\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & ((\kr|rbuff|control|CurrentState.SELECT_PUT~q\ & 
-- (\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\)) # (!\kr|rbuff|control|CurrentState.SELECT_PUT~q\ & ((\kr|rbuff|mac|incrementGet|reg|ff0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|control|CurrentState.WRITE_RAM~q\,
	datab => \kr|rbuff|control|CurrentState.SELECT_PUT~q\,
	datac => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datad => \kr|rbuff|mac|incrementGet|reg|ff0|Q~q\,
	combout => \kr|rbuff|mac|idxDecider|Y[0]~0_combout\);

-- Location: LCCOMB_X47_Y35_N4
\rtl~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = (!\kr|rbuff|mac|incrementPut|reg|ff2|Q~q\ & (\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & !\kr|rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datab => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datac => \kr|rbuff|control|CurrentState.WRITE_RAM~q\,
	datad => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~13_combout\);

-- Location: CLKCTRL_G13
\rtl~13clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~13clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~13clkctrl_outclk\);

-- Location: LCCOMB_X43_Y31_N24
\kr|rbuff|memory|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~5_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\kr|rbuff|memory|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff1|Q~q\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~5_combout\,
	combout => \kr|rbuff|memory|ram~5_combout\);

-- Location: LCCOMB_X44_Y31_N20
\kr|rbuff|memory|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~39_combout\ = (\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & (((\kr|rbuff|mac|idxDecider|Y[0]~0_combout\)))) # (!\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\kr|rbuff|memory|ram~5_combout\))) 
-- # (!\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & (\kr|rbuff|memory|ram~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~1_combout\,
	datab => \kr|rbuff|mac|idxDecider|Y[1]~1_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[0]~0_combout\,
	datad => \kr|rbuff|memory|ram~5_combout\,
	combout => \kr|rbuff|memory|ram~39_combout\);

-- Location: LCCOMB_X44_Y31_N30
\kr|rbuff|memory|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~40_combout\ = (\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\kr|rbuff|memory|ram~39_combout\ & ((\kr|rbuff|memory|ram~13_combout\))) # (!\kr|rbuff|memory|ram~39_combout\ & (\kr|rbuff|memory|ram~9_combout\)))) # 
-- (!\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & (((\kr|rbuff|memory|ram~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~9_combout\,
	datab => \kr|rbuff|memory|ram~13_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[1]~1_combout\,
	datad => \kr|rbuff|memory|ram~39_combout\,
	combout => \kr|rbuff|memory|ram~40_combout\);

-- Location: LCCOMB_X45_Y33_N10
\kr|rbuff|mac|idxDecider|Y[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|mac|idxDecider|Y[2]~2_combout\ = (\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & (((\kr|rbuff|mac|incrementPut|reg|ff2|Q~q\)))) # (!\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & ((\kr|rbuff|control|CurrentState.SELECT_PUT~q\ & 
-- (\kr|rbuff|mac|incrementPut|reg|ff2|Q~q\)) # (!\kr|rbuff|control|CurrentState.SELECT_PUT~q\ & ((\kr|rbuff|mac|incrementGet|reg|ff2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|control|CurrentState.WRITE_RAM~q\,
	datab => \kr|rbuff|control|CurrentState.SELECT_PUT~q\,
	datac => \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datad => \kr|rbuff|mac|incrementGet|reg|ff2|Q~q\,
	combout => \kr|rbuff|mac|idxDecider|Y[2]~2_combout\);

-- Location: LCCOMB_X47_Y35_N16
\rtl~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = (\kr|rbuff|mac|incrementPut|reg|ff2|Q~q\ & (\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datab => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datac => \kr|rbuff|control|CurrentState.WRITE_RAM~q\,
	datad => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~11_combout\);

-- Location: CLKCTRL_G17
\rtl~11clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~11clkctrl_outclk\);

-- Location: LCCOMB_X42_Y31_N0
\kr|rbuff|memory|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~29_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\kr|rbuff|memory|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff1|Q~q\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~29_combout\,
	combout => \kr|rbuff|memory|ram~29_combout\);

-- Location: LCCOMB_X47_Y35_N20
\rtl~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = (\kr|rbuff|mac|incrementPut|reg|ff2|Q~q\ & (!\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datab => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datac => \kr|rbuff|control|CurrentState.WRITE_RAM~q\,
	datad => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~9_combout\);

-- Location: CLKCTRL_G9
\rtl~9clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~9clkctrl_outclk\);

-- Location: LCCOMB_X44_Y31_N8
\kr|rbuff|memory|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~25_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\kr|rbuff|memory|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff1|Q~q\,
	datac => \kr|rbuff|memory|ram~25_combout\,
	datad => \rtl~9clkctrl_outclk\,
	combout => \kr|rbuff|memory|ram~25_combout\);

-- Location: LCCOMB_X47_Y35_N22
\rtl~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = (\kr|rbuff|mac|incrementPut|reg|ff2|Q~q\ & (!\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & !\kr|rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datab => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datac => \kr|rbuff|control|CurrentState.WRITE_RAM~q\,
	datad => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~10_combout\);

-- Location: CLKCTRL_G6
\rtl~10clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~10clkctrl_outclk\);

-- Location: LCCOMB_X44_Y31_N18
\kr|rbuff|memory|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~17_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\kr|rbuff|memory|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff1|Q~q\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~17_combout\,
	combout => \kr|rbuff|memory|ram~17_combout\);

-- Location: LCCOMB_X44_Y31_N24
\kr|rbuff|memory|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~37_combout\ = (\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & (((\kr|rbuff|mac|idxDecider|Y[1]~1_combout\)))) # (!\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & (\kr|rbuff|memory|ram~25_combout\)) 
-- # (!\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\kr|rbuff|memory|ram~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|idxDecider|Y[0]~0_combout\,
	datab => \kr|rbuff|memory|ram~25_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[1]~1_combout\,
	datad => \kr|rbuff|memory|ram~17_combout\,
	combout => \kr|rbuff|memory|ram~37_combout\);

-- Location: LCCOMB_X47_Y35_N24
\rtl~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = (\kr|rbuff|mac|incrementPut|reg|ff2|Q~q\ & (\kr|rbuff|mac|incrementPut|reg|ff0|Q~q\ & (\kr|rbuff|control|CurrentState.WRITE_RAM~q\ & !\kr|rbuff|mac|incrementPut|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|incrementPut|reg|ff2|Q~q\,
	datab => \kr|rbuff|mac|incrementPut|reg|ff0|Q~q\,
	datac => \kr|rbuff|control|CurrentState.WRITE_RAM~q\,
	datad => \kr|rbuff|mac|incrementPut|reg|ff1|Q~q\,
	combout => \rtl~8_combout\);

-- Location: CLKCTRL_G7
\rtl~8clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~8clkctrl_outclk\);

-- Location: LCCOMB_X44_Y31_N6
\kr|rbuff|memory|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~21_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff1|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\kr|rbuff|memory|ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff1|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~21_combout\,
	combout => \kr|rbuff|memory|ram~21_combout\);

-- Location: LCCOMB_X44_Y31_N26
\kr|rbuff|memory|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~38_combout\ = (\kr|rbuff|memory|ram~37_combout\ & ((\kr|rbuff|memory|ram~29_combout\) # ((!\kr|rbuff|mac|idxDecider|Y[0]~0_combout\)))) # (!\kr|rbuff|memory|ram~37_combout\ & (((\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & 
-- \kr|rbuff|memory|ram~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~29_combout\,
	datab => \kr|rbuff|memory|ram~37_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[0]~0_combout\,
	datad => \kr|rbuff|memory|ram~21_combout\,
	combout => \kr|rbuff|memory|ram~38_combout\);

-- Location: LCCOMB_X44_Y31_N10
\kr|rbuff|memory|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~41_combout\ = (\kr|rbuff|mac|idxDecider|Y[2]~2_combout\ & ((\kr|rbuff|memory|ram~38_combout\))) # (!\kr|rbuff|mac|idxDecider|Y[2]~2_combout\ & (\kr|rbuff|memory|ram~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~40_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[2]~2_combout\,
	datad => \kr|rbuff|memory|ram~38_combout\,
	combout => \kr|rbuff|memory|ram~41_combout\);

-- Location: FF_X44_Y31_N11
\kr|obuff|outreg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|memory|ram~41_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \kr|obuff|control|CurrentState.WRITE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|obuff|outreg|ff1|Q~q\);

-- Location: LCCOMB_X50_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCCOMB_X47_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\);

-- Location: FF_X47_Y37_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X47_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X47_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X47_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: LCCOMB_X45_Y30_N14
\kr|kd|scan|count|reg|ff2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|scan|count|reg|ff2|Q~0_combout\ = (\kr|kd|control|CurrentState.FIRST~q\) # (!\kr|kd|scan|count|reg|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|control|CurrentState.FIRST~q\,
	datad => \kr|kd|scan|count|reg|ff1|Q~q\,
	combout => \kr|kd|scan|count|reg|ff2|Q~0_combout\);

-- Location: LCCOMB_X45_Y30_N16
\kr|kd|scan|count|reg|ff2|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|scan|count|reg|ff2|Q~1_combout\ = \kr|kd|scan|count|reg|ff2|Q~q\ $ (((\kr|kd|scan|mux|Y~1_combout\ & (!\kr|kd|scan|count|reg|ff2|Q~0_combout\ & \kr|kd|scan|count|reg|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|mux|Y~1_combout\,
	datab => \kr|kd|scan|count|reg|ff2|Q~0_combout\,
	datac => \kr|kd|scan|count|reg|ff2|Q~q\,
	datad => \kr|kd|scan|count|reg|ff0|Q~q\,
	combout => \kr|kd|scan|count|reg|ff2|Q~1_combout\);

-- Location: FF_X45_Y30_N17
\kr|kd|scan|count|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kr|kd|clock|tmp~clkctrl_outclk\,
	d => \kr|kd|scan|count|reg|ff2|Q~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|scan|count|reg|ff2|Q~q\);

-- Location: LCCOMB_X43_Y30_N6
\kr|rbuff|memory|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~6_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff2|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\kr|rbuff|memory|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff2|Q~q\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~6_combout\,
	combout => \kr|rbuff|memory|ram~6_combout\);

-- Location: LCCOMB_X43_Y30_N24
\kr|rbuff|memory|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~2_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff2|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\kr|rbuff|memory|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff2|Q~q\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~2_combout\,
	combout => \kr|rbuff|memory|ram~2_combout\);

-- Location: LCCOMB_X43_Y30_N4
\kr|rbuff|memory|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~44_combout\ = (\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & (((\kr|rbuff|mac|idxDecider|Y[0]~0_combout\)))) # (!\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & (\kr|rbuff|memory|ram~6_combout\)) # 
-- (!\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\kr|rbuff|memory|ram~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~6_combout\,
	datab => \kr|rbuff|memory|ram~2_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[1]~1_combout\,
	datad => \kr|rbuff|mac|idxDecider|Y[0]~0_combout\,
	combout => \kr|rbuff|memory|ram~44_combout\);

-- Location: LCCOMB_X44_Y33_N22
\kr|rbuff|memory|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~14_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff2|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\kr|rbuff|memory|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff2|Q~q\,
	datab => \rtl~15clkctrl_outclk\,
	datac => \kr|rbuff|memory|ram~14_combout\,
	combout => \kr|rbuff|memory|ram~14_combout\);

-- Location: LCCOMB_X44_Y33_N20
\kr|rbuff|memory|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~10_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff2|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\kr|rbuff|memory|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff2|Q~q\,
	datab => \rtl~12clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~10_combout\,
	combout => \kr|rbuff|memory|ram~10_combout\);

-- Location: LCCOMB_X43_Y33_N24
\kr|rbuff|memory|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~45_combout\ = (\kr|rbuff|memory|ram~44_combout\ & ((\kr|rbuff|memory|ram~14_combout\) # ((!\kr|rbuff|mac|idxDecider|Y[1]~1_combout\)))) # (!\kr|rbuff|memory|ram~44_combout\ & (((\kr|rbuff|memory|ram~10_combout\ & 
-- \kr|rbuff|mac|idxDecider|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~44_combout\,
	datab => \kr|rbuff|memory|ram~14_combout\,
	datac => \kr|rbuff|memory|ram~10_combout\,
	datad => \kr|rbuff|mac|idxDecider|Y[1]~1_combout\,
	combout => \kr|rbuff|memory|ram~45_combout\);

-- Location: LCCOMB_X43_Y33_N22
\kr|rbuff|memory|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~22_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & ((\kr|kd|scan|count|reg|ff2|Q~q\))) # (!GLOBAL(\rtl~8clkctrl_outclk\) & (\kr|rbuff|memory|ram~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~22_combout\,
	datab => \kr|kd|scan|count|reg|ff2|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	combout => \kr|rbuff|memory|ram~22_combout\);

-- Location: LCCOMB_X43_Y33_N18
\kr|rbuff|memory|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~30_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff2|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\kr|rbuff|memory|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff2|Q~q\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~30_combout\,
	combout => \kr|rbuff|memory|ram~30_combout\);

-- Location: LCCOMB_X44_Y33_N18
\kr|rbuff|memory|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~26_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff2|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\kr|rbuff|memory|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff2|Q~q\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~26_combout\,
	combout => \kr|rbuff|memory|ram~26_combout\);

-- Location: LCCOMB_X43_Y33_N16
\kr|rbuff|memory|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~18_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff2|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\kr|rbuff|memory|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~10clkctrl_outclk\,
	datab => \kr|kd|scan|count|reg|ff2|Q~q\,
	datad => \kr|rbuff|memory|ram~18_combout\,
	combout => \kr|rbuff|memory|ram~18_combout\);

-- Location: LCCOMB_X43_Y33_N20
\kr|rbuff|memory|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~42_combout\ = (\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & (((\kr|rbuff|mac|idxDecider|Y[1]~1_combout\)))) # (!\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & (\kr|rbuff|memory|ram~26_combout\)) 
-- # (!\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\kr|rbuff|memory|ram~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~26_combout\,
	datab => \kr|rbuff|memory|ram~18_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[0]~0_combout\,
	datad => \kr|rbuff|mac|idxDecider|Y[1]~1_combout\,
	combout => \kr|rbuff|memory|ram~42_combout\);

-- Location: LCCOMB_X43_Y33_N14
\kr|rbuff|memory|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~43_combout\ = (\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\kr|rbuff|memory|ram~42_combout\ & ((\kr|rbuff|memory|ram~30_combout\))) # (!\kr|rbuff|memory|ram~42_combout\ & (\kr|rbuff|memory|ram~22_combout\)))) # 
-- (!\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & (((\kr|rbuff|memory|ram~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~22_combout\,
	datab => \kr|rbuff|memory|ram~30_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[0]~0_combout\,
	datad => \kr|rbuff|memory|ram~42_combout\,
	combout => \kr|rbuff|memory|ram~43_combout\);

-- Location: LCCOMB_X43_Y33_N8
\kr|rbuff|memory|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~46_combout\ = (\kr|rbuff|mac|idxDecider|Y[2]~2_combout\ & ((\kr|rbuff|memory|ram~43_combout\))) # (!\kr|rbuff|mac|idxDecider|Y[2]~2_combout\ & (\kr|rbuff|memory|ram~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|rbuff|memory|ram~45_combout\,
	datac => \kr|rbuff|memory|ram~43_combout\,
	datad => \kr|rbuff|mac|idxDecider|Y[2]~2_combout\,
	combout => \kr|rbuff|memory|ram~46_combout\);

-- Location: FF_X43_Y33_N9
\kr|obuff|outreg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|memory|ram~46_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \kr|obuff|control|CurrentState.WRITE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|obuff|outreg|ff2|Q~q\);

-- Location: LCCOMB_X47_Y39_N28
\serialDoorC|serialR|c|reg|ff0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|c|reg|ff0|Q~0_combout\ = !\serialDoorC|serialR|c|reg|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serialDoorC|serialR|c|reg|ff0|Q~q\,
	combout => \serialDoorC|serialR|c|reg|ff0|Q~0_combout\);

-- Location: CLKCTRL_G8
\serialDoorC|serialR|sc|CurrentState.FIRST~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \serialDoorC|serialR|sc|CurrentState.FIRST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \serialDoorC|serialR|sc|CurrentState.FIRST~clkctrl_outclk\);

-- Location: FF_X50_Y37_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: LCCOMB_X60_Y37_N0
\fdoor|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fdoor|Q~0_combout\ = !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	combout => \fdoor|Q~0_combout\);

-- Location: FF_X60_Y37_N1
\fdoor|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fdoor|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fdoor|Q~q\);

-- Location: LCCOMB_X69_Y43_N28
\serialDoorC|serialR|c|reg|ff2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|c|reg|ff2|Q~0_combout\ = \serialDoorC|serialR|c|reg|ff2|Q~q\ $ (((\serialDoorC|serialR|c|reg|ff1|Q~q\ & (\serialDoorC|serialR|c|reg|ff0|Q~q\ & \serialDoorC|serialR|sc|CurrentState.SECOND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|serialR|c|reg|ff1|Q~q\,
	datab => \serialDoorC|serialR|c|reg|ff0|Q~q\,
	datac => \serialDoorC|serialR|c|reg|ff2|Q~q\,
	datad => \serialDoorC|serialR|sc|CurrentState.SECOND~q\,
	combout => \serialDoorC|serialR|c|reg|ff2|Q~0_combout\);

-- Location: FF_X69_Y43_N29
\serialDoorC|serialR|c|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \serialDoorC|serialR|c|reg|ff2|Q~0_combout\,
	clrn => \serialDoorC|serialR|sc|CurrentState.FIRST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|serialR|c|reg|ff2|Q~q\);

-- Location: LCCOMB_X69_Y43_N16
\serialDoorC|serialR|sc|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|sc|Selector2~0_combout\ = (!\fdoor|Q~q\ & (\serialDoorC|serialR|c|reg|ff2|Q~q\ & (\serialDoorC|serialR|c|reg|ff0|Q~q\ & !\serialDoorC|serialR|c|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fdoor|Q~q\,
	datab => \serialDoorC|serialR|c|reg|ff2|Q~q\,
	datac => \serialDoorC|serialR|c|reg|ff0|Q~q\,
	datad => \serialDoorC|serialR|c|reg|ff1|Q~q\,
	combout => \serialDoorC|serialR|sc|Selector2~0_combout\);

-- Location: LCCOMB_X35_Y23_N2
\dm|UCLK|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~1_cout\ = CARRY((!\kr|kd|clock|count\(0) & \kr|kd|clock|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|clock|count\(0),
	datab => \kr|kd|clock|count\(1),
	datad => VCC,
	cout => \dm|UCLK|Add0~1_cout\);

-- Location: LCCOMB_X35_Y23_N4
\dm|UCLK|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~2_combout\ = (\dm|UCLK|count\(2) & (!\dm|UCLK|Add0~1_cout\)) # (!\dm|UCLK|count\(2) & ((\dm|UCLK|Add0~1_cout\) # (GND)))
-- \dm|UCLK|Add0~3\ = CARRY((!\dm|UCLK|Add0~1_cout\) # (!\dm|UCLK|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(2),
	datad => VCC,
	cin => \dm|UCLK|Add0~1_cout\,
	combout => \dm|UCLK|Add0~2_combout\,
	cout => \dm|UCLK|Add0~3\);

-- Location: FF_X35_Y23_N5
\dm|UCLK|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(2));

-- Location: LCCOMB_X35_Y23_N6
\dm|UCLK|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~4_combout\ = (\dm|UCLK|count\(3) & (\dm|UCLK|Add0~3\ $ (GND))) # (!\dm|UCLK|count\(3) & (!\dm|UCLK|Add0~3\ & VCC))
-- \dm|UCLK|Add0~5\ = CARRY((\dm|UCLK|count\(3) & !\dm|UCLK|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(3),
	datad => VCC,
	cin => \dm|UCLK|Add0~3\,
	combout => \dm|UCLK|Add0~4_combout\,
	cout => \dm|UCLK|Add0~5\);

-- Location: FF_X35_Y23_N7
\dm|UCLK|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(3));

-- Location: LCCOMB_X35_Y23_N8
\dm|UCLK|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~6_combout\ = (\dm|UCLK|count\(4) & (!\dm|UCLK|Add0~5\)) # (!\dm|UCLK|count\(4) & ((\dm|UCLK|Add0~5\) # (GND)))
-- \dm|UCLK|Add0~7\ = CARRY((!\dm|UCLK|Add0~5\) # (!\dm|UCLK|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(4),
	datad => VCC,
	cin => \dm|UCLK|Add0~5\,
	combout => \dm|UCLK|Add0~6_combout\,
	cout => \dm|UCLK|Add0~7\);

-- Location: FF_X35_Y23_N9
\dm|UCLK|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(4));

-- Location: LCCOMB_X35_Y23_N10
\dm|UCLK|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~8_combout\ = (\dm|UCLK|count\(5) & (\dm|UCLK|Add0~7\ $ (GND))) # (!\dm|UCLK|count\(5) & (!\dm|UCLK|Add0~7\ & VCC))
-- \dm|UCLK|Add0~9\ = CARRY((\dm|UCLK|count\(5) & !\dm|UCLK|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(5),
	datad => VCC,
	cin => \dm|UCLK|Add0~7\,
	combout => \dm|UCLK|Add0~8_combout\,
	cout => \dm|UCLK|Add0~9\);

-- Location: FF_X35_Y23_N11
\dm|UCLK|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(5));

-- Location: LCCOMB_X35_Y23_N12
\dm|UCLK|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~10_combout\ = (\dm|UCLK|count\(6) & (!\dm|UCLK|Add0~9\)) # (!\dm|UCLK|count\(6) & ((\dm|UCLK|Add0~9\) # (GND)))
-- \dm|UCLK|Add0~11\ = CARRY((!\dm|UCLK|Add0~9\) # (!\dm|UCLK|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(6),
	datad => VCC,
	cin => \dm|UCLK|Add0~9\,
	combout => \dm|UCLK|Add0~10_combout\,
	cout => \dm|UCLK|Add0~11\);

-- Location: LCCOMB_X36_Y23_N24
\dm|UCLK|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|count~0_combout\ = (!\dm|UCLK|Equal0~9_combout\ & \dm|UCLK|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|Equal0~9_combout\,
	datad => \dm|UCLK|Add0~10_combout\,
	combout => \dm|UCLK|count~0_combout\);

-- Location: FF_X36_Y23_N25
\dm|UCLK|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(6));

-- Location: LCCOMB_X35_Y23_N14
\dm|UCLK|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~12_combout\ = (\dm|UCLK|count\(7) & (\dm|UCLK|Add0~11\ $ (GND))) # (!\dm|UCLK|count\(7) & (!\dm|UCLK|Add0~11\ & VCC))
-- \dm|UCLK|Add0~13\ = CARRY((\dm|UCLK|count\(7) & !\dm|UCLK|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(7),
	datad => VCC,
	cin => \dm|UCLK|Add0~11\,
	combout => \dm|UCLK|Add0~12_combout\,
	cout => \dm|UCLK|Add0~13\);

-- Location: FF_X35_Y23_N15
\dm|UCLK|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(7));

-- Location: LCCOMB_X35_Y23_N16
\dm|UCLK|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~14_combout\ = (\dm|UCLK|count\(8) & (!\dm|UCLK|Add0~13\)) # (!\dm|UCLK|count\(8) & ((\dm|UCLK|Add0~13\) # (GND)))
-- \dm|UCLK|Add0~15\ = CARRY((!\dm|UCLK|Add0~13\) # (!\dm|UCLK|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(8),
	datad => VCC,
	cin => \dm|UCLK|Add0~13\,
	combout => \dm|UCLK|Add0~14_combout\,
	cout => \dm|UCLK|Add0~15\);

-- Location: FF_X35_Y23_N17
\dm|UCLK|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(8));

-- Location: LCCOMB_X35_Y23_N18
\dm|UCLK|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~16_combout\ = (\dm|UCLK|count\(9) & (\dm|UCLK|Add0~15\ $ (GND))) # (!\dm|UCLK|count\(9) & (!\dm|UCLK|Add0~15\ & VCC))
-- \dm|UCLK|Add0~17\ = CARRY((\dm|UCLK|count\(9) & !\dm|UCLK|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(9),
	datad => VCC,
	cin => \dm|UCLK|Add0~15\,
	combout => \dm|UCLK|Add0~16_combout\,
	cout => \dm|UCLK|Add0~17\);

-- Location: LCCOMB_X40_Y23_N0
\dm|UCLK|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|count~1_combout\ = (!\dm|UCLK|Equal0~9_combout\ & \dm|UCLK|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|Equal0~9_combout\,
	datad => \dm|UCLK|Add0~16_combout\,
	combout => \dm|UCLK|count~1_combout\);

-- Location: FF_X40_Y23_N1
\dm|UCLK|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(9));

-- Location: LCCOMB_X35_Y23_N20
\dm|UCLK|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~18_combout\ = (\dm|UCLK|count\(10) & (!\dm|UCLK|Add0~17\)) # (!\dm|UCLK|count\(10) & ((\dm|UCLK|Add0~17\) # (GND)))
-- \dm|UCLK|Add0~19\ = CARRY((!\dm|UCLK|Add0~17\) # (!\dm|UCLK|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(10),
	datad => VCC,
	cin => \dm|UCLK|Add0~17\,
	combout => \dm|UCLK|Add0~18_combout\,
	cout => \dm|UCLK|Add0~19\);

-- Location: FF_X35_Y23_N21
\dm|UCLK|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(10));

-- Location: LCCOMB_X35_Y23_N22
\dm|UCLK|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~20_combout\ = (\dm|UCLK|count\(11) & (\dm|UCLK|Add0~19\ $ (GND))) # (!\dm|UCLK|count\(11) & (!\dm|UCLK|Add0~19\ & VCC))
-- \dm|UCLK|Add0~21\ = CARRY((\dm|UCLK|count\(11) & !\dm|UCLK|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(11),
	datad => VCC,
	cin => \dm|UCLK|Add0~19\,
	combout => \dm|UCLK|Add0~20_combout\,
	cout => \dm|UCLK|Add0~21\);

-- Location: FF_X35_Y23_N23
\dm|UCLK|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(11));

-- Location: LCCOMB_X35_Y23_N24
\dm|UCLK|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~22_combout\ = (\dm|UCLK|count\(12) & (!\dm|UCLK|Add0~21\)) # (!\dm|UCLK|count\(12) & ((\dm|UCLK|Add0~21\) # (GND)))
-- \dm|UCLK|Add0~23\ = CARRY((!\dm|UCLK|Add0~21\) # (!\dm|UCLK|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(12),
	datad => VCC,
	cin => \dm|UCLK|Add0~21\,
	combout => \dm|UCLK|Add0~22_combout\,
	cout => \dm|UCLK|Add0~23\);

-- Location: FF_X35_Y23_N25
\dm|UCLK|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(12));

-- Location: LCCOMB_X35_Y23_N26
\dm|UCLK|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~24_combout\ = (\dm|UCLK|count\(13) & (\dm|UCLK|Add0~23\ $ (GND))) # (!\dm|UCLK|count\(13) & (!\dm|UCLK|Add0~23\ & VCC))
-- \dm|UCLK|Add0~25\ = CARRY((\dm|UCLK|count\(13) & !\dm|UCLK|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(13),
	datad => VCC,
	cin => \dm|UCLK|Add0~23\,
	combout => \dm|UCLK|Add0~24_combout\,
	cout => \dm|UCLK|Add0~25\);

-- Location: FF_X35_Y23_N27
\dm|UCLK|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(13));

-- Location: LCCOMB_X35_Y23_N28
\dm|UCLK|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~26_combout\ = (\dm|UCLK|count\(14) & (!\dm|UCLK|Add0~25\)) # (!\dm|UCLK|count\(14) & ((\dm|UCLK|Add0~25\) # (GND)))
-- \dm|UCLK|Add0~27\ = CARRY((!\dm|UCLK|Add0~25\) # (!\dm|UCLK|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(14),
	datad => VCC,
	cin => \dm|UCLK|Add0~25\,
	combout => \dm|UCLK|Add0~26_combout\,
	cout => \dm|UCLK|Add0~27\);

-- Location: LCCOMB_X39_Y23_N0
\dm|UCLK|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|count~2_combout\ = (!\dm|UCLK|Equal0~9_combout\ & \dm|UCLK|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|UCLK|Equal0~9_combout\,
	datad => \dm|UCLK|Add0~26_combout\,
	combout => \dm|UCLK|count~2_combout\);

-- Location: FF_X39_Y23_N1
\dm|UCLK|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(14));

-- Location: LCCOMB_X35_Y23_N30
\dm|UCLK|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~28_combout\ = (\dm|UCLK|count\(15) & (\dm|UCLK|Add0~27\ $ (GND))) # (!\dm|UCLK|count\(15) & (!\dm|UCLK|Add0~27\ & VCC))
-- \dm|UCLK|Add0~29\ = CARRY((\dm|UCLK|count\(15) & !\dm|UCLK|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(15),
	datad => VCC,
	cin => \dm|UCLK|Add0~27\,
	combout => \dm|UCLK|Add0~28_combout\,
	cout => \dm|UCLK|Add0~29\);

-- Location: FF_X35_Y23_N31
\dm|UCLK|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(15));

-- Location: LCCOMB_X35_Y22_N0
\dm|UCLK|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~30_combout\ = (\dm|UCLK|count\(16) & (!\dm|UCLK|Add0~29\)) # (!\dm|UCLK|count\(16) & ((\dm|UCLK|Add0~29\) # (GND)))
-- \dm|UCLK|Add0~31\ = CARRY((!\dm|UCLK|Add0~29\) # (!\dm|UCLK|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(16),
	datad => VCC,
	cin => \dm|UCLK|Add0~29\,
	combout => \dm|UCLK|Add0~30_combout\,
	cout => \dm|UCLK|Add0~31\);

-- Location: LCCOMB_X34_Y22_N16
\dm|UCLK|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|count~3_combout\ = (\dm|UCLK|Add0~30_combout\ & !\dm|UCLK|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|UCLK|Add0~30_combout\,
	datad => \dm|UCLK|Equal0~9_combout\,
	combout => \dm|UCLK|count~3_combout\);

-- Location: FF_X34_Y22_N17
\dm|UCLK|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(16));

-- Location: LCCOMB_X35_Y22_N2
\dm|UCLK|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~32_combout\ = (\dm|UCLK|count\(17) & (\dm|UCLK|Add0~31\ $ (GND))) # (!\dm|UCLK|count\(17) & (!\dm|UCLK|Add0~31\ & VCC))
-- \dm|UCLK|Add0~33\ = CARRY((\dm|UCLK|count\(17) & !\dm|UCLK|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(17),
	datad => VCC,
	cin => \dm|UCLK|Add0~31\,
	combout => \dm|UCLK|Add0~32_combout\,
	cout => \dm|UCLK|Add0~33\);

-- Location: LCCOMB_X34_Y22_N26
\dm|UCLK|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|count~4_combout\ = (!\dm|UCLK|Equal0~9_combout\ & \dm|UCLK|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|Equal0~9_combout\,
	datad => \dm|UCLK|Add0~32_combout\,
	combout => \dm|UCLK|count~4_combout\);

-- Location: FF_X34_Y22_N27
\dm|UCLK|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(17));

-- Location: LCCOMB_X35_Y22_N4
\dm|UCLK|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~34_combout\ = (\dm|UCLK|count\(18) & (!\dm|UCLK|Add0~33\)) # (!\dm|UCLK|count\(18) & ((\dm|UCLK|Add0~33\) # (GND)))
-- \dm|UCLK|Add0~35\ = CARRY((!\dm|UCLK|Add0~33\) # (!\dm|UCLK|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(18),
	datad => VCC,
	cin => \dm|UCLK|Add0~33\,
	combout => \dm|UCLK|Add0~34_combout\,
	cout => \dm|UCLK|Add0~35\);

-- Location: LCCOMB_X34_Y22_N12
\dm|UCLK|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|count~5_combout\ = (!\dm|UCLK|Equal0~9_combout\ & \dm|UCLK|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|Equal0~9_combout\,
	datad => \dm|UCLK|Add0~34_combout\,
	combout => \dm|UCLK|count~5_combout\);

-- Location: FF_X34_Y22_N13
\dm|UCLK|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(18));

-- Location: LCCOMB_X35_Y22_N6
\dm|UCLK|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~36_combout\ = (\dm|UCLK|count\(19) & (\dm|UCLK|Add0~35\ $ (GND))) # (!\dm|UCLK|count\(19) & (!\dm|UCLK|Add0~35\ & VCC))
-- \dm|UCLK|Add0~37\ = CARRY((\dm|UCLK|count\(19) & !\dm|UCLK|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(19),
	datad => VCC,
	cin => \dm|UCLK|Add0~35\,
	combout => \dm|UCLK|Add0~36_combout\,
	cout => \dm|UCLK|Add0~37\);

-- Location: LCCOMB_X34_Y22_N6
\dm|UCLK|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|count~6_combout\ = (!\dm|UCLK|Equal0~9_combout\ & \dm|UCLK|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|Equal0~9_combout\,
	datad => \dm|UCLK|Add0~36_combout\,
	combout => \dm|UCLK|count~6_combout\);

-- Location: FF_X34_Y22_N7
\dm|UCLK|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(19));

-- Location: LCCOMB_X35_Y22_N8
\dm|UCLK|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~38_combout\ = (\dm|UCLK|count\(20) & (!\dm|UCLK|Add0~37\)) # (!\dm|UCLK|count\(20) & ((\dm|UCLK|Add0~37\) # (GND)))
-- \dm|UCLK|Add0~39\ = CARRY((!\dm|UCLK|Add0~37\) # (!\dm|UCLK|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(20),
	datad => VCC,
	cin => \dm|UCLK|Add0~37\,
	combout => \dm|UCLK|Add0~38_combout\,
	cout => \dm|UCLK|Add0~39\);

-- Location: FF_X35_Y22_N9
\dm|UCLK|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(20));

-- Location: LCCOMB_X35_Y22_N10
\dm|UCLK|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~40_combout\ = (\dm|UCLK|count\(21) & (\dm|UCLK|Add0~39\ $ (GND))) # (!\dm|UCLK|count\(21) & (!\dm|UCLK|Add0~39\ & VCC))
-- \dm|UCLK|Add0~41\ = CARRY((\dm|UCLK|count\(21) & !\dm|UCLK|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(21),
	datad => VCC,
	cin => \dm|UCLK|Add0~39\,
	combout => \dm|UCLK|Add0~40_combout\,
	cout => \dm|UCLK|Add0~41\);

-- Location: FF_X35_Y22_N11
\dm|UCLK|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(21));

-- Location: LCCOMB_X35_Y22_N12
\dm|UCLK|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~42_combout\ = (\dm|UCLK|count\(22) & (!\dm|UCLK|Add0~41\)) # (!\dm|UCLK|count\(22) & ((\dm|UCLK|Add0~41\) # (GND)))
-- \dm|UCLK|Add0~43\ = CARRY((!\dm|UCLK|Add0~41\) # (!\dm|UCLK|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(22),
	datad => VCC,
	cin => \dm|UCLK|Add0~41\,
	combout => \dm|UCLK|Add0~42_combout\,
	cout => \dm|UCLK|Add0~43\);

-- Location: FF_X35_Y22_N13
\dm|UCLK|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(22));

-- Location: LCCOMB_X35_Y22_N14
\dm|UCLK|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~44_combout\ = (\dm|UCLK|count\(23) & (\dm|UCLK|Add0~43\ $ (GND))) # (!\dm|UCLK|count\(23) & (!\dm|UCLK|Add0~43\ & VCC))
-- \dm|UCLK|Add0~45\ = CARRY((\dm|UCLK|count\(23) & !\dm|UCLK|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(23),
	datad => VCC,
	cin => \dm|UCLK|Add0~43\,
	combout => \dm|UCLK|Add0~44_combout\,
	cout => \dm|UCLK|Add0~45\);

-- Location: FF_X35_Y22_N15
\dm|UCLK|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(23));

-- Location: LCCOMB_X34_Y22_N10
\dm|UCLK|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Equal0~5_combout\ = (!\dm|UCLK|count\(21) & (!\dm|UCLK|count\(22) & (!\dm|UCLK|count\(20) & !\dm|UCLK|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(21),
	datab => \dm|UCLK|count\(22),
	datac => \dm|UCLK|count\(20),
	datad => \dm|UCLK|count\(23),
	combout => \dm|UCLK|Equal0~5_combout\);

-- Location: LCCOMB_X35_Y22_N16
\dm|UCLK|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~46_combout\ = (\dm|UCLK|count\(24) & (!\dm|UCLK|Add0~45\)) # (!\dm|UCLK|count\(24) & ((\dm|UCLK|Add0~45\) # (GND)))
-- \dm|UCLK|Add0~47\ = CARRY((!\dm|UCLK|Add0~45\) # (!\dm|UCLK|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(24),
	datad => VCC,
	cin => \dm|UCLK|Add0~45\,
	combout => \dm|UCLK|Add0~46_combout\,
	cout => \dm|UCLK|Add0~47\);

-- Location: FF_X35_Y22_N17
\dm|UCLK|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(24));

-- Location: LCCOMB_X35_Y22_N18
\dm|UCLK|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~48_combout\ = (\dm|UCLK|count\(25) & (\dm|UCLK|Add0~47\ $ (GND))) # (!\dm|UCLK|count\(25) & (!\dm|UCLK|Add0~47\ & VCC))
-- \dm|UCLK|Add0~49\ = CARRY((\dm|UCLK|count\(25) & !\dm|UCLK|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(25),
	datad => VCC,
	cin => \dm|UCLK|Add0~47\,
	combout => \dm|UCLK|Add0~48_combout\,
	cout => \dm|UCLK|Add0~49\);

-- Location: FF_X35_Y22_N19
\dm|UCLK|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(25));

-- Location: LCCOMB_X35_Y22_N20
\dm|UCLK|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~50_combout\ = (\dm|UCLK|count\(26) & (!\dm|UCLK|Add0~49\)) # (!\dm|UCLK|count\(26) & ((\dm|UCLK|Add0~49\) # (GND)))
-- \dm|UCLK|Add0~51\ = CARRY((!\dm|UCLK|Add0~49\) # (!\dm|UCLK|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(26),
	datad => VCC,
	cin => \dm|UCLK|Add0~49\,
	combout => \dm|UCLK|Add0~50_combout\,
	cout => \dm|UCLK|Add0~51\);

-- Location: FF_X35_Y22_N21
\dm|UCLK|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(26));

-- Location: LCCOMB_X35_Y22_N22
\dm|UCLK|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~52_combout\ = (\dm|UCLK|count\(27) & (\dm|UCLK|Add0~51\ $ (GND))) # (!\dm|UCLK|count\(27) & (!\dm|UCLK|Add0~51\ & VCC))
-- \dm|UCLK|Add0~53\ = CARRY((\dm|UCLK|count\(27) & !\dm|UCLK|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(27),
	datad => VCC,
	cin => \dm|UCLK|Add0~51\,
	combout => \dm|UCLK|Add0~52_combout\,
	cout => \dm|UCLK|Add0~53\);

-- Location: FF_X35_Y22_N23
\dm|UCLK|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(27));

-- Location: LCCOMB_X34_Y22_N28
\dm|UCLK|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Equal0~6_combout\ = (!\dm|UCLK|count\(24) & (!\dm|UCLK|count\(25) & (!\dm|UCLK|count\(26) & !\dm|UCLK|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(24),
	datab => \dm|UCLK|count\(25),
	datac => \dm|UCLK|count\(26),
	datad => \dm|UCLK|count\(27),
	combout => \dm|UCLK|Equal0~6_combout\);

-- Location: LCCOMB_X35_Y22_N24
\dm|UCLK|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~54_combout\ = (\dm|UCLK|count\(28) & (!\dm|UCLK|Add0~53\)) # (!\dm|UCLK|count\(28) & ((\dm|UCLK|Add0~53\) # (GND)))
-- \dm|UCLK|Add0~55\ = CARRY((!\dm|UCLK|Add0~53\) # (!\dm|UCLK|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(28),
	datad => VCC,
	cin => \dm|UCLK|Add0~53\,
	combout => \dm|UCLK|Add0~54_combout\,
	cout => \dm|UCLK|Add0~55\);

-- Location: FF_X35_Y22_N25
\dm|UCLK|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(28));

-- Location: LCCOMB_X35_Y22_N26
\dm|UCLK|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~56_combout\ = (\dm|UCLK|count\(29) & (\dm|UCLK|Add0~55\ $ (GND))) # (!\dm|UCLK|count\(29) & (!\dm|UCLK|Add0~55\ & VCC))
-- \dm|UCLK|Add0~57\ = CARRY((\dm|UCLK|count\(29) & !\dm|UCLK|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(29),
	datad => VCC,
	cin => \dm|UCLK|Add0~55\,
	combout => \dm|UCLK|Add0~56_combout\,
	cout => \dm|UCLK|Add0~57\);

-- Location: FF_X35_Y22_N27
\dm|UCLK|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(29));

-- Location: LCCOMB_X35_Y22_N28
\dm|UCLK|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~58_combout\ = (\dm|UCLK|count\(30) & (!\dm|UCLK|Add0~57\)) # (!\dm|UCLK|count\(30) & ((\dm|UCLK|Add0~57\) # (GND)))
-- \dm|UCLK|Add0~59\ = CARRY((!\dm|UCLK|Add0~57\) # (!\dm|UCLK|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dm|UCLK|count\(30),
	datad => VCC,
	cin => \dm|UCLK|Add0~57\,
	combout => \dm|UCLK|Add0~58_combout\,
	cout => \dm|UCLK|Add0~59\);

-- Location: FF_X35_Y22_N29
\dm|UCLK|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(30));

-- Location: LCCOMB_X35_Y22_N30
\dm|UCLK|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Add0~60_combout\ = \dm|UCLK|count\(31) $ (!\dm|UCLK|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(31),
	cin => \dm|UCLK|Add0~59\,
	combout => \dm|UCLK|Add0~60_combout\);

-- Location: FF_X35_Y22_N31
\dm|UCLK|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|count\(31));

-- Location: LCCOMB_X37_Y22_N8
\dm|UCLK|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Equal0~7_combout\ = (!\dm|UCLK|count\(28) & (!\dm|UCLK|count\(29) & (!\dm|UCLK|count\(31) & !\dm|UCLK|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(28),
	datab => \dm|UCLK|count\(29),
	datac => \dm|UCLK|count\(31),
	datad => \dm|UCLK|count\(30),
	combout => \dm|UCLK|Equal0~7_combout\);

-- Location: LCCOMB_X34_Y22_N24
\dm|UCLK|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Equal0~4_combout\ = (\dm|UCLK|count\(19) & (\dm|UCLK|count\(16) & (\dm|UCLK|count\(17) & \dm|UCLK|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(19),
	datab => \dm|UCLK|count\(16),
	datac => \dm|UCLK|count\(17),
	datad => \dm|UCLK|count\(18),
	combout => \dm|UCLK|Equal0~4_combout\);

-- Location: LCCOMB_X34_Y22_N22
\dm|UCLK|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Equal0~8_combout\ = (\dm|UCLK|Equal0~5_combout\ & (\dm|UCLK|Equal0~6_combout\ & (\dm|UCLK|Equal0~7_combout\ & \dm|UCLK|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|Equal0~5_combout\,
	datab => \dm|UCLK|Equal0~6_combout\,
	datac => \dm|UCLK|Equal0~7_combout\,
	datad => \dm|UCLK|Equal0~4_combout\,
	combout => \dm|UCLK|Equal0~8_combout\);

-- Location: LCCOMB_X36_Y23_N20
\dm|UCLK|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Equal0~3_combout\ = (\dm|UCLK|count\(14) & (!\dm|UCLK|count\(15) & (!\dm|UCLK|count\(13) & !\dm|UCLK|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(14),
	datab => \dm|UCLK|count\(15),
	datac => \dm|UCLK|count\(13),
	datad => \dm|UCLK|count\(12),
	combout => \dm|UCLK|Equal0~3_combout\);

-- Location: LCCOMB_X36_Y23_N18
\dm|UCLK|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Equal0~2_combout\ = (\dm|UCLK|count\(9) & (!\dm|UCLK|count\(10) & (!\dm|UCLK|count\(8) & !\dm|UCLK|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(9),
	datab => \dm|UCLK|count\(10),
	datac => \dm|UCLK|count\(8),
	datad => \dm|UCLK|count\(11),
	combout => \dm|UCLK|Equal0~2_combout\);

-- Location: LCCOMB_X35_Y23_N0
\dm|UCLK|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Equal0~0_combout\ = (!\dm|UCLK|count\(5) & (!\dm|UCLK|count\(7) & (!\dm|UCLK|count\(4) & \dm|UCLK|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(5),
	datab => \dm|UCLK|count\(7),
	datac => \dm|UCLK|count\(4),
	datad => \dm|UCLK|count\(6),
	combout => \dm|UCLK|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y23_N24
\dm|UCLK|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Equal0~1_combout\ = (!\dm|UCLK|count\(2) & (\kr|kd|clock|Equal0~0_combout\ & (\dm|UCLK|Equal0~0_combout\ & !\dm|UCLK|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|count\(2),
	datab => \kr|kd|clock|Equal0~0_combout\,
	datac => \dm|UCLK|Equal0~0_combout\,
	datad => \dm|UCLK|count\(3),
	combout => \dm|UCLK|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y22_N0
\dm|UCLK|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|Equal0~9_combout\ = (\dm|UCLK|Equal0~8_combout\ & (\dm|UCLK|Equal0~3_combout\ & (\dm|UCLK|Equal0~2_combout\ & \dm|UCLK|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|UCLK|Equal0~8_combout\,
	datab => \dm|UCLK|Equal0~3_combout\,
	datac => \dm|UCLK|Equal0~2_combout\,
	datad => \dm|UCLK|Equal0~1_combout\,
	combout => \dm|UCLK|Equal0~9_combout\);

-- Location: LCCOMB_X43_Y22_N16
\dm|UCLK|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|UCLK|tmp~0_combout\ = \dm|UCLK|tmp~q\ $ (\dm|UCLK|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|UCLK|tmp~q\,
	datad => \dm|UCLK|Equal0~9_combout\,
	combout => \dm|UCLK|tmp~0_combout\);

-- Location: FF_X43_Y22_N17
\dm|UCLK|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dm|UCLK|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|UCLK|tmp~q\);

-- Location: CLKCTRL_G18
\dm|UCLK|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dm|UCLK|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dm|UCLK|tmp~clkctrl_outclk\);

-- Location: FF_X50_Y37_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: LCCOMB_X47_Y39_N24
\serialDoorC|serialR|sr|ffd4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|sr|ffd4|Q~0_combout\ = !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	combout => \serialDoorC|serialR|sr|ffd4|Q~0_combout\);

-- Location: FF_X47_Y39_N25
\serialDoorC|serialR|sr|ffd4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \serialDoorC|serialR|sr|ffd4|Q~0_combout\,
	ena => \serialDoorC|serialR|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|serialR|sr|ffd4|Q~q\);

-- Location: LCCOMB_X47_Y39_N6
\serialDoorC|serialR|sr|ffd3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|sr|ffd3|Q~feeder_combout\ = \serialDoorC|serialR|sr|ffd4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serialDoorC|serialR|sr|ffd4|Q~q\,
	combout => \serialDoorC|serialR|sr|ffd3|Q~feeder_combout\);

-- Location: FF_X47_Y39_N7
\serialDoorC|serialR|sr|ffd3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \serialDoorC|serialR|sr|ffd3|Q~feeder_combout\,
	ena => \serialDoorC|serialR|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|serialR|sr|ffd3|Q~q\);

-- Location: LCCOMB_X47_Y39_N4
\serialDoorC|serialR|sr|ffd2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|sr|ffd2|Q~feeder_combout\ = \serialDoorC|serialR|sr|ffd3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serialDoorC|serialR|sr|ffd3|Q~q\,
	combout => \serialDoorC|serialR|sr|ffd2|Q~feeder_combout\);

-- Location: FF_X47_Y39_N5
\serialDoorC|serialR|sr|ffd2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \serialDoorC|serialR|sr|ffd2|Q~feeder_combout\,
	ena => \serialDoorC|serialR|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|serialR|sr|ffd2|Q~q\);

-- Location: LCCOMB_X47_Y51_N22
\dm|U6|cnt_atual_pl[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U6|cnt_atual_pl[0]~3_combout\ = (!\dm|U6|U2|Q\(0) & !\dm|shift_clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|U6|U2|Q\(0),
	datad => \dm|shift_clk~combout\,
	combout => \dm|U6|cnt_atual_pl[0]~3_combout\);

-- Location: LCCOMB_X47_Y39_N26
\serialDoorC|serialR|sr|ffd1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|sr|ffd1|Q~feeder_combout\ = \serialDoorC|serialR|sr|ffd2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serialDoorC|serialR|sr|ffd2|Q~q\,
	combout => \serialDoorC|serialR|sr|ffd1|Q~feeder_combout\);

-- Location: FF_X47_Y39_N27
\serialDoorC|serialR|sr|ffd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \serialDoorC|serialR|sr|ffd1|Q~feeder_combout\,
	ena => \serialDoorC|serialR|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|serialR|sr|ffd1|Q~q\);

-- Location: LCCOMB_X47_Y39_N2
\serialDoorC|serialR|sr|ffd0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|sr|ffd0|Q~feeder_combout\ = \serialDoorC|serialR|sr|ffd1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serialDoorC|serialR|sr|ffd1|Q~q\,
	combout => \serialDoorC|serialR|sr|ffd0|Q~feeder_combout\);

-- Location: FF_X47_Y39_N3
\serialDoorC|serialR|sr|ffd0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \serialDoorC|serialR|sr|ffd0|Q~feeder_combout\,
	ena => \serialDoorC|serialR|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|serialR|sr|ffd0|Q~q\);

-- Location: LCCOMB_X70_Y44_N26
\serialDoorC|doorControl|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|Selector2~0_combout\ = (\serialDoorC|doorControl|OnOff~1_combout\) # ((\serialDoorC|serialR|sr|ffd0|Q~q\ & ((\serialDoorC|doorControl|Selector1~1_combout\) # (\serialDoorC|doorControl|Selector3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|doorControl|Selector1~1_combout\,
	datab => \serialDoorC|serialR|sr|ffd0|Q~q\,
	datac => \serialDoorC|doorControl|Selector3~3_combout\,
	datad => \serialDoorC|doorControl|OnOff~1_combout\,
	combout => \serialDoorC|doorControl|Selector2~0_combout\);

-- Location: FF_X70_Y44_N27
\serialDoorC|doorControl|CurrentState.THIRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \serialDoorC|doorControl|Selector2~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|doorControl|CurrentState.THIRD~q\);

-- Location: LCCOMB_X70_Y44_N18
\serialDoorC|doorControl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|Selector0~0_combout\ = (\serialDoorC|serialR|sc|CurrentState.THIRD~q\) # ((\serialDoorC|doorControl|CurrentState.THIRD~q\) # (\serialDoorC|doorControl|CurrentState.SECOND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serialDoorC|serialR|sc|CurrentState.THIRD~q\,
	datac => \serialDoorC|doorControl|CurrentState.THIRD~q\,
	datad => \serialDoorC|doorControl|CurrentState.SECOND~q\,
	combout => \serialDoorC|doorControl|Selector0~0_combout\);

-- Location: FF_X70_Y44_N19
\serialDoorC|doorControl|CurrentState.FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \serialDoorC|doorControl|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|doorControl|CurrentState.FIRST~q\);

-- Location: LCCOMB_X69_Y44_N8
\serialDoorC|doorControl|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|Selector1~1_combout\ = (\serialDoorC|serialR|sc|CurrentState.THIRD~q\ & !\serialDoorC|doorControl|CurrentState.FIRST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serialDoorC|serialR|sc|CurrentState.THIRD~q\,
	datad => \serialDoorC|doorControl|CurrentState.FIRST~q\,
	combout => \serialDoorC|doorControl|Selector1~1_combout\);

-- Location: IOIBUF_X51_Y54_N22
\Pswitch~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pswitch,
	o => \Pswitch~input_o\);

-- Location: LCCOMB_X70_Y44_N16
\serialDoorC|doorControl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|Selector1~0_combout\ = (\serialDoorC|doorControl|CurrentState.THIRD~q\ & \Pswitch~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|doorControl|CurrentState.THIRD~q\,
	datac => \Pswitch~input_o\,
	combout => \serialDoorC|doorControl|Selector1~0_combout\);

-- Location: LCCOMB_X70_Y44_N14
\dm|U7|dataShift_in[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U7|dataShift_in[6]~7_combout\ = (\serialDoorC|doorControl|CurrentState.SECOND~q\ & (\dm|U7|U1|Q\(7))) # (!\serialDoorC|doorControl|CurrentState.SECOND~q\ & ((\dm|U7|U1|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U7|U1|Q\(7),
	datab => \serialDoorC|doorControl|CurrentState.SECOND~q\,
	datac => \dm|U7|U1|Q\(5),
	combout => \dm|U7|dataShift_in[6]~7_combout\);

-- Location: FF_X70_Y44_N15
\dm|U7|U1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|shift_clk~clkctrl_outclk\,
	d => \dm|U7|dataShift_in[6]~7_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U7|U1|Q\(6));

-- Location: LCCOMB_X70_Y44_N8
\dm|U7|dataShift_in[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U7|dataShift_in[7]~8_combout\ = (\serialDoorC|doorControl|CurrentState.SECOND~q\ & ((\dm|U7|U1|Q\(8)))) # (!\serialDoorC|doorControl|CurrentState.SECOND~q\ & (\dm|U7|U1|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serialDoorC|doorControl|CurrentState.SECOND~q\,
	datac => \dm|U7|U1|Q\(6),
	datad => \dm|U7|U1|Q\(8),
	combout => \dm|U7|dataShift_in[7]~8_combout\);

-- Location: FF_X70_Y44_N9
\dm|U7|U1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|shift_clk~clkctrl_outclk\,
	d => \dm|U7|dataShift_in[7]~8_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U7|U1|Q\(7));

-- Location: LCCOMB_X70_Y44_N2
\dm|U7|dataShift_in[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U7|dataShift_in[8]~0_combout\ = (!\serialDoorC|doorControl|CurrentState.SECOND~q\ & \dm|U7|U1|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serialDoorC|doorControl|CurrentState.SECOND~q\,
	datad => \dm|U7|U1|Q\(7),
	combout => \dm|U7|dataShift_in[8]~0_combout\);

-- Location: FF_X70_Y44_N3
\dm|U7|U1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|shift_clk~clkctrl_outclk\,
	d => \dm|U7|dataShift_in[8]~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U7|U1|Q\(8));

-- Location: LCCOMB_X71_Y44_N18
\dm|U7|dataShift_in[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U7|dataShift_in[2]~3_combout\ = (\serialDoorC|doorControl|CurrentState.SECOND~q\ & (\dm|U7|U1|Q\(3))) # (!\serialDoorC|doorControl|CurrentState.SECOND~q\ & ((\dm|U7|U1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U7|U1|Q\(3),
	datab => \serialDoorC|doorControl|CurrentState.SECOND~q\,
	datad => \dm|U7|U1|Q\(1),
	combout => \dm|U7|dataShift_in[2]~3_combout\);

-- Location: FF_X71_Y44_N19
\dm|U7|U1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|shift_clk~clkctrl_outclk\,
	d => \dm|U7|dataShift_in[2]~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U7|U1|Q\(2));

-- Location: LCCOMB_X71_Y44_N12
\dm|U7|dataShift_in[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U7|dataShift_in[3]~4_combout\ = (\serialDoorC|doorControl|CurrentState.SECOND~q\ & (\dm|U7|U1|Q\(4))) # (!\serialDoorC|doorControl|CurrentState.SECOND~q\ & ((\dm|U7|U1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serialDoorC|doorControl|CurrentState.SECOND~q\,
	datac => \dm|U7|U1|Q\(4),
	datad => \dm|U7|U1|Q\(2),
	combout => \dm|U7|dataShift_in[3]~4_combout\);

-- Location: FF_X71_Y44_N13
\dm|U7|U1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|shift_clk~clkctrl_outclk\,
	d => \dm|U7|dataShift_in[3]~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U7|U1|Q\(3));

-- Location: LCCOMB_X71_Y44_N8
\dm|U7|dataShift_in[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U7|dataShift_in[4]~5_combout\ = (\serialDoorC|doorControl|CurrentState.SECOND~q\ & ((\dm|U7|U1|Q\(5)))) # (!\serialDoorC|doorControl|CurrentState.SECOND~q\ & (\dm|U7|U1|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U7|U1|Q\(3),
	datab => \serialDoorC|doorControl|CurrentState.SECOND~q\,
	datad => \dm|U7|U1|Q\(5),
	combout => \dm|U7|dataShift_in[4]~5_combout\);

-- Location: FF_X71_Y44_N9
\dm|U7|U1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|shift_clk~clkctrl_outclk\,
	d => \dm|U7|dataShift_in[4]~5_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U7|U1|Q\(4));

-- Location: LCCOMB_X71_Y44_N4
\dm|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|Equal0~1_combout\ = (!\dm|U7|U1|Q\(7) & (!\dm|U7|U1|Q\(6) & (!\dm|U7|U1|Q\(4) & !\dm|U7|U1|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U7|U1|Q\(7),
	datab => \dm|U7|U1|Q\(6),
	datac => \dm|U7|U1|Q\(4),
	datad => \dm|U7|U1|Q\(5),
	combout => \dm|Equal0~1_combout\);

-- Location: LCCOMB_X71_Y44_N0
\dm|U7|dataShift_in[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U7|dataShift_in[0]~1_combout\ = (\serialDoorC|doorControl|CurrentState.SECOND~q\ & !\dm|U7|U1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serialDoorC|doorControl|CurrentState.SECOND~q\,
	datad => \dm|U7|U1|Q\(1),
	combout => \dm|U7|dataShift_in[0]~1_combout\);

-- Location: FF_X71_Y44_N1
\dm|U7|U1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|shift_clk~clkctrl_outclk\,
	d => \dm|U7|dataShift_in[0]~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U7|U1|Q\(0));

-- Location: LCCOMB_X71_Y44_N6
\dm|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|Equal0~0_combout\ = (!\dm|U7|U1|Q\(3) & (!\dm|U7|U1|Q\(1) & (!\dm|U7|U1|Q\(0) & !\dm|U7|U1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U7|U1|Q\(3),
	datab => \dm|U7|U1|Q\(1),
	datac => \dm|U7|U1|Q\(0),
	datad => \dm|U7|U1|Q\(2),
	combout => \dm|Equal0~0_combout\);

-- Location: LCCOMB_X71_Y44_N22
\serialDoorC|doorControl|OnOff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|OnOff~0_combout\ = (\serialDoorC|doorControl|CurrentState.SECOND~q\ & ((\dm|U7|U1|Q\(8)) # ((!\dm|Equal0~0_combout\) # (!\dm|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U7|U1|Q\(8),
	datab => \serialDoorC|doorControl|CurrentState.SECOND~q\,
	datac => \dm|Equal0~1_combout\,
	datad => \dm|Equal0~0_combout\,
	combout => \serialDoorC|doorControl|OnOff~0_combout\);

-- Location: LCCOMB_X70_Y44_N24
\serialDoorC|doorControl|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|Selector1~2_combout\ = (\serialDoorC|doorControl|Selector1~0_combout\) # ((\serialDoorC|doorControl|OnOff~0_combout\) # ((\serialDoorC|doorControl|Selector1~1_combout\ & !\serialDoorC|serialR|sr|ffd0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|doorControl|Selector1~1_combout\,
	datab => \serialDoorC|doorControl|Selector1~0_combout\,
	datac => \serialDoorC|serialR|sr|ffd0|Q~q\,
	datad => \serialDoorC|doorControl|OnOff~0_combout\,
	combout => \serialDoorC|doorControl|Selector1~2_combout\);

-- Location: FF_X70_Y44_N25
\serialDoorC|doorControl|CurrentState.SECOND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \serialDoorC|doorControl|Selector1~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|doorControl|CurrentState.SECOND~q\);

-- Location: LCCOMB_X70_Y44_N20
\dm|U7|dataShift_in[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U7|dataShift_in[1]~2_combout\ = (\serialDoorC|doorControl|CurrentState.SECOND~q\ & ((\dm|U7|U1|Q\(2)))) # (!\serialDoorC|doorControl|CurrentState.SECOND~q\ & (!\dm|U7|U1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serialDoorC|doorControl|CurrentState.SECOND~q\,
	datac => \dm|U7|U1|Q\(0),
	datad => \dm|U7|U1|Q\(2),
	combout => \dm|U7|dataShift_in[1]~2_combout\);

-- Location: FF_X70_Y44_N21
\dm|U7|U1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|shift_clk~clkctrl_outclk\,
	d => \dm|U7|dataShift_in[1]~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U7|U1|Q\(1));

-- Location: LCCOMB_X70_Y44_N30
\dm|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|Equal1~0_combout\ = (\dm|U7|U1|Q\(1) & (!\dm|U7|U1|Q\(0) & \dm|U7|U1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm|U7|U1|Q\(1),
	datac => \dm|U7|U1|Q\(0),
	datad => \dm|U7|U1|Q\(2),
	combout => \dm|Equal1~0_combout\);

-- Location: LCCOMB_X70_Y44_N28
\serialDoorC|doorControl|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|Selector3~0_combout\ = (\serialDoorC|doorControl|CurrentState.THIRD~q\ & !\Pswitch~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|doorControl|CurrentState.THIRD~q\,
	datac => \Pswitch~input_o\,
	combout => \serialDoorC|doorControl|Selector3~0_combout\);

-- Location: LCCOMB_X70_Y44_N0
\dm|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|Equal1~2_combout\ = (\dm|U7|U1|Q\(8) & (\dm|U7|U1|Q\(6) & \dm|U7|U1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm|U7|U1|Q\(8),
	datac => \dm|U7|U1|Q\(6),
	datad => \dm|U7|U1|Q\(7),
	combout => \dm|Equal1~2_combout\);

-- Location: LCCOMB_X71_Y44_N16
\dm|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|Equal1~1_combout\ = (\dm|U7|U1|Q\(3) & (\dm|U7|U1|Q\(4) & \dm|U7|U1|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U7|U1|Q\(3),
	datac => \dm|U7|U1|Q\(4),
	datad => \dm|U7|U1|Q\(5),
	combout => \dm|Equal1~1_combout\);

-- Location: LCCOMB_X70_Y44_N10
\serialDoorC|doorControl|OnOff~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|OnOff~1_combout\ = (\serialDoorC|doorControl|Selector3~0_combout\ & (((!\dm|Equal1~1_combout\) # (!\dm|Equal1~2_combout\)) # (!\dm|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|Equal1~0_combout\,
	datab => \serialDoorC|doorControl|Selector3~0_combout\,
	datac => \dm|Equal1~2_combout\,
	datad => \dm|Equal1~1_combout\,
	combout => \serialDoorC|doorControl|OnOff~1_combout\);

-- Location: LCCOMB_X70_Y44_N12
\serialDoorC|doorControl|OnOff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|OnOff~combout\ = (\serialDoorC|doorControl|OnOff~1_combout\) # (\serialDoorC|doorControl|OnOff~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|doorControl|OnOff~1_combout\,
	datad => \serialDoorC|doorControl|OnOff~0_combout\,
	combout => \serialDoorC|doorControl|OnOff~combout\);

-- Location: FF_X47_Y51_N23
\dm|U6|U2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|UCLK|tmp~clkctrl_outclk\,
	d => \dm|U6|cnt_atual_pl[0]~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U6|U2|Q\(0));

-- Location: LCCOMB_X47_Y51_N16
\dm|U6|cnt_atual_pl[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U6|cnt_atual_pl[1]~4_combout\ = (\dm|shift_clk~combout\ & (((!\serialDoorC|serialR|sr|ffd1|Q~q\)))) # (!\dm|shift_clk~combout\ & (\dm|U6|U2|Q\(0) $ (((\dm|U6|U2|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U6|U2|Q\(0),
	datab => \serialDoorC|serialR|sr|ffd1|Q~q\,
	datac => \dm|U6|U2|Q\(1),
	datad => \dm|shift_clk~combout\,
	combout => \dm|U6|cnt_atual_pl[1]~4_combout\);

-- Location: FF_X47_Y51_N17
\dm|U6|U2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|UCLK|tmp~clkctrl_outclk\,
	d => \dm|U6|cnt_atual_pl[1]~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U6|U2|Q\(1));

-- Location: LCCOMB_X47_Y51_N24
\dm|U6|U1|SC:2:U1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U6|U1|SC:2:U1|S~combout\ = \dm|U6|U2|Q\(2) $ (((\dm|U6|U2|Q\(1) & \dm|U6|U2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U6|U2|Q\(2),
	datab => \dm|U6|U2|Q\(1),
	datac => \dm|U6|U2|Q\(0),
	combout => \dm|U6|U1|SC:2:U1|S~combout\);

-- Location: LCCOMB_X47_Y51_N12
\dm|U6|cnt_atual_pl[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U6|cnt_atual_pl[2]~2_combout\ = (\dm|shift_clk~combout\ & (!\serialDoorC|serialR|sr|ffd2|Q~q\)) # (!\dm|shift_clk~combout\ & ((\dm|U6|U1|SC:2:U1|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|serialR|sr|ffd2|Q~q\,
	datab => \dm|U6|U1|SC:2:U1|S~combout\,
	datad => \dm|shift_clk~combout\,
	combout => \dm|U6|cnt_atual_pl[2]~2_combout\);

-- Location: FF_X47_Y51_N13
\dm|U6|U2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|UCLK|tmp~clkctrl_outclk\,
	d => \dm|U6|cnt_atual_pl[2]~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U6|U2|Q\(2));

-- Location: LCCOMB_X47_Y51_N6
\dm|U6|U1|SC:3:U1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U6|U1|SC:3:U1|S~combout\ = \dm|U6|U2|Q\(3) $ (((\dm|U6|U2|Q\(2) & (\dm|U6|U2|Q\(1) & \dm|U6|U2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U6|U2|Q\(2),
	datab => \dm|U6|U2|Q\(1),
	datac => \dm|U6|U2|Q\(0),
	datad => \dm|U6|U2|Q\(3),
	combout => \dm|U6|U1|SC:3:U1|S~combout\);

-- Location: LCCOMB_X47_Y51_N10
\dm|U6|cnt_atual_pl[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U6|cnt_atual_pl[3]~1_combout\ = (\dm|shift_clk~combout\ & (!\serialDoorC|serialR|sr|ffd3|Q~q\)) # (!\dm|shift_clk~combout\ & ((\dm|U6|U1|SC:3:U1|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|serialR|sr|ffd3|Q~q\,
	datab => \dm|shift_clk~combout\,
	datad => \dm|U6|U1|SC:3:U1|S~combout\,
	combout => \dm|U6|cnt_atual_pl[3]~1_combout\);

-- Location: FF_X47_Y51_N11
\dm|U6|U2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|UCLK|tmp~clkctrl_outclk\,
	d => \dm|U6|cnt_atual_pl[3]~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U6|U2|Q\(3));

-- Location: LCCOMB_X47_Y51_N26
\dm|shift_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|shift_clk~0_combout\ = (\dm|U6|U2|Q\(2) & (\dm|U6|U2|Q\(1) & (\dm|U6|U2|Q\(0) & \dm|U6|U2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U6|U2|Q\(2),
	datab => \dm|U6|U2|Q\(1),
	datac => \dm|U6|U2|Q\(0),
	datad => \dm|U6|U2|Q\(3),
	combout => \dm|shift_clk~0_combout\);

-- Location: LCCOMB_X47_Y51_N0
\dm|U6|cnt_atual_pl[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U6|cnt_atual_pl[4]~0_combout\ = (\dm|shift_clk~combout\ & (((!\serialDoorC|serialR|sr|ffd4|Q~q\)))) # (!\dm|shift_clk~combout\ & (\dm|shift_clk~0_combout\ $ (((\dm|U6|U2|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|shift_clk~0_combout\,
	datab => \serialDoorC|serialR|sr|ffd4|Q~q\,
	datac => \dm|U6|U2|Q\(4),
	datad => \dm|shift_clk~combout\,
	combout => \dm|U6|cnt_atual_pl[4]~0_combout\);

-- Location: FF_X47_Y51_N1
\dm|U6|U2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|UCLK|tmp~clkctrl_outclk\,
	d => \dm|U6|cnt_atual_pl[4]~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U6|U2|Q\(4));

-- Location: LCCOMB_X47_Y51_N20
\dm|shift_clk\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|shift_clk~combout\ = LCELL((\dm|shift_clk~0_combout\ & \dm|U6|U2|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|shift_clk~0_combout\,
	datad => \dm|U6|U2|Q\(4),
	combout => \dm|shift_clk~combout\);

-- Location: CLKCTRL_G11
\dm|shift_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dm|shift_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dm|shift_clk~clkctrl_outclk\);

-- Location: LCCOMB_X71_Y44_N10
\dm|U7|dataShift_in[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U7|dataShift_in[5]~6_combout\ = (\serialDoorC|doorControl|CurrentState.SECOND~q\ & (\dm|U7|U1|Q\(6))) # (!\serialDoorC|doorControl|CurrentState.SECOND~q\ & ((\dm|U7|U1|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U7|U1|Q\(6),
	datab => \serialDoorC|doorControl|CurrentState.SECOND~q\,
	datac => \dm|U7|U1|Q\(4),
	combout => \dm|U7|dataShift_in[5]~6_combout\);

-- Location: FF_X71_Y44_N11
\dm|U7|U1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dm|shift_clk~clkctrl_outclk\,
	d => \dm|U7|dataShift_in[5]~6_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialDoorC|doorControl|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|U7|U1|Q\(5));

-- Location: LCCOMB_X71_Y44_N26
\serialDoorC|doorControl|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|Selector3~1_combout\ = (!\dm|U7|U1|Q\(8) & (!\dm|U7|U1|Q\(6) & (!\dm|U7|U1|Q\(3) & !\dm|U7|U1|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U7|U1|Q\(8),
	datab => \dm|U7|U1|Q\(6),
	datac => \dm|U7|U1|Q\(3),
	datad => \dm|U7|U1|Q\(7),
	combout => \serialDoorC|doorControl|Selector3~1_combout\);

-- Location: LCCOMB_X71_Y44_N28
\serialDoorC|doorControl|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|Selector3~2_combout\ = (\serialDoorC|doorControl|CurrentState.SECOND~q\ & (!\dm|U7|U1|Q\(1) & (\serialDoorC|doorControl|Selector3~1_combout\ & !\dm|U7|U1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|doorControl|CurrentState.SECOND~q\,
	datab => \dm|U7|U1|Q\(1),
	datac => \serialDoorC|doorControl|Selector3~1_combout\,
	datad => \dm|U7|U1|Q\(2),
	combout => \serialDoorC|doorControl|Selector3~2_combout\);

-- Location: LCCOMB_X71_Y44_N30
\serialDoorC|doorControl|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|Selector3~3_combout\ = (!\dm|U7|U1|Q\(5) & (\serialDoorC|doorControl|Selector3~2_combout\ & (!\dm|U7|U1|Q\(4) & !\dm|U7|U1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U7|U1|Q\(5),
	datab => \serialDoorC|doorControl|Selector3~2_combout\,
	datac => \dm|U7|U1|Q\(4),
	datad => \dm|U7|U1|Q\(0),
	combout => \serialDoorC|doorControl|Selector3~3_combout\);

-- Location: LCCOMB_X69_Y43_N2
\serialDoorC|doorControl|Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|Selector3~4_combout\ = (\serialDoorC|serialR|sc|CurrentState.THIRD~q\ & \serialDoorC|doorControl|CurrentState.FORTH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serialDoorC|serialR|sc|CurrentState.THIRD~q\,
	datad => \serialDoorC|doorControl|CurrentState.FORTH~q\,
	combout => \serialDoorC|doorControl|Selector3~4_combout\);

-- Location: LCCOMB_X70_Y44_N6
\serialDoorC|doorControl|Selector3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|Selector3~5_combout\ = (\dm|Equal1~0_combout\ & (\serialDoorC|doorControl|Selector3~0_combout\ & (\dm|Equal1~2_combout\ & \dm|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|Equal1~0_combout\,
	datab => \serialDoorC|doorControl|Selector3~0_combout\,
	datac => \dm|Equal1~2_combout\,
	datad => \dm|Equal1~1_combout\,
	combout => \serialDoorC|doorControl|Selector3~5_combout\);

-- Location: LCCOMB_X70_Y44_N4
\serialDoorC|doorControl|Selector3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|doorControl|Selector3~6_combout\ = (\serialDoorC|doorControl|Selector3~4_combout\) # ((\serialDoorC|doorControl|Selector3~5_combout\) # ((\serialDoorC|doorControl|Selector3~3_combout\ & !\serialDoorC|serialR|sr|ffd0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|doorControl|Selector3~3_combout\,
	datab => \serialDoorC|doorControl|Selector3~4_combout\,
	datac => \serialDoorC|serialR|sr|ffd0|Q~q\,
	datad => \serialDoorC|doorControl|Selector3~5_combout\,
	combout => \serialDoorC|doorControl|Selector3~6_combout\);

-- Location: FF_X70_Y44_N5
\serialDoorC|doorControl|CurrentState.FORTH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \serialDoorC|doorControl|Selector3~6_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|doorControl|CurrentState.FORTH~q\);

-- Location: LCCOMB_X69_Y43_N26
\serialDoorC|serialR|sc|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|sc|Selector2~1_combout\ = (\serialDoorC|serialR|sc|CurrentState.SECOND~q\ & ((\serialDoorC|serialR|sc|Selector2~0_combout\) # ((\serialDoorC|serialR|sc|CurrentState.THIRD~q\ & !\serialDoorC|doorControl|CurrentState.FORTH~q\)))) # 
-- (!\serialDoorC|serialR|sc|CurrentState.SECOND~q\ & (((\serialDoorC|serialR|sc|CurrentState.THIRD~q\ & !\serialDoorC|doorControl|CurrentState.FORTH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|serialR|sc|CurrentState.SECOND~q\,
	datab => \serialDoorC|serialR|sc|Selector2~0_combout\,
	datac => \serialDoorC|serialR|sc|CurrentState.THIRD~q\,
	datad => \serialDoorC|doorControl|CurrentState.FORTH~q\,
	combout => \serialDoorC|serialR|sc|Selector2~1_combout\);

-- Location: FF_X69_Y43_N27
\serialDoorC|serialR|sc|CurrentState.THIRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \serialDoorC|serialR|sc|Selector2~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|serialR|sc|CurrentState.THIRD~q\);

-- Location: LCCOMB_X69_Y43_N6
\serialDoorC|serialR|sc|NextState.FORTH~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|sc|NextState.FORTH~0_combout\ = (!\serialDoorC|serialR|sc|CurrentState.SECOND~q\ & (\serialDoorC|serialR|sc|CurrentState.FIRST~q\ & \serialDoorC|doorControl|CurrentState.FORTH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|serialR|sc|CurrentState.SECOND~q\,
	datab => \serialDoorC|serialR|sc|CurrentState.FIRST~q\,
	datad => \serialDoorC|doorControl|CurrentState.FORTH~q\,
	combout => \serialDoorC|serialR|sc|NextState.FORTH~0_combout\);

-- Location: FF_X69_Y43_N7
\serialDoorC|serialR|sc|CurrentState.FORTH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \serialDoorC|serialR|sc|NextState.FORTH~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|serialR|sc|CurrentState.FORTH~q\);

-- Location: LCCOMB_X69_Y43_N4
\serialDoorC|serialR|sc|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|sc|Selector1~0_combout\ = (\fdoor|Q~q\ & (!\serialDoorC|serialR|sc|CurrentState.THIRD~q\ & !\serialDoorC|serialR|sc|CurrentState.FORTH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fdoor|Q~q\,
	datac => \serialDoorC|serialR|sc|CurrentState.THIRD~q\,
	datad => \serialDoorC|serialR|sc|CurrentState.FORTH~q\,
	combout => \serialDoorC|serialR|sc|Selector1~0_combout\);

-- Location: FF_X69_Y43_N5
\serialDoorC|serialR|sc|CurrentState.SECOND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \serialDoorC|serialR|sc|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|serialR|sc|CurrentState.SECOND~q\);

-- Location: FF_X47_Y39_N29
\serialDoorC|serialR|c|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \serialDoorC|serialR|c|reg|ff0|Q~0_combout\,
	clrn => \serialDoorC|serialR|sc|CurrentState.FIRST~clkctrl_outclk\,
	ena => \serialDoorC|serialR|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|serialR|c|reg|ff0|Q~q\);

-- Location: LCCOMB_X69_Y43_N10
\serialDoorC|serialR|c|reg|ff1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|c|reg|ff1|Q~0_combout\ = \serialDoorC|serialR|c|reg|ff1|Q~q\ $ (((\serialDoorC|serialR|c|reg|ff0|Q~q\ & \serialDoorC|serialR|sc|CurrentState.SECOND~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serialDoorC|serialR|c|reg|ff0|Q~q\,
	datac => \serialDoorC|serialR|c|reg|ff1|Q~q\,
	datad => \serialDoorC|serialR|sc|CurrentState.SECOND~q\,
	combout => \serialDoorC|serialR|c|reg|ff1|Q~0_combout\);

-- Location: FF_X69_Y43_N11
\serialDoorC|serialR|c|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \serialDoorC|serialR|c|reg|ff1|Q~0_combout\,
	clrn => \serialDoorC|serialR|sc|CurrentState.FIRST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|serialR|c|reg|ff1|Q~q\);

-- Location: LCCOMB_X69_Y43_N22
\serialDoorC|serialR|sc|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|sc|Selector0~1_combout\ = (\serialDoorC|serialR|sc|CurrentState.SECOND~q\ & ((\serialDoorC|serialR|c|reg|ff1|Q~q\) # ((!\serialDoorC|serialR|c|reg|ff0|Q~q\) # (!\serialDoorC|serialR|c|reg|ff2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|serialR|c|reg|ff1|Q~q\,
	datab => \serialDoorC|serialR|c|reg|ff2|Q~q\,
	datac => \serialDoorC|serialR|c|reg|ff0|Q~q\,
	datad => \serialDoorC|serialR|sc|CurrentState.SECOND~q\,
	combout => \serialDoorC|serialR|sc|Selector0~1_combout\);

-- Location: LCCOMB_X69_Y43_N24
\serialDoorC|serialR|sc|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|sc|Selector0~0_combout\ = (\serialDoorC|serialR|sc|CurrentState.FORTH~q\ & !\serialDoorC|doorControl|CurrentState.FORTH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|serialR|sc|CurrentState.FORTH~q\,
	datad => \serialDoorC|doorControl|CurrentState.FORTH~q\,
	combout => \serialDoorC|serialR|sc|Selector0~0_combout\);

-- Location: LCCOMB_X69_Y43_N0
\serialDoorC|serialR|sc|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialDoorC|serialR|sc|Selector0~2_combout\ = (!\serialDoorC|serialR|sc|Selector0~0_combout\ & ((\fdoor|Q~q\) # ((!\serialDoorC|serialR|sc|Selector0~1_combout\ & \serialDoorC|serialR|sc|CurrentState.FIRST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialDoorC|serialR|sc|Selector0~1_combout\,
	datab => \serialDoorC|serialR|sc|Selector0~0_combout\,
	datac => \serialDoorC|serialR|sc|CurrentState.FIRST~q\,
	datad => \fdoor|Q~q\,
	combout => \serialDoorC|serialR|sc|Selector0~2_combout\);

-- Location: FF_X69_Y43_N1
\serialDoorC|serialR|sc|CurrentState.FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \serialDoorC|serialR|sc|Selector0~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialDoorC|serialR|sc|CurrentState.FIRST~q\);

-- Location: LCCOMB_X50_Y37_N14
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X50_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \~GND~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\);

-- Location: LCCOMB_X47_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X50_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: LCCOMB_X50_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \~GND~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X50_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: LCCOMB_X50_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \serialDoorC|serialR|sc|CurrentState.FIRST~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X50_Y37_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: LCCOMB_X45_Y30_N0
\kr|kd|scan|count|ad|fa2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|scan|count|ad|fa2|Cout~0_combout\ = (\kr|kd|scan|count|reg|ff0|Q~q\ & (!\kr|kd|control|CurrentState.FIRST~q\ & (\kr|kd|scan|mux|Y~1_combout\ & \kr|kd|scan|count|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff0|Q~q\,
	datab => \kr|kd|control|CurrentState.FIRST~q\,
	datac => \kr|kd|scan|mux|Y~1_combout\,
	datad => \kr|kd|scan|count|reg|ff1|Q~q\,
	combout => \kr|kd|scan|count|ad|fa2|Cout~0_combout\);

-- Location: LCCOMB_X45_Y30_N10
\kr|kd|scan|count|reg|ff3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|scan|count|reg|ff3|Q~0_combout\ = \kr|kd|scan|count|reg|ff3|Q~q\ $ (((\kr|kd|scan|count|ad|fa2|Cout~0_combout\ & \kr|kd|scan|count|reg|ff2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|ad|fa2|Cout~0_combout\,
	datac => \kr|kd|scan|count|reg|ff3|Q~q\,
	datad => \kr|kd|scan|count|reg|ff2|Q~q\,
	combout => \kr|kd|scan|count|reg|ff3|Q~0_combout\);

-- Location: FF_X45_Y30_N11
\kr|kd|scan|count|reg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kr|kd|clock|tmp~clkctrl_outclk\,
	d => \kr|kd|scan|count|reg|ff3|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|kd|scan|count|reg|ff3|Q~q\);

-- Location: LCCOMB_X43_Y33_N30
\kr|rbuff|memory|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~19_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff3|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\kr|rbuff|memory|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff3|Q~q\,
	datac => \kr|rbuff|memory|ram~19_combout\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \kr|rbuff|memory|ram~19_combout\);

-- Location: LCCOMB_X44_Y33_N16
\kr|rbuff|memory|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~27_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff3|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\kr|rbuff|memory|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff3|Q~q\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~27_combout\,
	combout => \kr|rbuff|memory|ram~27_combout\);

-- Location: LCCOMB_X43_Y33_N26
\kr|rbuff|memory|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~47_combout\ = (\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & (((\kr|rbuff|mac|idxDecider|Y[0]~0_combout\) # (\kr|rbuff|memory|ram~27_combout\)))) # (!\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & (\kr|rbuff|memory|ram~19_combout\ & 
-- (!\kr|rbuff|mac|idxDecider|Y[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~19_combout\,
	datab => \kr|rbuff|mac|idxDecider|Y[1]~1_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[0]~0_combout\,
	datad => \kr|rbuff|memory|ram~27_combout\,
	combout => \kr|rbuff|memory|ram~47_combout\);

-- Location: LCCOMB_X43_Y33_N28
\kr|rbuff|memory|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~23_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff3|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\kr|rbuff|memory|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff3|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~23_combout\,
	combout => \kr|rbuff|memory|ram~23_combout\);

-- Location: LCCOMB_X43_Y33_N0
\kr|rbuff|memory|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~31_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff3|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\kr|rbuff|memory|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff3|Q~q\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~31_combout\,
	combout => \kr|rbuff|memory|ram~31_combout\);

-- Location: LCCOMB_X43_Y33_N12
\kr|rbuff|memory|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~48_combout\ = (\kr|rbuff|memory|ram~47_combout\ & (((\kr|rbuff|memory|ram~31_combout\) # (!\kr|rbuff|mac|idxDecider|Y[0]~0_combout\)))) # (!\kr|rbuff|memory|ram~47_combout\ & (\kr|rbuff|memory|ram~23_combout\ & 
-- (\kr|rbuff|mac|idxDecider|Y[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~47_combout\,
	datab => \kr|rbuff|memory|ram~23_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[0]~0_combout\,
	datad => \kr|rbuff|memory|ram~31_combout\,
	combout => \kr|rbuff|memory|ram~48_combout\);

-- Location: LCCOMB_X44_Y33_N10
\kr|rbuff|memory|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~11_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff3|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\kr|rbuff|memory|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff3|Q~q\,
	datab => \rtl~12clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~11_combout\,
	combout => \kr|rbuff|memory|ram~11_combout\);

-- Location: LCCOMB_X44_Y32_N6
\kr|rbuff|memory|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~3_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff3|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\kr|rbuff|memory|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff3|Q~q\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~3_combout\,
	combout => \kr|rbuff|memory|ram~3_combout\);

-- Location: LCCOMB_X44_Y32_N12
\kr|rbuff|memory|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~7_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff3|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\kr|rbuff|memory|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff3|Q~q\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~7_combout\,
	combout => \kr|rbuff|memory|ram~7_combout\);

-- Location: LCCOMB_X44_Y32_N2
\kr|rbuff|memory|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~49_combout\ = (\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & (((\kr|rbuff|mac|idxDecider|Y[0]~0_combout\)))) # (!\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\kr|rbuff|memory|ram~7_combout\))) 
-- # (!\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & (\kr|rbuff|memory|ram~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~3_combout\,
	datab => \kr|rbuff|mac|idxDecider|Y[1]~1_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[0]~0_combout\,
	datad => \kr|rbuff|memory|ram~7_combout\,
	combout => \kr|rbuff|memory|ram~49_combout\);

-- Location: LCCOMB_X44_Y33_N12
\kr|rbuff|memory|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~15_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff3|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\kr|rbuff|memory|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff3|Q~q\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~15_combout\,
	combout => \kr|rbuff|memory|ram~15_combout\);

-- Location: LCCOMB_X44_Y33_N28
\kr|rbuff|memory|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~50_combout\ = (\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\kr|rbuff|memory|ram~49_combout\ & ((\kr|rbuff|memory|ram~15_combout\))) # (!\kr|rbuff|memory|ram~49_combout\ & (\kr|rbuff|memory|ram~11_combout\)))) # 
-- (!\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & (((\kr|rbuff|memory|ram~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~11_combout\,
	datab => \kr|rbuff|mac|idxDecider|Y[1]~1_combout\,
	datac => \kr|rbuff|memory|ram~49_combout\,
	datad => \kr|rbuff|memory|ram~15_combout\,
	combout => \kr|rbuff|memory|ram~50_combout\);

-- Location: LCCOMB_X43_Y33_N10
\kr|rbuff|memory|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~51_combout\ = (\kr|rbuff|mac|idxDecider|Y[2]~2_combout\ & (\kr|rbuff|memory|ram~48_combout\)) # (!\kr|rbuff|mac|idxDecider|Y[2]~2_combout\ & ((\kr|rbuff|memory|ram~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~48_combout\,
	datab => \kr|rbuff|memory|ram~50_combout\,
	datad => \kr|rbuff|mac|idxDecider|Y[2]~2_combout\,
	combout => \kr|rbuff|memory|ram~51_combout\);

-- Location: FF_X43_Y33_N11
\kr|obuff|outreg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|memory|ram~51_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \kr|obuff|control|CurrentState.WRITE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|obuff|outreg|ff3|Q~q\);

-- Location: LCCOMB_X50_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datac => \kr|obuff|outreg|ff3|Q~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X50_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LCCOMB_X47_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datab => \kr|obuff|outreg|ff2|Q~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X47_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\);

-- Location: FF_X47_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LCCOMB_X50_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|obuff|outreg|ff1|Q~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X50_Y37_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LCCOMB_X45_Y29_N16
\kr|rbuff|memory|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~12_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\kr|rbuff|memory|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff0|Q~q\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~12_combout\,
	combout => \kr|rbuff|memory|ram~12_combout\);

-- Location: LCCOMB_X45_Y28_N28
\kr|rbuff|memory|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~8_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\kr|rbuff|memory|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~12clkctrl_outclk\,
	datac => \kr|kd|scan|count|reg|ff0|Q~q\,
	datad => \kr|rbuff|memory|ram~8_combout\,
	combout => \kr|rbuff|memory|ram~8_combout\);

-- Location: LCCOMB_X45_Y28_N6
\kr|rbuff|memory|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~4_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\kr|rbuff|memory|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff0|Q~q\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~4_combout\,
	combout => \kr|rbuff|memory|ram~4_combout\);

-- Location: LCCOMB_X45_Y28_N16
\kr|rbuff|memory|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~0_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\kr|rbuff|memory|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|kd|scan|count|reg|ff0|Q~q\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~0_combout\,
	combout => \kr|rbuff|memory|ram~0_combout\);

-- Location: LCCOMB_X45_Y28_N24
\kr|rbuff|memory|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~34_combout\ = (\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\kr|rbuff|memory|ram~4_combout\) # ((\kr|rbuff|mac|idxDecider|Y[1]~1_combout\)))) # (!\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & (((\kr|rbuff|memory|ram~0_combout\ & 
-- !\kr|rbuff|mac|idxDecider|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~4_combout\,
	datab => \kr|rbuff|memory|ram~0_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[0]~0_combout\,
	datad => \kr|rbuff|mac|idxDecider|Y[1]~1_combout\,
	combout => \kr|rbuff|memory|ram~34_combout\);

-- Location: LCCOMB_X45_Y28_N26
\kr|rbuff|memory|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~35_combout\ = (\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\kr|rbuff|memory|ram~34_combout\ & (\kr|rbuff|memory|ram~12_combout\)) # (!\kr|rbuff|memory|ram~34_combout\ & ((\kr|rbuff|memory|ram~8_combout\))))) # 
-- (!\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & (((\kr|rbuff|memory|ram~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|idxDecider|Y[1]~1_combout\,
	datab => \kr|rbuff|memory|ram~12_combout\,
	datac => \kr|rbuff|memory|ram~8_combout\,
	datad => \kr|rbuff|memory|ram~34_combout\,
	combout => \kr|rbuff|memory|ram~35_combout\);

-- Location: LCCOMB_X44_Y31_N2
\kr|rbuff|memory|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~24_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\kr|rbuff|memory|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~9clkctrl_outclk\,
	datac => \kr|kd|scan|count|reg|ff0|Q~q\,
	datad => \kr|rbuff|memory|ram~24_combout\,
	combout => \kr|rbuff|memory|ram~24_combout\);

-- Location: LCCOMB_X44_Y31_N28
\kr|rbuff|memory|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~16_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\kr|rbuff|memory|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff0|Q~q\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~16_combout\,
	combout => \kr|rbuff|memory|ram~16_combout\);

-- Location: LCCOMB_X44_Y31_N12
\kr|rbuff|memory|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~32_combout\ = (\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & (((\kr|rbuff|mac|idxDecider|Y[1]~1_combout\)))) # (!\kr|rbuff|mac|idxDecider|Y[0]~0_combout\ & ((\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & (\kr|rbuff|memory|ram~24_combout\)) 
-- # (!\kr|rbuff|mac|idxDecider|Y[1]~1_combout\ & ((\kr|rbuff|memory|ram~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|idxDecider|Y[0]~0_combout\,
	datab => \kr|rbuff|memory|ram~24_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[1]~1_combout\,
	datad => \kr|rbuff|memory|ram~16_combout\,
	combout => \kr|rbuff|memory|ram~32_combout\);

-- Location: LCCOMB_X44_Y31_N16
\kr|rbuff|memory|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~20_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\kr|rbuff|memory|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff0|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~20_combout\,
	combout => \kr|rbuff|memory|ram~20_combout\);

-- Location: LCCOMB_X44_Y30_N0
\kr|rbuff|memory|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~28_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\kr|kd|scan|count|reg|ff0|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\kr|rbuff|memory|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff0|Q~q\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \kr|rbuff|memory|ram~28_combout\,
	combout => \kr|rbuff|memory|ram~28_combout\);

-- Location: LCCOMB_X44_Y31_N22
\kr|rbuff|memory|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~33_combout\ = (\kr|rbuff|memory|ram~32_combout\ & (((\kr|rbuff|memory|ram~28_combout\) # (!\kr|rbuff|mac|idxDecider|Y[0]~0_combout\)))) # (!\kr|rbuff|memory|ram~32_combout\ & (\kr|rbuff|memory|ram~20_combout\ & 
-- (\kr|rbuff|mac|idxDecider|Y[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|memory|ram~32_combout\,
	datab => \kr|rbuff|memory|ram~20_combout\,
	datac => \kr|rbuff|mac|idxDecider|Y[0]~0_combout\,
	datad => \kr|rbuff|memory|ram~28_combout\,
	combout => \kr|rbuff|memory|ram~33_combout\);

-- Location: LCCOMB_X44_Y31_N0
\kr|rbuff|memory|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|rbuff|memory|ram~36_combout\ = (\kr|rbuff|mac|idxDecider|Y[2]~2_combout\ & ((\kr|rbuff|memory|ram~33_combout\))) # (!\kr|rbuff|mac|idxDecider|Y[2]~2_combout\ & (\kr|rbuff|memory|ram~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kr|rbuff|mac|idxDecider|Y[2]~2_combout\,
	datab => \kr|rbuff|memory|ram~35_combout\,
	datac => \kr|rbuff|memory|ram~33_combout\,
	combout => \kr|rbuff|memory|ram~36_combout\);

-- Location: FF_X44_Y31_N1
\kr|obuff|outreg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|rbuff|memory|ram~36_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \kr|obuff|control|CurrentState.WRITE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|obuff|outreg|ff0|Q~q\);

-- Location: LCCOMB_X50_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \kr|obuff|outreg|ff0|Q~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: FF_X50_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LCCOMB_X44_Y33_N24
\kr|obuff|control|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|obuff|control|Selector1~0_combout\ = (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ & 
-- (!\kr|rbuff|control|CurrentState.WRITE_REG~q\ & ((\kr|obuff|control|CurrentState.WRITE_DATA~q\)))) # 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ & ((\kr|obuff|control|CurrentState.SEND_DATA~q\) # 
-- ((!\kr|rbuff|control|CurrentState.WRITE_REG~q\ & \kr|obuff|control|CurrentState.WRITE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datab => \kr|rbuff|control|CurrentState.WRITE_REG~q\,
	datac => \kr|obuff|control|CurrentState.SEND_DATA~q\,
	datad => \kr|obuff|control|CurrentState.WRITE_DATA~q\,
	combout => \kr|obuff|control|Selector1~0_combout\);

-- Location: FF_X44_Y33_N25
\kr|obuff|control|CurrentState.SEND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \kr|obuff|control|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kr|obuff|control|CurrentState.SEND_DATA~q\);

-- Location: LCCOMB_X50_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \kr|obuff|control|CurrentState.SEND_DATA~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: FF_X50_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LCCOMB_X49_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LCCOMB_X49_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: LCCOMB_X49_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LCCOMB_X49_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LCCOMB_X49_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LCCOMB_X46_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\);

-- Location: LCCOMB_X46_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\);

-- Location: LCCOMB_X46_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\);

-- Location: LCCOMB_X47_Y36_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X47_Y36_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X47_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\);

-- Location: FF_X46_Y38_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: LCCOMB_X46_Y38_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\);

-- Location: FF_X46_Y38_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: LCCOMB_X46_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\);

-- Location: FF_X46_Y38_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: LCCOMB_X46_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\);

-- Location: FF_X46_Y38_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LCCOMB_X46_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\);

-- Location: FF_X46_Y38_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: LCCOMB_X45_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4_combout\);

-- Location: LCCOMB_X46_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\);

-- Location: LCCOMB_X46_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\);

-- Location: LCCOMB_X46_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\);

-- Location: LCCOMB_X45_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X49_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X49_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X45_Y38_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X45_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X45_Y38_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X45_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X45_Y38_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X45_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X45_Y38_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X45_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\);

-- Location: LCCOMB_X49_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X45_Y38_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LCCOMB_X47_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: FF_X45_Y38_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LCCOMB_X45_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\);

-- Location: LCCOMB_X46_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\);

-- Location: LCCOMB_X46_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\);

-- Location: LCCOMB_X47_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X45_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\);

-- Location: FF_X45_Y38_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: LCCOMB_X46_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\);

-- Location: LCCOMB_X46_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X47_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X46_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: FF_X45_Y38_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LCCOMB_X45_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\);

-- Location: LCCOMB_X46_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\);

-- Location: LCCOMB_X47_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X47_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X47_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X47_Y38_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: FF_X47_Y38_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X47_Y38_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: FF_X47_Y38_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LCCOMB_X51_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: FF_X51_Y38_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X51_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X51_Y38_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X51_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X51_Y38_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X51_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X51_Y38_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X51_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X50_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X50_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\);

-- Location: LCCOMB_X50_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\);

-- Location: LCCOMB_X51_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X51_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\);

-- Location: FF_X50_Y38_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X50_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\);

-- Location: FF_X50_Y38_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X50_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\);

-- Location: FF_X50_Y38_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X50_Y38_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X50_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\);

-- Location: FF_X50_Y38_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: FF_X50_Y38_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X50_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X50_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X50_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X50_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X50_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X51_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X51_Y38_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: FF_X51_Y38_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X51_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X50_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X50_Y38_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X50_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X50_Y38_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X51_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X51_Y38_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X51_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X49_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	datad => \~GND~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X49_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: FF_X49_Y38_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: CLKCTRL_G12
\altera_internal_jtag~TCKUTAPclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X50_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\);

-- Location: FF_X50_Y37_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: LCCOMB_X50_Y30_N0
\fsc|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsc|Q~0_combout\ = !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \fsc|Q~0_combout\);

-- Location: FF_X50_Y30_N1
\fsc|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fsc|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsc|Q~q\);

-- Location: CLKCTRL_G15
\fsc|Q~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fsc|Q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fsc|Q~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y39_N8
\sl|sr|sr|ffd4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|sr|ffd4|Q~0_combout\ = !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	combout => \sl|sr|sr|ffd4|Q~0_combout\);

-- Location: LCCOMB_X38_Y35_N24
\sl|sr|c|reg|ff0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|c|reg|ff0|Q~0_combout\ = !\sl|sr|c|reg|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sl|sr|c|reg|ff0|Q~q\,
	combout => \sl|sr|c|reg|ff0|Q~0_combout\);

-- Location: LCCOMB_X36_Y35_N8
\sl|lcdd|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|lcdd|Selector0~0_combout\ = (\sl|sr|sc|CurrentState.THIRD~q\) # (\sl|lcdd|CurrentState.SECOND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sl|sr|sc|CurrentState.THIRD~q\,
	datad => \sl|lcdd|CurrentState.SECOND~q\,
	combout => \sl|lcdd|Selector0~0_combout\);

-- Location: FF_X36_Y35_N9
\sl|lcdd|CurrentState.FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sl|lcdd|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|lcdd|CurrentState.FIRST~q\);

-- Location: LCCOMB_X36_Y35_N24
\sl|lcdd|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|lcdd|Selector1~0_combout\ = (\sl|lcdd|Selector2~0_combout\ & (\sl|sr|sc|CurrentState.THIRD~q\ & ((!\sl|lcdd|CurrentState.FIRST~q\)))) # (!\sl|lcdd|Selector2~0_combout\ & ((\sl|lcdd|CurrentState.SECOND~q\) # ((\sl|sr|sc|CurrentState.THIRD~q\ & 
-- !\sl|lcdd|CurrentState.FIRST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|lcdd|Selector2~0_combout\,
	datab => \sl|sr|sc|CurrentState.THIRD~q\,
	datac => \sl|lcdd|CurrentState.SECOND~q\,
	datad => \sl|lcdd|CurrentState.FIRST~q\,
	combout => \sl|lcdd|Selector1~0_combout\);

-- Location: FF_X36_Y35_N25
\sl|lcdd|CurrentState.SECOND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sl|lcdd|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|lcdd|CurrentState.SECOND~q\);

-- Location: LCCOMB_X36_Y35_N18
\sl|lcdd|cup|reg|ff0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|lcdd|cup|reg|ff0|Q~0_combout\ = \sl|lcdd|CurrentState.SECOND~q\ $ (\sl|lcdd|cup|reg|ff0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|lcdd|CurrentState.SECOND~q\,
	datac => \sl|lcdd|cup|reg|ff0|Q~q\,
	combout => \sl|lcdd|cup|reg|ff0|Q~0_combout\);

-- Location: CLKCTRL_G0
\sl|lcdd|CurrentState.FIRST~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sl|lcdd|CurrentState.FIRST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sl|lcdd|CurrentState.FIRST~clkctrl_outclk\);

-- Location: FF_X36_Y35_N19
\sl|lcdd|cup|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sl|lcdd|cup|reg|ff0|Q~0_combout\,
	clrn => \sl|lcdd|CurrentState.FIRST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|lcdd|cup|reg|ff0|Q~q\);

-- Location: LCCOMB_X36_Y35_N12
\sl|lcdd|cup|reg|ff1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|lcdd|cup|reg|ff1|Q~0_combout\ = \sl|lcdd|cup|reg|ff1|Q~q\ $ (((\sl|lcdd|CurrentState.SECOND~q\ & \sl|lcdd|cup|reg|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|lcdd|CurrentState.SECOND~q\,
	datab => \sl|lcdd|cup|reg|ff0|Q~q\,
	datac => \sl|lcdd|cup|reg|ff1|Q~q\,
	combout => \sl|lcdd|cup|reg|ff1|Q~0_combout\);

-- Location: FF_X36_Y35_N13
\sl|lcdd|cup|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sl|lcdd|cup|reg|ff1|Q~0_combout\,
	clrn => \sl|lcdd|CurrentState.FIRST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|lcdd|cup|reg|ff1|Q~q\);

-- Location: LCCOMB_X36_Y35_N6
\sl|lcdd|cup|reg|ff2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|lcdd|cup|reg|ff2|Q~0_combout\ = \sl|lcdd|cup|reg|ff2|Q~q\ $ (((\sl|lcdd|cup|reg|ff1|Q~q\ & (\sl|lcdd|cup|reg|ff0|Q~q\ & \sl|lcdd|CurrentState.SECOND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|lcdd|cup|reg|ff1|Q~q\,
	datab => \sl|lcdd|cup|reg|ff0|Q~q\,
	datac => \sl|lcdd|cup|reg|ff2|Q~q\,
	datad => \sl|lcdd|CurrentState.SECOND~q\,
	combout => \sl|lcdd|cup|reg|ff2|Q~0_combout\);

-- Location: FF_X36_Y35_N7
\sl|lcdd|cup|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sl|lcdd|cup|reg|ff2|Q~0_combout\,
	clrn => \sl|lcdd|CurrentState.FIRST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|lcdd|cup|reg|ff2|Q~q\);

-- Location: LCCOMB_X36_Y35_N30
\sl|lcdd|cup|ad|fa3|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|lcdd|cup|ad|fa3|Cout~0_combout\ = (\sl|lcdd|cup|reg|ff2|Q~q\ & (\sl|lcdd|cup|reg|ff0|Q~q\ & (\sl|lcdd|CurrentState.SECOND~q\ & \sl|lcdd|cup|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|lcdd|cup|reg|ff2|Q~q\,
	datab => \sl|lcdd|cup|reg|ff0|Q~q\,
	datac => \sl|lcdd|CurrentState.SECOND~q\,
	datad => \sl|lcdd|cup|reg|ff1|Q~q\,
	combout => \sl|lcdd|cup|ad|fa3|Cout~0_combout\);

-- Location: LCCOMB_X36_Y35_N16
\sl|lcdd|cup|reg|ff3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|lcdd|cup|reg|ff3|Q~0_combout\ = \sl|lcdd|cup|ad|fa3|Cout~0_combout\ $ (\sl|lcdd|cup|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|lcdd|cup|ad|fa3|Cout~0_combout\,
	datac => \sl|lcdd|cup|reg|ff3|Q~q\,
	combout => \sl|lcdd|cup|reg|ff3|Q~0_combout\);

-- Location: FF_X36_Y35_N17
\sl|lcdd|cup|reg|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sl|lcdd|cup|reg|ff3|Q~0_combout\,
	clrn => \sl|lcdd|CurrentState.FIRST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|lcdd|cup|reg|ff3|Q~q\);

-- Location: LCCOMB_X36_Y35_N22
\sl|lcdd|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|lcdd|Selector2~0_combout\ = (\sl|lcdd|cup|reg|ff2|Q~q\ & (!\sl|lcdd|cup|reg|ff0|Q~q\ & (\sl|lcdd|cup|reg|ff3|Q~q\ & !\sl|lcdd|cup|reg|ff1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|lcdd|cup|reg|ff2|Q~q\,
	datab => \sl|lcdd|cup|reg|ff0|Q~q\,
	datac => \sl|lcdd|cup|reg|ff3|Q~q\,
	datad => \sl|lcdd|cup|reg|ff1|Q~q\,
	combout => \sl|lcdd|Selector2~0_combout\);

-- Location: LCCOMB_X36_Y35_N28
\sl|lcdd|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|lcdd|Selector2~1_combout\ = (\sl|lcdd|Selector2~0_combout\ & ((\sl|lcdd|CurrentState.SECOND~q\) # ((\sl|sr|sc|CurrentState.THIRD~q\ & \sl|lcdd|CurrentState.THIRD~q\)))) # (!\sl|lcdd|Selector2~0_combout\ & (\sl|sr|sc|CurrentState.THIRD~q\ & 
-- (\sl|lcdd|CurrentState.THIRD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|lcdd|Selector2~0_combout\,
	datab => \sl|sr|sc|CurrentState.THIRD~q\,
	datac => \sl|lcdd|CurrentState.THIRD~q\,
	datad => \sl|lcdd|CurrentState.SECOND~q\,
	combout => \sl|lcdd|Selector2~1_combout\);

-- Location: FF_X36_Y35_N29
\sl|lcdd|CurrentState.THIRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sl|lcdd|Selector2~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|lcdd|CurrentState.THIRD~q\);

-- Location: LCCOMB_X36_Y35_N26
\sl|sr|sc|NextState.FORTH~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|sc|NextState.FORTH~0_combout\ = (\sl|sr|sc|CurrentState.FIRST~q\ & (\sl|lcdd|CurrentState.THIRD~q\ & !\sl|sr|sc|CurrentState.SECOND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|sr|sc|CurrentState.FIRST~q\,
	datab => \sl|lcdd|CurrentState.THIRD~q\,
	datad => \sl|sr|sc|CurrentState.SECOND~q\,
	combout => \sl|sr|sc|NextState.FORTH~0_combout\);

-- Location: FF_X36_Y35_N27
\sl|sr|sc|CurrentState.FORTH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sl|sr|sc|NextState.FORTH~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|sr|sc|CurrentState.FORTH~q\);

-- Location: LCCOMB_X36_Y35_N10
\sl|sr|sc|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|sc|Selector0~0_combout\ = (\sl|sr|sc|CurrentState.FORTH~q\ & !\sl|lcdd|CurrentState.THIRD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sl|sr|sc|CurrentState.FORTH~q\,
	datad => \sl|lcdd|CurrentState.THIRD~q\,
	combout => \sl|sr|sc|Selector0~0_combout\);

-- Location: LCCOMB_X38_Y35_N10
\sl|sr|c|reg|ff2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|c|reg|ff2|Q~0_combout\ = \sl|sr|c|reg|ff2|Q~q\ $ (((\sl|sr|c|reg|ff1|Q~q\ & (\sl|sr|sc|CurrentState.SECOND~q\ & \sl|sr|c|reg|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|sr|c|reg|ff1|Q~q\,
	datab => \sl|sr|sc|CurrentState.SECOND~q\,
	datac => \sl|sr|c|reg|ff2|Q~q\,
	datad => \sl|sr|c|reg|ff0|Q~q\,
	combout => \sl|sr|c|reg|ff2|Q~0_combout\);

-- Location: FF_X38_Y35_N11
\sl|sr|c|reg|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sl|sr|c|reg|ff2|Q~0_combout\,
	clrn => \sl|sr|sc|CurrentState.FIRST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|sr|c|reg|ff2|Q~q\);

-- Location: LCCOMB_X38_Y35_N8
\sl|sr|sc|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|sc|Selector0~1_combout\ = (\sl|sr|sc|CurrentState.SECOND~q\ & ((\sl|sr|c|reg|ff1|Q~q\) # ((!\sl|sr|c|reg|ff2|Q~q\) # (!\sl|sr|c|reg|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|sr|c|reg|ff1|Q~q\,
	datab => \sl|sr|c|reg|ff0|Q~q\,
	datac => \sl|sr|sc|CurrentState.SECOND~q\,
	datad => \sl|sr|c|reg|ff2|Q~q\,
	combout => \sl|sr|sc|Selector0~1_combout\);

-- Location: LCCOMB_X50_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X50_Y37_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: LCCOMB_X43_Y35_N8
\flcd|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flcd|Q~0_combout\ = !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	combout => \flcd|Q~0_combout\);

-- Location: FF_X43_Y35_N9
\flcd|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \flcd|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flcd|Q~q\);

-- Location: LCCOMB_X36_Y35_N0
\sl|sr|sc|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|sc|Selector0~2_combout\ = (!\sl|sr|sc|Selector0~0_combout\ & ((\flcd|Q~q\) # ((!\sl|sr|sc|Selector0~1_combout\ & \sl|sr|sc|CurrentState.FIRST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|sr|sc|Selector0~0_combout\,
	datab => \sl|sr|sc|Selector0~1_combout\,
	datac => \sl|sr|sc|CurrentState.FIRST~q\,
	datad => \flcd|Q~q\,
	combout => \sl|sr|sc|Selector0~2_combout\);

-- Location: FF_X36_Y35_N1
\sl|sr|sc|CurrentState.FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sl|sr|sc|Selector0~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|sr|sc|CurrentState.FIRST~q\);

-- Location: CLKCTRL_G2
\sl|sr|sc|CurrentState.FIRST~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sl|sr|sc|CurrentState.FIRST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sl|sr|sc|CurrentState.FIRST~clkctrl_outclk\);

-- Location: FF_X38_Y35_N25
\sl|sr|c|reg|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sl|sr|c|reg|ff0|Q~0_combout\,
	clrn => \sl|sr|sc|CurrentState.FIRST~clkctrl_outclk\,
	ena => \sl|sr|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|sr|c|reg|ff0|Q~q\);

-- Location: LCCOMB_X38_Y35_N12
\sl|sr|c|reg|ff1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|c|reg|ff1|Q~0_combout\ = \sl|sr|c|reg|ff1|Q~q\ $ (((\sl|sr|sc|CurrentState.SECOND~q\ & \sl|sr|c|reg|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sl|sr|sc|CurrentState.SECOND~q\,
	datac => \sl|sr|c|reg|ff1|Q~q\,
	datad => \sl|sr|c|reg|ff0|Q~q\,
	combout => \sl|sr|c|reg|ff1|Q~0_combout\);

-- Location: FF_X38_Y35_N13
\sl|sr|c|reg|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sl|sr|c|reg|ff1|Q~0_combout\,
	clrn => \sl|sr|sc|CurrentState.FIRST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|sr|c|reg|ff1|Q~q\);

-- Location: LCCOMB_X38_Y35_N30
\sl|sr|sc|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|sc|Selector2~0_combout\ = (!\sl|sr|c|reg|ff1|Q~q\ & (\sl|sr|c|reg|ff0|Q~q\ & (!\flcd|Q~q\ & \sl|sr|c|reg|ff2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|sr|c|reg|ff1|Q~q\,
	datab => \sl|sr|c|reg|ff0|Q~q\,
	datac => \flcd|Q~q\,
	datad => \sl|sr|c|reg|ff2|Q~q\,
	combout => \sl|sr|sc|Selector2~0_combout\);

-- Location: LCCOMB_X36_Y35_N20
\sl|sr|sc|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|sc|Selector2~1_combout\ = (\sl|sr|sc|Selector2~0_combout\ & ((\sl|sr|sc|CurrentState.SECOND~q\) # ((!\sl|lcdd|CurrentState.THIRD~q\ & \sl|sr|sc|CurrentState.THIRD~q\)))) # (!\sl|sr|sc|Selector2~0_combout\ & (!\sl|lcdd|CurrentState.THIRD~q\ & 
-- (\sl|sr|sc|CurrentState.THIRD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sl|sr|sc|Selector2~0_combout\,
	datab => \sl|lcdd|CurrentState.THIRD~q\,
	datac => \sl|sr|sc|CurrentState.THIRD~q\,
	datad => \sl|sr|sc|CurrentState.SECOND~q\,
	combout => \sl|sr|sc|Selector2~1_combout\);

-- Location: FF_X36_Y35_N21
\sl|sr|sc|CurrentState.THIRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sl|sr|sc|Selector2~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|sr|sc|CurrentState.THIRD~q\);

-- Location: LCCOMB_X36_Y35_N2
\sl|sr|sc|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|sc|Selector1~0_combout\ = (!\sl|sr|sc|CurrentState.THIRD~q\ & (!\sl|sr|sc|CurrentState.FORTH~q\ & \flcd|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sl|sr|sc|CurrentState.THIRD~q\,
	datac => \sl|sr|sc|CurrentState.FORTH~q\,
	datad => \flcd|Q~q\,
	combout => \sl|sr|sc|Selector1~0_combout\);

-- Location: FF_X36_Y35_N3
\sl|sr|sc|CurrentState.SECOND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sl|sr|sc|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|sr|sc|CurrentState.SECOND~q\);

-- Location: FF_X47_Y39_N9
\sl|sr|sr|ffd4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sl|sr|sr|ffd4|Q~0_combout\,
	ena => \sl|sr|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|sr|sr|ffd4|Q~q\);

-- Location: LCCOMB_X47_Y39_N22
\sl|sr|sr|ffd3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|sr|ffd3|Q~feeder_combout\ = \sl|sr|sr|ffd4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sl|sr|sr|ffd4|Q~q\,
	combout => \sl|sr|sr|ffd3|Q~feeder_combout\);

-- Location: FF_X47_Y39_N23
\sl|sr|sr|ffd3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sl|sr|sr|ffd3|Q~feeder_combout\,
	ena => \sl|sr|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|sr|sr|ffd3|Q~q\);

-- Location: LCCOMB_X47_Y39_N12
\sl|sr|sr|ffd2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|sr|ffd2|Q~feeder_combout\ = \sl|sr|sr|ffd3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sl|sr|sr|ffd3|Q~q\,
	combout => \sl|sr|sr|ffd2|Q~feeder_combout\);

-- Location: FF_X47_Y39_N13
\sl|sr|sr|ffd2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sl|sr|sr|ffd2|Q~feeder_combout\,
	ena => \sl|sr|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|sr|sr|ffd2|Q~q\);

-- Location: LCCOMB_X47_Y39_N10
\sl|sr|sr|ffd1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|sr|ffd1|Q~feeder_combout\ = \sl|sr|sr|ffd2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sl|sr|sr|ffd2|Q~q\,
	combout => \sl|sr|sr|ffd1|Q~feeder_combout\);

-- Location: FF_X47_Y39_N11
\sl|sr|sr|ffd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sl|sr|sr|ffd1|Q~feeder_combout\,
	ena => \sl|sr|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|sr|sr|ffd1|Q~q\);

-- Location: LCCOMB_X47_Y39_N0
\sl|sr|sr|ffd0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sl|sr|sr|ffd0|Q~feeder_combout\ = \sl|sr|sr|ffd1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sl|sr|sr|ffd1|Q~q\,
	combout => \sl|sr|sr|ffd0|Q~feeder_combout\);

-- Location: FF_X47_Y39_N1
\sl|sr|sr|ffd0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsc|ALT_INV_Q~clkctrl_outclk\,
	d => \sl|sr|sr|ffd0|Q~feeder_combout\,
	ena => \sl|sr|sc|CurrentState.SECOND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl|sr|sr|ffd0|Q~q\);

-- Location: LCCOMB_X43_Y30_N0
\kr|kd|scan|dec|O[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|scan|dec|O[1]~0_combout\ = (\kr|kd|scan|count|reg|ff2|Q~q\) # (\kr|kd|scan|count|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff2|Q~q\,
	datad => \kr|kd|scan|count|reg|ff3|Q~q\,
	combout => \kr|kd|scan|dec|O[1]~0_combout\);

-- Location: LCCOMB_X43_Y30_N26
\kr|kd|scan|dec|O[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|scan|dec|O[1]~1_combout\ = (\kr|kd|scan|count|reg|ff2|Q~q\ & !\kr|kd|scan|count|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kr|kd|scan|count|reg|ff2|Q~q\,
	datad => \kr|kd|scan|count|reg|ff3|Q~q\,
	combout => \kr|kd|scan|dec|O[1]~1_combout\);

-- Location: LCCOMB_X44_Y32_N8
\kr|kd|scan|dec|O[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kr|kd|scan|dec|O[1]~2_combout\ = (!\kr|kd|scan|count|reg|ff2|Q~q\ & \kr|kd|scan|count|reg|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kr|kd|scan|count|reg|ff2|Q~q\,
	datad => \kr|kd|scan|count|reg|ff3|Q~q\,
	combout => \kr|kd|scan|dec|O[1]~2_combout\);

-- Location: LCCOMB_X71_Y44_N2
\dm|U0|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U0|dOut[1]~0_combout\ = (\dm|U7|U1|Q\(0)) # ((!\dm|U7|U1|Q\(1) & \dm|U7|U1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm|U7|U1|Q\(1),
	datac => \dm|U7|U1|Q\(0),
	datad => \dm|U7|U1|Q\(2),
	combout => \dm|U0|dOut[1]~0_combout\);

-- Location: LCCOMB_X71_Y44_N20
\dm|U5|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U5|dOut~0_combout\ = (\dm|U7|U1|Q\(1) & !\dm|U7|U1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm|U7|U1|Q\(1),
	datad => \dm|U7|U1|Q\(0),
	combout => \dm|U5|dOut~0_combout\);

-- Location: LCCOMB_X71_Y44_N14
\dm|U1|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U1|dOut[1]~0_combout\ = ((!\dm|U7|U1|Q\(4) & \dm|U7|U1|Q\(5))) # (!\dm|U7|U1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U7|U1|Q\(3),
	datac => \dm|U7|U1|Q\(4),
	datad => \dm|U7|U1|Q\(5),
	combout => \dm|U1|dOut[1]~0_combout\);

-- Location: LCCOMB_X72_Y44_N24
\dm|U4|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U4|dOut~0_combout\ = (\dm|U7|U1|Q\(4) & \dm|U7|U1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U7|U1|Q\(4),
	datad => \dm|U7|U1|Q\(3),
	combout => \dm|U4|dOut~0_combout\);

-- Location: LCCOMB_X70_Y44_N22
\dm|U2|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U2|dOut[1]~0_combout\ = ((\dm|U7|U1|Q\(8) & !\dm|U7|U1|Q\(7))) # (!\dm|U7|U1|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm|U7|U1|Q\(8),
	datac => \dm|U7|U1|Q\(6),
	datad => \dm|U7|U1|Q\(7),
	combout => \dm|U2|dOut[1]~0_combout\);

-- Location: LCCOMB_X71_Y44_N24
\dm|U3|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dm|U3|dOut~0_combout\ = (\dm|U7|U1|Q\(6) & \dm|U7|U1|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|U7|U1|Q\(6),
	datad => \dm|U7|U1|Q\(7),
	combout => \dm|U3|dOut~0_combout\);

-- Location: FF_X50_Y37_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: FF_X50_Y37_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: FF_X50_Y37_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: LCCOMB_X50_Y36_N0
\auto_hub|~GND\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X50_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X47_Y36_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: IOIBUF_X51_Y54_N29
\M~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

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
END structure;


