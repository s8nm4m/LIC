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

type STATE_TYPE is (ZEN, OPEN_DOOR, CLOSE_DOOR, FINISHED);

signal CurrentState, NextState: STATE_TYPE;

begin

CurrentState <= ZEN when Reset = '1' else NextState when rising_edge(CLK);

GenerateNextState:
process(CurrentState, Din(0), Dval, Sopen, Sclose, Psensor)
	begin
		case CurrentState is
			when ZEN =>
				if (Dval = '1' and Din(0) = '1') then NextState <= OPEN_DOOR;
				elsif (Dval = '1' and Din(0) = '0') then NextState <= CLOSE_DOOR;
				else NextState <= ZEN;
				end if;
			when OPEN_DOOR =>
				if (Sopen = '1' and Din(0) = '0') then NextState <= CLOSE_DOOR;
				elsif (Sopen = '1' and Din(0) = '1') then NextState <= FINISHED;
				else NextState <= OPEN_DOOR;
				end if;
			when CLOSE_DOOR =>
				if (Psensor = '0' and Sclose = '1') then NextState <= FINISHED;
				elsif (Psensor = '1') then NextState <= OPEN_DOOR;
				else NextState <= CLOSE_DOOR;
				end if;
			when FINISHED =>
				if (Dval = '0') then NextState <= ZEN;
				else NextState <= FINISHED;
				end if;
		end case;
end process;

OnOff <= '1' when ((CurrentState = OPEN_DOOR and Sopen = '0') 
			or (CurrentState = CLOSE_DOOR and Psensor = '0' and Sclose = '0')) 
			else '0';
OpenClose <= '1'when (CurrentState = OPEN_DOOR) else '0';
done <= '1' when (CurrentState = FINISHED) else '0';
Dout(4 downto 1) <= Din(4 downto 1);
Dout(0) <= '1' when (CurrentState = OPEN_DOOR) else '0';
end arc;