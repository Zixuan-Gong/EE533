VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL InV(31:0)
        SIGNAL InV(15:0)
        SIGNAL InV(31:16)
        SIGNAL OutV(15:0)
        SIGNAL OutV(31:16)
        SIGNAL OutV(31:0)
        PORT Input InV(31:0)
        PORT Output OutV(31:0)
        BEGIN BLOCKDEF inv16
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            RECTANGLE N 0 -44 64 -20 
            RECTANGLE N 160 -44 224 -20 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 inv16
            PIN I(15:0) InV(15:0)
            PIN O(15:0) OutV(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 inv16
            PIN I(15:0) InV(31:16)
            PIN O(15:0) OutV(31:16)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1504 864 R0
        INSTANCE XLXI_2 1504 944 R0
        BEGIN BRANCH InV(31:0)
            WIRE 944 624 1296 624
        END BRANCH
        IOMARKER 944 624 InV(31:0) R180 28
        BEGIN BRANCH InV(15:0)
            WIRE 1344 832 1504 832
        END BRANCH
        BEGIN BRANCH InV(31:16)
            WIRE 1344 912 1504 912
        END BRANCH
        BEGIN BRANCH OutV(15:0)
            WIRE 1728 832 1888 832
        END BRANCH
        BEGIN BRANCH OutV(31:16)
            WIRE 1728 912 1872 912
        END BRANCH
        BEGIN BRANCH OutV(31:0)
            WIRE 944 688 1312 688
        END BRANCH
        IOMARKER 1312 688 OutV(31:0) R0 28
    END SHEET
END SCHEMATIC
