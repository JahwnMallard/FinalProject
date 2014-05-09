----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:35:22 04/30/2014 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
    Port ( clk : in  STD_LOGIC;
			  reset : in STD_LOGIC;
           jump : out  STD_LOGIC);
end top;

architecture Behavioral of top is

	COMPONENT AI_Module_Scripted
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;          
		jump : OUT std_logic
		);
	END COMPONENT;


begin
	Inst_AI_Module_Scripted: AI_Module_Scripted PORT MAP(
		clk => clk,
		reset => reset,
		jump => jump
	);

end Behavioral;

