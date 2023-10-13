library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity counter is
	generic(width: integer:=5);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  mode: in STD_LOGIC :='0';
           output : out  unsigned (width-1 downto 0));
end counter;

architecture Behavioral of counter is
signal output_int : unsigned (width-1 downto 0):=(others=>'0');
signal mode_int: STD_LOGIC :='0';
begin
	output <= output_int;
	mode_int <= mode;
	process(clk,reset)
	begin
		if rising_edge(clk) then
			if mode_int='0' then
				output_int <= output_int + 1;
			elsif mode_int='1' then
				output_int <=  output_int - 1;
			end if;	
			if reset='1' then 
				output_int <= (others=>'0');
			end if;
		end if;
	end process;
end Behavioral;

