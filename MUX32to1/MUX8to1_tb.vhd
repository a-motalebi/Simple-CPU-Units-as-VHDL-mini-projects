LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MUX8to1_tb IS
END MUX8to1_tb;
 
ARCHITECTURE behavior OF MUX8to1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX8to1
    PORT(
         a2 : IN  std_logic_vector(7 downto 0);
         s2 : IN  std_logic_vector(2 downto 0);
         f2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a2 : std_logic_vector(7 downto 0) := (others => '0');
   signal s2 : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal f2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX8to1 PORT MAP (
          a2 => a2,
          s2 => s2,
          f2 => f2
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		a2<="11011010";
		s2<="000";
      wait for 100 ns;
		a2<="11011010";
		s2<="001";
      wait for 100 ns;
		a2<="11011010";
		s2<="010";
      wait for 100 ns;
		a2<="11011010";
		s2<="011";
      wait for 100 ns;
		a2<="11011010";
		s2<="100";
      wait for 100 ns;
		a2<="11011010";
		s2<="101";
      wait for 100 ns;
		a2<="11011010";
		s2<="110";
      wait for 100 ns;
		a2<="11011010";
		s2<="111";
      wait for 100 ns;	
		

      -- insert stimulus here 

      wait;
   end process;

END;
