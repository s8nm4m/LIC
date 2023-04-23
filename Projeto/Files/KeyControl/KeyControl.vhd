library ieee;
use ieee.std_logic_1164.all;

entity KeyControl is
port(
Kpress, Kack, CLK, Reset: in std_logic;
Kval, Kscan: out std_logic);
end KeyControl;

architecture arcKC of KeyControl is

--type STATE_TYPE is(FIRST, SECOND, THIRD);
type STATE_TYPE is(FIRST, SECOND);

signal CurrentState, NextState: STATE_TYPE;

begin

CurrentState <= FIRST when Reset = '1' else NextState when rising_edge(CLK);

GenerateNextState:
process (CurrentState, Kpress, Kack)
	begin
		case CurrentState is
			when FIRST => if (Kpress = '1') then
									NextState <= SECOND;
								else
									NextState <= FIRST;
								end if;
			when SECOND => if (Kack = '1') then
									if (Kpress = '0') then
										NextState <= FIRST;
									else
										NextState <= SECOND;
									end if;
									--NextState <= THIRD;
								else
									NextState <= SECOND;
								end if;
		end case;
	end process;
	
Kval <= '1' when ( CurrentState = SECOND) else '0';
Kscan <= '1' when ( CurrentState = FIRST and Kpress = '0') else '0';

end arcKC;