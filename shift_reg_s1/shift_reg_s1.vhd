library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity shift_reg_s1 is
    Port ( a_input : in  STD_LOGIC;
           clk     : in  STD_LOGIC;
           output  : out unsigned (5 downto 0);
           control : in  STD_LOGIC;
           p       : in  unsigned (5 downto 0);
           reset   : in  STD_LOGIC);
end shift_reg_s1;

architecture Behavioral of shift_reg_s1 is
signal output_int :unsigned (5 downto 0) :=(others =>'0');
signal p_int :unsigned (5 downto 0) :=(others =>'0');
signal control_int :std_logic :='0';
signal a_input_int :std_logic :='1';
begin
		process(clk)
		begin
				a_input_int <= a_input;
				output <= output_int;
				p_int <= p;
				control_int <= control;
				if(rising_edge(clk)) then
					output_int(5) <= a_input_int;
					output_int(4) <= output_int(5);
					output_int(3) <= output_int(4);
					output_int(2) <= output_int(3);
					output_int(1) <= output_int(2);
					output_int(0) <= output_int(1);
					if(control_int ='1') then
						output_int <= p_int ;
					end if;
					
					if(reset='1') then
						output_int <=(others=>'0');
					end if;
				end if;	
					
		
		
		
		
		
		
		
		end process;


end Behavioral;

