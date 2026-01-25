--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : Alu32_sch.vhf
-- /___/   /\     Timestamp : 01/24/2026 16:59:32
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/Alu32_sch.sch" Alu32_sch.vhf
--Design Name: Alu32_sch
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

entity M2_1_MXILINX_Alu32_sch is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_Alu32_sch;

architecture BEHAVIORAL of M2_1_MXILINX_Alu32_sch is
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

entity Alu32_sch is
   port ( A    : in    std_logic_vector (31 downto 0); 
          B    : in    std_logic_vector (31 downto 0); 
          OP   : in    std_logic_vector (2 downto 0); 
          Rout : out   std_logic_vector (31 downto 0));
end Alu32_sch;

architecture BEHAVIORAL of Alu32_sch is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal gi      : std_logic_vector (31 downto 0);
   signal La      : std_logic_vector (31 downto 0);
   signal Ra      : std_logic_vector (31 downto 0);
   signal XLXN_4  : std_logic_vector (31 downto 0);
   signal XLXN_17 : std_logic_vector (31 downto 0);
   signal XLXN_31 : std_logic_vector (31 downto 0);
   signal XLXN_32 : std_logic_vector (31 downto 0);
   signal XLXN_33 : std_logic_vector (31 downto 0);
   signal XLXN_40 : std_logic;
   signal XLXN_43 : std_logic;
   signal XLXN_47 : std_logic_vector (31 downto 0);
   signal XLXN_48 : std_logic_vector (31 downto 0);
   component add32
      port ( A    : in    std_logic_vector (31 downto 0); 
             B    : in    std_logic_vector (31 downto 0); 
             Cin  : in    std_logic; 
             S    : out   std_logic_vector (31 downto 0); 
             Cout : out   std_logic);
   end component;
   
   component MUX_32b
      port ( D0 : in    std_logic_vector (31 downto 0); 
             D1 : in    std_logic_vector (31 downto 0); 
             S0 : in    std_logic; 
             O  : out   std_logic_vector (31 downto 0));
   end component;
   
   component inv32
      port ( InV  : in    std_logic_vector (31 downto 0); 
             OutV : out   std_logic_vector (31 downto 0));
   end component;
   
   component buffer31
      port ( Bi : in    std_logic_vector (30 downto 0); 
             Bo : out   std_logic_vector (30 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component and_32bit
      port ( ando   : in    std_logic_vector (31 downto 0); 
             and1   : in    std_logic_vector (31 downto 0); 
             Result : out   std_logic);
   end component;
   
   component M2_1_MXILINX_Alu32_sch
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_22 : label is "XLXI_22_0";
begin
   XLXI_1 : add32
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>XLXN_17(31 downto 0),
                Cin=>OP(0),
                Cout=>open,
                S(31 downto 0)=>XLXN_31(31 downto 0));
   
   XLXI_2 : MUX_32b
      port map (D0(31 downto 0)=>B(31 downto 0),
                D1(31 downto 0)=>XLXN_4(31 downto 0),
                S0=>OP(0),
                O(31 downto 0)=>XLXN_17(31 downto 0));
   
   XLXI_3 : inv32
      port map (InV(31 downto 0)=>B(31 downto 0),
                OutV(31 downto 0)=>XLXN_4(31 downto 0));
   
   XLXI_10 : buffer31
      port map (Bi(30 downto 0)=>A(30 downto 0),
                Bo(30 downto 0)=>Ra(31 downto 1));
   
   XLXI_13 : GND
      port map (G=>La(31));
   
   XLXI_14 : MUX_32b
      port map (D0(31 downto 0)=>La(31 downto 0),
                D1(31 downto 0)=>Ra(31 downto 0),
                S0=>OP(0),
                O(31 downto 0)=>XLXN_32(31 downto 0));
   
   XLXI_15 : MUX_32b
      port map (D0(31 downto 0)=>A(31 downto 0),
                D1(31 downto 0)=>B(31 downto 0),
                S0=>OP(0),
                O(31 downto 0)=>XLXN_33(31 downto 0));
   
   XLXI_16 : buffer31
      port map (Bi(30 downto 0)=>A(31 downto 1),
                Bo(30 downto 0)=>La(30 downto 0));
   
   XLXI_17 : and_32bit
      port map (ando(31 downto 0)=>A(31 downto 0),
                and1(31 downto 0)=>B(31 downto 0),
                Result=>XLXN_40);
   
   XLXI_20 : MUX_32b
      port map (D0(31 downto 0)=>XLXN_31(31 downto 0),
                D1(31 downto 0)=>XLXN_32(31 downto 0),
                S0=>OP(1),
                O(31 downto 0)=>XLXN_47(31 downto 0));
   
   XLXI_21 : MUX_32b
      port map (D0(31 downto 0)=>XLXN_33(31 downto 0),
                D1(31 downto 0)=>gi(31 downto 0),
                S0=>OP(1),
                O(31 downto 0)=>XLXN_48(31 downto 0));
   
   XLXI_22 : M2_1_MXILINX_Alu32_sch
      port map (D0=>XLXN_40,
                D1=>XLXN_43,
                S0=>OP(0),
                O=>gi(0));
   
   XLXI_23 : GND
      port map (G=>XLXN_43);
   
   XLXI_24 : MUX_32b
      port map (D0(31 downto 0)=>XLXN_47(31 downto 0),
                D1(31 downto 0)=>XLXN_48(31 downto 0),
                S0=>OP(2),
                O(31 downto 0)=>Rout(31 downto 0));
   
   XLXI_43 : GND
      port map (G=>gi(1));
   
   XLXI_44 : GND
      port map (G=>gi(2));
   
   XLXI_45 : GND
      port map (G=>gi(3));
   
   XLXI_46 : GND
      port map (G=>gi(4));
   
   XLXI_47 : GND
      port map (G=>gi(5));
   
   XLXI_48 : GND
      port map (G=>gi(6));
   
   XLXI_49 : GND
      port map (G=>gi(7));
   
   XLXI_50 : GND
      port map (G=>gi(8));
   
   XLXI_51 : GND
      port map (G=>gi(9));
   
   XLXI_52 : GND
      port map (G=>gi(10));
   
   XLXI_53 : GND
      port map (G=>gi(11));
   
   XLXI_54 : GND
      port map (G=>gi(12));
   
   XLXI_55 : GND
      port map (G=>gi(13));
   
   XLXI_56 : GND
      port map (G=>gi(14));
   
   XLXI_57 : GND
      port map (G=>gi(15));
   
   XLXI_58 : GND
      port map (G=>gi(16));
   
   XLXI_59 : GND
      port map (G=>gi(17));
   
   XLXI_60 : GND
      port map (G=>gi(18));
   
   XLXI_61 : GND
      port map (G=>gi(19));
   
   XLXI_62 : GND
      port map (G=>gi(20));
   
   XLXI_63 : GND
      port map (G=>gi(21));
   
   XLXI_64 : GND
      port map (G=>gi(22));
   
   XLXI_65 : GND
      port map (G=>gi(23));
   
   XLXI_66 : GND
      port map (G=>gi(24));
   
   XLXI_67 : GND
      port map (G=>gi(25));
   
   XLXI_68 : GND
      port map (G=>gi(26));
   
   XLXI_69 : GND
      port map (G=>gi(27));
   
   XLXI_70 : GND
      port map (G=>gi(28));
   
   XLXI_71 : GND
      port map (G=>gi(29));
   
   XLXI_72 : GND
      port map (G=>gi(30));
   
   XLXI_73 : GND
      port map (G=>gi(31));
   
   XLXI_75 : GND
      port map (G=>Ra(0));
   
end BEHAVIORAL;


