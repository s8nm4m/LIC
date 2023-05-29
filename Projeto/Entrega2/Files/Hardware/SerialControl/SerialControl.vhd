library ieee;
use ieee.std_logic_1164.all;

entity SerialControl is
port(
Reset, enRx, accept, eq5, CLK : in std_logic;
clr, wr, DXval, cenable, busy : out std_logic);
end SerialControl;

architecture arc_sc of SerialControl is

type STATE_TYPE is (NOT_BUSY, COUNT, VALIDATE, STILL_BUSY);

signal CurrentState, NextState: STATE_TYPE;
  
begin

CurrentState <= NOT_BUSY when Reset = '1' else NextState when rising_edge(CLK);

GenerateNextState:
process(CurrentState, enRx, eq5, accept)
	begin
		case CurrentState is 
			when NOT_BUSY => 
				if (enRx = '0') then NextState <= COUNT;
				else NextState <= NOT_BUSY;
				end if;
			when COUNT =>
				if (enRx = '1') then
					if(eq5 = '1') then NextState <= VALIDATE;
					else NextState <= NOT_BUSY;
					end if;
				else NextState <= COUNT;
				end if;
			when VALIDATE =>
				if (accept = '1') then NextState <= STILL_BUSY;
				else NextState <= VALIDATE;
				end if;
			when STILL_BUSY =>
				if(accept = '0') then NextState <= NOT_BUSY;
				else NextState <= STILL_BUSY;
				end if;
		end case;
end process;

clr <= '1' when (CurrentState = NOT_BUSY) else '0';
cenable <= '1' when (CurrentState = COUNT) else '0';
wr <= '1' when (CurrentState = COUNT) else '0';
DXval <= '1' when (CurrentState = VALIDATE) else '0';
busy <= '0' when (CurrentState = NOT_BUSY) else '1';

end arc_sc;