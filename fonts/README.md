# TrueType Fonts Collection

This directory contains a curated set of TrueType fonts (TTF/OTF) intended for use in Arch Linux environments. The collection includes FiraCode, JetBrains Mono NerdFont Mono, MartianMono, OpenSans, and San Francisco Pro fonts.

[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square&logo=opensource)](../LICENSE)

## Installation

To install the fonts, copy the contents of the `fonts/` directory to one of the following locations:

- **User-specific installation** (recommended):  
  `$HOME/.local/share/fonts/`  
  _This is the modern standard for user-level font installation._

- **Legacy user-specific installation:**  
  `$HOME/.fonts/`  
  _Supported for compatibility with older systems._

- **System-wide installation** (requires root privileges):  
  `/usr/share/fonts/` or `/usr/local/share/fonts/`  
  _Makes fonts available to all users on the system._

> **Note:** 
> - System-wide installation requires `sudo` privileges.
> - Fonts in this collection are free for non-commercial use. Commercial use may require obtaining appropriate licenses from the respective font authors or copyright holders.

## Updating the Font Cache

After copying the fonts, update the font cache to ensure the system recognizes the new fonts. Run the following commands as appropriate:

```zsh
# rebuild font cache for all users
sudo fc-cache -f -v
# rebuild font cache for current user
fc-cache -f -v
```

## Verification
To verify that the fonts have been installed correctly, you can list fonts using:
```zsh
fc-list | grep -i "FiraCode\|JetBrainsMono\|MartianMono\|OpenSans\|SF-Pro-Display\|sft"
```

## Sponsorship 

[![Boosty](https://img.shields.io/badge/Boosty-F15F2C?style=for-the-badge&logo=boosty&logoColor=white)![Support](https://img.shields.io/badge/Support%20me-grey?style=for-the-badge)](https://boosty.to/andmitr/donate) 

![Bitcoin](https://img.shields.io/badge/Bitcoin-F7931A?style=flat&logo=bitcoin&logoColor=white&logoSize=auto) 
```
1CCnwAvJYEoDVGM7vsBg2Q99cF9EHtBVaY
```
![Tether](https://img.shields.io/badge/Tether%20(USDT%20ETH)-168363?style=flat&logo=tether&logoColor=white&logoSize=auto) 
```
0x54f0ccc6b2987de454f69f2814fc9202bcfb74fe
```
