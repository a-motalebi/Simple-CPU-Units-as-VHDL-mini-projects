LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use std.textio.all;
--use ieee.std_logic_textio.all;
 
ENTITY tb_example_ram IS
END tb_example_ram;
 
ARCHITECTURE behavior OF tb_example_ram IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT example_ram
    PORT(
         clock : IN  std_logic;
         outcome : OUT  unsigned(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';

 	--Outputs
   signal outcome : unsigned(9 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: example_ram PORT MAP (
          clock => clock,
          outcome => outcome
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
	write1: process(clock)
					file outfile1:text open write_mode is "RAM.txt";
					variable li2:line;
			  begin 
					if rising_edge(clock) then 
						write(li2,to_integer(outcome));
						writeline(outfile1,li2);
					end if;	
			  end process;	

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
