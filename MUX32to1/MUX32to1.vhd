library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX32to1 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC_VECTOR (4 downto 0);
           F : out  STD_LOGIC);
end MUX32to1;

architecture Behavioral of MUX32to1 is
	COMPONENT MUX8to1
	PORT(
		a2 : IN std_logic_vector(7 downto 0);
		s2 : IN std_logic_vector(2 downto 0);          
		f2 : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT MUX4to1
	PORT(
		a1 : IN std_logic_vector(3 downto 0);
		s1 : IN std_logic_vector(1 downto 0);          
		f1 : OUT std_logic
		);
	END COMPONENT;	
	signal I : std_logic_vector (3 downto 0);
begin

	MUX8to1_0: MUX8to1 PORT MAP(
		a2 =>A(7 downto 0) ,
		s2 =>S(2 downto 0),
		f2 =>I(0)
	);

	MUX8to1_1: MUX8to1 PORT MAP(
		a2 =>A(15 downto 8) ,
		s2 =>S(2 downto 0),
		f2 =>I(1)
	);

	MUX8to1_2: MUX8to1 PORT MAP(
		a2 =>A(23 downto 16) ,
		s2 =>S(2 downto 0),
		f2 =>I(2)
	);

	MUX8to1_3: MUX8to1 PORT MAP(
		a2 =>A(31 downto 24) ,
		s2 =>S(2 downto 0),
		f2 =>I(3)
	);
	MUX4to1_0: MUX4to1 PORT MAP(
		a1 =>I ,
		s1 =>S(4 downto 3),
		f1 => F
	);
end Behavioral;

