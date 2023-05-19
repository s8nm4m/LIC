library ieee;
use ieee.std_logic_1164.all;

entity full_add is
Port(A, B, Cin: in std_logic;
Cout, S: out std_logic);
end full_add;

architecture arc_fa of full_add is
begin
S <= A xor B xor Cin;
Cout <= (A and B) or (A and Cin) or (B and Cin);
end arc_fa;