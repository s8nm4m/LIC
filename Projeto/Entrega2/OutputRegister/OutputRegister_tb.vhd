library ieee;
use ieee.std_logic_1164.all;

entity OutputRegister_tb is
end OutputRegister_tb;

architecture arc of OutputRegister_tb is
component OutputRegister
port(
CE, CLK, Reset : in std_logic;
D : in std_logic_vector(3 downto 0);
Q : out std_logic_vector(3 downto 0));
end component;

--UUT signals
constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal CE_tb, CLK_tb, Reset_tb : std_logic;
signal D_tb, Q_tb : std_logic_vector(3 downto 0);

--  ns
begin

uut : OutputRegister port map(
CE => CE_tb,
CLK => CLK_tb,
Reset => Reset_tb,
D => D_tb,
Q => Q_tb);

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
CE_tb <= '0';
D_tb <= "0101";
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD;

CE_tb <= '1';
wait for MCLK_PERIOD;

CE_tb <= '0';
wait for MCLK_PERIOD;

D_tb <= "1100";
wait for MCLK_PERIOD;

CE_tb <= '1';
wait for MCLK_PERIOD;

CE_tb <= '0';
wait for MCLK_PERIOD;
wait;
end process;
end;