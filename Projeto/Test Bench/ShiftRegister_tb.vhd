library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister_tb is
end ShiftRegister_tb;

architecture arc of ShiftRegister_tb is
component ShiftRegister
port(
data, clk, enable, reset : in std_logic;
D : out std_logic_vector(4 downto 0));
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;

signal data_tb, CLK_tb, enable_tb, reset_tb : std_logic;
signal D_tb : std_logic_vector(4 downto 0);

begin

srtb: ShiftRegister port map(
data => data_tb,
clk => CLK_tb,
enable => enable_tb,
reset => reset_tb,
D => D_tb);

clk_gen : process
begin 
CLK_tb <= '0';
wait for MCLK_HALF_PERIOD;
CLK_tb <= '1';
wait for MCLK_HALF_PERIOD;
end process;

stimulus: process
begin

reset_tb <= '1';
data_tb <= '0';
enable_tb <= '0';
wait for MCLK_PERIOD;

reset_tb <= '0';
wait for MCLK_PERIOD;

enable_tb <= '1';
wait for MCLK_PERIOD;

data_tb <= '0';
wait for MCLK_PERIOD;

data_tb <= '1';
wait for MCLK_PERIOD;

data_tb <= '0';
wait for MCLK_PERIOD;

data_tb <= '1';
wait for MCLK_PERIOD;

data_tb <= '0';
wait for MCLK_PERIOD;

enable_tb <= '0';
wait for MCLK_PERIOD;
wait;
end process;
end;