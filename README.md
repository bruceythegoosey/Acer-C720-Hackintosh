# Acer-C720-Hackintosh
Finally a real guide for running MacOS on the legendary Acer C720 Chromebook (Peppy). 

| Big Sur | Ventura | Sonoma |
|------------|-------------|-------------|
|<img src="Resources/Pictures/Sur.png" width="300">|<img src="Resources/Pictures/Ventura.png" width="300">

### ⚠️ Disclaimer
**By continuing, you acknowledge that you have read and understood the contents of the following disclaimer, and consent to their terms.**

**The process described in this document may cause irreversible damage to your laptop. Prepare yourself for that outcome before you begin. We accept absolutely no responsibility for the consequences of anyone electing to follow or ignore any of the instructions in this document, and make no guarantees about the quality or effectiveness of the software therein.**

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
| Sound | Realtek ALC283 |
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
| WiFi | Supported on MacOS Big Sur and earlier |
| Bluetooth | Supported on MacOS High Sierra and earlier |
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
1. Flash Mr. Chromebox's [CoreBoot Firmware](https://mrchromebox.tech/). 
2. Build the base OpenCore EFI for [Haswell Laptops](https://dortania.github.io/OpenCore-Install-Guide/prerequisites.html/).
3. Map USB Devices

### Plist Modifications

### SSDT's
Note: No need for SSDT-XOSI or SSDT-GPIO if using ELAN Touchpad. Will work OOTB.
### Kexts
| Kext | Notes | Download | 
|----------|----------|----------|
| Lilu || [Link](https://github.com/acidanthera/Lilu/releases) | 
| WhateverGreen || [Link](https://github.com/acidanthera/WhateverGreen/releases/tag/1.6.6) |
| VirtualSMC || [Link](https://github.com/acidanthera/VirtualSMC/releases) |
| SMCBatteryManager | VirtualSMC Satalite | [Link](https://github.com/acidanthera/VirtualSMC/releases) |
| SMCProcessor | VirtualSMC Satalite | [Link](https://github.com/acidanthera/VirtualSMC/releases) |
| SMCLightSensor | VirtualSMC Satalite | [Link](https://github.com/acidanthera/VirtualSMC/releases) |
| SMCSuperIO | VirtualSMC Fan Satalite (untested) | [Link](https://github.com/acidanthera/VirtualSMC/releases) |
| VoodooI2C || [Link](https://github.com/VoodooI2C/VoodooI2C/releases) |
| VoodooI2CELAN | VoodooI2C Satalite for ELAN Touchpad | [Link](https://github.com/VoodooI2C/VoodooI2C/releases) |
| VoodooI2CAtmelMXT | VoodooI2C Satalite for ATMEL Touchscreen | [Link](https://github.com/VoodooI2C/VoodooI2C/releases) |
| VoodooPS2Controller | Remove VoodooPS2Mouse and VoodooPS2Trackpad Plugins | [Link](https://github.com/acidanthera/VoodooPS2/releases/) |
| AppleALC | Realtek Speaker, AUX and HDMI Support | [Link](https://github.com/acidanthera/AppleALC/releases) |
| HS80211Family | Wifi Injection for MacOS releases up to Big Sur - DO NOT USE on Monterey and newer | [Link](https://github.com/qiqco/Atheros-Wi-Fi-Hackintosh-macOS/blob/main/HS80211Family.kext.zip) |
| Atheros40 | Wifi Injection for MacOS releases up to Big Sur - DO NOT USE on Monterey and newer | [Link](https://github.com/qiqco/Atheros-Wi-Fi-Hackintosh-macOS/blob/main/AirPortAtheros40-AR9462.zip)

Note: Need a project? The original Cypress driver from CoolStar needs ported from the original VoodooI2C to a Voodoo Satalite. 

Note: Bluetooth may work on High Sierra and earlier with BTFirmwareUploader or ATH9Kfixup but has not been tested recently. Kexts will not load properly on Mojave and newer.
