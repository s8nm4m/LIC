library ieee;
use ieee.std_logic_1164.all;

entity OutputRegister is
port(
CE, CLK, Reset : in std_logic;
D : in std_logic_vector(3 downto 0);
Q : out std_logic_vector(3 downto 0));
end OutputRegister;

architecture arc of OutputRegister is
component Registry
port(
D:in std_logic_vector(3 downto 0);
CLK, E, Reset: in std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

begin

reg : Registry port map(
E => CE,
CLK => CLK,
Reset => Reset,
D => D,
Q => Q);
end arc;