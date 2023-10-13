library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity conditional_mux4to1 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  unsigned (1 downto 0);
			  En : in std_logic;
           F : out  STD_LOGIC);
end conditional_mux4to1;

architecture Behavioral of conditional_mux4to1 is

begin
		F <= A(0) when S="00" and En ='1' else
			  A(1) when S="01" and En ='1' else
			  A(2) when S="10" and En ='1' else
			  A(3) when S="11" and En ='1' else
			  '0';
		

end Behavioral;