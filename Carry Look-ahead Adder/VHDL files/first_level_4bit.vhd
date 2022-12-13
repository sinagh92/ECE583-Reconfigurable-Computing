----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2018 01:49:24 PM
-- Design Name: 
-- Module Name: first_level_4bit - Behavioral
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

ENTITY first_level_4bit IS
    PORT (
        x_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
        y_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
        gen_32 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
        p_32 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END first_level_4bit;

ARCHITECTURE Behavioral OF first_level_4bit IS
    COMPONENT first_level_propagate_4bit IS
        PORT (
            x_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
            y_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
            p_32 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
    END COMPONENT;
    COMPONENT first_level_generate_4bit IS
        PORT (
            x_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
            y_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
            gen_32 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
    END COMPONENT;

    --    attribute KEEP_HIERARCHY : string;
    --    attribute KEEP_HIERARCHY of first_level_gen : label is "YES";
    --    attribute KEEP_HIERARCHY of first_level_pro : label is "YES";
    ATTRIBUTE DONT_TOUCH : STRING;
    ATTRIBUTE DONT_TOUCH OF first_level_gen : LABEL IS "YES";
    ATTRIBUTE DONT_TOUCH OF first_level_pro : LABEL IS "YES";
BEGIN
    first_level_gen : first_level_generate_4bit
    PORT MAP(
        x_128 => x_128,
        y_128 => y_128,
        gen_32 => gen_32);

    first_level_pro : first_level_propagate_4bit
    PORT MAP(
        x_128 => x_128,
        y_128 => y_128,
        p_32 => p_32);
END Behavioral;