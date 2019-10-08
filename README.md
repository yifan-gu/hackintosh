# hackintosh
My hackintosh EFI (ASUS X299 PRIME DELUXE II + i9 7980XE + Radeon VII)

### BIOS Setup

- MSR lock [disabled]
- XMP [enabled, profile#1]
- CSM [disabled]
- Fast boot [disabled]
- On-board bluetooth [disabled]

### EFI, config.plist & SSDT for USB and bluetooth

See EFI folder
Remember to update the SMBIOS serial number.


### CPU/Model name

CPU:
```
plutil -convert xml1 AppleSystemInfo.strings
#edit
plutil -convert binary1 AppleSystemInfo.strings

Press F3 to show Recovery in clover.
Enter Recovery Mode.

cp AppleSystemInfo.strings /System/Library/PrivateFrameworks/AppleSystemInfo.framework/Versions/A/Resources/en.lproj/AppleSystemInfo.strings
```

Model:
```
plutil -convert xml1 com.apple.SystemProfiler.plist
#edit
plutil -convert binary1 com.apple.SystemProfiler.plist

cp com.apple.SystemProfiler.plist ~/Library/Preferences/com.apple.SystemProfiler.plist
```
