library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fsm_alarm is
    Port ( 
			  input_data : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           alarm : out  STD_LOGIC
			  );
end fsm_alarm;

architecture Behavioral of fsm_alarm is

signal counter: integer range 0 to 3000000 :=0;
type my_state is (zero,first,second,third,fourth);
signal state : my_state :=zero;
signal alarm_int :std_logic :='0';
signal input_data_int :std_logic :='1' ;

begin
		input_data_int <= input_data;
		alarm<=alarm_int;
		process(clk)
		begin
				if rising_edge (clk) then
					counter<=counter+1;
					case state is 
							when zero =>
								if input_data_int='1' then
									counter<= 0;
								else
									state<= first;
								end if;
							when first =>
								if( counter < 2000000-1 and input_data_int='1') then
									state<=zero;
									counter<=0;
								elsif counter = 2000000 then
									counter<=0;
									if input_data_int='1' then 
										state<=second;
									else
										state<=zero;
									end if;
								end if;		
							when second =>
								if(counter < 3000000-1 and input_data_int='0') then
									state<=zero;
									counter<=0;
								elsif counter = 3000000-1 then
									counter<=0;
									if input_data_int='0' then 
										state<=third;
									else
										state<=zero;
									end if;
								end if;		
							when third =>
								if( counter < 1000000-1 and input_data_int='1') then
									state<=zero;
									counter<=0;
								elsif counter = 1000000-1 then
									counter<=0;
									if input_data_int='1' then 
										state <= fourth;
									else
										state <= zero;
									end if;
								end if;	
							when fourth =>
								alarm_int<='1';
								if counter<=1000000 then
									state<= zero;
									alarm_int<='0';
								end if;
					end case;
				end if;
			end process;			
end Behavioral;

