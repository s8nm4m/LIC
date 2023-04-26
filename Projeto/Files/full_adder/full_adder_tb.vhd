LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity full_adder_tb is 
end full_adder_tb;

architecture arc of full_adder_tb is

component full_adder is 
port(
A, B, Ci: in std_logic;
Co, S: out std_logic);
end component;

--UUT signals
constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal A_tb, B_tb, Ci_tb, Co_tb, S_tb, CLK_tb: std_logic;

-- 5 ns
begin

--Unit Under Test
uut :  full_adder port map(
A => A_tb,
B => B_tb,
Ci => Ci_tb,
Co => Co_tb,
S => S_tb);

CLK_gen : process
begin
CLK_tb <= '0';
wait for MCLK_HALF_PERIOD;
CLK_tb <= '1';
wait for MCLK_PERIOD;
end process;

stimulus: process 
begin 

A_tb <= '1';
B_tb <= '0';
Ci_tb <= '1';
wait for MCLK_PERIOD;

A_tb <= '1';
B_tb <= '0';
Ci_tb <= '0';
wait for MCLK_PERIOD;

A_tb <= '1';
B_tb <= '1';
Ci_tb <= '1';
wait for MCLK_PERIOD;
wait;
end process;
end;