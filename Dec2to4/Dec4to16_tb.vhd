LIBRARY ieee;
USE ieee.std_logic_1164.ALL; 
ENTITY Dec4to16_tb IS
END Dec4to16_tb;
 
ARCHITECTURE behavior OF Dec4to16_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dec4to16
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         H : OUT  std_logic_vector(15 downto 0);
         E : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal E : std_logic := '0';

 	--Outputs
   signal H : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dec4to16 PORT MAP (
          A => A,
          H => H,
          E => E
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a<="1100";
		E<='1';


      -- insert stimulus here 

      wait;
   end process;

END;
