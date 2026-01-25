VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Do(15:0)
        SIGNAL Do(31:16)
        SIGNAL XLXN_3
        SIGNAL CLK
        SIGNAL Din(15:0)
        SIGNAL Din(31:16)
        SIGNAL Din(31:0)
        SIGNAL Do(31:0)
        PORT Input CLK
        PORT Input Din(31:0)
        PORT Output Do(31:0)
        BEGIN BLOCKDEF DFF16
            TIMESTAMP 2026 1 24 6 57 29
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 DFF16
            PIN CLK CLK
            PIN Din(15:0) Din(15:0)
            PIN Do(15:0) Do(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 DFF16
            PIN CLK CLK
            PIN Din(15:0) Din(31:16)
            PIN Do(15:0) Do(31:16)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1408 496 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1408 704 R0
        END INSTANCE
        BEGIN BRANCH Do(15:0)
            WIRE 1792 400 2064 400
        END BRANCH
        BEGIN BRANCH Do(31:16)
            WIRE 1792 608 2048 608
            WIRE 2048 608 2048 624
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1168 528 1312 528
            WIRE 1312 528 1312 608
            WIRE 1312 608 1408 608
            WIRE 1312 400 1408 400
            WIRE 1312 400 1312 528
        END BRANCH
        BEGIN BRANCH Din(15:0)
            WIRE 1136 464 1408 464
        END BRANCH
        BEGIN BRANCH Din(31:16)
            WIRE 1136 672 1408 672
        END BRANCH
        BEGIN BRANCH Din(31:0)
            WIRE 992 144 1184 144
        END BRANCH
        BEGIN BRANCH Do(31:0)
            WIRE 992 208 1184 208
        END BRANCH
        IOMARKER 992 144 Din(31:0) R180 28
        IOMARKER 1184 208 Do(31:0) R0 28
        IOMARKER 1168 528 CLK R180 28
    END SHEET
END SCHEMATIC
