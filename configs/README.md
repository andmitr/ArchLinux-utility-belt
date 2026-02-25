# Arch Linux Configuration Files
 
This directory contains configuration files for system components and applications tailored to an Arch Linux environment. These files are designed for my workflow but can be adapted to other setups with appropriate modifications.

[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square&logo=opensource)](../LICENSE)

## Table of Contents
- [Configuration Files](#configuration-files)
  - [Shell Configuration](#shell-configuration)
  - [Git Configuration](#git-configuration)
  - [Build Configuration](#build-configuration)
  - [System Configuration](#system-configuration)
  - [Boot Loader Configuration](#boot-loader-configuration)
  - [X Session Configuration](#x-session-configuration)
- [Notes](#notes)
- [Sponsorship](#sponsorship)

## Configuration Files

### Shell Configuration
`.zshrc`: ZSH shell configuration with the following features:
  - Oh-My-ZSH framework with the `agnoster` theme
  - `zeditor --wait` as the default visual editor, `mcedit` as the fallback editor
  - Comprehensive `PATH` setup for development tools (Go, Java, local bin)
  - **Environment variables are externalized**:  
    - General environment variables (e.g., paths) are stored in `.env`
    - Sourced at the start of `.zshrc` for environment initialization
  - Package management aliases for `pacman`
  - VPN management aliases via NetworkManager/WireGuard (`vpn_add`, `vpn_del`, `vpn_on`, `vpn_off`, `vpn_show`)
  - Golang development aliases (`gr`, `gb`, `gbp`, `gmi`)
  - Git aliases with automatic tag pushing
  - Docker and NPM shortcuts
  - Advanced completion settings and custom function autoloading

> **Note:**  
> The `.env` file must exist in your home directory.  
> If you do not use this file, remove or comment out the corresponding lines in `.zshrc` to avoid errors:
```bash
  set -a
  source $HOME/.env
  set +a
```

`.zshrc_default`: A default ZSH configuration with Oh-My-ZSH, provided as a baseline or fallback option.

### Git Configuration
`.gitconfig`: Git configuration with the following features:
  - GPG commit signing
  - Conventional commit template (`~/templates/git-commit-template.txt`)
  - Automatic annotated tag pushing on `git push`
  - SSH URL rewriting for GitHub (`git@github.com:` instead of `https://github.com/`)
  - Default branch set to `master`

### Build Configuration
`.makepkg.conf`: Optimized build settings for Arch Linux:
  - Compiler flags `-march=native` and `-mtune=native` for performance
  - Optimizations for C, C++, and Rust
  - Security features (`-fstack-clash-protection`, `-fcf-protection`)
  - Parallel compilation using all available CPU cores

### System Configuration
`99-custom.conf`: Sysctl settings for security and responsiveness:
  - SYN flood protection and ICMP redirect prevention
  - Reduced swap usage (`vm.swappiness = 10`)
  - Address Space Layout Randomization (ASLR) and kernel pointer hiding
  - Network performance tweaks (e.g., TIME_WAIT socket reuse, fq_codel)

`20-intel.conf`
  - Enables DRI3 and SNA acceleration
  - Optional settings for tear-free rendering (commented by default)  

`mkinitcpio.conf`: Initramfs generation configuration:
  - Tailored for Nvidia GPU (modules: `nvidia`, `nvidia_modeset`, `nvidia_uvm`, `nvidia_drm`) and Btrfs (`btrfs`)
  - Optimized for the linux-zen kernel
  - Uses `lz4` compression (level `-6`) for fast boot times
  - `MODULES_DECOMPRESS="no"` to minimize early boot memory usage
  - **Note**: Adjust `MODULES` and `HOOKS` for your hardware and filesystem (e.g., Intel GPU, ext4, or encryption)

### Boot Loader Configuration
`grub`: GRUB boot loader configuration:
  - Simplified kernel parameters (`loglevel=3`)
  - Timeout and menu style settings
  - GRUB theme: `arch-silence-grub-theme-git` (install from AUR)
  - Resolution: `1920x1080` — change to `auto` or your supported resolution if needed
  - Disables recovery mode entries
  - Example settings for encrypted disks and OS probing

### X Session Configuration
`.xinitrc`: X session startup script:
  - Launches XFCE4 desktop environment via `startxfce4`

## Notes
These configurations are tailored to my workflow but can be adapted with care.
- **Backup First**: Always back up existing configurations before replacing them.
- **Path Guidance**: Each file includes a header comment indicating its target location.
- **Hardware Specificity**: Configurations target an Nvidia GPU, linux-zen kernel, and Btrfs filesystem, with optional Intel GPU support via `20-intel.conf`.
- **Sudo Dependency**: Many utilities require sudo privileges for full functionality.

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
