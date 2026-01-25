--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : MUX_32b.vhf
-- /___/   /\     Timestamp : 01/24/2026 16:59:33
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/MUX_32b.sch" MUX_32b.vhf
--Design Name: MUX_32b
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

entity M2_1_MXILINX_MUX_32b is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_MUX_32b;

architecture BEHAVIORAL of M2_1_MXILINX_MUX_32b is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity MUX_32b is
   port ( D0 : in    std_logic_vector (31 downto 0); 
          D1 : in    std_logic_vector (31 downto 0); 
          S0 : in    std_logic; 
          O  : out   std_logic_vector (31 downto 0));
end MUX_32b;

architecture BEHAVIORAL of MUX_32b is
   attribute HU_SET     : string ;
   component M2_1_MXILINX_MUX_32b
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_3 : label is "XLXI_3_0";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_1";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_2";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_3";
   attribute HU_SET of XLXI_25 : label is "XLXI_25_4";
   attribute HU_SET of XLXI_26 : label is "XLXI_26_5";
   attribute HU_SET of XLXI_27 : label is "XLXI_27_6";
   attribute HU_SET of XLXI_28 : label is "XLXI_28_7";
   attribute HU_SET of XLXI_37 : label is "XLXI_37_8";
   attribute HU_SET of XLXI_38 : label is "XLXI_38_9";
   attribute HU_SET of XLXI_39 : label is "XLXI_39_10";
   attribute HU_SET of XLXI_40 : label is "XLXI_40_11";
   attribute HU_SET of XLXI_41 : label is "XLXI_41_12";
   attribute HU_SET of XLXI_42 : label is "XLXI_42_13";
   attribute HU_SET of XLXI_43 : label is "XLXI_43_14";
   attribute HU_SET of XLXI_44 : label is "XLXI_44_15";
   attribute HU_SET of XLXI_45 : label is "XLXI_45_16";
   attribute HU_SET of XLXI_46 : label is "XLXI_46_17";
   attribute HU_SET of XLXI_47 : label is "XLXI_47_18";
   attribute HU_SET of XLXI_48 : label is "XLXI_48_19";
   attribute HU_SET of XLXI_49 : label is "XLXI_49_20";
   attribute HU_SET of XLXI_50 : label is "XLXI_50_21";
   attribute HU_SET of XLXI_51 : label is "XLXI_51_22";
   attribute HU_SET of XLXI_52 : label is "XLXI_52_23";
   attribute HU_SET of XLXI_53 : label is "XLXI_53_24";
   attribute HU_SET of XLXI_54 : label is "XLXI_54_25";
   attribute HU_SET of XLXI_55 : label is "XLXI_55_26";
   attribute HU_SET of XLXI_56 : label is "XLXI_56_27";
   attribute HU_SET of XLXI_57 : label is "XLXI_57_28";
   attribute HU_SET of XLXI_58 : label is "XLXI_58_29";
   attribute HU_SET of XLXI_59 : label is "XLXI_59_30";
   attribute HU_SET of XLXI_60 : label is "XLXI_60_31";
begin
   XLXI_3 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(0),
                D1=>D1(0),
                S0=>S0,
                O=>O(0));
   
   XLXI_4 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(1),
                D1=>D1(1),
                S0=>S0,
                O=>O(1));
   
   XLXI_5 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(2),
                D1=>D1(2),
                S0=>S0,
                O=>O(2));
   
   XLXI_6 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(3),
                D1=>D1(3),
                S0=>S0,
                O=>O(3));
   
   XLXI_25 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(4),
                D1=>D1(4),
                S0=>S0,
                O=>O(4));
   
   XLXI_26 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(5),
                D1=>D1(5),
                S0=>S0,
                O=>O(5));
   
   XLXI_27 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(6),
                D1=>D1(6),
                S0=>S0,
                O=>O(6));
   
   XLXI_28 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(7),
                D1=>D1(7),
                S0=>S0,
                O=>O(7));
   
   XLXI_37 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(8),
                D1=>D1(8),
                S0=>S0,
                O=>O(8));
   
   XLXI_38 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(9),
                D1=>D1(9),
                S0=>S0,
                O=>O(9));
   
   XLXI_39 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(10),
                D1=>D1(10),
                S0=>S0,
                O=>O(10));
   
   XLXI_40 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(11),
                D1=>D1(11),
                S0=>S0,
                O=>O(11));
   
   XLXI_41 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(12),
                D1=>D1(12),
                S0=>S0,
                O=>O(12));
   
   XLXI_42 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(13),
                D1=>D1(13),
                S0=>S0,
                O=>O(13));
   
   XLXI_43 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(14),
                D1=>D1(14),
                S0=>S0,
                O=>O(14));
   
   XLXI_44 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(15),
                D1=>D1(15),
                S0=>S0,
                O=>O(15));
   
   XLXI_45 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(16),
                D1=>D1(16),
                S0=>S0,
                O=>O(16));
   
   XLXI_46 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(17),
                D1=>D1(17),
                S0=>S0,
                O=>O(17));
   
   XLXI_47 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(18),
                D1=>D1(18),
                S0=>S0,
                O=>O(18));
   
   XLXI_48 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(19),
                D1=>D1(19),
                S0=>S0,
                O=>O(19));
   
   XLXI_49 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(20),
                D1=>D1(20),
                S0=>S0,
                O=>O(20));
   
   XLXI_50 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(21),
                D1=>D1(21),
                S0=>S0,
                O=>O(21));
   
   XLXI_51 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(22),
                D1=>D1(22),
                S0=>S0,
                O=>O(22));
   
   XLXI_52 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(23),
                D1=>D1(23),
                S0=>S0,
                O=>O(23));
   
   XLXI_53 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(24),
                D1=>D1(24),
                S0=>S0,
                O=>O(24));
   
   XLXI_54 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(25),
                D1=>D1(25),
                S0=>S0,
                O=>O(25));
   
   XLXI_55 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(26),
                D1=>D1(26),
                S0=>S0,
                O=>O(26));
   
   XLXI_56 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(27),
                D1=>D1(27),
                S0=>S0,
                O=>O(27));
   
   XLXI_57 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(28),
                D1=>D1(28),
                S0=>S0,
                O=>O(28));
   
   XLXI_58 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(29),
                D1=>D1(29),
                S0=>S0,
                O=>O(29));
   
   XLXI_59 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(30),
                D1=>D1(30),
                S0=>S0,
                O=>O(30));
   
   XLXI_60 : M2_1_MXILINX_MUX_32b
      port map (D0=>D0(31),
                D1=>D1(31),
                S0=>S0,
                O=>O(31));
   
end BEHAVIORAL;


