VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL B
        SIGNAL C
        SIGNAL XLXN_5
        SIGNAL A
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL S
        SIGNAL Cout
        PORT Input B
        PORT Input C
        PORT Input A
        PORT Output S
        PORT Output Cout
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 C
            PIN I1 XLXN_5
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_3 or2
            PIN I0 XLXN_11
            PIN I1 XLXN_12
            PIN O Cout
        END BLOCK
        BEGIN BLOCK XLXI_4 xor2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_5 xor2
            PIN I0 C
            PIN I1 XLXN_5
            PIN O S
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1200 1200 R0
        INSTANCE XLXI_2 1392 1040 R0
        INSTANCE XLXI_3 1712 1072 R0
        INSTANCE XLXI_4 1184 768 R0
        INSTANCE XLXI_5 1504 800 R0
        BEGIN BRANCH B
            WIRE 1008 704 1136 704
            WIRE 1136 704 1168 704
            WIRE 1168 704 1184 704
            WIRE 1136 704 1136 1136
            WIRE 1136 1136 1200 1136
        END BRANCH
        BEGIN BRANCH C
            WIRE 1008 736 1280 736
            WIRE 1280 736 1488 736
            WIRE 1488 736 1504 736
            WIRE 1280 736 1280 976
            WIRE 1280 976 1392 976
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1328 832 1328 912
            WIRE 1328 912 1392 912
            WIRE 1328 832 1456 832
            WIRE 1440 672 1456 672
            WIRE 1456 672 1504 672
            WIRE 1456 672 1456 832
        END BRANCH
        IOMARKER 1008 640 A R180 28
        IOMARKER 1008 704 B R180 28
        IOMARKER 1008 736 C R180 28
        BEGIN BRANCH A
            WIRE 1008 640 1104 640
            WIRE 1104 640 1184 640
            WIRE 1104 640 1104 1072
            WIRE 1104 1072 1200 1072
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1456 1104 1584 1104
            WIRE 1584 1008 1584 1104
            WIRE 1584 1008 1712 1008
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1648 944 1712 944
        END BRANCH
        BEGIN BRANCH S
            WIRE 1760 704 1792 704
        END BRANCH
        IOMARKER 1792 704 S R0 28
        BEGIN BRANCH Cout
            WIRE 1968 976 2000 976
        END BRANCH
        IOMARKER 2000 976 Cout R0 28
    END SHEET
END SCHEMATIC
