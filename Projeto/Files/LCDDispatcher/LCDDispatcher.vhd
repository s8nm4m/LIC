library ieee;
use ieee.std_logic_1164.all;

entity LCDDispatcher is
port(
Dval : in std_logic;
Din : in std_logic_vector(4 downto 0);
Wrl, done : out std_logic;
Dout : out std_logic_vector(4 downto 0));
end LCDDispatcher;

architecture arc_lcdd of LCDDispatcher is

begin

Wrl <= '1' when Dval = '1' else '0';
Dout <= Din when Dval = '1';
done <= '1' when Dval = '1' else '0';

end arc_lcdd;