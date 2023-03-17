library ieee;
use ieee.std_logic_1164.all;

entity Decoder is 
port(
S: in std_logic_vector(1 downto 0);
O: out std_logic_vector(2 downto 0));
end Decoder;

architecture arc_dec of Decoder is
begin
O(2)<=(not S(1) and not S(0)) or (not S(1) and S(0)) or (S(1) and S(0)); 
O(1)<=(not S(1) and not S(0)) or (S(1) and not S(0)) or (S(1) and S(0)); 
O(0)<=(not S(1) and S(0)) or (S(1) and not S(0)) or (S(1) and S(0)); 
end arc_dec;