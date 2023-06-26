/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230331 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-Disable_NVMe.aml, Thu Jun  1 12:43:08 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000086 (134)
 *     Revision         0x02
 *     Checksum         0x2E
 *     OEM ID           "ZPSS"
 *     OEM Table ID     "DNVMe"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "ZPSS", "DNVMe", 0x00000000)
{
    External (_SB.PCI0.GPP5.PXSX, DeviceObj)

    Method (_SB.PCI0.GPP5.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (_OSI ("Darwin"))
        {
            If (!Arg2)
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x02)
            {
                "class-code", 
                Buffer (0x04)
                {
                     0xFF, 0x08, 0x01, 0x00                           // ....
                }
            })
        }
    }
}

