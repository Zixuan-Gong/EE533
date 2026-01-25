--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : inv32.vhf
-- /___/   /\     Timestamp : 01/24/2026 16:59:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/inv32.sch" inv32.vhf
--Design Name: inv32
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

entity INV16_MXILINX_inv32 is
   port ( I : in    std_logic_vector (15 downto 0); 
          O : out   std_logic_vector (15 downto 0));
end INV16_MXILINX_inv32;

architecture BEHAVIORAL of INV16_MXILINX_inv32 is
   attribute BOX_TYPE   : string ;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   I_36_30 : INV
      port map (I=>I(8),
                O=>O(8));
   
   I_36_31 : INV
      port map (I=>I(9),
                O=>O(9));
   
   I_36_32 : INV
      port map (I=>I(10),
                O=>O(10));
   
   I_36_33 : INV
      port map (I=>I(11),
                O=>O(11));
   
   I_36_34 : INV
      port map (I=>I(15),
                O=>O(15));
   
   I_36_35 : INV
      port map (I=>I(14),
                O=>O(14));
   
   I_36_36 : INV
      port map (I=>I(13),
                O=>O(13));
   
   I_36_37 : INV
      port map (I=>I(12),
                O=>O(12));
   
   I_36_38 : INV
      port map (I=>I(4),
                O=>O(4));
   
   I_36_39 : INV
      port map (I=>I(5),
                O=>O(5));
   
   I_36_40 : INV
      port map (I=>I(6),
                O=>O(6));
   
   I_36_41 : INV
      port map (I=>I(7),
                O=>O(7));
   
   I_36_42 : INV
      port map (I=>I(3),
                O=>O(3));
   
   I_36_43 : INV
      port map (I=>I(2),
                O=>O(2));
   
   I_36_44 : INV
      port map (I=>I(1),
                O=>O(1));
   
   I_36_45 : INV
      port map (I=>I(0),
                O=>O(0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity inv32 is
   port ( InV  : in    std_logic_vector (31 downto 0); 
          OutV : out   std_logic_vector (31 downto 0));
end inv32;

architecture BEHAVIORAL of inv32 is
   attribute HU_SET     : string ;
   component INV16_MXILINX_inv32
      port ( I : in    std_logic_vector (15 downto 0); 
             O : out   std_logic_vector (15 downto 0));
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
begin
   XLXI_1 : INV16_MXILINX_inv32
      port map (I(15 downto 0)=>InV(15 downto 0),
                O(15 downto 0)=>OutV(15 downto 0));
   
   XLXI_2 : INV16_MXILINX_inv32
      port map (I(15 downto 0)=>InV(31 downto 16),
                O(15 downto 0)=>OutV(31 downto 16));
   
end BEHAVIORAL;


