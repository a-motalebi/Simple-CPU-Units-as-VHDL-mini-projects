library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity MUX2to1 is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           s : in  STD_LOGIC;
           f : out  STD_LOGIC);
end MUX2to1;

architecture Behavioral of MUX2to1 is

begin
	  f <= (a(0) and not s) or (a(1) and s);
end Behavioral;