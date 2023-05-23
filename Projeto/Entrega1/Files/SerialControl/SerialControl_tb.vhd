library ieee;
use ieee.std_logic_1164.all;

entity SerialControl_tb is
end SerialControl_tb;

architecture arc of SerialControl_tb is
component SerialControl
port(
Reset, enRx, accept, eq5, CLK : in std_logic;
clr, wr, DXval, cenable : out std_logic);
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;

signal Reset_tb, enRx_tb, accept_tb, eq5_tb, CLK_tb, clr_tb, wr_tb, DXval_tb, cenable_tb: std_logic;

-- 30 ns
begin

srtb: SerialControl port map(
Reset => Reset_tb, 
enRx => enRx_tb, 
accept => accept_tb, 
eq5 => eq5_tb, 
CLK => CLK_tb,
clr => clr_tb, 
wr => wr_tb, 
DXval => DXval_tb, 
cenable => cenable_tb);

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
enRx_tb <= '1';
accept_tb <= '0';
eq5_tb <= '0';
wait for MCLK_PERIOD *2;

Reset_tb <= '0';
wait for MCLK_PERIOD *2;

enRx_tb <= '0';
wait for MCLK_PERIOD *2;

enRx_tb <= '1';
eq5_tb <= '1';
wait for MCLK_PERIOD *2;

wait for MCLK_PERIOD *2;

accept_tb <= '1';
wait for MCLK_PERIOD *2;

wait for MCLK_PERIOD *2;

accept_tb <= '0';
wait for MCLK_PERIOD *2;
wait;
end process;
end;