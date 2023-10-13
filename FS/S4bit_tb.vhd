LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY S4bit_tb IS
END S4bit_tb;
 
ARCHITECTURE behavior OF S4bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT S4bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(3 downto 0);
         Bo : OUT  std_logic;
         Ci : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Ci : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Bo : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: S4bit PORT MAP (
          A => A,
          B => B,
          S => S,
          Bo => Bo,
          Ci => Ci
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.	
		A<="0011";
		B<="0001";
      wait for 100 ns;	
		A<="1011";
		B<="0101";
      wait for 100 ns;	
		A<="0011";
		B<="0101";
      wait for 100 ns;	
		A<="0011";
		B<="1001";
      wait for 100 ns;	
		A<="1111";
		B<="0001";
      wait for 100 ns;	
		A<="0000";
		B<="1111";
      -- insert stimulus here 

      wait;
   end process;

END;
