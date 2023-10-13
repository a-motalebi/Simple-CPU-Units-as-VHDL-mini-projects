library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity S1bit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           D : out  STD_LOGIC;
           Bi : in  STD_LOGIC;
           Bo : out  STD_LOGIC);
end S1bit;

architecture Behavioral of S1bit is

begin
D  <= (Bi xor (a xor b));
Bo <= ((((not a) and b)or(Bi and(not(a xor b)))));
end Behavioral;