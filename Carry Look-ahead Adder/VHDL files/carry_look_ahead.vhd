----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/08/2018 03:11:10 PM
-- Design Name: 
-- Module Name: carry_look_ahead - Behavioral
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

ENTITY carry_look_ahead IS
    PORT (
        x_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
        y_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
        sum : OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
        c_out_128 : OUT STD_LOGIC);
END carry_look_ahead;

ARCHITECTURE Behavioral OF carry_look_ahead IS
    COMPONENT first_level_4bit IS
        PORT (
            x_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
            y_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
            gen_32 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
            p_32 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
    END COMPONENT;

    COMPONENT second_level_4bit IS
        PORT (
            p_32 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            g_32 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            p_8 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            g_8 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
    END COMPONENT;

    COMPONENT third_level_4bit IS
        PORT (
            p_8 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            g_8 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            g_2 : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
            p_2 : OUT STD_LOGIC_VECTOR (1 DOWNTO 0));
    END COMPONENT;

    COMPONENT first_level_cout_4bit IS
        PORT (
            g_32 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            p_32 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            g_8 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            p_8 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            g_2 : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
            p_2 : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
            c_in : IN STD_LOGIC;
            c_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
    END COMPONENT;

    COMPONENT sum_calculation_4bit IS
        PORT (
            x_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
            y_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
            c_in : IN STD_LOGIC;
            c_out : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            sum : OUT STD_LOGIC_VECTOR(127 DOWNTO 0));
    END COMPONENT;
    SIGNAL g_32 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL p_32 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL c_out : STD_LOGIC_VECTOR(31 DOWNTO 0);

    SIGNAL g_8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL p_8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL g_2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL p_2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL c_in : STD_LOGIC;

    --    attribute KEEP_HIERARCHY : string;
    --    attribute KEEP_HIERARCHY of fl4bit : label is "YES";
    --    attribute KEEP_HIERARCHY of sl4bit : label is "YES";
    --    attribute KEEP_HIERARCHY of tl4bit : label is "YES";
    --   attribute KEEP_HIERARCHY of flco4bit : label is "YES";
    --    attribute KEEP_HIERARCHY of sc4bit : label is "YES";

    ATTRIBUTE DONT_TOUCH : STRING;
    ATTRIBUTE DONT_TOUCH OF fl4bit : LABEL IS "YES";
    ATTRIBUTE DONT_TOUCH OF sl4bit : LABEL IS "YES";
    ATTRIBUTE DONT_TOUCH OF tl4bit : LABEL IS "YES";
    ATTRIBUTE DONT_TOUCH OF flco4bit : LABEL IS "YES";
    ATTRIBUTE DONT_TOUCH OF sc4bit : LABEL IS "YES";

BEGIN

    fl4bit : first_level_4bit PORT MAP(
        x_128 => x_128, y_128 => y_128, gen_32 => g_32, p_32 => p_32);
    sl4bit : second_level_4bit PORT MAP(
        p_32 => p_32, p_8 => p_8, g_32 => g_32, g_8 => g_8);
    tl4bit : third_level_4bit PORT MAP(
        p_8 => p_8, g_8 => g_8, p_2 => p_2, g_2 => g_2);
    flco4bit : first_level_cout_4bit PORT MAP(
        p_32 => p_32, p_8 => p_8, g_32 => g_32, g_8 => g_8, p_2 => p_2, g_2 => g_2, c_in => c_in, c_out => c_out);
    sc4bit : sum_calculation_4bit PORT MAP(
        x_128 => x_128, y_128 => y_128, c_out => c_out, c_in => '0', sum => sum);
    c_out_128 <= c_out(31);
END Behavioral;