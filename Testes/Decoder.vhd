library ieee;
use ieee.std_logic_1164.all;

entity Decoder is 
port(
S1, S0: in std_logic;
O0, O1, O2: out std_logic);
end Decoder;

architecture arc_dec of Decoder is
begin
O2<=(not S1 and not S0) or (not S1 and S0) or (S1 and S0); 
O1<=(not S1 and not S0) or (S1 and not S0) or (S1 and S0); 
O0<=(not S1 and S0) or (S1 and not S0) or (S1 and S0); 
end arc_dec;