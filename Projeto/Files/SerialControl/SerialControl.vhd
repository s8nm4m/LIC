library ieee;
use ieee.std_logic_1164.all;
entity SerialControl is
port(
enRx, accept, eq5 : in std_logic;
clr, wr, DXval, cenable : out std_logic);
end SerialControl;

architecture arc_sc of SerialControl is
begin

cenable <= '1' when (eq5 = '0' and enRx = '0') else '0';
wr <= '1' when (eq5 = '0' and enRx = '0') else '0';
clr <= '1' when (enRx = '1') else '0';
DXval <= '1' when (enRx = '1' and eq5 = '1') else '0';

end arc_sc;
