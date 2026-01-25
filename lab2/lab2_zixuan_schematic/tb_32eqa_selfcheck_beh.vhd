--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : tb_32eqa_selfcheck.vhw
-- /___/   /\     Timestamp : Fri Jan 23 20:42:48 2026
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb_32eqa_selfcheck_beh
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

ENTITY tb_32eqa_selfcheck_beh IS
END tb_32eqa_selfcheck_beh;

ARCHITECTURE testbench_arch OF tb_32eqa_selfcheck_beh IS
    COMPONENT and_32bit
        PORT (
            ando : In std_logic_vector (31 DownTo 0);
            and1 : In std_logic_vector (31 DownTo 0);
            Result : Out std_logic
        );
    END COMPONENT;

    SIGNAL ando : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL and1 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL Result : std_logic := '1';

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    BEGIN
        UUT : and_32bit
        PORT MAP (
            ando => ando,
            and1 => and1,
            Result => Result
        );

        PROCESS
            PROCEDURE CHECK_Result(
                next_Result : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (Result /= next_Result) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns Result="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, Result);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_Result);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                ando <= "00010001000100010001000100010001";
                and1 <= "00010001000100010001000100010001";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 200 ns;
                ando <= "11111111111111111111111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  350ns
                WAIT FOR 50 ns;
                CHECK_Result('0', 350);
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 150 ns;
                and1 <= "11111111111111111111111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  550ns
                WAIT FOR 50 ns;
                CHECK_Result('1', 550);
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 150 ns;
                ando <= "00010010001101000101011001111000";
                -- -------------------------------------
                -- -------------  Current Time:  750ns
                WAIT FOR 50 ns;
                CHECK_Result('0', 750);
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 50 ns;
                and1 <= "00010010001101000101011001111000";
                -- -------------------------------------
                -- -------------  Current Time:  850ns
                WAIT FOR 50 ns;
                CHECK_Result('1', 850);
                -- -------------------------------------
                WAIT FOR 150 ns;

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;

