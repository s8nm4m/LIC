library ieee;
use ieee.std_logic_1164.all;

entity KeyboardReader_tb is
end KeyboardReader_tb;

architecture arc of KeyboardReader_tb is
component KeyboardReader 
port(
ACK, Reset, CLK : in std_logic;
I : in std_logic_vector(3 downto 0);
Dval : out std_logic;
O : out std_logic_vector(2 downto 0);
D : out std_logic_vector(3 downto 0));
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

signal ACK_tb, Reset_tb, CLK_tb, Dval_tb : std_logic;
signal O_tb : std_logic_vector(2 downto 0);
signal I_tb, D_tb : std_logic_vector(3 downto 0);

-- 105000 ns por causa do clkdiv
begin 

uut : KeyboardReader port map(
ACK => ACK_tb,
Reset => Reset_tb,
CLK => CLK_tb,
Dval => Dval_tb,
O => O_tb,
I => I_tb,
D => D_tb);

CLK_gen : process
begin
CLK_tb <= '0';
wait for MCLK_HALF_PERIOD;
CLK_tb <= '1';
wait for MCLK_HALF_PERIOD;
end process;

stimulus : process
begin

Reset_tb <= '1';
ACK_tb <= '0';
I_tb <= "1111";
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD * 10000;

I_tb <= "0000";
wait for MCLK_PERIOD * 10000;

ACK_tb <= '1';
wait for MCLK_PERIOD * 500;

I_tb <= "1111";
wait for MCLK_PERIOD * 10000;

ACK_tb <= '0';
wait for MCLK_PERIOD * 500;

I_tb <= "0010";
wait for MCLK_PERIOD * 5000;

ACK_tb <= '1';
wait for MCLK_PERIOD * 10000;

ACK_tb <= '0';
wait for MCLK_PERIOD * 1000;

I_tb <= "1111";
wait for MCLK_PERIOD * 1000;
wait;
end process;
end;