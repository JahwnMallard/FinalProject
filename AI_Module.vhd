----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:04:05 04/28/2014 
-- Design Name: 
-- Module Name:    AI_Module - Behavioral 
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

entity AI_Module is
    Port ( r : in  STD_LOGIC_VECTOR (5 downto 0);
           g : in  STD_LOGIC_VECTOR (6 downto 0);
           b : in  STD_LOGIC_VECTOR (5 downto 0);
           x : in  STD_LOGIC_VECTOR (10 downto 0);
           y : in  STD_LOGIC_VECTOR (10 downto 0);
           out : out  STD_LOGIC);
end AI_Module;

architecture Behavioral of AI_Module is

begin


end Behavioral;

