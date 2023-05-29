library ieee;
use ieee.std_logic_1164.all;

entity Dispatcher is
port(
Dval, Reset, CLK, eq12 : in std_logic;
Wrl, done, countclear : out std_logic);
end Dispatcher;

architecture arc of Dispatcher is
type STATE_TYPE is (ZEN, COUNT_WRITE, VALIDATE);

signal CurrentState, NextState: STATE_TYPE;
signal equal : std_logic;

begin

CurrentState <= ZEN when Reset = '1' else NextState when rising_edge(CLK);
equal <= eq12;

GenerateNextState:
process(CurrentState, Dval, equal)
	begin
		case CurrentState is
			when ZEN => 
				if (Dval = '1') then NextState <= COUNT_WRITE;
				else NextState <= ZEN;
				end if;
			when COUNT_WRITE =>
				if (equal = '1') then NextState <= VALIDATE;
				else NextState <= COUNT_WRITE;
				end if;
			when VALIDATE =>
				if (Dval = '0' and equal = '1') then NextState <= ZEN;
				else NextState <= VALIDATE;
				end if;
		end case;
end process;

Wrl <= '1' when (CurrentState = COUNT_WRITE) else '0';
done <= '1' when (CurrentState = VALIDATE) else '0';
countclear <= '1' when (CurrentState = ZEN) else '0';
end arc;