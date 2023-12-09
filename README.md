# Acer-C720-Hackintosh
Finally a guide for running MacOS on the legendary Acer C720 Chromebook (Peppy). 

### ⚠️ Disclaimer
**By continuing, you acknowledge that you have read and understood the contents of the following disclaimer, and consent to their terms.**

**The process described in this document may cause irreversible damage to your laptop, and you should prepare yourself for that outcome before you begin. We accept absolutely no responsibility for the consequences of anyone choosing to follow or ignore any of the instructions in this document, and make no guarantees about the quality or effectiveness of the software therein.**

## Table of Contents

- Specifications

## Specifications and Status

### Specifications
| Type | Model |
|----------|----------|
| Processor | Intel Celeron 2955U/i3-4005U |
| Memory | 2/4gb DDR3L |
| Storage | 16gb/32gb M.2 2242 
| WiFi + Bluetooth | Atheros AR9462 |
| Sound | Realtek ALC |
| Display | 1366x768 |
| Touchpad | ELAN/Cypress |
| Touchscreen | 

### Status
| Type | Notes |
|----------|----------|
| Processor | Celeron 2955U Unsupported |
| Graphics | Intel HD 4400 ONLY |
| Memory | 4gb suggested for MacOS Mojave and later | 
| Storage | Replaceable, NVME unsupported. 256gb+ suggested |
| WiFi + Bluetooth | Fully Supported 
| Touchpad | Cypress unsupported, ELAN only |
| Sleep | With custom CoreBoot (see notes) |
| Touchscreen | Untested |
| FN Keys | Remapped for better functionallity (see SSDT's) |
| Speakers |
| HDMI Audio |
| AUX Headphones |
| Camera |
| SD Card | 

## Test MacOS Versions
- MacOS Catalina (10.15)
- MacOS Big Sur (11)
- MacOS Monterey (12)
- MacOS Ventura (13)
- MacOS Sonoma (14) 

## Installation 

### Preliminary
1. Flash Mr. Chromebox's [CoreBoot Firmware] (https://mrchromebox.tech/). 
2. Build the base OpenCore EFI for [Haswell Laptops] (https://dortania.github.io/OpenCore-Install-Guide/prerequisites.html/).
3. Map USB Devices

### Plist Modifications

### SSDT's

### Kexts
| Kext | Notes | 
| Lilu.kext | 
| WhateverGreen.kext |
| VirtualSMC.kext |
| SMCBatteryManager.kext | VirtualSMC Satalite |
| SMCProcessor.kext | VirtualSMC Satalite |
| SMCSuperIO.kext | VirtualSMC Satalite (untested) |
| VoodooI2C.kext | 
| VoodooI2CHID.kext | VoodooI2C Satalite (untested with Touchscreen) |

