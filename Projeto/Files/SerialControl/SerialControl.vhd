library ieee;
use ieee.std_logic_1164.all;
entity SerialControl is
port(
Reset, enRx, accept, eq5, CLK : in std_logic;
clr, wr, DXval, cenable : out std_logic);
end SerialControl;

architecture arc_sc of SerialControl is

type STATE_TYPE is (FIRST, SECOND, THIRD, FORTH);

signal CurrentState, NextState: STATE_TYPE;
  
begin

CurrentState <= FIRST when Reset = '1' else NextState when rising_edge(CLK);

GenerateNextState:
process(CurrentState, enRx, eq5, accept)
	begin
		case CurrentState is 
			when FIRST => 
				if (enRx = '0') then NextState <= SECOND;
				else NextState <= FIRST;
				end if;
			when SECOND =>
				if (enRx = '1') then
					if(eq5 = '1') then NextState <= THIRD;
					else NextState <= FIRST;
					end if;
				else NextState <= SECOND;
				end if;
			when THIRD =>
				if (accept = '1') then NextState <= FORTH;
				else NextState <= THIRD;
				end if;
			when FORTH =>
				if(accept = '0') then NextState <= FIRST;
				else NextState <= FORTH;
				end if;
		end case;
end process;

clr <= '1' when (CurrentState = FIRST) else '0';
cenable <= '1' when (CurrentState = SECOND) else '0';
wr <= '1' when (CurrentState = SECOND) else '0';
DXval <= '1' when (CurrentState = THIRD) else '0';

end arc_sc;