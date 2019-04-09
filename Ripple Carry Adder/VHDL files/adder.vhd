----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2018 10:08:59 AM
-- Design Name: 
-- Module Name: adder - Behavioral
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
        use IEEE.std_logic_unsigned.all;
        use IEEE.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder is
    Port ( x_128 : in STD_LOGIC_VECTOR (127 downto 0);
           y_128 : in STD_LOGIC_VECTOR (127 downto 0);
           sum_128 : out STD_LOGIC_VECTOR (127 downto 0);
           cout : out STD_LOGIC);
end adder;

architecture Behavioral of adder is
signal sum_temp: std_logic_vector(128 downto 0);
begin

sum_temp <= ('0' & x_128) + ('0' & y_128);
sum_128 <= sum_temp(127 downto 0);
cout <= sum_temp(128);

end Behavioral;
