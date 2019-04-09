----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2018 11:15:03 PM
-- Design Name: 
-- Module Name: second_level_4bit - Behavioral
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

entity second_level_4bit is
    Port ( p_32 : in STD_LOGIC_VECTOR (31 downto 0);
           g_32 : in STD_LOGIC_VECTOR (31 downto 0);
           p_8 : out STD_LOGIC_VECTOR (7 downto 0);
           g_8 : out STD_LOGIC_VECTOR (7 downto 0));
end second_level_4bit;

architecture Behavioral of second_level_4bit is
component second_level_propagate_4bit is
    Port ( p_32 : in STD_LOGIC_VECTOR (31 downto 0);
           p_8 : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component second_level_generate_4bit is
    Port ( g_32 : in STD_LOGIC_VECTOR (31 downto 0);
           p_32 : in STD_LOGIC_VECTOR (31 downto 0);
           g_8 : out STD_LOGIC_VECTOR (7 downto 0));
end component;

--    attribute KEEP_HIERARCHY : string;
--    attribute KEEP_HIERARCHY of second_level_gen : label is "YES";
--    attribute KEEP_HIERARCHY of second_level_pro : label is "YES";
    attribute DONT_TOUCH : string;
    attribute DONT_TOUCH of second_level_gen : label is "YES";
    attribute DONT_TOUCH of second_level_pro : label is "YES";
begin
second_level_pro: second_level_propagate_4bit port map(
                                p_32 => p_32,p_8 => p_8);

second_level_gen:second_level_generate_4bit port map(
                                g_32 => g_32, p_32 => p_32,g_8 => g_8);


end Behavioral;
