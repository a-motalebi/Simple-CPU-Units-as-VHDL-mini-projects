LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_foorloop
    PORT(
         a_input : IN  std_logic;
         clk : IN  std_logic;
         output : OUT  unsigned(9 downto 0);
         control : IN  std_logic;
         p : IN  unsigned(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a_input : std_logic := '0';
   signal clk : std_logic := '0';
   signal control : std_logic := '0';
   signal p : unsigned(9 downto 0) := (others => '0');

 	--Outputs
   signal output : unsigned(9 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_foorloop PORT MAP (
          a_input => a_input,
          clk => clk,
          output => output,
          control => control,
          p => p
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a_input<='1';
	
      wait for clk_period*3;
		p<= to_unsigned(45,10);
		control<='1';
      -- insert stimulus here 

      wait;
   end process;

END;
