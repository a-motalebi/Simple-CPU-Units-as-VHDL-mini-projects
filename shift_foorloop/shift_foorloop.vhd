library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity shift_foorloop is
	generic(reg_width: integer :=10);
    Port ( a_input : in  STD_LOGIC;
           clk     : in  STD_LOGIC;
           output  : out unsigned (reg_width-1 downto 0);
           control : in  STD_LOGIC;
           p       : in  unsigned (reg_width-1 downto 0));
end shift_foorloop;

architecture Behavioral of shift_foorloop is
signal a_input_int: std_logic:='0';
signal control_int: std_logic:='0';
signal output_int: unsigned(reg_width-1 downto 0):=(others=>'0');
signal p_int     : unsigned(reg_width-1 downto 0):=(others=>'0');
begin
		output<=output_int;
		p_int<=p;
		control_int<=control;
		a_input_int<=a_input;
	process(clk)
	begin
			if(rising_edge(clk)) then
				output_int(reg_width-1)<= a_input;
				for i in 0 to reg_width-2 loop
					output_int(i) <= output_int(i+1);
				end loop;
				if control_int='1' then
					output_int <= p_int;
				end if;
			end if;	
	end process;
end Behavioral;