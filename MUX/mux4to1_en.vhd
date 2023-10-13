library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux4to1_en is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_vector (1 downto 0);
			  f : out std_logic;
           e : in  STD_LOGIC
			  );
end mux4to1_en;
architecture Behavioral of mux4to1_en is
begin
f<=e and((not b(0) and not b(1) and a(0)) or (not b(0) and b(1) and a(2)) or (b(0) and not b(1) and a(1)) or ( b(0) and  b(1) and a(3)));


end Behavioral;