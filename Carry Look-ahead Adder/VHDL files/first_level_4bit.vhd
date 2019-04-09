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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity first_level_4bit is
    Port ( x_128 : in STD_LOGIC_VECTOR (127 downto 0);
           y_128 : in STD_LOGIC_VECTOR (127 downto 0);
           gen_32 : out STD_LOGIC_VECTOR (31 downto 0);
           p_32 : out STD_LOGIC_VECTOR (31 downto 0));
end first_level_4bit;

architecture Behavioral of first_level_4bit is
component first_level_propagate_4bit is
    Port ( x_128 : in STD_LOGIC_VECTOR (127 downto 0);
           y_128 : in STD_LOGIC_VECTOR (127 downto 0);
           p_32 : out STD_LOGIC_VECTOR (31 downto 0));
end component;
component first_level_generate_4bit is
    Port ( x_128 : in STD_LOGIC_VECTOR (127 downto 0);
           y_128 : in STD_LOGIC_VECTOR (127 downto 0);
           gen_32 : out STD_LOGIC_VECTOR (31 downto 0));
end component;

--    attribute KEEP_HIERARCHY : string;
--    attribute KEEP_HIERARCHY of first_level_gen : label is "YES";
--    attribute KEEP_HIERARCHY of first_level_pro : label is "YES";
    attribute DONT_TOUCH : string;
    attribute DONT_TOUCH of first_level_gen : label is "YES";
    attribute DONT_TOUCH of first_level_pro : label is "YES";
begin
first_level_gen:first_level_generate_4bit 
Port MAP( x_128 => x_128,
          y_128 => y_128,
          gen_32 => gen_32);

first_level_pro:first_level_propagate_4bit 
Port MAP( x_128 => x_128,
          y_128 => y_128,
          p_32 => p_32);


end Behavioral;
