library ieee;
use ieee.std_logic_1164.all;

entity LCDDispatcher is
port(
Dval : in std_logic;
Din : in std_logic_vector(4 downto 0);
WRL, done : out std_logic;
Dout : out std_logic_vector(4 downto 0));
end LCDDispatcher;

architecture arc_lcdd of LCDDispatcher is
begin
end arc_lcdd;