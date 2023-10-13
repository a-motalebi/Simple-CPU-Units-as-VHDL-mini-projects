library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port ( A : in  signed (3 downto 0);
           B : in  signed (3 downto 0);
           S : in  signed (2 downto 0);
           C : out  signed (3 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
C 			<=  "0000"  when S="000" else
				 B-A     when S="100" else
				 A-B     when S="010" else
				 A+B     when S="110" else
				 A xor B when S="001" else
				 A or  B when S="101" else
				 A and B when S="011" else
				"1111";

end Behavioral;

