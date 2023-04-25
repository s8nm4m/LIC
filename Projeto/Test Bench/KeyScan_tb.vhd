LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity KeyScan_tb is 
end KeyScan_tb;

architecture behavioral of KeyScan_tb is

component KeyScan is 
port(
KScan, CLK, Reset: in std_logic;
I : in std_logic_vector(3 downto 0);
Kpress : out std_logic;
O : out std_logic_vector(2 downto 0);
K : out std_logic_vector(3 downto 0));
end component;

--UUT signals
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD 	:= MCLK_PERIOD / 2

signal KScan_tb, CLK_tb, Reset_tb: in std_logic;
signal I_tb : in std_logic_vector(3 downto 0);
signal Kpress_tb : out std_logic;
signal O_tb : out std_logic_vector(2 downto 0);
signal K_tb : out std_logic_vector(3 downto 0);

begin

--Unit Under Test
uut :  KeyScan port map(
KScan => KScan_tb,
CLK = CLK_tb,
Reset => Reset_tb,
Kpress => Kpress_tb,
O => O_tb,
K => K_tb);

CLK_gen : process
begin
CLK_tb <= '0';
wait for MCLK_HALF_PERIOD;
CLK_tb <= '1';
wait for MCLK_PERIOD;
end process;

stimulus: process 
begin 

--reset
wait;
end process;