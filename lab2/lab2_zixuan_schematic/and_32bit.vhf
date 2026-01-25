--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : and_32bit.vhf
-- /___/   /\     Timestamp : 01/24/2026 16:59:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/and_32bit.sch" and_32bit.vhf
--Design Name: and_32bit
--Device: virtex2p
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity OR16_MXILINX_and_32bit is
   port ( I0  : in    std_logic; 
          I1  : in    std_logic; 
          I2  : in    std_logic; 
          I3  : in    std_logic; 
          I4  : in    std_logic; 
          I5  : in    std_logic; 
          I6  : in    std_logic; 
          I7  : in    std_logic; 
          I8  : in    std_logic; 
          I9  : in    std_logic; 
          I10 : in    std_logic; 
          I11 : in    std_logic; 
          I12 : in    std_logic; 
          I13 : in    std_logic; 
          I14 : in    std_logic; 
          I15 : in    std_logic; 
          O   : out   std_logic);
end OR16_MXILINX_and_32bit;

architecture BEHAVIORAL of OR16_MXILINX_and_32bit is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal CIN     : std_logic;
   signal C0      : std_logic;
   signal C1      : std_logic;
   signal C2      : std_logic;
   signal S0      : std_logic;
   signal S1      : std_logic;
   signal S2      : std_logic;
   signal S3      : std_logic;
   signal XLXN_46 : std_logic;
   component MUXCY_L
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY_L : component is "BLACK_BOX";
   
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component NOR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR4 : component is "BLACK_BOX";
   
   component MUXCY
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   attribute RLOC of I_36_2 : label is "X0Y0";
   attribute RLOC of I_36_29 : label is "X0Y0";
   attribute RLOC of I_36_129 : label is "X0Y0";
   attribute RLOC of I_36_138 : label is "X0Y0";
   attribute RLOC of I_36_142 : label is "X0Y1";
   attribute RLOC of I_36_147 : label is "X0Y1";
   attribute RLOC of I_36_165 : label is "X0Y1";
   attribute RLOC of I_36_170 : label is "X0Y1";
begin
   I_36_2 : MUXCY_L
      port map (CI=>CIN,
                DI=>XLXN_46,
                S=>S0,
                LO=>C0);
   
   I_36_29 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I3,
                O=>S0);
   
   I_36_110 : NOR4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_127 : NOR4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_129 : MUXCY_L
      port map (CI=>C0,
                DI=>XLXN_46,
                S=>S1,
                LO=>C1);
   
   I_36_138 : FMAP
      port map (I1=>I4,
                I2=>I5,
                I3=>I6,
                I4=>I7,
                O=>S1);
   
   I_36_142 : FMAP
      port map (I1=>I8,
                I2=>I9,
                I3=>I10,
                I4=>I11,
                O=>S2);
   
   I_36_147 : MUXCY_L
      port map (CI=>C1,
                DI=>XLXN_46,
                S=>S2,
                LO=>C2);
   
   I_36_151 : NOR4
      port map (I0=>I8,
                I1=>I9,
                I2=>I10,
                I3=>I11,
                O=>S2);
   
   I_36_161 : NOR4
      port map (I0=>I12,
                I1=>I13,
                I2=>I14,
                I3=>I15,
                O=>S3);
   
   I_36_165 : MUXCY
      port map (CI=>C2,
                DI=>XLXN_46,
                S=>S3,
                O=>O);
   
   I_36_170 : FMAP
      port map (I1=>I12,
                I2=>I13,
                I3=>I14,
                I4=>I15,
                O=>S3);
   
   I_36_172 : VCC
      port map (P=>XLXN_46);
   
   I_36_174 : GND
      port map (G=>CIN);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity and_32bit is
   port ( ando   : in    std_logic_vector (31 downto 0); 
          and1   : in    std_logic_vector (31 downto 0); 
          Result : out   std_logic);
end and_32bit;

architecture BEHAVIORAL of and_32bit is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal andout   : std_logic_vector (31 downto 0);
   signal XLXN_418 : std_logic;
   signal XLXN_419 : std_logic;
   signal XLXN_420 : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component OR16_MXILINX_and_32bit
      port ( I0  : in    std_logic; 
             I1  : in    std_logic; 
             I10 : in    std_logic; 
             I11 : in    std_logic; 
             I12 : in    std_logic; 
             I13 : in    std_logic; 
             I14 : in    std_logic; 
             I15 : in    std_logic; 
             I2  : in    std_logic; 
             I3  : in    std_logic; 
             I4  : in    std_logic; 
             I5  : in    std_logic; 
             I6  : in    std_logic; 
             I7  : in    std_logic; 
             I8  : in    std_logic; 
             I9  : in    std_logic; 
             O   : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_110 : label is "XLXI_110_0";
   attribute HU_SET of XLXI_111 : label is "XLXI_111_1";
begin
   XLXI_68 : XOR2
      port map (I0=>and1(0),
                I1=>ando(0),
                O=>andout(0));
   
   XLXI_80 : XOR2
      port map (I0=>and1(1),
                I1=>ando(1),
                O=>open);
   
   XLXI_81 : XOR2
      port map (I0=>and1(2),
                I1=>ando(2),
                O=>andout(2));
   
   XLXI_82 : XOR2
      port map (I0=>and1(3),
                I1=>ando(3),
                O=>andout(3));
   
   XLXI_83 : XOR2
      port map (I0=>and1(4),
                I1=>ando(4),
                O=>andout(4));
   
   XLXI_84 : XOR2
      port map (I0=>and1(5),
                I1=>ando(5),
                O=>andout(5));
   
   XLXI_85 : XOR2
      port map (I0=>and1(6),
                I1=>ando(6),
                O=>andout(6));
   
   XLXI_86 : XOR2
      port map (I0=>and1(7),
                I1=>ando(7),
                O=>andout(7));
   
   XLXI_87 : XOR2
      port map (I0=>and1(15),
                I1=>ando(15),
                O=>andout(15));
   
   XLXI_88 : XOR2
      port map (I0=>and1(14),
                I1=>ando(14),
                O=>andout(14));
   
   XLXI_89 : XOR2
      port map (I0=>and1(13),
                I1=>ando(13),
                O=>andout(13));
   
   XLXI_90 : XOR2
      port map (I0=>and1(12),
                I1=>ando(12),
                O=>andout(12));
   
   XLXI_91 : XOR2
      port map (I0=>and1(11),
                I1=>ando(11),
                O=>andout(11));
   
   XLXI_92 : XOR2
      port map (I0=>and1(10),
                I1=>ando(10),
                O=>andout(10));
   
   XLXI_93 : XOR2
      port map (I0=>and1(9),
                I1=>ando(9),
                O=>andout(9));
   
   XLXI_94 : XOR2
      port map (I0=>and1(8),
                I1=>ando(8),
                O=>andout(8));
   
   XLXI_95 : XOR2
      port map (I0=>and1(23),
                I1=>ando(23),
                O=>andout(23));
   
   XLXI_96 : XOR2
      port map (I0=>and1(22),
                I1=>ando(22),
                O=>andout(22));
   
   XLXI_97 : XOR2
      port map (I0=>and1(20),
                I1=>ando(20),
                O=>andout(20));
   
   XLXI_98 : XOR2
      port map (I0=>and1(19),
                I1=>ando(19),
                O=>andout(19));
   
   XLXI_99 : XOR2
      port map (I0=>and1(18),
                I1=>ando(18),
                O=>andout(18));
   
   XLXI_100 : XOR2
      port map (I0=>and1(17),
                I1=>ando(17),
                O=>andout(17));
   
   XLXI_101 : XOR2
      port map (I0=>and1(16),
                I1=>ando(16),
                O=>andout(16));
   
   XLXI_102 : XOR2
      port map (I0=>and1(24),
                I1=>ando(24),
                O=>andout(24));
   
   XLXI_103 : XOR2
      port map (I0=>and1(25),
                I1=>ando(25),
                O=>andout(25));
   
   XLXI_104 : XOR2
      port map (I0=>and1(26),
                I1=>ando(26),
                O=>andout(26));
   
   XLXI_105 : XOR2
      port map (I0=>and1(27),
                I1=>ando(27),
                O=>andout(27));
   
   XLXI_106 : XOR2
      port map (I0=>and1(28),
                I1=>ando(28),
                O=>andout(28));
   
   XLXI_107 : XOR2
      port map (I0=>and1(29),
                I1=>ando(29),
                O=>andout(29));
   
   XLXI_108 : XOR2
      port map (I0=>and1(30),
                I1=>ando(30),
                O=>andout(30));
   
   XLXI_109 : XOR2
      port map (I0=>and1(31),
                I1=>ando(31),
                O=>andout(31));
   
   XLXI_110 : OR16_MXILINX_and_32bit
      port map (I0=>andout(31),
                I1=>andout(30),
                I2=>andout(29),
                I3=>andout(28),
                I4=>andout(27),
                I5=>andout(26),
                I6=>andout(25),
                I7=>andout(24),
                I8=>andout(23),
                I9=>andout(22),
                I10=>andout(21),
                I11=>andout(20),
                I12=>andout(19),
                I13=>andout(18),
                I14=>andout(17),
                I15=>andout(16),
                O=>XLXN_419);
   
   XLXI_111 : OR16_MXILINX_and_32bit
      port map (I0=>andout(15),
                I1=>andout(14),
                I2=>andout(13),
                I3=>andout(12),
                I4=>andout(11),
                I5=>andout(10),
                I6=>andout(9),
                I7=>andout(8),
                I8=>andout(7),
                I9=>andout(6),
                I10=>andout(5),
                I11=>andout(4),
                I12=>andout(3),
                I13=>andout(2),
                I14=>andout(1),
                I15=>andout(0),
                O=>XLXN_420);
   
   XLXI_112 : OR2
      port map (I0=>XLXN_419,
                I1=>XLXN_420,
                O=>XLXN_418);
   
   XLXI_114 : INV
      port map (I=>XLXN_418,
                O=>Result);
   
   XLXI_115 : XOR2
      port map (I0=>and1(21),
                I1=>ando(21),
                O=>andout(21));
   
end BEHAVIORAL;


