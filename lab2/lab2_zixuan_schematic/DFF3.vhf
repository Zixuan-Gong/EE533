--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : DFF3.vhf
-- /___/   /\     Timestamp : 01/24/2026 16:59:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/Desktop/Lab2_zixuang/Lab2_zixuan/DFF3.sch" DFF3.vhf
--Design Name: DFF3
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

entity DFF3 is
   port ( CLK : in    std_logic; 
          Di  : in    std_logic_vector (2 downto 0); 
          Qo  : out   std_logic_vector (2 downto 0));
end DFF3;

architecture BEHAVIORAL of DFF3 is
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
                D=>Di(0),
                Q=>Qo(0));
   
   XLXI_2 : FD
      port map (C=>CLK,
                D=>Di(1),
                Q=>Qo(1));
   
   XLXI_3 : FD
      port map (C=>CLK,
                D=>Di(2),
                Q=>Qo(2));
   
end BEHAVIORAL;


