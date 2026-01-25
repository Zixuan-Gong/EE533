--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : tb_32and.vhw
-- /___/   /\     Timestamp : Fri Jan 23 20:42:43 2026
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb_32and
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY tb_32and IS
END tb_32and;

ARCHITECTURE testbench_arch OF tb_32and IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT and_32bit
        PORT (
            ando : In std_logic_vector (31 DownTo 0);
            and1 : In std_logic_vector (31 DownTo 0);
            andout : Out std_logic_vector (31 DownTo 0);
            Result : Out std_logic
        );
    END COMPONENT;

    SIGNAL ando : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL and1 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL andout : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL Result : std_logic := '0';

    BEGIN
        UUT : and_32bit
        PORT MAP (
            ando => ando,
            and1 => and1,
            andout => andout,
            Result => Result
        );

        PROCESS
            BEGIN
                WAIT FOR 1000 ns;

            END PROCESS;

    END testbench_arch;

