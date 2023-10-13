--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:03:02 07/17/2020
-- Design Name:   
-- Module Name:   D:/vhdl/dec/dec4to16tb.vhd
-- Project Name:  dec
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dec4to16
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY dec4to16tb IS
END dec4to16tb;
 
ARCHITECTURE behavior OF dec4to16tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dec4to16
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dec4to16 PORT MAP (
          input => input,
          output => output
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 100 ns;
		input <= "0001";
		wait for 100 ns;
		input <= "0010";
		wait for 100 ns;
		input <= "0011";
		wait for 100 ns;
		input <= "0100";
		wait for 100 ns;
		input <= "0101";
		wait for 100 ns;
		input <= "0110";
		wait for 100 ns;
		input <= "0111";
		wait for 100 ns;
		input <= "1000";
		wait for 100 ns;
		input <= "1001";
		wait for 100 ns;
		input <= "1010";
		wait for 100 ns;
		input <= "1011";
		wait for 100 ns;
		input <= "1100";
		wait for 100 ns;
		input <= "1101";
		wait for 100 ns;
		input <= "1110";
		wait for 100 ns;
		input <= "1111";
      -- insert stimulus here 

      wait;
   end process;

END;
