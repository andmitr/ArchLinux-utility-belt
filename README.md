# ArchLinux Utility Belt

A comprehensive collection of configurations, utilities, and automation scripts for Arch Linux power users. This repository provides a curated set of tools and settings to transform a fresh Arch installation into a highly optimized development environment.


![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=flat-square&logo=arch-linux&logoColor=white)
[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square&logo=opensource)](LICENSE)

> **⚠️ v2.0.0 - 2026-02-25 Released - Breaking Changes**
>
> This release includes significant breaking changes: removed configurations, renamed aliases, and deleted functions.
> See the [release notes](https://github.com/andmitr/ArchLinux-utility-belt/releases/tag/v2.0.0) for full details.

## Table of Contents

- [Disclaimer](#disclaimer)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Repository Structure](#repository-structure)
- [Usage](#usage)
- [Documentation](#documentation)
- [Sponsorship](#sponsorship)
- [License](#license)

## Disclaimer

- **Use at your own risk.** These configurations are highly personalized for specific hardware and software choices.
- **Hardware Specificity**: Configurations are optimized for systems with Nvidia GPU, linux-zen kernel, and Btrfs filesystem. Optional Intel GPU support is available via `configs/20-intel.conf`.
- **Backup First**: Always back up existing configurations before replacing them.
- **Review Before Use**: Carefully inspect files before applying them to your system. Each configuration file includes header comments indicating its target location.

## Features

### System Optimization
- **Kernel Performance**: Custom parameters for linux-zen kernel with Btrfs-specific optimizations
- **GPU Support**: Nvidia driver configurations and legacy driver packages for older GPUs
- **Build System**: Optimized makepkg configuration for faster AUR builds
- **Performance-tuned configurations**: for linux-zen kernel, Nvidia GPU, and Btrfs filesystem
- **Production-ready templates**: Docker, systemd, git, and more

### Development Productivity
- **Custom ZSH functions for Development Automation** 
- **Media Processing**: Batch convert and optimize images and media files
- **Template Generation**: Instantly scaffold Docker, systemd, and project files
- **AI Integration**: Interactive AI chat via OpenRouter API

### Modular Architecture
- **Modular design**: use only what you need
- **Selective Installation**: Each component can be used independently
- **Clear Documentation**: Every module includes its own detailed README
- **Flexible Configuration**: Adapt configurations to your specific needs

## Prerequisites

- Arch Linux (or Arch-based distribution)
- ZSH shell with Oh-My-ZSH framework
- Git 2.0+

Additional dependencies may be required for specific modules. Please refer to individual README files in each directory for detailed requirements.

## Repository Structure

```
ArchLinux-utility-belt/
├── configs/                        # System and application configurations
│   ├── 20-intel.conf               # Xorg Intel GPU configuration
│   ├── 99-custom.conf              # Kernel parameters optimization
│   ├── .gitconfig                  # Git configuration (GPG, SSH, commit template)
│   ├── .makepkg.conf               # Build system configuration
│   ├── grub                        # GRUB bootloader configuration
│   ├── mkinitcpio.conf             # Initramfs generation (Nvidia/Btrfs)
│   ├── .xinitrc                    # X session startup (XFCE4)
│   ├── .zshrc                      # Main ZSH configuration
│   └── .zshrc_default              # Default Oh-My-ZSH config
├── custompkgs/                     # Local package archive
│   ├── nvidia-dkms-580.95.05-1-x86_64.pkg.tar.zst
│   └── nvidia-utils-580.95.05-1-x86_64.pkg.tar.zst
├── fonts/                          # Curated programming fonts
│   └── [various font files]        # FiraCode, JetBrains Mono NF, MartianMono, OpenSans, SF Pro
├── .zfunc/                         # Custom ZSH functions library
│   ├── fn_ask_ai                   # Interactive AI chat via OpenRouter API
│   ├── fn_convert_media            # Media format conversion
│   ├── fn_convert_media_batch      # Bulk media conversion
│   ├── fn_git_clone_template       # Clone without git history
│   ├── fn_init_repo                # Initialize git repository with basic files
│   ├── fn_optimize_images          # Batch image optimization
│   ├── fn_new_Dockerfile           # Generate Dockerfile template
│   ├── fn_new_docker_compose       # Generate docker-compose.yaml
│   ├── fn_new_dockerignore         # Generate .dockerignore
│   ├── fn_new_gitignore            # Generate .gitignore from template
│   ├── fn_new_desktop_file         # Create desktop entry
│   ├── fn_new_timer                # Generate systemd timer
│   ├── fn_new_system_service       # Generate system service
│   └── fn_new_user_service         # Generate user service
├── templates/                      # Production-ready file templates
│   ├── .dockerignore               # Docker ignore patterns
│   ├── .editorconfig               # Code formatting configuration
│   ├── .gitignore                  # Comprehensive ignore patterns
│   ├── desktop-file.desktop        # Application launcher template
│   ├── docker-compose.yaml         # Multi-container setup
│   ├── Dockerfile                  # Node.js Alpine template
│   ├── example-system.service      # System service template
│   ├── example-user.service        # User service template
│   ├── example-timer.timer         # Systemd timer template
│   ├── git-commit-template.txt     # Conventional commit template
│   └── Makefile_go                 # Go project Makefile template
├── CHANGELOG.md                    # Version history
├── LICENSE                         # MIT License
└── README.md                       # Project documentation
```

## Usage

### Getting Started

Clone the repository:
```bash
git clone https://github.com/andmitr/ArchLinux-utility-belt.git
cd ArchLinux-utility-belt
```

### Applying Configurations

You have two options for using the configurations:
1. **Copy files** to their target locations (recommended for system files)
2. **Create symbolic links** for configurations that support it

#### Example: Setting up ZSH configuration

```bash
# Create a backup of your existing configuration
cp ~/.zshrc ~/.zshrc.backup

# Option 1: Copy the file
cp configs/.zshrc ~/

# Option 2: Create a symbolic link
ln -s $(pwd)/configs/.zshrc ~/.zshrc

# Reload the configuration
source ~/.zshrc
# or
exec zsh
```

### Important Notes

- Git commit templates (`git-commit-template.txt`) must be referenced by their full path in git configuration rather than using symbolic links:
  ```bash
  git config --global commit.template /path/to/ArchLinux-utility-belt/templates/git-commit-template.txt
  ```
- Each configuration file contains a header comment specifying its target location in the system
- Some configurations may require additional setup steps - refer to module-specific documentation

## Documentation

Each module in this repository has its own comprehensive README with:
- Detailed installation instructions
- Configuration options
- Usage examples
- Troubleshooting guides

### Module documentation:
- [`configs/README.md`](configs/README.md) — System and application configuration details
- [`custompkgs/README.md`](custompkgs/README.md) — Legacy Nvidia driver and other packages
- [`fonts/README.md`](fonts/README.md) — Font installation and usage guide
- [`templates/README.md`](templates/README.md) — Template file documentation
- [`.zfunc/README.md`](.zfunc/README.md) — ZSH function reference and examples

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

## License

MIT Licensed. See [LICENSE](LICENSE) for details.
