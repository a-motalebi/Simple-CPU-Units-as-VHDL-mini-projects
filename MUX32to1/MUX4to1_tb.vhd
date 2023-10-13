LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MUX4to1_tb IS
END MUX4to1_tb;
 
ARCHITECTURE behavior OF MUX4to1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX4to1
    PORT(
         a1 : IN  std_logic_vector(3 downto 0);
         s1 : IN  std_logic_vector(1 downto 0);
         f1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a1 : std_logic_vector(3 downto 0) := (others => '0');
   signal s1 : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal f1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX4to1 PORT MAP (
          a1 => a1,
          s1 => s1,
          f1 => f1
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		a1<="1010";
		s1<="11";
      wait for 100 ns;
		a1<="1010";
		s1<="10";
      wait for 100 ns;
		a1<="1010";
		s1<="01";
      wait for 100 ns;
		a1<="1010";
		s1<="00";
      wait for 100 ns;
		a1<="1100";
		s1<="11";
      wait for 100 ns;
		a1<="1100";
		s1<="01";
      wait for 100 ns;
		

      -- insert stimulus here 

      wait;
   end process;

END;
