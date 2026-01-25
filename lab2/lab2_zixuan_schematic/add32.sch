VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL S(7:0)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL A(15:8)
        SIGNAL B(15:8)
        SIGNAL S(15:8)
        SIGNAL A(23:16)
        SIGNAL B(23:16)
        SIGNAL S(23:16)
        SIGNAL S(31:24)
        SIGNAL A(31:24)
        SIGNAL B(31:24)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL S(31:0)
        SIGNAL XLXN_23
        SIGNAL Cin
        SIGNAL Cout
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output S(31:0)
        PORT Input Cin
        PORT Output Cout
        BEGIN BLOCKDEF add_8b
            TIMESTAMP 2026 1 24 1 4 30
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 add_8b
            PIN Cin Cin
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN S(7:0) S(7:0)
            PIN Cout XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 add_8b
            PIN Cin XLXN_1
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN S(7:0) S(15:8)
            PIN Cout XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_3 add_8b
            PIN Cin XLXN_2
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN S(7:0) S(23:16)
            PIN Cout XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 add_8b
            PIN Cin XLXN_3
            PIN A(7:0) A(31:24)
            PIN B(7:0) B(31:24)
            PIN S(7:0) S(31:24)
            PIN Cout Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1104 560 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1104 864 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1104 1136 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1104 1424 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1040 592 1040 704
            WIRE 1040 704 1104 704
            WIRE 1040 592 1568 592
            WIRE 1488 528 1568 528
            WIRE 1568 528 1568 592
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1040 896 1568 896
            WIRE 1040 896 1040 976
            WIRE 1040 976 1104 976
            WIRE 1488 832 1568 832
            WIRE 1568 832 1568 896
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1040 1216 1040 1264
            WIRE 1040 1264 1104 1264
            WIRE 1040 1216 1552 1216
            WIRE 1488 1104 1552 1104
            WIRE 1552 1104 1552 1216
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1488 400 1696 400
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 976 464 1104 464
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 976 528 1104 528
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 976 768 1104 768
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 976 832 1104 832
        END BRANCH
        BEGIN BRANCH S(15:8)
            WIRE 1488 704 1696 704
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 992 1040 1104 1040
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 992 1104 1104 1104
        END BRANCH
        BEGIN BRANCH S(23:16)
            WIRE 1488 976 1696 976
        END BRANCH
        BEGIN BRANCH S(31:24)
            WIRE 1488 1264 1664 1264
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 992 1328 1104 1328
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 992 1392 1104 1392
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 528 528 736 528
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 528 576 736 576
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 608 672 720 672
        END BRANCH
        IOMARKER 528 576 B(31:0) R180 28
        IOMARKER 720 672 S(31:0) R0 28
        IOMARKER 528 528 A(31:0) R180 28
        BEGIN BRANCH Cin
            WIRE 1072 400 1104 400
        END BRANCH
        IOMARKER 1072 400 Cin R180 28
        BEGIN BRANCH Cout
            WIRE 1488 1392 1520 1392
        END BRANCH
        IOMARKER 1520 1392 Cout R0 28
    END SHEET
END SCHEMATIC
