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
        SIGNAL XLXN_3
        SIGNAL Di(0)
        SIGNAL Di(2)
        SIGNAL Qo(0)
        SIGNAL Qo(1)
        SIGNAL Qo(2)
        SIGNAL Di(2:0)
        SIGNAL Qo(2:0)
        SIGNAL Di(1)
        PORT Input CLK
        PORT Input Di(2:0)
        PORT Output Qo(2:0)
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C CLK
            PIN D Di(0)
            PIN Q Qo(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C CLK
            PIN D Di(1)
            PIN Q Qo(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C CLK
            PIN D Di(2)
            PIN Q Qo(2)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1408 544 R0
        INSTANCE XLXI_2 1392 944 R0
        INSTANCE XLXI_3 1392 1376 R0
        BEGIN BRANCH CLK
            WIRE 992 512 1216 512
            WIRE 1216 512 1216 816
            WIRE 1216 816 1392 816
            WIRE 1216 816 1216 1248
            WIRE 1216 1248 1392 1248
            WIRE 1216 416 1408 416
            WIRE 1216 416 1216 512
        END BRANCH
        BEGIN BRANCH Di(0)
            WIRE 1056 288 1312 288
            WIRE 1312 288 1408 288
            BEGIN DISPLAY 1312 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Di(1)
            WIRE 1056 688 1280 688
            WIRE 1280 688 1392 688
            BEGIN DISPLAY 1280 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Di(2)
            WIRE 1056 1120 1280 1120
            WIRE 1280 1120 1392 1120
            BEGIN DISPLAY 1280 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Qo(0)
            WIRE 1792 288 1872 288
            WIRE 1872 288 2064 288
            BEGIN DISPLAY 1872 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Qo(1)
            WIRE 1776 688 1872 688
            WIRE 1872 688 2064 688
            BEGIN DISPLAY 1872 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Qo(2)
            WIRE 1776 1120 1888 1120
            WIRE 1888 1120 2080 1120
            BEGIN DISPLAY 1888 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Di(2:0)
            WIRE 352 256 768 256
        END BRANCH
        BEGIN BRANCH Qo(2:0)
            WIRE 368 352 768 352
        END BRANCH
        IOMARKER 352 256 Di(2:0) R180 28
        IOMARKER 992 512 CLK R180 28
        IOMARKER 768 352 Qo(2:0) R0 28
    END SHEET
END SCHEMATIC
