----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2018 02:29:00 PM
-- Design Name: 
-- Module Name: second_level_propagate_4bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity second_level_propagate_4bit is
    Port ( p_32 : in STD_LOGIC_VECTOR (31 downto 0);
           p_8 : out STD_LOGIC_VECTOR (7 downto 0));
end second_level_propagate_4bit;

architecture Behavioral of second_level_propagate_4bit is

begin

p_8(0) <= p_32(3) AND p_32(2) AND p_32(1) AND p_32(0);
p_8(1) <= p_32(7) AND p_32(6) AND p_32(5) AND p_32(4);
p_8(2) <= p_32(11) AND p_32(10) AND p_32(9) AND p_32(8);
p_8(3) <= p_32(15) AND p_32(14) AND p_32(13) AND p_32(12);
p_8(4) <= p_32(19) AND p_32(18) AND p_32(17) AND p_32(16);
p_8(5) <= p_32(23) AND p_32(22) AND p_32(21) AND p_32(20);
p_8(6) <= p_32(27) AND p_32(26) AND p_32(25) AND p_32(24);
p_8(7) <= p_32(31) AND p_32(30) AND p_32(29) AND p_32(28);

end Behavioral;
