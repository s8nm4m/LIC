library ieee;
use ieee.std_logic_1164.all;

entity MUX4x1 is
port(Rin1, Rin2, Rin3, Rin4: in std_logic_vector(3 downto 0);
S:in std_logic_vector(1 downto 0);
Rout: out std_logic_vector(3 downto 0));
end MUX4x1;

architecture arc_mux of MUX4x1 is
begin 
Rout(0)<=(not S(0) and not S(1) and Rin1(0)) or (S(0) and not S(1) and Rin2(0)) or (not S(0) and S(1) and Rin3(0)) or (S(0) and S(1) and Rin4(0));
Rout(1)<=(not S(0) and not S(1) and Rin1(1)) or (S(0) and not S(1) and Rin2(1)) or (not S(0) and S(1) and Rin3(1)) or (S(0) and S(1) and Rin4(1));
Rout(2)<=(not S(0) and not S(1) and Rin1(2)) or (S(0) and not S(1) and Rin2(2)) or (not S(0) and S(1) and Rin3(2)) or (S(0) and S(1) and Rin4(2));
Rout(3)<=(not S(0) and not S(1) and Rin1(3)) or (S(0) and not S(1) and Rin2(3)) or (not S(0) and S(1) and Rin3(3)) or (S(0) and S(1) and Rin4(3));
end arc_mux;