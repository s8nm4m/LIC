LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity MUX4x1_tb is 
end MUX4x1_tb;

architecture behavioral of MUX4x1_tb is

component MUX4x1 is 
port(
I: in std_logic_vector(3 downto 0);
S: in std_logic_vector(1 downto 0);
Y: out std_logic);
end component;

--UUT signals
constant MCLK_PERIOD : time := 2 ns;

signal I_tb : std_logic_vector(3 downto 0);
signal S_tb : std_logic_vector(1 downto 0);
signal Y_tb : std_logic;

-- 7 ns
begin

--Unit Under Test
uut :  MUX4x1 port map(
I => I_tb,
S => S_tb,
Y => Y_tb);

stimulus: process 
begin 

I_tb(0) <= '0';
I_tb(1) <= '1';
I_tb(2) <= '0';
I_tb(3) <= '1';
S_tb(0) <= '0';
S_tb(1) <= '0';
wait for MCLK_PERIOD;

S_tb(0) <= '1';
S_tb(1) <= '0';
wait for MCLK_PERIOD;

S_tb(0) <= '0';
S_tb(1) <= '1';
wait for MCLK_PERIOD;

S_tb(0) <= '1';
S_tb(1) <= '1';
wait for MCLK_PERIOD;
wait;
end process;
end;