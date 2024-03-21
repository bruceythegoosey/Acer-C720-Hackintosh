/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLqFyhOd.aml, Wed Mar 20 20:12:05 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008A (138)
 *     Revision         0x02
 *     Checksum         0x74
 *     OEM ID           "ACDT"
 *     OEM Table ID     "MCHCSBUS"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "MCHCSBUS", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.SBUS, DeviceObj)

    Device (_SB.PCI0.SBUS.BUS0)
    {
        Name (_CID, "smbus")  // _CID: Compatible ID
        Name (_ADR, Zero)  // _ADR: Address
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

