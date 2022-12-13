----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2018 09:28:44 AM
-- Design Name: 
-- Module Name: first_level_generate_4bit - Behavioral
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

ENTITY first_level_generate_4bit IS
  PORT (
    x_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    y_128 : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    gen_32 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END first_level_generate_4bit;

ARCHITECTURE Behavioral OF first_level_generate_4bit IS
  SIGNAL xy_xor : STD_LOGIC_VECTOR (127 DOWNTO 0);
  SIGNAL CO : STD_LOGIC_VECTOR(127 DOWNTO 0);
  SIGNAL O : STD_LOGIC_VECTOR(127 DOWNTO 0);
BEGIN

  --xy_xor(3 downto 0) <= x_128(3 downto 0) XOR y_128(3 downto 0);
  --xy_xor(7 downto 4) <= x_128(7 downto 4) XOR y_128(7 downto 4);
  --xy_xor(11 downto 8) <= x_128(11 downto 8) XOR y_128(11 downto 8);
  --xy_xor(15 downto 12) <= x_128(15 downto 12) XOR y_128(15 downto 12);
  --gen_32(0) <= CO(3);
  --gen_32(1) <= CO(7);
  --gen_32(2) <= CO(11);
  --gen_32(3) <= CO(15);

  --CARRY4_3_0: CARRY4 
  --   port map (
  --    CO => CO(3 downto 0),
  --    O => O(3 downto 0),
  --    CI => '0',
  --    CYINIT => '0',
  --    DI => Y_128(3 DOWNTO 0),
  --    S => xy_xor(3 downto 0)
  --    );

  --CARRY4_7_4: CARRY4 
  --   port map (
  --    CO => CO(7 downto 4),
  --    O => O(7 downto 4),
  --    CI => '0',
  --    CYINIT => '0',
  --    DI => Y_128(7 DOWNTO 4),
  --    S => xy_xor(7 downto 4)
  --    );
  --CARRY4_11_8: CARRY4 
  --       port map (
  --        CO => CO(11 downto 8),
  --        O => O(11 downto 8),
  --        CI => '0',
  --        CYINIT => '0',
  --        DI => Y_128(11 DOWNTO 8),
  --        S => xy_xor(11 downto 8)
  --        );
  --CARRY4_15_12: CARRY4 
  --       port map (
  --         CO => CO(15 downto 12),
  --         O => O(15 downto 12),
  --         CI => '0',
  --         CYINIT => '0',
  --         DI => Y_128(15 DOWNTO 12),
  --         S => xy_xor(15 downto 12)
  --        );
  CARRY4_3_0 : CARRY4 PORT MAP(
    CO => CO(3 DOWNTO 0),
    O => O(3 DOWNTO 0),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(3 DOWNTO 0),
    S => xy_xor(3 DOWNTO 0)
  );

  CARRY4_7_4 : CARRY4 PORT MAP(
    CO => CO(7 DOWNTO 4),
    O => O(7 DOWNTO 4),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(7 DOWNTO 4),
    S => xy_xor(7 DOWNTO 4)
  );

  CARRY4_11_8 : CARRY4 PORT MAP(
    CO => CO(11 DOWNTO 8),
    O => O(11 DOWNTO 8),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(11 DOWNTO 8),
    S => xy_xor(11 DOWNTO 8)
  );

  CARRY4_15_12 : CARRY4 PORT MAP(
    CO => CO(15 DOWNTO 12),
    O => O(15 DOWNTO 12),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(15 DOWNTO 12),
    S => xy_xor(15 DOWNTO 12)
  );

  CARRY4_19_16 : CARRY4 PORT MAP(
    CO => CO(19 DOWNTO 16),
    O => O(19 DOWNTO 16),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(19 DOWNTO 16),
    S => xy_xor(19 DOWNTO 16)
  );

  CARRY4_23_20 : CARRY4 PORT MAP(
    CO => CO(23 DOWNTO 20),
    O => O(23 DOWNTO 20),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(23 DOWNTO 20),
    S => xy_xor(23 DOWNTO 20)
  );

  CARRY4_27_24 : CARRY4 PORT MAP(
    CO => CO(27 DOWNTO 24),
    O => O(27 DOWNTO 24),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(27 DOWNTO 24),
    S => xy_xor(27 DOWNTO 24)
  );

  CARRY4_31_28 : CARRY4 PORT MAP(
    CO => CO(31 DOWNTO 28),
    O => O(31 DOWNTO 28),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(31 DOWNTO 28),
    S => xy_xor(31 DOWNTO 28)
  );

  CARRY4_35_32 : CARRY4 PORT MAP(
    CO => CO(35 DOWNTO 32),
    O => O(35 DOWNTO 32),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(35 DOWNTO 32),
    S => xy_xor(35 DOWNTO 32)
  );

  CARRY4_39_36 : CARRY4 PORT MAP(
    CO => CO(39 DOWNTO 36),
    O => O(39 DOWNTO 36),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(39 DOWNTO 36),
    S => xy_xor(39 DOWNTO 36)
  );

  CARRY4_43_40 : CARRY4 PORT MAP(
    CO => CO(43 DOWNTO 40),
    O => O(43 DOWNTO 40),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(43 DOWNTO 40),
    S => xy_xor(43 DOWNTO 40)
  );

  CARRY4_47_44 : CARRY4 PORT MAP(
    CO => CO(47 DOWNTO 44),
    O => O(47 DOWNTO 44),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(47 DOWNTO 44),
    S => xy_xor(47 DOWNTO 44)
  );

  CARRY4_51_48 : CARRY4 PORT MAP(
    CO => CO(51 DOWNTO 48),
    O => O(51 DOWNTO 48),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(51 DOWNTO 48),
    S => xy_xor(51 DOWNTO 48)
  );

  CARRY4_55_52 : CARRY4 PORT MAP(
    CO => CO(55 DOWNTO 52),
    O => O(55 DOWNTO 52),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(55 DOWNTO 52),
    S => xy_xor(55 DOWNTO 52)
  );

  CARRY4_59_56 : CARRY4 PORT MAP(
    CO => CO(59 DOWNTO 56),
    O => O(59 DOWNTO 56),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(59 DOWNTO 56),
    S => xy_xor(59 DOWNTO 56)
  );

  CARRY4_63_60 : CARRY4 PORT MAP(
    CO => CO(63 DOWNTO 60),
    O => O(63 DOWNTO 60),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(63 DOWNTO 60),
    S => xy_xor(63 DOWNTO 60)
  );

  CARRY4_67_64 : CARRY4 PORT MAP(
    CO => CO(67 DOWNTO 64),
    O => O(67 DOWNTO 64),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(67 DOWNTO 64),
    S => xy_xor(67 DOWNTO 64)
  );

  CARRY4_71_68 : CARRY4 PORT MAP(
    CO => CO(71 DOWNTO 68),
    O => O(71 DOWNTO 68),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(71 DOWNTO 68),
    S => xy_xor(71 DOWNTO 68)
  );

  CARRY4_75_72 : CARRY4 PORT MAP(
    CO => CO(75 DOWNTO 72),
    O => O(75 DOWNTO 72),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(75 DOWNTO 72),
    S => xy_xor(75 DOWNTO 72)
  );

  CARRY4_79_76 : CARRY4 PORT MAP(
    CO => CO(79 DOWNTO 76),
    O => O(79 DOWNTO 76),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(79 DOWNTO 76),
    S => xy_xor(79 DOWNTO 76)
  );

  CARRY4_83_80 : CARRY4 PORT MAP(
    CO => CO(83 DOWNTO 80),
    O => O(83 DOWNTO 80),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(83 DOWNTO 80),
    S => xy_xor(83 DOWNTO 80)
  );

  CARRY4_87_84 : CARRY4 PORT MAP(
    CO => CO(87 DOWNTO 84),
    O => O(87 DOWNTO 84),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(87 DOWNTO 84),
    S => xy_xor(87 DOWNTO 84)
  );

  CARRY4_91_88 : CARRY4 PORT MAP(
    CO => CO(91 DOWNTO 88),
    O => O(91 DOWNTO 88),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(91 DOWNTO 88),
    S => xy_xor(91 DOWNTO 88)
  );

  CARRY4_95_92 : CARRY4 PORT MAP(
    CO => CO(95 DOWNTO 92),
    O => O(95 DOWNTO 92),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(95 DOWNTO 92),
    S => xy_xor(95 DOWNTO 92)
  );

  CARRY4_99_96 : CARRY4 PORT MAP(
    CO => CO(99 DOWNTO 96),
    O => O(99 DOWNTO 96),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(99 DOWNTO 96),
    S => xy_xor(99 DOWNTO 96)
  );

  CARRY4_103_100 : CARRY4 PORT MAP(
    CO => CO(103 DOWNTO 100),
    O => O(103 DOWNTO 100),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(103 DOWNTO 100),
    S => xy_xor(103 DOWNTO 100)
  );

  CARRY4_107_104 : CARRY4 PORT MAP(
    CO => CO(107 DOWNTO 104),
    O => O(107 DOWNTO 104),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(107 DOWNTO 104),
    S => xy_xor(107 DOWNTO 104)
  );

  CARRY4_111_108 : CARRY4 PORT MAP(
    CO => CO(111 DOWNTO 108),
    O => O(111 DOWNTO 108),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(111 DOWNTO 108),
    S => xy_xor(111 DOWNTO 108)
  );

  CARRY4_115_112 : CARRY4 PORT MAP(
    CO => CO(115 DOWNTO 112),
    O => O(115 DOWNTO 112),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(115 DOWNTO 112),
    S => xy_xor(115 DOWNTO 112)
  );

  CARRY4_119_116 : CARRY4 PORT MAP(
    CO => CO(119 DOWNTO 116),
    O => O(119 DOWNTO 116),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(119 DOWNTO 116),
    S => xy_xor(119 DOWNTO 116)
  );

  CARRY4_123_120 : CARRY4 PORT MAP(
    CO => CO(123 DOWNTO 120),
    O => O(123 DOWNTO 120),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(123 DOWNTO 120),
    S => xy_xor(123 DOWNTO 120)
  );

  CARRY4_127_124 : CARRY4 PORT MAP(
    CO => CO(127 DOWNTO 124),
    O => O(127 DOWNTO 124),
    CI => '0',
    CYINIT => '0',
    DI => Y_128(127 DOWNTO 124),
    S => xy_xor(127 DOWNTO 124)
  );
  xy_xor(3 DOWNTO 0) <= x_128(3 DOWNTO 0) XOR y_128(3 DOWNTO 0);
  xy_xor(7 DOWNTO 4) <= x_128(7 DOWNTO 4) XOR y_128(7 DOWNTO 4);
  xy_xor(11 DOWNTO 8) <= x_128(11 DOWNTO 8) XOR y_128(11 DOWNTO 8);
  xy_xor(15 DOWNTO 12) <= x_128(15 DOWNTO 12) XOR y_128(15 DOWNTO 12);
  xy_xor(19 DOWNTO 16) <= x_128(19 DOWNTO 16) XOR y_128(19 DOWNTO 16);
  xy_xor(23 DOWNTO 20) <= x_128(23 DOWNTO 20) XOR y_128(23 DOWNTO 20);
  xy_xor(27 DOWNTO 24) <= x_128(27 DOWNTO 24) XOR y_128(27 DOWNTO 24);
  xy_xor(31 DOWNTO 28) <= x_128(31 DOWNTO 28) XOR y_128(31 DOWNTO 28);
  xy_xor(35 DOWNTO 32) <= x_128(35 DOWNTO 32) XOR y_128(35 DOWNTO 32);
  xy_xor(39 DOWNTO 36) <= x_128(39 DOWNTO 36) XOR y_128(39 DOWNTO 36);
  xy_xor(43 DOWNTO 40) <= x_128(43 DOWNTO 40) XOR y_128(43 DOWNTO 40);
  xy_xor(47 DOWNTO 44) <= x_128(47 DOWNTO 44) XOR y_128(47 DOWNTO 44);
  xy_xor(51 DOWNTO 48) <= x_128(51 DOWNTO 48) XOR y_128(51 DOWNTO 48);
  xy_xor(55 DOWNTO 52) <= x_128(55 DOWNTO 52) XOR y_128(55 DOWNTO 52);
  xy_xor(59 DOWNTO 56) <= x_128(59 DOWNTO 56) XOR y_128(59 DOWNTO 56);
  xy_xor(63 DOWNTO 60) <= x_128(63 DOWNTO 60) XOR y_128(63 DOWNTO 60);
  xy_xor(67 DOWNTO 64) <= x_128(67 DOWNTO 64) XOR y_128(67 DOWNTO 64);
  xy_xor(71 DOWNTO 68) <= x_128(71 DOWNTO 68) XOR y_128(71 DOWNTO 68);
  xy_xor(75 DOWNTO 72) <= x_128(75 DOWNTO 72) XOR y_128(75 DOWNTO 72);
  xy_xor(79 DOWNTO 76) <= x_128(79 DOWNTO 76) XOR y_128(79 DOWNTO 76);
  xy_xor(83 DOWNTO 80) <= x_128(83 DOWNTO 80) XOR y_128(83 DOWNTO 80);
  xy_xor(87 DOWNTO 84) <= x_128(87 DOWNTO 84) XOR y_128(87 DOWNTO 84);
  xy_xor(91 DOWNTO 88) <= x_128(91 DOWNTO 88) XOR y_128(91 DOWNTO 88);
  xy_xor(95 DOWNTO 92) <= x_128(95 DOWNTO 92) XOR y_128(95 DOWNTO 92);
  xy_xor(99 DOWNTO 96) <= x_128(99 DOWNTO 96) XOR y_128(99 DOWNTO 96);
  xy_xor(103 DOWNTO 100) <= x_128(103 DOWNTO 100) XOR y_128(103 DOWNTO 100);
  xy_xor(107 DOWNTO 104) <= x_128(107 DOWNTO 104) XOR y_128(107 DOWNTO 104);
  xy_xor(111 DOWNTO 108) <= x_128(111 DOWNTO 108) XOR y_128(111 DOWNTO 108);
  xy_xor(115 DOWNTO 112) <= x_128(115 DOWNTO 112) XOR y_128(115 DOWNTO 112);
  xy_xor(119 DOWNTO 116) <= x_128(119 DOWNTO 116) XOR y_128(119 DOWNTO 116);
  xy_xor(123 DOWNTO 120) <= x_128(123 DOWNTO 120) XOR y_128(123 DOWNTO 120);
  xy_xor(127 DOWNTO 124) <= x_128(127 DOWNTO 124) XOR y_128(127 DOWNTO 124);

  gen_32(0) <= CO(3);
  gen_32(1) <= CO(7);
  gen_32(2) <= CO(11);
  gen_32(3) <= CO(15);
  gen_32(4) <= CO(19);
  gen_32(5) <= CO(23);
  gen_32(6) <= CO(27);
  gen_32(7) <= CO(31);
  gen_32(8) <= CO(35);
  gen_32(9) <= CO(39);
  gen_32(10) <= CO(43);
  gen_32(11) <= CO(47);
  gen_32(12) <= CO(51);
  gen_32(13) <= CO(55);
  gen_32(14) <= CO(59);
  gen_32(15) <= CO(63);
  gen_32(16) <= CO(67);
  gen_32(17) <= CO(71);
  gen_32(18) <= CO(75);
  gen_32(19) <= CO(79);
  gen_32(20) <= CO(83);
  gen_32(21) <= CO(87);
  gen_32(22) <= CO(91);
  gen_32(23) <= CO(95);
  gen_32(24) <= CO(99);
  gen_32(25) <= CO(103);
  gen_32(26) <= CO(107);
  gen_32(27) <= CO(111);
  gen_32(28) <= CO(115);
  gen_32(29) <= CO(119);
  gen_32(30) <= CO(123);
  gen_32(31) <= CO(127);

END Behavioral;