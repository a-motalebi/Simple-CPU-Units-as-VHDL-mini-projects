LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux4to1_en_tb IS
END mux4to1_en_tb;
 
ARCHITECTURE behavior OF mux4to1_en_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4to1_en
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(1 downto 0);
         f : OUT  std_logic;
         e : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(1 downto 0) := (others => '0');
   signal e : std_logic := '0';

 	--Outputs
   signal f : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4to1_en PORT MAP (
          a => a,
          b => b,
          f => f,
          e => e
        );
   -- Stimulus process
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		a<="0011";
		e<='1';
      wait for 100 ns;
		b <= "00";
		wait for 100 ns;
		b <= "10";
		wait for 100 ns;
		b <= "01";
		wait for 100 ns;
		b <= "11";


      -- insert stimulus here 

      wait;
   end process;

END;
