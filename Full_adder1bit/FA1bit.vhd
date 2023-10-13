library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity FA1bit is
    Port ( 
			  a    : in   STD_LOGIC;
           b    : in   STD_LOGIC;
           cin  : in   STD_LOGIC;
           sum  : out  STD_LOGIC;
           cout : out  STD_LOGIC
		   );
end FA1bit;

architecture Behavioral of FA1bit is
begin
		sum <= a xor b xor cin;
		cout <=(a and b) or ( a and cin) or ( b and cin);

end Behavioral;

