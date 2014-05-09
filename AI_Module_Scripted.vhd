----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:34:39 04/30/2014 
-- Design Name: 
-- Module Name:    AI_Module_Scripted - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AI_Module_Scripted is
    Port ( clk : in  STD_LOGIC;
			  reset : in STD_LOGIC;
           jump : out  STD_LOGIC);
end AI_Module_Scripted;

architecture Behavioral of AI_Module_Scripted is

signal count : integer range 0 to 1000000000;
signal jump_en : STD_LOGIC;


begin

	jump_check: process(clk, reset)
		begin
			if(reset = '1') then
					count<=0;
			elsif rising_edge(clk) then
				if count > 10000000 then
					jump_en <= '1';
					count <= count + 1;
					if count = 400000000 then
						count <= 0;
					end if;
					
				else
					count <= count + 1;
					jump_en <= '0';
				end if;
			end if;
	end process jump_check;
	
	jump<= jump_en;
end Behavioral;

