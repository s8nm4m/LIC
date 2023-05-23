LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity Counter_tb is 
end Counter_tb;

architecture behavioral of Counter_tb is

component Counter is 
port(
PL, CE, CLK, Reset: in std_logic;
Data_in: in std_logic_vector(3 downto 0);
TC: out std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

--UUT signals
constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal PL_tb, CE_tb, CLK_tb, TC_tb, Reset_tb: std_logic;
signal Data_in_tb, Q_tb: std_logic_vector(3 downto 0);

-- 15 ns
begin

--Unit Under Test
uut :  Counter port map(
Reset => Reset_tb,
PL => PL_tb,
CE => CE_tb,
CLK => CLK_tb,
TC => TC_tb,
Q => Q_tb,
Data_in => Data_in_tb);

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
PL_tb <= '0';
CE_tb <= '0';
Data_in_tb <= "0101";
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD;

CE_tb <= '1';
wait for MCLK_PERIOD *3;

PL_tb <= '1';
wait for MCLK_PERIOD * 4;

CE_tb <= '0';
wait for MCLK_PERIOD *2;

PL_tb <= '0';
wait for MCLK_PERIOD *2;
wait;
end process;
end;