----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2018 10:17:01 AM
-- Design Name: 
-- Module Name: adder_tb - Behavioral
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

ENTITY adder_simulation IS
END adder_simulation;

ARCHITECTURE Behavioral OF adder_simulation IS
    COMPONENT carry_look_ahead IS
        PORT (
            x_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
            y_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
            sum : OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
            c_out_128 : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT registered_design IS
        PORT (
            x_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
            y_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
            clk : IN STD_LOGIC;
            sum : OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
            c_out : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL x_128 : STD_LOGIC_VECTOR(127 DOWNTO 0);
    SIGNAL y_128 : STD_LOGIC_VECTOR(127 DOWNTO 0);
    SIGNAL sum : STD_LOGIC_VECTOR(127 DOWNTO 0);
    SIGNAL c_out_128 : STD_LOGIC;
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL count : STD_LOGIC := '0';
    CONSTANT clk_period : TIME := 10 ns;
BEGIN
    uut2 : registered_design PORT MAP(
        x_128 => x_128,
        y_128 => y_128,
        sum => sum,
        clk => clk,
        c_out => c_out_128
    );
    clk_process : PROCESS
    BEGIN
        WAIT FOR clk_period;
        IF (clk = '0') THEN
            clk <= '1';
        ELSE
            clk <= '0';
        END IF;
    END PROCESS;

    second_process : PROCESS (clk) IS
    BEGIN
        IF (rising_edge(clk)) THEN
            IF count = '0' THEN
                x_128 <= x"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF";
                y_128 <= x"00000000000000000000000000000001";
                count <= '1';
            ELSE
                count <= '0';
                x_128 <= x"00000000000000000000000000000000";
                y_128 <= x"00000000000000000000000000000000";
            END IF;
        END IF;
    END PROCESS;
END Behavioral;