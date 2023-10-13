LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY comparator5bit_tb IS
END comparator5bit_tb;
 
ARCHITECTURE behavior OF comparator5bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator5bit
    PORT(
         A : IN  std_logic_vector(4 downto 0);
         B : IN  std_logic_vector(4 downto 0);
         FEQ : OUT  std_logic;
         FGR : OUT  std_logic;
         FSM : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(4 downto 0) := (others => '0');
   signal B : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal FEQ : std_logic;
   signal FGR : std_logic;
   signal FSM : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator5bit PORT MAP (
          A => A,
          B => B,
          FEQ => FEQ,
          FGR => FGR,
          FSM => FSM
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A<="10010";
		B<="10010";
      wait for 100 ns;
		A<="10010";
		B<="10011";
      wait for 100 ns;
		A<="10011";
		B<="10010";
      wait for 100 ns;
		A<="10110";
		B<="10010";
      wait for 100 ns;
		A<="10010";
		B<="10110";
      wait for 100 ns;
		A<="00010";
		B<="10010";
      wait for 100 ns;
		A<="11010";
		B<="10010";
      wait for 100 ns;
		A<="10010";
		B<="11010";
      wait for 100 ns;
		A<="00000";
		B<="00000";

      -- insert stimulus here 

      wait;
   end process;

END;
