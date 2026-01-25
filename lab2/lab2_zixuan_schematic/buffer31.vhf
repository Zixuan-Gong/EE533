--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : buffer31.vhf
-- /___/   /\     Timestamp : 01/24/2026 16:59:33
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/buffer31.sch" buffer31.vhf
--Design Name: buffer31
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

entity buffer31 is
   port ( Bi : in    std_logic_vector (30 downto 0); 
          Bo : out   std_logic_vector (30 downto 0));
end buffer31;

architecture BEHAVIORAL of buffer31 is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>Bi(0),
                O=>Bo(0));
   
   XLXI_2 : BUF
      port map (I=>Bi(1),
                O=>Bo(1));
   
   XLXI_3 : BUF
      port map (I=>Bi(2),
                O=>Bo(2));
   
   XLXI_4 : BUF
      port map (I=>Bi(3),
                O=>Bo(3));
   
   XLXI_5 : BUF
      port map (I=>Bi(4),
                O=>Bo(4));
   
   XLXI_6 : BUF
      port map (I=>Bi(5),
                O=>Bo(5));
   
   XLXI_7 : BUF
      port map (I=>Bi(6),
                O=>Bo(6));
   
   XLXI_8 : BUF
      port map (I=>Bi(7),
                O=>Bo(7));
   
   XLXI_9 : BUF
      port map (I=>Bi(8),
                O=>Bo(8));
   
   XLXI_10 : BUF
      port map (I=>Bi(9),
                O=>Bo(9));
   
   XLXI_11 : BUF
      port map (I=>Bi(10),
                O=>Bo(10));
   
   XLXI_12 : BUF
      port map (I=>Bi(11),
                O=>Bo(11));
   
   XLXI_13 : BUF
      port map (I=>Bi(12),
                O=>Bo(12));
   
   XLXI_14 : BUF
      port map (I=>Bi(13),
                O=>Bo(13));
   
   XLXI_15 : BUF
      port map (I=>Bi(14),
                O=>Bo(14));
   
   XLXI_32 : BUF
      port map (I=>Bi(15),
                O=>Bo(15));
   
   XLXI_33 : BUF
      port map (I=>Bi(16),
                O=>Bo(16));
   
   XLXI_34 : BUF
      port map (I=>Bi(17),
                O=>Bo(17));
   
   XLXI_35 : BUF
      port map (I=>Bi(18),
                O=>Bo(18));
   
   XLXI_36 : BUF
      port map (I=>Bi(19),
                O=>Bo(19));
   
   XLXI_37 : BUF
      port map (I=>Bi(20),
                O=>Bo(20));
   
   XLXI_38 : BUF
      port map (I=>Bi(21),
                O=>Bo(21));
   
   XLXI_39 : BUF
      port map (I=>Bi(22),
                O=>Bo(22));
   
   XLXI_40 : BUF
      port map (I=>Bi(23),
                O=>Bo(23));
   
   XLXI_41 : BUF
      port map (I=>Bi(24),
                O=>Bo(24));
   
   XLXI_42 : BUF
      port map (I=>Bi(25),
                O=>Bo(25));
   
   XLXI_43 : BUF
      port map (I=>Bi(26),
                O=>Bo(26));
   
   XLXI_44 : BUF
      port map (I=>Bi(27),
                O=>Bo(27));
   
   XLXI_45 : BUF
      port map (I=>Bi(28),
                O=>Bo(28));
   
   XLXI_46 : BUF
      port map (I=>Bi(29),
                O=>Bo(29));
   
   XLXI_47 : BUF
      port map (I=>Bi(30),
                O=>Bo(30));
   
end BEHAVIORAL;


