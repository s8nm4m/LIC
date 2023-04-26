library ieee;
use ieee.std_logic_1164.all;

entity Decoder_tb is
end Decoder_tb;

architecture arc of Decoder_tb is
component Decoder
port(
S: in std_logic_vector(1 downto 0);
O: out std_logic_vector(2 downto 0));
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;

signal CLK_tb : std_logic;
signal S_tb : std_logic_vector(1 downto 0);
signal O_tb : std_logic_vector(2 downto 0);

-- 13 ns
begin

dectb: Decoder port map(
S => S_tb,
O => O_tb);

clk_gen : process
begin 
CLK_tb <= '0';
wait for MCLK_HALF_PERIOD;
CLK_tb <= '1';
wait for MCLK_HALF_PERIOD;
end process;

stimulus: process
begin

S_tb(0) <= '0';
S_tb(1) <= '0';
wait for MCLK_PERIOD *2;

S_tb(0) <= '1';
wait for MCLK_PERIOD *2;

S_tb(0) <= '0';
S_tb(1) <= '1';
wait for MCLK_PERIOD *2;

S_tb(0) <= '1';
wait for MCLK_PERIOD *2;
wait;
end process;
end;