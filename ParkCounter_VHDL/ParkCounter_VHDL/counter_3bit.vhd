library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Counter_3bit is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ndecInc : in  STD_LOGIC;
           en : in  STD_LOGIC;
           Count : out  STD_LOGIC_VECTOR (2 downto 0));
end Counter_3bit;

architecture Behavioral of Counter_3bit is

	COMPONENT CounterLogic_3bit
	PORT(
		en : IN std_logic;
		ndecInc : IN std_logic;
		operandA : IN std_logic_vector(2 downto 0);          
		R : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;
	
	COMPONENT register_D_R
   GENERIC (
      WIDTH : POSITIVE := 1
   );
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;
		D : IN std_logic_vector(WIDTH-1 downto 0);          
		Q : OUT std_logic_vector(WIDTH-1 downto 0)
		);
	END COMPONENT;

	signal operandA, result : std_logic_vector(2 downto 0);
	
begin

	Inst_CounterLogic_3bit: CounterLogic_3bit PORT MAP(
		en => en,
		ndecInc => ndecInc,
		operandA => operandA,
		R => result
	);

	Inst_register_D_R: register_D_R GENERIC MAP(
		WIDTH => 3
	)
	PORT MAP(
		CLK => CLK,
		RST => RST,
		D => result,
		Q => operandA
	);

	Count <= operandA;
	
end Behavioral;

