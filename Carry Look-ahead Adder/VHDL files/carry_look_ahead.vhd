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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity carry_look_ahead is
    Port ( x_128 : in STD_LOGIC_VECTOR (127 downto 0);
           y_128 : in STD_LOGIC_VECTOR (127 downto 0);
           sum : out STD_LOGIC_VECTOR (127 downto 0);
           c_out_128 : out STD_LOGIC);
end carry_look_ahead;

architecture Behavioral of carry_look_ahead is
component first_level_4bit is
    Port ( x_128 : in STD_LOGIC_VECTOR (127 downto 0);
           y_128 : in STD_LOGIC_VECTOR (127 downto 0);
           gen_32 : out STD_LOGIC_VECTOR (31 downto 0);
           p_32 : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component second_level_4bit is
    Port ( p_32 : in STD_LOGIC_VECTOR (31 downto 0);
           g_32 : in STD_LOGIC_VECTOR (31 downto 0);
           p_8 : out STD_LOGIC_VECTOR (7 downto 0);
           g_8 : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component third_level_4bit is
    Port ( p_8 : in STD_LOGIC_VECTOR (7 downto 0);
           g_8 : in STD_LOGIC_VECTOR (7 downto 0);
           g_2 : out STD_LOGIC_VECTOR (1 downto 0);
           p_2 : out STD_LOGIC_VECTOR (1 downto 0));
end component;

component first_level_cout_4bit is
    Port ( g_32 : in STD_LOGIC_VECTOR (31 downto 0);
           p_32 : in STD_LOGIC_VECTOR (31 downto 0);
           g_8 : in STD_LOGIC_VECTOR (7 downto 0);
           p_8 : in STD_LOGIC_VECTOR (7 downto 0);
           g_2 : in STD_LOGIC_VECTOR (1 downto 0);
           p_2 : in STD_LOGIC_VECTOR (1 downto 0);
           c_in : in STD_LOGIC;
           c_out : out STD_LOGIC_VECTOR(31 downto 0));
end component;

component sum_calculation_4bit is
    Port ( x_128 : in STD_LOGIC_VECTOR (127 downto 0);
           y_128 : in STD_LOGIC_VECTOR (127 downto 0);
           c_in : in STD_LOGIC;
           c_out : in STD_LOGIC_VECTOR (31 downto 0);
           sum : out STD_LOGIC_VECTOR(127 downto 0));
end component;
signal g_32 : STD_LOGIC_VECTOR(31 downto 0);
signal p_32 : STD_LOGIC_VECTOR(31 downto 0);
signal c_out : STD_LOGIC_VECTOR(31 downto 0);

signal g_8 : STD_LOGIC_VECTOR(7 downto 0);
signal p_8 : STD_LOGIC_VECTOR(7 downto 0);
signal g_2 : STD_LOGIC_VECTOR(1 downto 0);
signal p_2 : STD_LOGIC_VECTOR(1 downto 0);
signal c_in : STD_LOGIC;

--    attribute KEEP_HIERARCHY : string;
--    attribute KEEP_HIERARCHY of fl4bit : label is "YES";
--    attribute KEEP_HIERARCHY of sl4bit : label is "YES";
--    attribute KEEP_HIERARCHY of tl4bit : label is "YES";
--   attribute KEEP_HIERARCHY of flco4bit : label is "YES";
--    attribute KEEP_HIERARCHY of sc4bit : label is "YES";
   
    attribute DONT_TOUCH : string;
    attribute DONT_TOUCH of fl4bit : label is "YES";
    attribute DONT_TOUCH of sl4bit : label is "YES";
    attribute DONT_TOUCH of tl4bit : label is "YES";
    attribute DONT_TOUCH of flco4bit : label is "YES";
    attribute DONT_TOUCH of sc4bit : label is "YES";
    
begin

fl4bit: first_level_4bit port map(
        x_128 => x_128, y_128 => y_128, gen_32 => g_32, p_32 => p_32);
sl4bit: second_level_4bit port map(
        p_32 => p_32, p_8 => p_8, g_32 => g_32, g_8 => g_8);
tl4bit: third_level_4bit port map(
        p_8 => p_8, g_8 => g_8, p_2 => p_2, g_2 => g_2);
flco4bit: first_level_cout_4bit port map(
       p_32 => p_32, p_8 => p_8, g_32 => g_32, g_8 => g_8,p_2 => p_2, g_2 => g_2,c_in => c_in, c_out => c_out);
sc4bit: sum_calculation_4bit port map(
        x_128 => x_128, y_128 => y_128, c_out => c_out, c_in => '0', sum => sum);
        c_out_128<= c_out(31);
end Behavioral;
