----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:31 05/04/2014 
-- Design Name: 
-- Module Name:    memory_array - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memory_array is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           voltage : in  STD_LOGIC_VECTOR (7 downto 0);
           average : out  STD_LOGIC_VECTOR (7 downto 0));
end memory_array;

architecture Behavioral of memory_array is


signal address : integer range 0 to  10;
signal count : integer range 0 to 10000;
signal clk1, clk2, clk3, clk4, clk5, clk6, clk7, clk8, clk9, clk10 : std_logic;
signal q1, q2, q3, q4, q5, q6, q7, q8, q9, q10 : std_logic_vector(7 downto 0);
	COMPONENT voltage_memory
	PORT(
		reset : IN std_logic;
		clk : IN std_logic;
		d : IN std_logic_vector(7 downto 0);          
		q : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

begin

	voltage_memory_1: voltage_memory PORT MAP(
		reset => reset,
		clk => clk1,
		d => voltage,
		q => q1
	);
		
	voltage_memory_2: voltage_memory PORT MAP(
		reset => reset,
		clk => clk2,
		d => voltage,
		q => q2
	);	
	
	voltage_memory_3: voltage_memory PORT MAP(
		reset => reset,
		clk => clk3,
		d => voltage,
		q => q3
	);
	
	voltage_memory_4: voltage_memory PORT MAP(
		reset => reset,
		clk => clk4,
		d => voltage,
		q => q4
	);	
	
	voltage_memory_5: voltage_memory PORT MAP(
		reset => reset,
		clk => clk5,
		d => voltage,
		q => q5
	);
	
	voltage_memory_6: voltage_memory PORT MAP(
		reset => reset,
		clk => clk6,
		d => voltage,
		q => q6
	);
	
	voltage_memory_7: voltage_memory PORT MAP(
		reset => reset,
		clk => clk7,
		d => voltage,
		q => q7	
	);
	
	voltage_memory_8: voltage_memory PORT MAP(
		reset => reset,
		clk => clk8,
		d => voltage,
		q => q8
		);
		
	voltage_memory_9: voltage_memory PORT MAP(
		reset => reset,
		clk => clk9,
		d => voltage,
		q => q9
		);

	 voltage_memory_10: voltage_memory PORT MAP(
		reset => reset,
		clk => clk10,
		d => voltage,
		q => 	q10	
		);

process(clk)
begin
	if(address = 1) then
		clk1 <= '1';
		clk2 <= '0';
		clk3 <= '0';
		clk4 <= '0';
		clk5 <= '0';
		clk6 <= '0';
		clk7 <= '0';
		clk8 <= '0';
		clk9 <= '0';
		clk10 <= '0';
	elsif(address = 2) then
		clk1 <= '0';
		clk2 <= '1';
		clk3 <= '0';
		clk4 <= '0';
		clk5 <= '0';
		clk6 <= '0';
		clk7 <= '0';
		clk8 <= '0';
		clk9 <= '0';
		clk10 <= '0';
	elsif(address = 3) then
		clk1 <= '0';
		clk2 <= '0';
		clk3 <= '1';
		clk4 <= '0';
		clk5 <= '0';
		clk6 <= '0';
		clk7 <= '0';
		clk8 <= '0';
		clk9 <= '0';
		clk10 <= '0';
	elsif(address = 4) then
		clk1 <= '0';
		clk2 <= '0';
		clk3 <= '0';
		clk4 <= '1';
		clk5 <= '0';
		clk6 <= '0';
		clk7 <= '0';
		clk8 <= '0';
		clk9 <= '0';
		clk10 <= '0';
	elsif(address = 5) then
		clk1 <= '0';
		clk2 <= '0';
		clk3 <= '0';
		clk4 <= '0';
		clk5 <= '1';
		clk6 <= '0';
		clk7 <= '0';
		clk8 <= '0';
		clk9 <= '0';
		clk10 <= '0';
	elsif(address = 6) then
		clk1 <= '0';
		clk2 <= '0';
		clk3 <= '0';
		clk4 <= '0';
		clk5 <= '0';
		clk6 <= '1';
		clk7 <= '0';
		clk8 <= '0';
		clk9 <= '0';
		clk10 <= '0';
	elsif(address = 7) then
		clk1 <= '0';
		clk2 <= '0';
		clk3 <= '0';
		clk4 <= '0';
		clk5 <= '0';
		clk6 <= '0';
		clk7 <= '1';
		clk8 <= '0';
		clk9 <= '0';
		clk10 <= '0';
	elsif(address = 8) then
		clk1 <= '0';
		clk2 <= '0';
		clk3 <= '0';
		clk4 <= '0';
		clk5 <= '0';
		clk6 <= '0';
		clk7 <= '0';
		clk8 <= '1';
		clk9 <= '0';
		clk10 <= '0';
	elsif(address = 9) then
		clk1 <= '0';
		clk2 <= '0';
		clk3 <= '0';
		clk4 <= '0';
		clk5 <= '0';
		clk6 <= '0';
		clk7 <= '0';
		clk8 <= '0';
		clk9 <= '1';
		clk10 <= '0';
	elsif(address = 10) then
		clk1 <= '0';
		clk2 <= '0';
		clk3 <= '0';
		clk4 <= '0';
		clk5 <= '0';
		clk6 <= '0';
		clk7 <= '0';
		clk8 <= '0';
		clk9 <= '0';
		clk10 <= '1';
	end if;
end process;	


	address: process(clk, reset)
		begin
			if(reset = '1') then
					count <=0;
					address <= 0;
			elsif rising_edge(clk) then
				if count > 10000 then
					count <= count + 1;
					if count = 10000 then
						count <= 0;
						if address > 11 then
						address <= address + 1;
						else 
						address <= 0;
					end if;
				end if;
			end if;
	end process address;

		
	average <= std_logic_vector( to_unsigned(( to_integer(unsigned(q1)) + to_integer(unsigned(q2)) + to_integer(unsigned(q3)) + to_integer(unsigned(q4)) + to_integer(unsigned(q5)) + to_integer(unsigned(q6)) + to_integer(unsigned(q7)) + to_integer(unsigned(q8)) + to_integer(unsigned(q9)) + to_integer(unsigned(q10)) )/10, 8) );	
		
		
end Behavioral;

