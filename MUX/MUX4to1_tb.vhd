LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY MUX4to1_tb IS
END MUX4to1_tb;
 
ARCHITECTURE behavior OF MUX4to1_tb IS 
    COMPONENT MUX4to1
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         s : IN  std_logic_vector(1 downto 0);
         f : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal f : std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX4to1 PORT MAP (
          a => a,
          s => s,
          f => f
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a<="1010";
		s<="11";
		wait for 100 ns;	
		a<="1010";
		s<="10";
		wait for 100 ns;	
		a<="1010";
		s<="01";
		wait for 100 ns;	
		a<="1010";
		s<="00";

      -- insert stimulus here 

      wait;
   end process;

END;
