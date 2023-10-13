library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA4bit is
    Port ( A    : in   STD_LOGIC_VECTOR (3 downto 0);
           B    : in   STD_LOGIC_VECTOR (3 downto 0);
           Cin  : in   STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum  : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end FA4bit;

architecture Behavioral of FA4bit is
--declaration
	COMPONENT FA1bit
	PORT(
		a    : IN std_logic;
		b    : IN std_logic;
		cin  : IN std_logic;          
		sum  : OUT std_logic;
		cout : OUT std_logic
		);
	END COMPONENT;
signal C_internal: std_logic_vector	(2 downto 0):="000";
--(others=>'0');
begin
--concurrent -->> instant
		FA1bit_0: FA1bit PORT MAP(
		a =>A(0) ,
		b =>B(0) ,
		cin =>Cin ,
		sum =>Sum(0) ,
		cout => C_internal(0)
	);
		FA1bit_1: FA1bit PORT MAP(
		a =>A(1) ,
		b => B(1),
		cin =>C_internal(0),
		sum =>Sum(1) ,
		cout => C_internal(1)
	);
		FA1bit_2: FA1bit PORT MAP(
		a =>A(2) ,
		b => B(2),
		cin =>C_internal(1),
		sum =>Sum(2) ,
		cout => C_internal(2)
	);
		FA1bit_3: FA1bit PORT MAP(
		a =>A(3) ,
		b => B(3),
		cin =>C_internal(2),
		sum =>Sum(3) ,
		cout => Cout
	);
	


end Behavioral;

