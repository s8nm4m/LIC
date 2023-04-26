library ieee;
use ieee.std_logic_1164.all;

entity KeyControl_tb is
end KeyControl_tb;

architecture arc of KeyControl_tb is

component KeyControl is
port(
Kpress, Kack, CLK, Reset: in std_logic;
Kval, Kscan: out std_logic);
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal Kpress_tb, Kack_tb, CLK_tb, Reset_tb, Kval_tb, Kscan_tb : std_logic;

-- 19 ns
begin

UUT:KeyControl port map(
Kpress => Kpress_tb,
Kack => Kack_tb,
CLK => CLK_tb,
Reset => Reset_tb,
Kval => Kval_tb,
Kscan => Kscan_tb);

clk_gen : process
begin 
CLK_tb <= '0';
wait for MCLK_HALF_PERIOD;
CLK_tb <= '1';
wait for MCLK_HALF_PERIOD;
end process;

stimulus: process
begin
Reset_tb <= '1';
Kpress_tb <= '0';
Kack_tb <= '0';
wait for MCLK_PERIOD *2;

Reset_tb <= '0';
wait for MCLK_PERIOD *2;

Kpress_tb <= '1';
wait for MCLK_PERIOD *2;

Kack_tb <= '1';
wait for MCLK_PERIOD *2;

Kpress_tb <= '0';
wait for MCLK_PERIOD *2;

wait;
end process;
end;