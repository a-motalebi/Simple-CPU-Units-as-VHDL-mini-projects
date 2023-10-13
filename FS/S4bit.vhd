library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity S4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Bo : out  STD_LOGIC;
           Ci : in  STD_LOGIC);
end S4bit;

architecture Behavioral of S4bit is
	COMPONENT FA1bit
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		cin : IN std_logic;          
		sum : OUT std_logic;
		cout : OUT std_logic
		);
	END COMPONENT;
	signal c_internal : std_logic_vector (2 downto 0);
begin
	FA0: FA1bit PORT MAP(
		a =>A(0),
		b =>NOT B(0) ,
		cin => '1',
		sum => S(0),
		cout => c_internal(0)
	);
	FA1: FA1bit PORT MAP(
		a =>A(1),
		b =>NOT B(1) ,
		cin => c_internal(0),
		sum => S(1),
		cout => c_internal(1)
	);
	FA2: FA1bit PORT MAP(
		a =>A(2),
		b =>NOT B(2) ,
		cin => c_internal(1),
		sum => S(2),
		cout => c_internal(2)
	);
	FA3: FA1bit PORT MAP(
		a =>A(3),
		b =>NOT B(3) ,
		cin => c_internal(2),
		sum => S(3),
		cout => Bo 
	);
end Behavioral;

