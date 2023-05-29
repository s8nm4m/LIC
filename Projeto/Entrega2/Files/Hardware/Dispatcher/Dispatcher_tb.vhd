library ieee;
use ieee.std_logic_1164.all;

entity Dispatcher_tb is
end Dispatcher_tb;

architecture arc of Dispatcher_tb is
component Dispatcher is
port(
Dval, Reset, CLK, eq12 : in std_logic;
Wrl, done, countclear : out std_logic);
end component;

signal Dval_tb, Reset_tb, CLK_tb, eq12_tb, Wrl_tb, done_tb, countclear_tb : std_logic;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

-- 20 ns
begin

CLK_gen : process
begin
CLK_tb <= '0';
wait for MCLK_HALF_PERIOD;
CLK_tb <= '1';
wait for MCLK_HALF_PERIOD;
end process;

uut : Dispatcher port map(
Dval => Dval_tb,
Reset => Reset_tb,
CLK => CLK_tb,
eq12 => eq12_tb,
Wrl => Wrl_tb,
done => done_tb,
countclear => countclear_tb);

stimulus: process
begin

Reset_tb <= '1';
Dval_tb <= '0';
eq12_tb <= '0';
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD * 2;

Dval_tb <= '1';
wait for MCLK_PERIOD;

eq12_tb <= '1';
wait for MCLK_PERIOD * 2;

Dval_tb <= '0';
eq12_tb <= '0';
wait for MCLK_PERIOD * 2;

eq12_tb <= '1';
wait for MCLK_PERIOD;
wait;
end process;
end;