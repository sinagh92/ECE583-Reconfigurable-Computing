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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.std_logic_arith.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY adder IS
        PORT (
                x_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
                y_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
                sum_128 : OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
                cout : OUT STD_LOGIC);
END adder;

ARCHITECTURE Behavioral OF adder IS
        SIGNAL sum_temp : STD_LOGIC_VECTOR(128 DOWNTO 0);
BEGIN

        sum_temp <= ('0' & x_128) + ('0' & y_128);
        sum_128 <= sum_temp(127 DOWNTO 0);
        cout <= sum_temp(128);

END Behavioral;