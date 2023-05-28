LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity MUX2x1_tb is 
end MUX2x1_tb;

architecture behavioral of MUX2x1_tb is

component MUX2x1 is 
port(
A, B: in std_logic_vector(3 downto 0);
S: in std_logic;
Y: out std_logic_vector(3 downto 0));
end component;

--UUT signals
constant MCLK_PERIOD : time := 2 ns;

signal A_tb, B_tb, Y_tb : std_logic_vector(3 downto 0);
signal S_tb : std_logic;

-- 3 ns
begin

--Unit Under Test
uut :  MUX2x1 port map(
A => A_tb,
B => B_tb,
S => S_tb,
Y => Y_tb);

stimulus: process 
begin 

A_tb <= "0101";
B_tb <= "1010";
S_tb <= '1';
wait for MCLK_PERIOD;

S_tb <= '0';
wait for MCLK_PERIOD;
wait;
end process;
end;