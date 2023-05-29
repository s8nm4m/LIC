library ieee;
use ieee.std_logic_1164.all;

entity LCDDispatcher_tb is
end LCDDispatcher_tb;

architecture arc of LCDDispatcher_tb is
component LCDDispatcher
port(
Dval, Reset, CLK : in std_logic;
Din : in std_logic_vector(4 downto 0);
Wrl, done : out std_logic;
Dout : out std_logic_vector(4 downto 0));
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;

signal Dval_tb, Wrl_tb, done_tb, CLK_tb, Reset_tb : std_logic;
signal Din_tb, Dout_tb : std_logic_vector(4 downto 0);

-- 65 ns
begin 

lcdd: LCDDispatcher port map(
CLK => CLK_tb,
Reset => Reset_tb,
Dval => Dval_tb,
Din => Din_tb,
Wrl => Wrl_tb,
done => done_tb,
Dout => Dout_tb);

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
Dval_tb <= '0';
Din_tb <= "10101";
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD;

Dval_tb <= '1';
wait for MCLK_PERIOD;

Dval_tb <= '0';
wait for MCLK_PERIOD;
wait;
end process;
end;