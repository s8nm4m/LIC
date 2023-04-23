library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister is
port(
data, clk, enable : in std_logic;
D : out std_logic_vector(4 downto 0));
end ShiftRegister;

architecture arc_sr of ShiftRegister is
component FFD
PORT(	CLK : in std_logic;
		RESET : in STD_LOGIC;
		SET : in std_logic;
		D : IN STD_LOGIC;
		EN : IN STD_LOGIC;
		Q : out std_logic
		);
end component;

signal f1, f2, f3, f4: std_logic;

begin

ffd4: FFD port map(
SET => '0',
RESET => '0',
CLK => clk,
D => data,
EN => enable,
Q => f4);

ffd3: FFD port map(
SET => '0',
RESET => '0',
CLK => clk,
D => f4,
EN => enable,
Q => f3);

ffd2: FFD port map(
SET => '0',
RESET => '0',
CLK => clk,
D => f3,
EN => enable,
Q => f2);

ffd1: FFD port map(
SET => '0',
RESET => '0',
CLK => clk,
D => f2,
EN => enable,
Q => f1);

ffd0: FFD port map(
SET => '0',
RESET => '0',
CLK => clk,
D => f1,
EN => enable,
Q => D(0));

D(1) <= f1;
D(2) <= f2;
D(3) <= f3;
D(4) <= f4;

end arc_sr;