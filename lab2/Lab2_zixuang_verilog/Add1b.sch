VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Cout
        SIGNAL S
        SIGNAL C
        SIGNAL A
        SIGNAL B
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_13
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        PORT Output Cout
        PORT Output S
        PORT Input C
        PORT Input A
        PORT Input B
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
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_2 xor2
            PIN I0 C
            PIN I1 XLXN_7
            PIN O S
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 C
            PIN I1 XLXN_7
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 XLXN_5
            PIN I1 XLXN_4
            PIN O Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH Cout
            WIRE 2176 1136 2192 1136
        END BRANCH
        BEGIN BRANCH S
            WIRE 2000 880 2016 880
            WIRE 2016 848 2192 848
            WIRE 2016 848 2016 880
        END BRANCH
        BEGIN BRANCH C
            WIRE 976 976 1232 976
            WIRE 1232 976 1680 976
            WIRE 1232 976 1232 1136
            WIRE 1232 1136 1632 1136
            WIRE 1680 912 1744 912
            WIRE 1680 912 1680 976
        END BRANCH
        BEGIN BRANCH B
            WIRE 976 880 1120 880
            WIRE 1120 880 1232 880
            WIRE 1120 880 1120 1280
            WIRE 1120 1280 1344 1280
        END BRANCH
        BEGIN BRANCH A
            WIRE 976 816 1072 816
            WIRE 1072 816 1232 816
            WIRE 1072 816 1072 1216
            WIRE 1072 1216 1344 1216
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1888 1104 1920 1104
        END BRANCH
        INSTANCE XLXI_4 1632 1200 R0
        BEGIN BRANCH XLXN_7
            WIRE 1488 848 1552 848
            WIRE 1552 848 1744 848
            WIRE 1552 848 1552 1072
            WIRE 1552 1072 1632 1072
        END BRANCH
        INSTANCE XLXI_1 1232 944 R0
        INSTANCE XLXI_2 1744 976 R0
        INSTANCE XLXI_5 1920 1232 R0
        BEGIN BRANCH XLXN_5
            WIRE 1600 1248 1904 1248
            WIRE 1904 1168 1920 1168
            WIRE 1904 1168 1904 1248
        END BRANCH
        INSTANCE XLXI_3 1344 1344 R0
        IOMARKER 976 816 A R180 28
        IOMARKER 976 880 B R180 28
        IOMARKER 976 976 C R180 28
        IOMARKER 2192 848 S R0 28
        IOMARKER 2192 1136 Cout R0 28
    END SHEET
END SCHEMATIC
