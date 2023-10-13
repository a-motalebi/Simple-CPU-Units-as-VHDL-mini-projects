
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN   signed (3 downto 0);
         B : IN   signed (3 downto 0);
         S : IN   signed (2 downto 0);
         C : OUT  signed (3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : signed(3 downto 0) := (others => '0');
   signal B : signed(3 downto 0) := (others => '0');
   signal S : signed(2 downto 0) := (others => '0');

 	--Outputs
   signal C : signed(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          S => S,
          C => C
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.	
		A <= "1110";
		B <= "0101";
		wait for 100 ns;
		S <= "000";
		wait for 100 ns;
		S <= "100";
		wait for 100 ns;
		S <= "010";
		wait for 100 ns;
		S <= "110";
		wait for 100 ns;
		S <= "001";
		wait for 100 ns;
		S <= "101";
		wait for 100 ns;
		S <= "011";
		wait for 100 ns;
		S <= "111";
      -- insert stimulus here 

      wait;
   end process;

END;
