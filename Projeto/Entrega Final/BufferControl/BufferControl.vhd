library ieee;
use ieee.std_logic_1164.all;

entity BufferControl is
port(
CLK, Reset, Load, ACK : in std_logic;
Wreg, OBfree, Dval : out std_logic);
end BufferControl;

architecture arc of BufferControl is

type STATE_TYPE is (CAN_RECEIVE, WRITE_DATA, SEND_DATA, WAIT_ACK);

signal CurrentState, NextState: STATE_TYPE;

begin

CurrentState <= CAN_RECEIVE when Reset = '1' else NextState when rising_edge(CLK);

GenerateNextState:
process(Load, ACK)
	begin
		case CurrentState is
			when CAN_RECEIVE =>
				if (Load = '1') then NextState <= WRITE_DATA;
				else NextState <= CAN_RECEIVE;
				end if;
			when WRITE_DATA =>
				if (Load = '0') then NextState <= SEND_DATA;
				else NextState <= WRITE_DATA;
				end if;
			when SEND_DATA =>
				if (ACK = '0') then NextState <= SEND_DATA;
				else NextState <= WAIT_ACK;
				end if;
			when WAIT_ACK =>
				if(ACK = '1') then NextState <= WAIT_ACK;
				else NextState <= CAN_RECEIVE;
				end if;
		end case;
end procesS;

OBfree <= '1' when (CurrentState = CAN_RECEIVE) else '0';
Dval <= '1' when (CurrentState = SEND_DATA) else '0';
Wreg <= '1' when (CurrentState = WRITE_DATA) else '0';
end arc;