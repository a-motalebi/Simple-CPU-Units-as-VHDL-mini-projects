library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity dec4to16 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           H : out  STD_LOGIC_VECTOR (15 downto 0);
           E : in  STD_LOGIC);
end dec4to16;

architecture Behavioral of dec4to16 is
	COMPONENT Dec2to4
	PORT(
		a : IN std_logic_vector(1 downto 0);
		en : IN std_logic;          
		f : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	signal E_internal : std_logic_vector(3 downto 0) := (others=>'0') ;
begin
	Dec2to4_0: Dec2to4 PORT MAP(
		a => A(3 DOWNTO 2),
		f => E_internal,
		en => E
	);
	Dec2to4_1: Dec2to4 PORT MAP(
		a => A(1 DOWNTO 0),
		f => H(3 DOWNTO 0),
		en => E_internal(0)
	);
	Dec2to4_2: Dec2to4 PORT MAP(
		a => A(1 DOWNTO 0),
		f => H(7 DOWNTO 4),
		en => E_internal(1)
	);
	Dec2to4_3: Dec2to4 PORT MAP(
		a => A(1 DOWNTO 0),
		f => H(11 DOWNTO 8),
		en => E_internal(2)
	);
	Dec2to4_4: Dec2to4 PORT MAP(
		a => A(1 DOWNTO 0),
		f => H(15 DOWNTO 12),
		en => E_internal(3)
	);


end Behavioral;