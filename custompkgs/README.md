# Custom Packages

A local repository of packages that are unavailable through standard Arch Linux repositories - rare, deprecated, or
legacy software that is still required for specific hardware or workflow needs.

[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square&logo=opensource)](../LICENSE)

## Legacy NVIDIA Drivers

### Problem

The official Arch Linux repositories have replaced the proprietary `nvidia-dkms` package with `nvidia-open-dkms` 
(open-source kernel modules), which only supports newer GPU architectures. Older cards such as the **GTX 1080** (Pascal)
require the proprietary driver that is no longer available in the official repositories. 
The packages stored here represent the **last proprietary driver release** that still supports these legacy GPUs.

### Packages

| Package        | Version     | Architecture |
|----------------|-------------|--------------|
| `nvidia-dkms`  | 580.95.05-1 | x86_64       |
| `nvidia-utils` | 580.95.05-1 | x86_64       |

### Installation

**Option 1.** Install from Arch Linux Archive (if still available):

```bash
sudo pacman -U \
  https://archive.archlinux.org/packages/n/nvidia-dkms/nvidia-dkms-580.95.05-1-x86_64.pkg.tar.zst \
  https://archive.archlinux.org/packages/n/nvidia-utils/nvidia-utils-580.95.05-1-x86_64.pkg.tar.zst
```

**Option 2.** Install from local files:

1. Download the packages from [Google Drive shared folder](https://drive.google.com/drive/folders/1nVmJgWJy8OZRborpA-uUspLDrZ4ms-Od?usp=sharing)
2. Install the downloaded packages

```bash
sudo pacman -U nvidia-dkms-580.95.05-1-x86_64.pkg.tar.zst \
               nvidia-utils-580.95.05-1-x86_64.pkg.tar.zst
```
**IMPORTANT** </br>
After installation, add nvidia-dkms and nvidia-utils to the IgnorePkg list in `/etc/pacman.conf` to prevent accidental upgrades:
```text
IgnorePkg = nvidia-dkms nvidia-utils
```
