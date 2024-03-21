/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLtGqp1c.aml, Wed Mar 20 20:07:25 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000AC (172)
 *     Revision         0x02
 *     Checksum         0x61
 *     OEM ID           "SQRL"
 *     OEM Table ID     "CBKB"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "SQRL", "CBKB", 0x00000000)
{
    External (_SB_.PCI0.PS2K, DeviceObj)

    Name (_SB.PCI0.PS2K.RMCF, Package (0x02)
    {
        "Keyboard", 
        Package (0x02)
        {
            "Custom ADB Map", 
            Package (0x09)
            {
                Package (0x00){}, 
                "3b=4d", 
                "3c=42", 
                "3d=34", 
                "40=6b", 
                "41=71", 
                "42=4a", 
                "43=49", 
                "44=48"
            }
        }
    })
}

