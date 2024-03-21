/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLreYzUB.aml, Wed Mar 20 19:50:51 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000336 (822)
 *     Revision         0x02
 *     Checksum         0x44
 *     OEM ID           "GWYDIE"
 *     OEM Table ID     "PLUGLALT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "GWYDIE", "PLUGLALT", 0x00000000)
{
    External (_SB_.CP02, DeviceObj)
    External (_SB_.CP03, DeviceObj)
    External (_SB_.CP04, DeviceObj)
    External (_SB_.CP05, DeviceObj)
    External (_SB_.CP06, DeviceObj)
    External (_SB_.CP07, DeviceObj)

    Scope (\_SB)
    {
        Processor (PR00, 0x00, 0x00000410, 0x06)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x02)
                {
                    "plugin-type", 
                    One
                })
            }

            If (_OSI ("Darwin"))
            {
                Return (\_SB.PR00)
            }
        }

        Processor (PR01, 0x01, 0x00000410, 0x06)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            If (_OSI ("Darwin"))
            {
                Return (\_SB.PR01)
            }
        }

        Processor (PR02, 0x02, 0x00000410, 0x06)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((CondRefOf (\_SB.CP02) && _OSI ("Darwin")))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            If ((CondRefOf (\_SB.CP02) && _OSI ("Darwin")))
            {
                Return (\_SB.CP02) /* External reference */
            }
        }

        Processor (PR03, 0x03, 0x00000410, 0x06)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((CondRefOf (\_SB.CP03) && _OSI ("Darwin")))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            If ((CondRefOf (\_SB.CP03) && _OSI ("Darwin")))
            {
                Return (\_SB.CP03) /* External reference */
            }
        }

        Processor (PR04, 0x04, 0x00000410, 0x06)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((CondRefOf (\_SB.CP04) && _OSI ("Darwin")))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            If ((CondRefOf (\_SB.CP04) && _OSI ("Darwin")))
            {
                Return (\_SB.CP04) /* External reference */
            }
        }

        Processor (PR05, 0x05, 0x00000410, 0x06)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((CondRefOf (\_SB.CP05) && _OSI ("Darwin")))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            If ((CondRefOf (\_SB.CP05) && _OSI ("Darwin")))
            {
                Return (\_SB.CP05) /* External reference */
            }
        }

        Processor (PR06, 0x06, 0x00000410, 0x06)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((CondRefOf (\_SB.CP06) && _OSI ("Darwin")))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            If ((CondRefOf (\_SB.CP06) && _OSI ("Darwin")))
            {
                Return (\_SB.CP06) /* External reference */
            }
        }

        Processor (PR07, 0x07, 0x00000410, 0x06)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((CondRefOf (\_SB.CP07) && _OSI ("Darwin")))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            If ((CondRefOf (\_SB.CP07) && _OSI ("Darwin")))
            {
                Return (\_SB.CP07) /* External reference */
            }
        }
    }
}

