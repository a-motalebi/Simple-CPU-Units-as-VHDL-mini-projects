library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
entity selsected_mux4to1 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  unsigned (1 downto 0);
			  En :in std_logic := '1' ;
           F : out  STD_LOGIC);
end selsected_mux4to1;
architecture Behavioral of selsected_mux4to1 is
signal SEn : unsigned (2 downto 0):=(others => '0');
begin
		SEn <= S & En ;
		with SEn select
			F <= A(0) when "001",
			     A(1) when "011",
				  A(2) when "101",
				  A(3) when "111",
				  '0'  when others;
end Behavioral;

