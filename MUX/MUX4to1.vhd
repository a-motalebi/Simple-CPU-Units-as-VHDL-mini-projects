library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity MUX4to1 is
    Port ( a : in   STD_LOGIC_VECTOR (3 downto 0);
           s : in   STD_LOGIC_VECTOR (1 downto 0);
           f : out  STD_LOGIC;
			  en: in std_logic
			);
end MUX4to1;

architecture Behavioral of MUX4to1 is

begin
	f<=(((not s(0) and (not s(1))) and a(0)) or((s(0) and (not s(1))) and a(1)) or ((not s(0) and s(1)) and a(2)) or ((s(0) and s(1)) and a(3))) and en;


end Behavioral;

