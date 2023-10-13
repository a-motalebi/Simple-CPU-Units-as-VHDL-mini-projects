LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MUX32to1_tb IS
END MUX32to1_tb;
 
ARCHITECTURE behavior OF MUX32to1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX32to1
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         S : IN  std_logic_vector(4 downto 0);
         F : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal S : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal F : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX32to1 PORT MAP (
          A => A,
          S => S,
          F => F
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A<="01101000100111011100111000101000";
		S<="10110";
      wait for 100 ns;
		S<="10010";
      wait for 100 ns;
		S<="10111";
      wait for 100 ns;
		S<="00110";
      wait for 100 ns;
		S<="10110";
      wait for 100 ns;
		S<="00000";
      wait for 100 ns;
		S<="11110";
      wait for 100 ns;	
      wait;
   end process;

END;
