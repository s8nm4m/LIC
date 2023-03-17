library ieee;
use ieee.std_logic_1164.all;

entity KeyScan_tb is
end KeyScan_tb;

architecture arc_ks of KeyScan_tb is

component KeyScan is
port(
KScan, I0, I1, I2, I3, CLK, Reset: in std_logic;
Kpress, O0, O1, O2: out std_logic;
K: out std_logic_vector(3 downto 0));
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;

begin

end arc_ks;