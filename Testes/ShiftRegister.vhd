library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister is
port(
data, clk, enable : in std_logic;
D : out std_logic_vector(4 downto 0));
end ShiftRegister;

architecture arc_sr of ShiftRegister is
component Registry
port(
D:in std_logic_vector(3 downto 0);
CLK, E: in std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

signal outreg, inreg: std_logic_vector(3 downto 0);

begin

r : Registry port map(
D => inreg,
CLK => clk,
E => enable,
Q => outreg);

inreg(0) <= data;
inreg(1) <= outreg(0);
inreg(2) <= outreg(1);
inreg(3) <= outreg(2);

end arc_sr;