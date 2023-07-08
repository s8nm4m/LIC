library ieee;
use ieee.std_logic_1164.all;

entity MAC_tb is
end MAC_tb;

architecture arc of MAC_tb is
component MemoryAddressControl is
port(
putget, incPut, incGet, CLK, Reset : in std_logic;
full, empty : out std_logic;
A : out std_logic_vector(2 downto 0));
end component;

--UUT signals
constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal putget_tb, incPut_tb, incGet_tb, CLK_tb, Reset_tb, full_tb, empty_tb: std_logic;
signal A_tb : std_logic_vector(2 downto 0);

-- 35 ns
begin

uut : MemoryAddressControl port map(
putget => putget_tb,
incPut => incPut_tb,
incGet => incGet_tb,
CLK => CLK_tb,
Reset => Reset_tb,
full => full_tb,
empty => empty_tb,
A => A_tb);

CLK_gen : process
begin
CLK_tb <= '0';
wait for MCLK_HALF_PERIOD;
CLK_tb <= '1';
wait for MCLK_HALF_PERIOD;
end process;

stimulus: process 
begin

Reset_tb <= '1';
putget_tb <= '0';
incPut_tb <= '0';
incGet_tb <= '0';
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD;

incGet_tb <= '1';
wait for MCLK_PERIOD;

incGet_tb <= '0';
wait for MCLK_PERIOD;

putget_tb <= '1';
incPut_tb <= '1';
wait for MCLK_PERIOD * 3;

incPut_tb <= '0';
putget_tb <= '0';
incGet_tb <= '1';
wait for MCLK_PERIOD;

incGet_tb <= '0';
wait for MCLK_PERIOD;

putget_tb <= '1';
incPut_tb <= '1';
wait for MCLK_PERIOD * 10;
wait;
end process;
end;
