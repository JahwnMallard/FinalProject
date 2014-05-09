----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:32:46 05/04/2014 
-- Design Name: 
-- Module Name:    voltage_memory - Behavioral 
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

entity voltage_memory is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (7 downto 0);
           q : out  STD_LOGIC_VECTOR (7 downto 0));
end voltage_memory;

architecture Behavioral of voltage_memory is

signal internal_memory : std_logic_Vector(7 downto 0);

begin

process(clk, reset)
begin
	if(reset = '1') then
		internal_memory <= "00000000";
	elsif (rising_edge(clk)) then
		internal_memory <= d;
	else
		internal_memory <= internal_memory;
	end if;
end process;

q <= internal_memory;	


end Behavioral;

