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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY second_level_4bit IS
    PORT (
        p_32 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
        g_32 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
        p_8 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        g_8 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END second_level_4bit;

ARCHITECTURE Behavioral OF second_level_4bit IS
    COMPONENT second_level_propagate_4bit IS
        PORT (
            p_32 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            p_8 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
    END COMPONENT;

    COMPONENT second_level_generate_4bit IS
        PORT (
            g_32 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            p_32 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            g_8 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
    END COMPONENT;

    --    attribute KEEP_HIERARCHY : string;
    --    attribute KEEP_HIERARCHY of second_level_gen : label is "YES";
    --    attribute KEEP_HIERARCHY of second_level_pro : label is "YES";
    ATTRIBUTE DONT_TOUCH : STRING;
    ATTRIBUTE DONT_TOUCH OF second_level_gen : LABEL IS "YES";
    ATTRIBUTE DONT_TOUCH OF second_level_pro : LABEL IS "YES";
BEGIN
    second_level_pro : second_level_propagate_4bit PORT MAP(
        p_32 => p_32, p_8 => p_8);

    second_level_gen : second_level_generate_4bit PORT MAP(
        g_32 => g_32, p_32 => p_32, g_8 => g_8);
END Behavioral;