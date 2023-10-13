library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity binary_divider is
 Port ( Ain   : in   unsigned (5 downto 0);
       Bin    : in   unsigned (5 downto 0);
       Q      : out  unsigned (5 downto 0);
       R      : out  unsigned (5 downto 0);
		 clk    : in   std_logic
		 );
end binary_divider;
architecture Behavioral of binary_divider is
signal Q_int   : unsigned(5 downto 0) := "000000" ;
signal R_int   : unsigned(5 downto 0);
signal t : std_logic:='1';
begin	
Q <= Q_int;
R <= R_int;
process (clk)
begin  
		if rising_edge(clk) then
			if t='1' then
				R_int <= Ain;
				t<='0';
			end if;
			if (R_int >= Bin) then
				R_int <= (R_int - Bin);
				Q_int   <= Q_int + 1;
			end if;
		end if;
end process;
end Behavioral;