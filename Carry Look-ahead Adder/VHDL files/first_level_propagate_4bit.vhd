----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2018 01:35:23 PM
-- Design Name: 
-- Module Name: first_level_propagate_4bit - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;

entity first_level_propagate_4bit is
    Port ( x_128 : in STD_LOGIC_VECTOR (127 downto 0);
           y_128 : in STD_LOGIC_VECTOR (127 downto 0);
           p_32 : out STD_LOGIC_VECTOR (31 downto 0));
end first_level_propagate_4bit;

architecture Behavioral of first_level_propagate_4bit is
signal xy_xor: std_logic_vector (127 downto 0);
signal CO: std_logic_vector(127 downto 0);
signal O: std_logic_vector(127 downto 0);

begin

CARRY4_3_0: CARRY4 port map ( 
 CO => CO(3 downto 0),
 O => O(3 downto 0),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(3 downto 0)
  );

CARRY4_7_4: CARRY4 port map ( 
 CO => CO(7 downto 4),
 O => O(7 downto 4),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(7 downto 4)
  );

CARRY4_11_8: CARRY4 port map ( 
 CO => CO(11 downto 8),
 O => O(11 downto 8),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(11 downto 8)
  );

CARRY4_15_12: CARRY4 port map ( 
 CO => CO(15 downto 12),
 O => O(15 downto 12),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(15 downto 12)
  );

CARRY4_19_16: CARRY4 port map ( 
 CO => CO(19 downto 16),
 O => O(19 downto 16),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(19 downto 16)
  );

CARRY4_23_20: CARRY4 port map ( 
 CO => CO(23 downto 20),
 O => O(23 downto 20),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(23 downto 20)
  );

CARRY4_27_24: CARRY4 port map ( 
 CO => CO(27 downto 24),
 O => O(27 downto 24),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(27 downto 24)
  );

CARRY4_31_28: CARRY4 port map ( 
 CO => CO(31 downto 28),
 O => O(31 downto 28),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(31 downto 28)
  );

CARRY4_35_32: CARRY4 port map ( 
 CO => CO(35 downto 32),
 O => O(35 downto 32),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(35 downto 32)
  );

CARRY4_39_36: CARRY4 port map ( 
 CO => CO(39 downto 36),
 O => O(39 downto 36),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(39 downto 36)
  );

CARRY4_43_40: CARRY4 port map ( 
 CO => CO(43 downto 40),
 O => O(43 downto 40),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(43 downto 40)
  );

CARRY4_47_44: CARRY4 port map ( 
 CO => CO(47 downto 44),
 O => O(47 downto 44),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(47 downto 44)
  );

CARRY4_51_48: CARRY4 port map ( 
 CO => CO(51 downto 48),
 O => O(51 downto 48),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(51 downto 48)
  );

CARRY4_55_52: CARRY4 port map ( 
 CO => CO(55 downto 52),
 O => O(55 downto 52),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(55 downto 52)
  );

CARRY4_59_56: CARRY4 port map ( 
 CO => CO(59 downto 56),
 O => O(59 downto 56),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(59 downto 56)
  );

CARRY4_63_60: CARRY4 port map ( 
 CO => CO(63 downto 60),
 O => O(63 downto 60),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(63 downto 60)
  );

CARRY4_67_64: CARRY4 port map ( 
 CO => CO(67 downto 64),
 O => O(67 downto 64),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(67 downto 64)
  );

CARRY4_71_68: CARRY4 port map ( 
 CO => CO(71 downto 68),
 O => O(71 downto 68),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(71 downto 68)
  );

CARRY4_75_72: CARRY4 port map ( 
 CO => CO(75 downto 72),
 O => O(75 downto 72),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(75 downto 72)
  );

CARRY4_79_76: CARRY4 port map ( 
 CO => CO(79 downto 76),
 O => O(79 downto 76),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(79 downto 76)
  );

CARRY4_83_80: CARRY4 port map ( 
 CO => CO(83 downto 80),
 O => O(83 downto 80),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(83 downto 80)
  );

CARRY4_87_84: CARRY4 port map ( 
 CO => CO(87 downto 84),
 O => O(87 downto 84),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(87 downto 84)
  );

CARRY4_91_88: CARRY4 port map ( 
 CO => CO(91 downto 88),
 O => O(91 downto 88),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(91 downto 88)
  );

CARRY4_95_92: CARRY4 port map ( 
 CO => CO(95 downto 92),
 O => O(95 downto 92),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(95 downto 92)
  );

CARRY4_99_96: CARRY4 port map ( 
 CO => CO(99 downto 96),
 O => O(99 downto 96),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(99 downto 96)
  );

CARRY4_103_100: CARRY4 port map ( 
 CO => CO(103 downto 100),
 O => O(103 downto 100),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(103 downto 100)
  );

CARRY4_107_104: CARRY4 port map ( 
 CO => CO(107 downto 104),
 O => O(107 downto 104),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(107 downto 104)
  );

CARRY4_111_108: CARRY4 port map ( 
 CO => CO(111 downto 108),
 O => O(111 downto 108),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(111 downto 108)
  );

CARRY4_115_112: CARRY4 port map ( 
 CO => CO(115 downto 112),
 O => O(115 downto 112),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(115 downto 112)
  );

CARRY4_119_116: CARRY4 port map ( 
 CO => CO(119 downto 116),
 O => O(119 downto 116),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(119 downto 116)
  );

CARRY4_123_120: CARRY4 port map ( 
 CO => CO(123 downto 120),
 O => O(123 downto 120),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(123 downto 120)
  );

CARRY4_127_124: CARRY4 port map ( 
 CO => CO(127 downto 124),
 O => O(127 downto 124),
 CI => '1',
 CYINIT => '0',
 DI => "0000",
 S => xy_xor(127 downto 124)
  );




xy_xor(3 downto 0) <= x_128(3 downto 0) XOR y_128(3 downto 0);
xy_xor(7 downto 4) <= x_128(7 downto 4) XOR y_128(7 downto 4);
xy_xor(11 downto 8) <= x_128(11 downto 8) XOR y_128(11 downto 8);
xy_xor(15 downto 12) <= x_128(15 downto 12) XOR y_128(15 downto 12);
xy_xor(19 downto 16) <= x_128(19 downto 16) XOR y_128(19 downto 16);
xy_xor(23 downto 20) <= x_128(23 downto 20) XOR y_128(23 downto 20);
xy_xor(27 downto 24) <= x_128(27 downto 24) XOR y_128(27 downto 24);
xy_xor(31 downto 28) <= x_128(31 downto 28) XOR y_128(31 downto 28);
xy_xor(35 downto 32) <= x_128(35 downto 32) XOR y_128(35 downto 32);
xy_xor(39 downto 36) <= x_128(39 downto 36) XOR y_128(39 downto 36);
xy_xor(43 downto 40) <= x_128(43 downto 40) XOR y_128(43 downto 40);
xy_xor(47 downto 44) <= x_128(47 downto 44) XOR y_128(47 downto 44);
xy_xor(51 downto 48) <= x_128(51 downto 48) XOR y_128(51 downto 48);
xy_xor(55 downto 52) <= x_128(55 downto 52) XOR y_128(55 downto 52);
xy_xor(59 downto 56) <= x_128(59 downto 56) XOR y_128(59 downto 56);
xy_xor(63 downto 60) <= x_128(63 downto 60) XOR y_128(63 downto 60);
xy_xor(67 downto 64) <= x_128(67 downto 64) XOR y_128(67 downto 64);
xy_xor(71 downto 68) <= x_128(71 downto 68) XOR y_128(71 downto 68);
xy_xor(75 downto 72) <= x_128(75 downto 72) XOR y_128(75 downto 72);
xy_xor(79 downto 76) <= x_128(79 downto 76) XOR y_128(79 downto 76);
xy_xor(83 downto 80) <= x_128(83 downto 80) XOR y_128(83 downto 80);
xy_xor(87 downto 84) <= x_128(87 downto 84) XOR y_128(87 downto 84);
xy_xor(91 downto 88) <= x_128(91 downto 88) XOR y_128(91 downto 88);
xy_xor(95 downto 92) <= x_128(95 downto 92) XOR y_128(95 downto 92);
xy_xor(99 downto 96) <= x_128(99 downto 96) XOR y_128(99 downto 96);
xy_xor(103 downto 100) <= x_128(103 downto 100) XOR y_128(103 downto 100);
xy_xor(107 downto 104) <= x_128(107 downto 104) XOR y_128(107 downto 104);
xy_xor(111 downto 108) <= x_128(111 downto 108) XOR y_128(111 downto 108);
xy_xor(115 downto 112) <= x_128(115 downto 112) XOR y_128(115 downto 112);
xy_xor(119 downto 116) <= x_128(119 downto 116) XOR y_128(119 downto 116);
xy_xor(123 downto 120) <= x_128(123 downto 120) XOR y_128(123 downto 120);
xy_xor(127 downto 124) <= x_128(127 downto 124) XOR y_128(127 downto 124);



p_32(0) <= CO(3);
p_32(1) <= CO(7);
p_32(2) <= CO(11);
p_32(3) <= CO(15);
p_32(4) <= CO(19);
p_32(5) <= CO(23);
p_32(6) <= CO(27);
p_32(7) <= CO(31);
p_32(8) <= CO(35);
p_32(9) <= CO(39);
p_32(10) <= CO(43);
p_32(11) <= CO(47);
p_32(12) <= CO(51);
p_32(13) <= CO(55);
p_32(14) <= CO(59);
p_32(15) <= CO(63);
p_32(16) <= CO(67);
p_32(17) <= CO(71);
p_32(18) <= CO(75);
p_32(19) <= CO(79);
p_32(20) <= CO(83);
p_32(21) <= CO(87);
p_32(22) <= CO(91);
p_32(23) <= CO(95);
p_32(24) <= CO(99);
p_32(25) <= CO(103);
p_32(26) <= CO(107);
p_32(27) <= CO(111);
p_32(28) <= CO(115);
p_32(29) <= CO(119);
p_32(30) <= CO(123);
p_32(31) <= CO(127);


end Behavioral;
