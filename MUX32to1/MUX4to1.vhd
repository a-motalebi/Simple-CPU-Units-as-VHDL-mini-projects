library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4to1 is
    Port ( a1 : in  STD_LOGIC_VECTOR (3 downto 0);
           s1 : in  STD_LOGIC_VECTOR (1 downto 0);
           f1 : out  STD_LOGIC);
end MUX4to1;

architecture Behavioral of MUX4to1 is
COMPONENT MUX2to1
	PORT(
		a : IN std_logic_vector(1 downto 0);
		s : IN std_logic;          
		f : OUT std_logic
		);
	END COMPONENT;
SIGNAL i :std_logic_vector (1 downto 0);	

begin

	MUX_0: MUX2to1 PORT MAP(
		a => a1(1 downto 0),
		s => s1(0),
		f => i(0)
	);
	MUX_1: MUX2to1 PORT MAP(
		a => a1(3 downto 2),
		s => s1(0),
		f => i(1)
	);
	MUX_2: MUX2to1 PORT MAP(
		a => i,
		s => s1(1),
		f => f1
	);


end Behavioral;

