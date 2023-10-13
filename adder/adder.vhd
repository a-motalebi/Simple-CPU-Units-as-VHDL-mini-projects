library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity adder is
	 generic(N :	integer := 8);
    Port ( A :   in   signed (N-1 downto 0);
           B :   in   signed (N-1 downto 0);
           Sum : out  signed (N downto 0)
			 );
end adder;

architecture Behavioral of adder is

begin
	Sum <= resize(A,9) + B;

end Behavioral;

