library ieee;
use ieee.std_logic_1164.all;

entity DoorController_tb is
end DoorController_tb;

architecture arc of DoorController_tb is
component DoorController
port(
Dval, Sclose, Sopen, Psensor, Reset, CLK : in std_logic;
Din : in std_logic_vector(4 downto 0);
OnOff, done, OpenClose : out std_logic;
Dout : out std_logic_vector(4 downto 0));
end component;

constant MCLK_PERIOD : time := 2 ns;
constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;

signal Dval_tb, Sclose_tb, Sopen_tb, Psensor_tb, Reset_tb, CLK_tb, OnOff_tb, OpenClose_tb, done_tb : std_logic;
signal Din_tb, Dout_tb : std_logic_vector(4 downto 0);

-- 50 ns
begin

uut: DoorController port map(
Dval => Dval_tb,
Sclose => Sclose_tb, 
Sopen => Sopen_tb, 
Psensor => Psensor_tb, 
Reset => Reset_tb, 
CLK => CLK_tb,
Din => Din_tb,
OnOff => OnOff_tb,
done => done_tb,
OpenClose => OpenClose_tb,
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
Sclose_tb <= '0';
Sopen_tb <= '0';
Psensor_tb <= '0';
Din_tb <= "10101";
wait for MCLK_PERIOD;

Reset_tb <= '0';
wait for MCLK_PERIOD;

Dval_tb <= '1';
wait for MCLK_PERIOD *3;

Sopen_tb <= '1';
wait for MCLK_PERIOD;

Dval_tb <= '0';
wait for MCLK_PERIOD;

Din_tb <= "10100";
Dval_tb <= '1';
wait for MCLK_PERIOD *3;

Sclose_tb <= '1';
wait for MCLK_PERIOD;

Dval_tb <= '0';
wait for MCLK_PERIOD;

Din_tb <= "10100";
Sclose_tb <= '0';
Dval_tb <= '1';
wait for MCLK_PERIOD *3;

Psensor_tb <= '1';
wait for MCLK_PERIOD*3;

Psensor_tb <= '0';
Sopen_tb <= '1';
wait for MCLK_PERIOD*3;

Sclose_tb <= '1';
wait for MCLK_PERIOD;

Dval_tb <= '0';
wait for MCLK_PERIOD;
wait;
end process;
end;