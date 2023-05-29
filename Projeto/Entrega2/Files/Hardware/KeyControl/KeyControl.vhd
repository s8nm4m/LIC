library ieee;
use ieee.std_logic_1164.all;

entity KeyControl is
port(
Kpress, Kack, CLK, Reset: in std_logic;
Kval, Kscan: out std_logic);
end KeyControl;

architecture arcKC of KeyControl is

type STATE_TYPE is (WAIT_FOR_PRESS, VALIDATE, WAIT_FOR_AFK);

signal CurrentState, NextState: STATE_TYPE;

begin

CurrentState <= WAIT_FOR_PRESS when Reset = '1' else NextState when rising_edge(CLK);

GenerateNextState:
process (CurrentState, Kpress, Kack)
	begin
		case CurrentState is
			when WAIT_FOR_PRESS => 
				if (Kpress = '1') then NextState <= VALIDATE;
				else NextState <= WAIT_FOR_PRESS;
				end if;
			when VALIDATE => 
				if (Kack = '1' and Kpress = '0') then NextState <= WAIT_FOR_AFK;
				else NextState <= VALIDATE;
				end if;
			when WAIT_FOR_AFK => 
				if (Kack = '0') then NextState <= WAIT_FOR_PRESS;
				else NextState <= WAIT_FOR_AFK;
				end if;
		end case;
end process;
	
Kval <= '1' when ( CurrentState = VALIDATE) else '0';
Kscan <= '1' when ( CurrentState = WAIT_FOR_PRESS and Kpress = '0') else '0';

end arcKC;