VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A
        SIGNAL B
        SIGNAL C
        SIGNAL S
        SIGNAL Cout
        PORT Input A
        PORT Input B
        PORT Input C
        PORT Output S
        PORT Output Cout
        BEGIN BLOCKDEF Add1b
            TIMESTAMP 2026 1 23 22 28 45
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 Add1b
            PIN A A
            PIN B B
            PIN C C
            PIN S S
            PIN Cout Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1200 1024 R0
        END INSTANCE
        IOMARKER 1168 864 A R180 28
        IOMARKER 1168 928 B R180 28
        IOMARKER 1168 992 C R180 28
        IOMARKER 1616 864 S R0 28
        IOMARKER 1616 992 Cout R0 28
        BEGIN BRANCH A
            WIRE 1168 864 1200 864
        END BRANCH
        BEGIN BRANCH B
            WIRE 1168 928 1200 928
        END BRANCH
        BEGIN BRANCH C
            WIRE 1168 992 1200 992
        END BRANCH
        BEGIN BRANCH S
            WIRE 1584 864 1616 864
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1584 992 1616 992
        END BRANCH
    END SHEET
END SCHEMATIC
