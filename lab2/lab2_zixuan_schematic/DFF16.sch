VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL CLK
        SIGNAL Din(7:0)
        SIGNAL Din(15:8)
        SIGNAL Do(7:0)
        SIGNAL Do(15:8)
        SIGNAL Din(15:0)
        SIGNAL Do(15:0)
        PORT Input CLK
        PORT Input Din(15:0)
        PORT Output Do(15:0)
        BEGIN BLOCKDEF DFF8
            TIMESTAMP 2026 1 24 6 53 56
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 DFF8
            PIN Din(7:0) Din(7:0)
            PIN CLK CLK
            PIN Qo(7:0) Do(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 DFF8
            PIN Din(7:0) Din(15:8)
            PIN CLK CLK
            PIN Qo(7:0) Do(15:8)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1216 544 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1216 720 R0
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 976 512 1088 512
            WIRE 1088 512 1216 512
            WIRE 1088 512 1088 688
            WIRE 1088 688 1216 688
        END BRANCH
        BEGIN BRANCH Din(7:0)
            WIRE 992 448 1216 448
        END BRANCH
        BEGIN BRANCH Din(15:8)
            WIRE 992 624 1216 624
        END BRANCH
        BEGIN BRANCH Do(7:0)
            WIRE 1600 448 1776 448
        END BRANCH
        BEGIN BRANCH Do(15:8)
            WIRE 1600 624 1792 624
        END BRANCH
        BEGIN BRANCH Din(15:0)
            WIRE 800 160 1056 160
        END BRANCH
        BEGIN BRANCH Do(15:0)
            WIRE 800 192 1072 192
        END BRANCH
        IOMARKER 800 160 Din(15:0) R180 28
        IOMARKER 1072 192 Do(15:0) R0 28
        IOMARKER 976 512 CLK R180 28
    END SHEET
END SCHEMATIC
