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
constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal KScan_tb, CLK_tb, Reset_tb, Kpress_tb: std_logic;
signal I_tb, K_tb : std_logic_vector(3 downto 0);
signal O_tb : std_logic_vector(2 downto 0);

-- 30 ns
begin

--Unit Under Test
uut :  KeyScan port map(
KScan => KScan_tb,
CLK => CLK_tb,
Reset => Reset_tb,
Kpress => Kpress_tb,
I => I_tb,
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

Reset_tb <= '1';
I_tb <= "1010";
KScan_tb <= '0';
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD;

KScan_tb <= '1';
wait for MCLK_PERIOD;

I_tb <= "1111";
KScan_tb <= '0';
wait for MCLK_PERIOD;

KScan_tb <= '1';
wait for MCLK_PERIOD * 10;

KScan_tb <= '0';
wait for MCLK_PERIOD;
wait;
end process;
end;