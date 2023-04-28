library ieee;
use ieee.std_logic_1164.all;

entity DoorController is
port(
Dval, Sclose, Sopen, Psensor, Reset, CLK : in std_logic;
Din : in std_logic_vector(4 downto 0);
OnOff, done, OpenClose : out std_logic;
Dout : out std_logic_vector(4 downto 0));
end DoorController;

architecture arc of DoorController is

type STATE_TYPE is (FIRST, SECOND, THIRD, FORTH);

signal CurrentState, NextState: STATE_TYPE;

begin

CurrentState <= FIRST when Reset = '1' else NextState when rising_edge(CLK);

GenerateNextState:
process(Din(0), Dval, Sopen, Sclose, Psensor)
	begin
		case CurrentState is
			when FIRST =>
				if (Dval = '0') then NextState <= FIRST;
				else
					if (Din(0) = '1') then NextState <= SECOND;
					else NextState <= THIRD;
					end if;
				end if;
			when SECOND =>
				if (Sopen = '0') then NextState <= SECOND;
				else
					if (Din(0) = '0') then NextState <= THIRD;
					else NextState <= FORTH;
					end if;
				end if;
			when THIRD =>
				if (Psensor = '1') then NextState <= SECOND;
				else
					if (Sclose = '1') then NextState <= FORTH;
					else NextState <= THIRD;
					end if;
				end if;
			when FORTH =>
				if (Dval = '0') then NextState <= FIRST;
				else NextState <= FORTH;
				end if;
		end case;
end process;

OnOff <= '1' when ((CurrentState = SECOND and Sopen = '0') or (CurrentState = THIRD and Psensor = '0' and Sclose = '0')) else '0';
OpenClose <= '1'when (CurrentState = SECOND) else '0';
done <= '1' when (CurrentState = FORTH) else '0';
Dout(4 downto 1) <= Din(4 downto 1);
Dout(0) <= '1'when (CurrentState = SECOND) else '0';

end arc;