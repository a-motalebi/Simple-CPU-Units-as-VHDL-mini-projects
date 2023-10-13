library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Dec2to4 is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           f : out  STD_LOGIC_VECTOR (3 downto 0);
			  en: in std_logic 
			  );
			  
end Dec2to4;

architecture Behavioral of Dec2to4 is

begin
f(3)<= a(1) and a(0) and en;
f(2)<= a(1) and (not a(0)) and en;
f(1)<= not a(1) and a(0) and en;
f(0)<= not a(1) and (not a(0)) and en;


end Behavioral;

