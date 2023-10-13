library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BRAM is
generic(
			RAM_width      :integer :=16;
			RAM_addr_width :integer :=6
			);
			
    Port ( clk 		 : in   STD_LOGIC;
           WE 			 : in   STD_LOGIC;
           write_addr : in   unsigned (RAM_addr_width-1 downto 0);
           read_addr  : in   unsigned (RAM_addr_width-1 downto 0);
           data_in 	 : in   unsigned (RAM_width-1 downto 0);
           data_out 	 : out  unsigned (RAM_width-1 downto 0)
			  );
end BRAM;

architecture Behavioral of BRAM is

type my_memory is array (0 to 2**RAM_addr_width-1) of unsigned(RAM_width-1 downto 0);
signal memory_signal: my_memory :=(others=>(others=>'0'));
--attribute ram_style : string;
--attribute ram_style of memory_signal:signal is "Block";
--Distributed,Auto
begin
		process(clk)
		begin
				if rising_edge(clk) then
					if WE='1' then
						memory_signal(to_integer(write_addr))<=data_in;
					end if;
					data_out<=	memory_signal(to_integer(write_addr));
				end if;
				
		end process;
		
end Behavioral;