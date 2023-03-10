library ieee;
use ieee.std_logic_1164.all;

entity MUX4x1 is
port(I0, I1, I2, I3: in std_logic;
S1, S0: in std_logic;
Y: out std_logic);
end MUX4x1;

architecture arc_mux of MUX4x1 is
begin 
Y <=  (I0 and not S1 and not S0) or
			(I1 and not S1 and S0) or
			(I2 and S1 and not S0) or
			(I3 and S1 and S0);
end arc_mux;