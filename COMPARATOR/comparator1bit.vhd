library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity comparator1bit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           fgr : out  STD_LOGIC;
           feq : out  STD_LOGIC;
           fsm : out  STD_LOGIC);
end comparator1bit;

architecture Behavioral of comparator1bit is

begin
	feq <= a xnor b;
	fgr <= not b and a;
	fsm <= not a and b;	
end Behavioral;