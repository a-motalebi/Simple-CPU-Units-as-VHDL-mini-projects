library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity comparator5bit is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           FEQ : out  STD_LOGIC;
           FGR : out  STD_LOGIC;
           FSM : out  STD_LOGIC);
end comparator5bit;

architecture Behavioral of comparator5bit is
		COMPONENT comparator1bit
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		fgr : OUT std_logic;
		feq : OUT std_logic;
		fsm : OUT std_logic
		);
	END COMPONENT;
	signal feqs :std_logic_vector (4 downto 0);
	signal fsms :std_logic_vector (4 downto 0);
	signal fgrs :std_logic_vector (4 downto 0);
begin	
	com_0: comparator1bit PORT MAP(
		a => A(0),
		b => B(0),
		fgr =>fgrs(0) ,
		feq =>feqs(0),
		fsm =>fsms(0) 
	);	
	com_1: comparator1bit PORT MAP(
		a => A(1),
		b => B(1),
		fgr =>fgrs(1) ,
		feq =>feqs(1),
		fsm =>fsms(1)
	);	
	com_2: comparator1bit PORT MAP(
		a => A(2),
		b => B(2),
		fgr =>fgrs(2) ,
		feq =>feqs(2),
		fsm =>fsms(2)
	);	
	com_3: comparator1bit PORT MAP(
		a => A(3),
		b => B(3),
		fgr =>fgrs(3) ,
		feq =>feqs(3),
		fsm =>fsms(3)
	);	
	com_4: comparator1bit PORT MAP(
		a => A(4),
		b => B(4),
		fgr =>fgrs(4),
		feq =>feqs(4),
		fsm =>fsms(4)
	);
	FEQ <= feqs(0) and feqs(1) and feqs(2) and feqs(3) and feqs(4);
	FGR <= fgrs(4) or (feqs(4) and fgrs(3)) or (feqs(4) and feqs(3) and fgrs(2)) or (feqs(4) and feqs(3) and feqs(2) and fgrs(1)) or (feqs(4) and feqs(3) and feqs(2) and feqs(1) and fgrs(0));
	FSM <= fsms(4) or (feqs(4) and fsms(3)) or (feqs(4) and feqs(3) and fsms(2)) or (feqs(4) and feqs(3) and feqs(2) and fsms(1)) or (feqs(4) and feqs(3) and feqs(2) and feqs(1) and fsms(0));
end Behavioral;

