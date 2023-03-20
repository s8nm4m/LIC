library ieee;
use ieee.std_logic_1164.all;

entity KeyScan_tb is
end KeyScan_tb;

architecture arc_ks of KeyScan_tb is

component KeyScan is
port(
KScan, CLK, Reset: in std_logic;
I : in std_logic_vector(3 downto 0);
Kpress : out std_logic;
K : out std_logic_vector(3 downto 0);
O : out std_logic_vector(2 downto 0));
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;

signal kscan_tb, clk_tb, reset_tb, kpress_tb : std_logic;
signal i_tb, k_tb : std_logic_vector(3 downto 0);

begin


end arc_ks;