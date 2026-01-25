--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : DFF8.vhf
-- /___/   /\     Timestamp : 01/24/2026 16:59:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/dff8.sch" DFF8.vhf
--Design Name: dff8
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

entity dff8 is
   port ( CLK : in    std_logic; 
          Din : in    std_logic_vector (7 downto 0); 
          Qo  : out   std_logic_vector (7 downto 0));
end dff8;

architecture BEHAVIORAL of dff8 is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   component FD
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute INIT of FD : component is "0";
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>CLK,
                D=>Din(7),
                Q=>Qo(7));
   
   XLXI_9 : FD
      port map (C=>CLK,
                D=>Din(0),
                Q=>Qo(0));
   
   XLXI_10 : FD
      port map (C=>CLK,
                D=>Din(1),
                Q=>Qo(1));
   
   XLXI_11 : FD
      port map (C=>CLK,
                D=>Din(2),
                Q=>Qo(2));
   
   XLXI_12 : FD
      port map (C=>CLK,
                D=>Din(3),
                Q=>Qo(3));
   
   XLXI_13 : FD
      port map (C=>CLK,
                D=>Din(4),
                Q=>Qo(4));
   
   XLXI_14 : FD
      port map (C=>CLK,
                D=>Din(5),
                Q=>Qo(5));
   
   XLXI_15 : FD
      port map (C=>CLK,
                D=>Din(6),
                Q=>Qo(6));
   
end BEHAVIORAL;


