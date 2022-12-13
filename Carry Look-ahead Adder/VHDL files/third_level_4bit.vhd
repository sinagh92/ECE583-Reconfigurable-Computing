----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/08/2018 01:53:17 PM
-- Design Name: 
-- Module Name: third_level_4bit - Behavioral
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
LIBRARY UNISIM;
USE UNISIM.VComponents.ALL;

ENTITY third_level_4bit IS
  PORT (
    p_8 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    g_8 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    g_2 : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    p_2 : OUT STD_LOGIC_VECTOR (1 DOWNTO 0));
END third_level_4bit;

ARCHITECTURE Behavioral OF third_level_4bit IS

  SIGNAL gen_63_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL gen_127_64 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL CO : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL O : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

  -- gen_63_0
  CARRY4_63_0 : CARRY4 PORT MAP(
    CO => CO(3 DOWNTO 0),
    O => O(3 DOWNTO 0),
    CI => '0',
    CYINIT => '0',
    DI => "1111",
    S => gen_63_0
  );
  -- g15-0 p31-16 p47-32 p63-48 
  gen_63_0(0) <= NOT (g_8(0) AND p_8(3) AND p_8(2) AND p_8(1));
  -- g31-16 p47-32 p63-48
  gen_63_0(1) <= NOT (g_8(1) AND p_8(3) AND p_8(2));
  -- g47-32 p63-48
  gen_63_0(2) <= NOT (g_8(2) AND p_8(3));
  -- g63-48
  gen_63_0(3) <= NOT g_8(3);
  -- gen_127_64
  CARRY4_127_64 : CARRY4 PORT MAP(
    CO => CO(7 DOWNTO 4),
    O => O(7 DOWNTO 4),
    CI => '0',
    CYINIT => '0',
    DI => "1111",
    S => gen_127_64
  );
  -- g79-64 p95-80 p111-96 p127-112 
  gen_127_64(0) <= NOT (g_8(4) AND p_8(7) AND p_8(6) AND p_8(5));
  -- g95-80 p111-96 p127-112
  gen_127_64(1) <= NOT (g_8(5) AND p_8(7) AND p_8(6));
  -- g111-96 p127-112
  gen_127_64(2) <= NOT (g_8(6) AND p_8(7));
  -- g127-112
  gen_127_64(3) <= NOT g_8(7);

  -- g63-0 and g127-64
  g_2(0) <= CO(3);
  g_2(1) <= CO(7);
  -- p63-0 and p127-64
  p_2(0) <= p_8(3) AND p_8(2) AND p_8(1) AND p_8(0);
  p_2(1) <= p_8(7) AND p_8(6) AND p_8(5) AND p_8(4);

END Behavioral;