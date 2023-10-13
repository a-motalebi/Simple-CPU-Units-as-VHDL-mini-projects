library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX8to1 is
    Port ( a2 : in  STD_LOGIC_VECTOR (7 downto 0);
           s2 : in  STD_LOGIC_VECTOR (2 downto 0);
           f2 : out  STD_LOGIC);
end MUX8to1;

architecture Behavioral of MUX8to1 is
	COMPONENT MUX4to1
	PORT(
		a1 : IN std_logic_vector(3 downto 0);
		s1 : IN std_logic_vector(1 downto 0);          
		f1 : OUT std_logic
		);
	END COMPONENT;
	COMPONENT MUX2to1
	PORT(
		a : IN std_logic_vector(1 downto 0);
		s : IN std_logic;          
		f : OUT std_logic
		);
	END COMPONENT;
	signal ii: std_logic_vector(1 downto 0);
begin
	MUX4to1_0: MUX4to1 PORT MAP(
		a1 => a2(3 downto 0),
		s1 => s2(1 downto 0),
		f1 => ii(0)
	);

	MUX4to1_1: MUX4to1 PORT MAP(
		a1 => a2(7 downto 4),
		s1 => s2(1 downto 0),
		f1 => ii(1)
	);

	MUX2to1_0: MUX2to1 PORT MAP(
		a => ii,
		s => s2(2),
		f => f2
	);


end Behavioral;

