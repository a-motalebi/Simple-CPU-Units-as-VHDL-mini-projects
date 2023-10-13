library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity signed_division is
 Port ( Ain   : in   signed (5 downto 0);
       Bin    : in   signed (5 downto 0);
       Q      : out  signed (5 downto 0);
       R      : out  signed (5 downto 0);
		 clk    : in   std_logic
		 );
end signed_division;
architecture Behavioral of signed_division is
signal Q_int   : unsigned(5 downto 0) := "000000" ;
signal R_int   : unsigned(5 downto 0);
signal Ain_int   : unsigned(5 downto 0);
signal Bin_int   : unsigned(5 downto 0);
signal t : std_logic:='1';
begin	
Q <= Q_int;
R <= R_int;
process (clk)
begin  
Ain_int<=Ain;
Bin_int<=Bin;
		if rising_edge(clk) then
			if t='1' then
				R_int <= Ain_int;
				t<='0';
			end if;
			if (R_int >= Bin_int) then
				R_int <= (R_int - Bin_int);
				Q_int   <= Q_int + 1;
			end if;
		end if;
end process;
end Behavioral;